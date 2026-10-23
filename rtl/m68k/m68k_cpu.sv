// SPDX-License-Identifier: LGPL-3.0-or-later
// The core with the port list of TG68KdotC_Kernel (68040 mode), for the
// wrappers made for TG68K.C: m68k_core, its instruction and data caches
// (m68k_icache, m68k_dcache: 4 Kbytes each, write-through) and its bus
// interface (m68k_biu), all moving on clkena_in as TG68K.C does
// (the wrapper gives it at most one clock in four). NC0 and NC1 are the
// windows the caches never keep: memory written by DMA and registers (on
// the Amiga, the chip RAM and $A00000-$F7FFFF; the Kickstart ROM above is
// cached).
//
// Not taken from TG68K.C's list: the generics (the core is always the
// 68040), CPU, IPL_autovector (interrupts are autovectored) and the
// outputs only for its debugging (regin_out). RESET pulls nResetOut low
// for 32 enabled clocks (the wrappers reset the chipset with it); clr_berr
// and skipFetch stay low: the core makes no bus cycle without data.

module m68k_cpu
  import m68k_pkg::*;
#(
  parameter logic [31:0] IO_LO = 32'h00A00000,
  parameter logic [31:0] IO_HI = 32'h00F00000,
  parameter logic [31:0] SYNC_LO = 32'hF0000000,
  parameter logic [31:0] NC0_LO = 32'h00000000,
  parameter logic [31:0] NC0_HI = 32'h00200000,
  parameter logic [31:0] NC1_LO = 32'h00A00000,
  parameter logic [31:0] NC1_HI = 32'h00F80000,
  parameter bit FPU_FAST = 1'b0,        // (m68k_core's): TG68K.C's FPU ALU (the fast one misses 35 ns)
  parameter bit MMU_REG = 1'b1,         // (m68k_core's): registered translations
  parameter bit FETCH_REG = 1'b1,       // (m68k_core's): fetch requests from registers
  parameter bit AG_LOAD = 1'b0,         // (m68k_core's): loads from OF only
  // the line port (m68k_lpu): a window of memory served in 16-byte lines
  parameter bit LINE_PORT = 1'b0,
  parameter logic [31:0] LP_LO = 32'h40000000,
  parameter logic [31:0] LP_HI = 32'h48000000
)
(
  input  logic        clk,
  input  logic        nReset,         // low active
  input  logic        clkena_in,
  input  logic [15:0] data_in,
  input  logic [2:0]  IPL,            // low active
  input  logic        berr,
  output logic [31:0] addr_out,
  output logic [15:0] data_write,
  output logic        nWr,
  output logic        nUDS,
  output logic        nLDS,
  output logic [1:0]  busstate,       // 00 fetch, 10 read, 11 write, 01 none
  output logic        longword,
  output logic        newpc,
  output logic        long_req,
  input  logic        long_ack,
  input  logic [15:0] data_in_lo,
  output logic [15:0] data_write_lo,
  output logic        nResetOut,
  output logic [2:0]  FC,
  output logic        clr_berr,
  output logic        skipFetch,
  output logic [3:0]  CACR_out,
  output logic        D_CACHE_out,
  output logic [31:0] VBR_out,
  output logic        MMU_on_out,

  // for the testbench: the caches on whatever CACR says (0 in a design)
  input  logic        force_cache,

  // the line port (with LINE_PORT; see m68k_lpu): changes on enabled edges,
  // lp_done and lp_rdata held by the machine until lp_req falls
  input  logic        lp_en,
  output logic        lp_req,
  output logic        lp_we,
  output logic [31:0] lp_addr,
  output logic [3:0]  lp_be,
  output logic [31:0] lp_wdata,
  input  logic        lp_done,
  input  logic [127:0] lp_rdata,

  // retirement, for the testbench trace (m68k_core's)
  output logic        dbg_retire,
  output logic        dbg_first,
  output logic        dbg_last,
  output logic [31:0] dbg_pc,
  output logic [15:0] dbg_op,
  output logic [31:0] dbg_npc,
  output logic        dbg_unimpl,
  output logic [31:0] dbg_regs [16],
  output logic [15:0] dbg_sr,
  output logic        dbg_st,
  output logic [31:0] dbg_st_addr,
  output size_e       dbg_st_size,
  output logic [31:0] dbg_st_data,
  output logic        dbg_fwr,
  output logic [31:0] dbg_fwr_addr,
  output size_e       dbg_fwr_size,
  output logic [31:0] dbg_fwr_data,
  output logic        dbg_mwr,
  output logic [31:0] dbg_mwr_addr,
  output logic [15:0] dbg_mwr_data,
  output logic        dbg_mwr_fetch,
  output logic [31:0] dbg_mwr_pc
);

  logic        rst;
  assign rst = !nReset;

  logic        i_req, i_gnt, i_rvalid, i_err;
  logic [31:0] i_addr, i_rdata;
  logic [2:0]  i_fc;
  logic        d_req, d_we, d_gnt, d_rvalid, d_err;
  logic [31:0] d_addr, d_wdata, d_rdata;
  size_e       d_size;
  logic [2:0]  d_fc;
  logic [1:0]  ctl_cacr;
  logic        ctl_cinv, ctl_reset;
  logic [1:0]  ctl_cinv_c;
  // the caches' requests (to the line port unit), and its side of the bus
  // interface
  logic        ci_req, ci_gnt, ci_rvalid, ci_err;
  logic [31:0] ci_addr, ci_rdata;
  logic [2:0]  ci_fc;
  logic        cd_req, cd_we, cd_gnt, cd_rvalid, cd_err;
  logic [31:0] cd_addr, cd_wdata, cd_rdata;
  size_e       cd_size;
  logic [2:0]  cd_fc;
  logic        bi_req, bi_gnt, bi_rvalid, bi_err;
  logic [31:0] bi_addr, bi_rdata;
  logic [2:0]  bi_fc;
  // the data cache's side
  logic        bd_req, bd_we, bd_gnt, bd_rvalid, bd_err;
  logic [31:0] bd_addr, bd_wdata, bd_rdata;
  size_e       bd_size;
  logic [2:0]  bd_fc;
  logic        wb_empty;

  // the interrupt level, taken on enabled edges: the wrappers' IPL register
  // reaches one flip-flop in a clock, the core sees it from the next edge
  logic [2:0] ipl_r;
  always_ff @(posedge clk)
    if (rst) ipl_r <= 3'b111;
    else if (clkena_in) ipl_r <= IPL;

  m68k_core #(.IO_LO(IO_LO), .IO_HI(IO_HI), .SYNC_LO(SYNC_LO), .FPU_FAST(FPU_FAST),
              .MMU_REG(MMU_REG), .FETCH_REG(FETCH_REG),
              .AG_LOAD(AG_LOAD)) core (
    .clk, .rst, .ce(clkena_in), .ipl(~ipl_r),
    .i_req, .i_addr, .i_fc, .i_gnt, .i_rvalid, .i_err, .i_rdata,
    .d_req, .d_we, .d_addr, .d_size, .d_wdata, .d_fc, .d_gnt, .d_rvalid, .d_err, .d_rdata,
    .ctl_cacr, .ctl_vbr(VBR_out), .ctl_tc_e(MMU_on_out), .ctl_cinv, .ctl_cinv_c, .ctl_reset,
    .dbg_retire, .dbg_first, .dbg_last, .dbg_pc, .dbg_op, .dbg_npc, .dbg_unimpl, .dbg_regs, .dbg_sr,
    .dbg_st, .dbg_st_addr, .dbg_st_size, .dbg_st_data,
    .dbg_fwr, .dbg_fwr_addr, .dbg_fwr_size, .dbg_fwr_data,
    .dbg_mwr, .dbg_mwr_addr, .dbg_mwr_data, .dbg_mwr_fetch, .dbg_mwr_pc
  );

  m68k_icache #(.NC0_LO(NC0_LO), .NC0_HI(NC0_HI), .NC1_LO(NC1_LO), .NC1_HI(NC1_HI)) icache (
    .clk, .rst, .ce(clkena_in), .enable(ctl_cacr[0] || force_cache), .inval(ctl_cinv && ctl_cinv_c[1]),
    .c_req(i_req), .c_addr(i_addr), .c_fc(i_fc), .c_gnt(i_gnt), .c_rvalid(i_rvalid), .c_err(i_err),
    .c_rdata(i_rdata),
    .snoop(d_req && d_we && d_gnt), .snoop_addr(d_addr), .wb_empty,
    .b_req(ci_req), .b_addr(ci_addr), .b_fc(ci_fc), .b_gnt(ci_gnt), .b_rvalid(ci_rvalid), .b_err(ci_err),
    .b_rdata(ci_rdata)
  );

  m68k_dcache #(.NC0_LO(NC0_LO), .NC0_HI(NC0_HI), .NC1_LO(NC1_LO), .NC1_HI(NC1_HI)) dcache (
    .clk, .rst, .ce(clkena_in), .enable(ctl_cacr[1] || force_cache), .inval(ctl_cinv && ctl_cinv_c[0]),
    .c_req(d_req), .c_we(d_we), .c_addr(d_addr), .c_size(d_size), .c_wdata(d_wdata), .c_fc(d_fc),
    .c_gnt(d_gnt), .c_rvalid(d_rvalid), .c_err(d_err), .c_rdata(d_rdata), .wb_empty,
    .b_req(cd_req), .b_we(cd_we), .b_addr(cd_addr), .b_size(cd_size), .b_wdata(cd_wdata), .b_fc(cd_fc),
    .b_gnt(cd_gnt), .b_rvalid(cd_rvalid), .b_err(cd_err), .b_rdata(cd_rdata)
  );

  m68k_lpu #(.LINE_PORT(LINE_PORT), .LP_LO(LP_LO), .LP_HI(LP_HI)) lpu (
    .clk, .rst, .ce(clkena_in), .lp_en,
    .ci_req, .ci_addr, .ci_fc, .ci_gnt, .ci_rvalid, .ci_err, .ci_rdata,
    .cd_req, .cd_we, .cd_addr, .cd_size, .cd_wdata, .cd_fc, .cd_gnt, .cd_rvalid, .cd_err, .cd_rdata,
    .bi_req, .bi_addr, .bi_fc, .bi_gnt, .bi_rvalid, .bi_err, .bi_rdata,
    .bd_req, .bd_we, .bd_addr, .bd_size, .bd_wdata, .bd_fc, .bd_gnt, .bd_rvalid, .bd_err, .bd_rdata,
    .lp_req, .lp_we, .lp_addr, .lp_be, .lp_wdata, .lp_done, .lp_rdata
  );

  m68k_biu biu (
    .clk, .rst,
    .i_req(bi_req), .i_addr(bi_addr), .i_fc(bi_fc), .i_gnt(bi_gnt), .i_rvalid(bi_rvalid), .i_err(bi_err),
    .i_rdata(bi_rdata),
    .d_req(bd_req), .d_we(bd_we), .d_addr(bd_addr), .d_size(bd_size), .d_wdata(bd_wdata), .d_fc(bd_fc),
    .d_gnt(bd_gnt), .d_rvalid(bd_rvalid), .d_err(bd_err), .d_rdata(bd_rdata),
    .clkena_in, .data_in, .berr, .long_ack, .data_in_lo,
    .addr_out, .data_write, .data_write_lo, .nWr, .nUDS, .nLDS, .busstate, .longword, .long_req,
    .FC, .newpc
  );

  // TG68K.C's 68040 mode: CACR_out bit 0 from DE or IE (MinimigAGA's
  // caches), bit 3 high for 256 clocks after CINV/CPUSH (its cpu_cache_new
  // samples it between CPU accesses and clears on the rising edge)
  logic [7:0] clr_cnt;
  always_ff @(posedge clk)
    if (rst) clr_cnt <= 8'd0;
    else if (ctl_cinv) clr_cnt <= 8'd255;
    else if (clr_cnt != 8'd0) clr_cnt <= clr_cnt - 8'd1;
  assign CACR_out = {clr_cnt != 8'd0, 2'b00, |ctl_cacr};
  assign D_CACHE_out = ctl_cacr[1];
  logic [5:0] rst_cnt;
  always_ff @(posedge clk)
    if (rst) rst_cnt <= 6'd0;
    else if (ctl_reset) rst_cnt <= 6'd32;
    else if (clkena_in && rst_cnt != 6'd0) rst_cnt <= rst_cnt - 6'd1;
  assign nResetOut = rst_cnt == 6'd0;
  assign clr_berr = 1'b0;
  assign skipFetch = 1'b0;

endmodule

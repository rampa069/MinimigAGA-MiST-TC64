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
//
// ASYNC: the core, its caches and the line port unit on clk_cpu, every
// clock, a clock domain of their own; m68k_biu stays on clk with clkena_in,
// so the bus is the same to the wrapper. m68k_xport carries the caches'
// requests to it and its answers back; IPL, nReset, lp_en and the line
// port's hole are taken into clk_cpu through flip-flops (IPL once stable),
// lp_done too (the line port's handshake has four phases), and CACR, VBR,
// the MMU's state, CINV and RESET into clk.

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
  parameter bit MC68060 = 1'b0,         // (m68k_core's): the 68060, else the 68040
  parameter bit DC_COPYBACK = 1'b0,     // (m68k_dcache's COPYBACK): the data cache in copyback
  parameter int DC_LINES_LOG2 = MC68060 ? 9 : 8,  // (m68k_dcache's LINES_LOG2): 8 Kbytes as the 68060's, else 4
  // the line port (m68k_lpu): a window of memory served in 16-byte lines
  parameter bit LINE_PORT = 1'b0,
  parameter logic [31:0] LP_LO = 32'h40000000,
  parameter logic [31:0] LP_HI = 32'h48000000,
  // the core on clk_cpu, the bus on clk (see above); LP_SYNC: lp_done
  // through two flip-flops into clk_cpu (0 when the line port's machine
  // runs on a clock related to clk_cpu: from the same PLL)
  parameter bit ASYNC = 1'b0,
  parameter bit LP_SYNC = 1'b1,
  // (m68k_lpu's LP_ALL) nothing in the window to the bus interface
  parameter bit LP_ALL = ASYNC,
  // (m68k_core's FPU_REG) on with ASYNC: the core's clock is to go faster
  parameter bit FPU_REG = ASYNC,
  // the core's cuts for a clock above 33 MHz (m68k_core's OF_SCREG, SKID,
  // SB_REG, DREDIR_REG, EX_SLOW), on with
  // ASYNC
  parameter bit FAST_CLK = ASYNC,
  parameter bit OF_SCREG = FAST_CLK,
  parameter bit SKID = FAST_CLK,
  parameter bit SB_REG = FAST_CLK,
  parameter bit DREDIR_REG = 1'b0,          // (not yet: mmu060 hangs with it)
  parameter bit EX_SLOW = FAST_CLK,
  parameter bit PRELEN = 1'b0,             // (m68k_core's): the instruction's length from a register
  parameter bit LD_SPEC = 1'b0,            // (m68k_core's): a load goes before its check against the stores
  parameter bit SH_SLOW = 1'b0,            // (m68k_core's): shifts and rotates in two cycles
  parameter bit EX_PRESEL = 1'b0,          // (m68k_core's): EX's other operands chosen in OF
  parameter bit DP_REG = 1'b0,             // (m68k_core's, m68k_dcache's GNT_REG): an access every other edge
  parameter bit EARLY_REG = 1'b0,          // (m68k_core's): the early values in registers
  parameter bit IND_REG = 1'b0,            // (m68k_core's): a memory indirect pointer into a register first
  parameter bit FLUSH_REG = 1'b0,          // (m68k_core's): a mispredict empties the stages a clock later
  parameter bit EX_FASTCC = 1'b0,          // (m68k_core's): the adds' Z and N off the result's select
  parameter bit MUL_SLOW = 1'b0,           // (m68k_core's): MULU.W and MULS.W in two cycles
  parameter bit FXL_REG = 1'b0,            // (m68k_core's): a fetch by the registered page only
  // the core's writes into the instruction cache's check a clock later
  // (the data cache's grant off the instruction cache's valid bits)
  parameter bit SNOOP_REG = 1'b0
)
(
  input  logic        clk,
  input  logic        clk_cpu,        // (ASYNC) the core's clock
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
  input  logic        lp_hole_en,    // a hole in the window (m68k_lpu)
  input  logic [7:0]  lp_hole_base,
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
  logic        if_want;                 // the instruction cache's read of memory, its line
  logic [31:4] if_line;

  // the core's clock domain: clk with clkena_in, or clk_cpu every clock
  logic        cclk, cce, crst;
  assign cclk = ASYNC ? clk_cpu : clk;
  assign cce = ASYNC ? 1'b1 : clkena_in;
  logic [31:0] c_vbr;
  logic        c_tc_e;
  logic        c_lp_en, c_lp_done, c_hole_en;
  logic [7:0]  c_hole_base;

  // the interrupt level, taken on enabled edges: the wrappers' IPL register
  // reaches one flip-flop in a clock, the core sees it from the next edge
  // (ASYNC: through two flip-flops, once the same two clocks running)
  logic [2:0] ipl_r;
  generate
  if (ASYNC) begin : g_csync
    logic [1:0] rs;
    logic [2:0] ip1, ip2, ip3;
    logic [1:0] le, ld, he;
    logic [7:0] hb1, hb2;
    always_ff @(posedge clk_cpu) rs <= {rs[0], rst};
    assign crst = rs[1];
    always_ff @(posedge clk_cpu) begin
      ip1 <= IPL; ip2 <= ip1; ip3 <= ip2;
      le <= {le[0], lp_en};
      he <= {he[0], lp_hole_en};
      hb1 <= lp_hole_base; hb2 <= hb1;
      ld <= {ld[0], lp_done};
      if (crst) ipl_r <= 3'b111;
      else if (ip2 == ip3) ipl_r <= ip3;
    end
    assign c_lp_en = le[1];
    assign c_hole_en = he[1];
    assign c_hole_base = hb2;
    assign c_lp_done = LP_SYNC ? ld[1] : lp_done;
  end else begin : g_nosync
    assign crst = rst;
    always_ff @(posedge clk)
      if (rst) ipl_r <= 3'b111;
      else if (clkena_in) ipl_r <= IPL;
    assign c_lp_en = lp_en;
    assign c_hole_en = lp_hole_en;
    assign c_hole_base = lp_hole_base;
    assign c_lp_done = lp_done;
  end
  endgenerate

  m68k_core #(.IO_LO(IO_LO), .IO_HI(IO_HI), .SYNC_LO(SYNC_LO), .FPU_FAST(FPU_FAST), .FPU_REG(FPU_REG),
              .MMU_REG(MMU_REG), .FETCH_REG(FETCH_REG),
              .AG_LOAD(AG_LOAD), .OF_SCREG(OF_SCREG), .SKID(SKID), .SB_REG(SB_REG), .DREDIR_REG(DREDIR_REG), .EX_SLOW(EX_SLOW), .PRELEN(PRELEN), .LD_SPEC(LD_SPEC), .SH_SLOW(SH_SLOW), .EX_PRESEL(EX_PRESEL), .DP_REG(DP_REG), .EARLY_REG(EARLY_REG), .IND_REG(IND_REG), .FLUSH_REG(FLUSH_REG), .EX_FASTCC(EX_FASTCC), .MUL_SLOW(MUL_SLOW), .FXL_REG(FXL_REG),
              .MC68060(MC68060)) core (
    .clk(cclk), .rst(crst), .ce(cce), .ipl(~ipl_r),
    .i_req, .i_addr, .i_fc, .i_gnt, .i_rvalid, .i_err, .i_rdata,
    .d_req, .d_we, .d_addr, .d_size, .d_wdata, .d_fc, .d_gnt, .d_rvalid, .d_err, .d_rdata,
    .ctl_cacr, .ctl_vbr(c_vbr), .ctl_tc_e(c_tc_e), .ctl_cinv, .ctl_cinv_c, .ctl_reset,
    .dbg_retire, .dbg_first, .dbg_last, .dbg_pc, .dbg_op, .dbg_npc, .dbg_unimpl, .dbg_regs, .dbg_sr,
    .dbg_st, .dbg_st_addr, .dbg_st_size, .dbg_st_data,
    .dbg_fwr, .dbg_fwr_addr, .dbg_fwr_size, .dbg_fwr_data,
    .dbg_mwr, .dbg_mwr_addr, .dbg_mwr_data, .dbg_mwr_fetch, .dbg_mwr_pc
  );

  // SNOOP_REG: the core's write taken, a clock later
  logic        sn_r;
  logic [31:0] sn_ar;
  always_ff @(posedge cclk)
    if (crst) sn_r <= 1'b0;
    else if (cce) begin sn_r <= d_req && d_we && d_gnt; sn_ar <= d_addr; end

  m68k_icache #(.NC0_LO(NC0_LO), .NC0_HI(NC0_HI), .NC1_LO(NC1_LO), .NC1_HI(NC1_HI)) icache (
    .clk(cclk), .rst(crst), .ce(cce), .enable(ctl_cacr[0] || force_cache), .inval(ctl_cinv && ctl_cinv_c[1]),
    .c_req(i_req), .c_addr(i_addr), .c_fc(i_fc), .c_gnt(i_gnt), .c_rvalid(i_rvalid), .c_err(i_err),
    .c_rdata(i_rdata),
    .snoop(SNOOP_REG ? sn_r : (d_req && d_we && d_gnt)), .snoop_addr(SNOOP_REG ? sn_ar : d_addr), .wb_empty, .f_want(if_want), .f_line(if_line),
    .b_req(ci_req), .b_addr(ci_addr), .b_fc(ci_fc), .b_gnt(ci_gnt), .b_rvalid(ci_rvalid), .b_err(ci_err),
    .b_rdata(ci_rdata)
  );

  m68k_dcache #(.NC0_LO(NC0_LO), .NC0_HI(NC0_HI), .NC1_LO(NC1_LO), .NC1_HI(NC1_HI), .COPYBACK(DC_COPYBACK), .LINES_LOG2(DC_LINES_LOG2), .GNT_REG(DP_REG)) dcache (
    .clk(cclk), .rst(crst), .ce(cce), .enable(ctl_cacr[1] || force_cache), .inval(ctl_cinv && ctl_cinv_c[0]),
    .c_req(d_req), .c_we(d_we), .c_addr(d_addr), .c_size(d_size), .c_wdata(d_wdata), .c_fc(d_fc),
    .c_gnt(d_gnt), .c_rvalid(d_rvalid), .c_err(d_err), .c_rdata(d_rdata), .wb_empty,
    .i_want(if_want), .i_line(if_line),
    .b_req(cd_req), .b_we(cd_we), .b_addr(cd_addr), .b_size(cd_size), .b_wdata(cd_wdata), .b_fc(cd_fc),
    .b_gnt(cd_gnt), .b_rvalid(cd_rvalid), .b_err(cd_err), .b_rdata(cd_rdata)
  );

  m68k_lpu #(.LINE_PORT(LINE_PORT), .LP_LO(LP_LO), .LP_HI(LP_HI), .LP_ALL(LP_ALL)) lpu (
    .clk(cclk), .rst(crst), .ce(cce), .lp_en(c_lp_en),
    .lp_hole_en(c_hole_en), .lp_hole_base(c_hole_base),
    .ci_req, .ci_addr, .ci_fc, .ci_gnt, .ci_rvalid, .ci_err, .ci_rdata,
    .cd_req, .cd_we, .cd_addr, .cd_size, .cd_wdata, .cd_fc, .cd_gnt, .cd_rvalid, .cd_err, .cd_rdata,
    .bi_req, .bi_addr, .bi_fc, .bi_gnt, .bi_rvalid, .bi_err, .bi_rdata,
    .bd_req, .bd_we, .bd_addr, .bd_size, .bd_wdata, .bd_fc, .bd_gnt, .bd_rvalid, .bd_err, .bd_rdata,
    .lp_req, .lp_we, .lp_addr, .lp_be, .lp_wdata, .lp_done(c_lp_done), .lp_rdata
  );

  // the bus interface's ports: the line port unit's, or (ASYNC) the same
  // through m68k_xport into clk
  logic        xi_req, xi_gnt, xi_rvalid, xi_err;
  logic [31:0] xi_addr, xi_rdata;
  logic [2:0]  xi_fc;
  logic        xd_req, xd_we, xd_gnt, xd_rvalid, xd_err;
  logic [31:0] xd_addr, xd_wdata, xd_rdata;
  size_e       xd_size;
  logic [2:0]  xd_fc;
  generate
  if (ASYNC) begin : g_xport
    m68k_xport xport (
      .clk_c(clk_cpu), .rst_c(crst),
      .i_req(bi_req), .i_addr(bi_addr), .i_fc(bi_fc), .i_gnt(bi_gnt), .i_rvalid(bi_rvalid), .i_err(bi_err),
      .i_rdata(bi_rdata),
      .d_req(bd_req), .d_we(bd_we), .d_addr(bd_addr), .d_size(bd_size), .d_wdata(bd_wdata), .d_fc(bd_fc),
      .d_gnt(bd_gnt), .d_rvalid(bd_rvalid), .d_err(bd_err), .d_rdata(bd_rdata),
      .clk_b(clk), .rst_b(rst), .ce_b(clkena_in),
      .bi_req(xi_req), .bi_addr(xi_addr), .bi_fc(xi_fc), .bi_gnt(xi_gnt), .bi_rvalid(xi_rvalid), .bi_err(xi_err),
      .bi_rdata(xi_rdata),
      .bd_req(xd_req), .bd_we(xd_we), .bd_addr(xd_addr), .bd_size(xd_size), .bd_wdata(xd_wdata), .bd_fc(xd_fc),
      .bd_gnt(xd_gnt), .bd_rvalid(xd_rvalid), .bd_err(xd_err), .bd_rdata(xd_rdata)
    );
  end else begin : g_direct
    assign xi_req = bi_req; assign xi_addr = bi_addr; assign xi_fc = bi_fc;
    assign bi_gnt = xi_gnt; assign bi_rvalid = xi_rvalid; assign bi_err = xi_err; assign bi_rdata = xi_rdata;
    assign xd_req = bd_req; assign xd_we = bd_we; assign xd_addr = bd_addr; assign xd_size = bd_size;
    assign xd_wdata = bd_wdata; assign xd_fc = bd_fc;
    assign bd_gnt = xd_gnt; assign bd_rvalid = xd_rvalid; assign bd_err = xd_err; assign bd_rdata = xd_rdata;
  end
  endgenerate

  m68k_biu biu (
    .clk, .rst,
    .i_req(xi_req), .i_addr(xi_addr), .i_fc(xi_fc), .i_gnt(xi_gnt), .i_rvalid(xi_rvalid), .i_err(xi_err),
    .i_rdata(xi_rdata),
    .d_req(xd_req), .d_we(xd_we), .d_addr(xd_addr), .d_size(xd_size), .d_wdata(xd_wdata), .d_fc(xd_fc),
    .d_gnt(xd_gnt), .d_rvalid(xd_rvalid), .d_err(xd_err), .d_rdata(xd_rdata),
    .clkena_in, .data_in, .berr, .long_ack, .data_in_lo,
    .addr_out, .data_write, .data_write_lo, .nWr, .nUDS, .nLDS, .busstate, .longword, .long_req,
    .FC, .newpc
  );

  // TG68K.C's 68040 mode: CACR_out bit 0 from DE or IE (MinimigAGA's
  // caches), bit 3 high for 256 clocks after CINV/CPUSH (its cpu_cache_new
  // samples it between CPU accesses and clears on the rising edge)
  // (ASYNC: CINV and RESET as toggles, CACR, VBR and the MMU's state
  // through two flip-flops, VBR once the same two clocks running)
  logic       b_cinv, b_reset;
  logic [1:0] b_cacr;
  generate
  if (ASYNC) begin : g_bsync
    logic       ci_t, rs_t;
    logic [2:0] ci_s, rs_s;
    logic [1:0] ca1, ca2;
    logic [31:0] vb1, vb2, vb3;
    logic [1:0] tc;
    always_ff @(posedge clk_cpu)
      if (crst) begin ci_t <= 1'b0; rs_t <= 1'b0; end
      else begin
        if (ctl_cinv) ci_t <= !ci_t;
        if (ctl_reset) rs_t <= !rs_t;
      end
    always_ff @(posedge clk) begin
      ci_s <= {ci_s[1:0], ci_t};
      rs_s <= {rs_s[1:0], rs_t};
      ca1 <= ctl_cacr; ca2 <= ca1;
      vb1 <= c_vbr; vb2 <= vb1; vb3 <= vb2;
      if (vb2 == vb3) VBR_out <= vb3;
      tc <= {tc[0], c_tc_e};
      if (rst) begin ci_s <= 3'd0; rs_s <= 3'd0; end
    end
    assign b_cinv = ci_s[2] != ci_s[1];
    assign b_reset = rs_s[2] != rs_s[1];
    assign b_cacr = ca2;
    assign MMU_on_out = tc[1];
  end else begin : g_bdirect
    assign b_cinv = ctl_cinv;
    assign b_reset = ctl_reset;
    assign b_cacr = ctl_cacr;
    assign VBR_out = c_vbr;
    assign MMU_on_out = c_tc_e;
  end
  endgenerate
  logic [7:0] clr_cnt;
  always_ff @(posedge clk)
    if (rst) clr_cnt <= 8'd0;
    else if (b_cinv) clr_cnt <= 8'd255;
    else if (clr_cnt != 8'd0) clr_cnt <= clr_cnt - 8'd1;
  assign CACR_out = {clr_cnt != 8'd0, 2'b00, |b_cacr};
  assign D_CACHE_out = b_cacr[1];
  logic [5:0] rst_cnt;
  always_ff @(posedge clk)
    if (rst) rst_cnt <= 6'd0;
    else if (b_reset) rst_cnt <= 6'd32;
    else if (clkena_in && rst_cnt != 6'd0) rst_cnt <= rst_cnt - 6'd1;
  assign nResetOut = rst_cnt == 6'd0;
  assign clr_berr = 1'b0;
  assign skipFetch = 1'b0;

endmodule

// SPDX-License-Identifier: LGPL-3.0-or-later
// m68k_cpu in place of TG68K.C: a module with the name, generics and ports
// of TG68KdotC_Kernel, so a wrapper made for TG68K.C (MinimigAGA's TG68K.vhd)
// takes the core with no change but a component declaration, and its SDC
// still finds the instance (pf68K_Kernel_inst). The generics are taken and
// ignored (the core is the 68040, or the 68060 with MC68060 = 1, a choice
// made when it is built), and so are CPU and
// IPL_autovector (interrupts are autovectored); regin_out is 0. LINE_PORT,
// LP_LO and LP_HI, and the lp_ ports after TG68K.C's, are m68k_cpu's line
// port (m68k_lpu): a wrapper that does not use it leaves them unconnected
// (lp_en and lp_done low). ASYNC and clk_cpu (after them) are m68k_cpu's:
// the core on a clock of its own, the bus on clk; the line port's machine
// on a clock related to clk_cpu (MinimigAGA: the same PLL), so lp_done is
// taken as it is (LP_SYNC 0).

/* verilator lint_off UNUSEDPARAM */       // (TG68K.C's generics, taken and ignored)
module TG68KdotC_Kernel #(
  parameter int SR_Read = 2,
  parameter int VBR_Stackframe = 2,
  parameter int extAddr_Mode = 2,
  parameter int MUL_Mode = 2,
  parameter int DIV_Mode = 2,
  parameter int BitField = 2,
  parameter int BarrelShifter = 1,
  parameter int MUL_Hardware = 1,
  parameter int D_Cache_Bit = 0,
  parameter int FPU_FPSP = 1,
  parameter int MMU_REG_XLATE = 0,
  parameter int MC68060 = 0,
  parameter int LINE_PORT = 0,
  parameter int LP_LO = 32'h40000000,
  parameter int LP_HI = 32'h48000000,
  parameter int ASYNC = 0
) (
  /* verilator lint_on UNUSEDPARAM */
  input  logic        clk,
  input  logic        nReset,
  input  logic        clkena_in,
  input  logic [15:0] data_in,
  input  logic [2:0]  IPL,
  input  logic        IPL_autovector,
  input  logic        berr,
  input  logic [1:0]  CPU,
  output logic [31:0] addr_out,
  output logic [15:0] data_write,
  output logic        nWr,
  output logic        nUDS,
  output logic        nLDS,
  output logic [1:0]  busstate,
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
  output logic [31:0] regin_out,
  output logic [3:0]  CACR_out,
  output logic        D_CACHE_out,
  output logic [31:0] VBR_out,
  output logic        MMU_on_out,

  input  logic        lp_en,
  output logic        lp_req,
  output logic        lp_we,
  output logic [31:0] lp_addr,
  output logic [3:0]  lp_be,
  output logic [31:0] lp_wdata,
  input  logic        lp_done,
  input  logic [127:0] lp_rdata,
  input  logic        clk_cpu
);

  /* verilator lint_off PINCONNECTEMPTY */   // (the testbench's outputs, not used here)
  m68k_cpu #(.MC68060(MC68060 != 0), .LINE_PORT(LINE_PORT != 0), .LP_LO(LP_LO), .LP_HI(LP_HI),
             .ASYNC(ASYNC != 0), .LP_SYNC(1'b0),
             // with ASYNC, the core's clock at 54 MHz: m68k_core's registered paths
             .PRELEN(ASYNC != 0), .LD_SPEC(ASYNC != 0), .SH_SLOW(ASYNC != 0),
             .EX_PRESEL(ASYNC != 0), .DP_REG(ASYNC != 0), .EARLY_REG(ASYNC != 0),
             .IND_REG(ASYNC != 0), .FLUSH_REG(ASYNC != 0), .EX_FASTCC(ASYNC != 0),
             .MUL_SLOW(ASYNC != 0), .FXL_REG(ASYNC != 0), .SNOOP_REG(ASYNC != 0)) core68k (
    .clk, .clk_cpu, .nReset, .clkena_in, .data_in, .IPL, .berr,
    .addr_out, .data_write, .nWr, .nUDS, .nLDS, .busstate, .longword, .newpc,
    .long_req, .long_ack, .data_in_lo, .data_write_lo,
    .nResetOut, .FC, .clr_berr, .skipFetch, .CACR_out, .D_CACHE_out, .VBR_out, .MMU_on_out,
    .force_cache(1'b0),
    .lp_en, .lp_hole_en(1'b0), .lp_hole_base(8'd0), .lp_req, .lp_we, .lp_addr, .lp_be, .lp_wdata, .lp_done, .lp_rdata,
    .dbg_retire(), .dbg_first(), .dbg_last(), .dbg_pc(), .dbg_op(), .dbg_npc(), .dbg_unimpl(),
    .dbg_regs(), .dbg_sr(), .dbg_st(), .dbg_st_addr(), .dbg_st_size(), .dbg_st_data(),
    .dbg_fwr(), .dbg_fwr_addr(), .dbg_fwr_size(), .dbg_fwr_data(),
    .dbg_mwr(), .dbg_mwr_addr(), .dbg_mwr_data(), .dbg_mwr_fetch(), .dbg_mwr_pc()
  );
  /* verilator lint_on PINCONNECTEMPTY */

  assign regin_out = 32'd0;

  logic unused;
  assign unused = &{1'b0, IPL_autovector, CPU};

endmodule

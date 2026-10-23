// m68k_sdram_minimig (rtl/m68k) with Micron's SDRAM model (64 Mbytes, as
// the SiDi128's second SDRAM): a fake TG68K.vhd (its clock enable as the
// wrapper makes it) on its accesses to that SDRAM, and the core's line
// port, both driven by tb_sd.cpp.

module tb_sd(
  input  wire           clk_114,
  input  wire           reset,
  output wire           reset_out,
  // the fake TG68K.vhd
  input  wire    [25:1] cpuAddr,
  input  wire     [1:0] cpuState,
  input  wire           cpuL,
  input  wire           cpuU,
  input  wire           cpuLongWord,
  input  wire [ 16-1:0] cpuWR,
  output wire [ 16-1:0] cpuRD,
  output wire           clkena,
  // the core's line port
  input  wire           lp_req,
  input  wire           lp_we,
  input  wire    [31:0] lp_addr,
  input  wire     [3:0] lp_be,
  input  wire    [31:0] lp_wdata,
  output wire           lp_done,
  output wire   [127:0] lp_rdata,
  output wire           lp_en
);

// the fake CPU: TG68K.vhd's clock enable, at least four clocks apart
reg [3:0] slower;
wire      ramsel = cpuState != 2'b01;
wire      cpu_ncs = ~ramsel | slower[0];
wire      tg_cpuena;
always @(posedge clk_114) begin
  if (clkena) slower <= 4'b0111;
  else        slower <= {1'b0, slower[3:1]};
end
assign clkena = !slower[0] && (cpuState == 2'b01 || tg_cpuena);

wire [15:0] DRAM_DQ;
wire [12:0] DRAM_ADDR;
wire  [1:0] sdram_ba;
wire  [1:0] sdram_dqm;
wire        DRAM_CS_N, DRAM_WE_N, DRAM_CAS_N, DRAM_RAS_N;

m68k_sdram_minimig sd (
  .clk(clk_114), .sd_rst_n(reset), .reset_n(reset), .z3ram_ena(1'b1), .init_done(reset_out),
  .lp_en(lp_en), .lp_req(lp_req), .lp_we(lp_we), .lp_addr(lp_addr), .lp_be(lp_be), .lp_wdata(lp_wdata),
  .lp_done(lp_done), .lp_rdata(lp_rdata),
  .tg_cad({1'b1, cpuAddr}), .tg_cpustate({cpuLongWord, cpu_ncs, cpuState}), .tg_cuds(cpuU), .tg_clds(cpuL),
  .tg_cin(cpuWR), .tg_cpuena(tg_cpuena), .tg_cout(cpuRD),
  .sd_dq(DRAM_DQ), .sd_a(DRAM_ADDR), .sd_ba(sdram_ba), .sd_dqm(sdram_dqm), .sd_cs_n(DRAM_CS_N),
  .sd_ras_n(DRAM_RAS_N), .sd_cas_n(DRAM_CAS_N), .sd_we_n(DRAM_WE_N)
);

mt48lc16m16a2 sdram_chip (
  .Dq(DRAM_DQ), .Addr(DRAM_ADDR), .Ba(sdram_ba), .Clk(clk_114), .Cke(1'b1), .Cs_n(DRAM_CS_N),
  .Ras_n(DRAM_RAS_N), .Cas_n(DRAM_CAS_N), .We_n(DRAM_WE_N), .Dqm(sdram_dqm)
);

endmodule

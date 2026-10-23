// m68k_lp_minimig (rtl/m68k) with MinimigAGA's sdram_ctrl and cpu_cache_new
// and Micron's SDRAM model: a fake TG68K.vhd (its clock enable as the
// wrapper makes it) and the core's line port, both driven by tb_lp.cpp.
// One SDRAM (DUALSDRAM 0): the line port's Zorro III window and the fake
// CPU's accesses share the controller's CPU port.

module tb_lp(
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
  output wire           lp_en,
  // the bridge's state, for the driver's report
  output wire     [2:0] dbg_js,
  output wire           dbg_own,
  output wire           dbg_lwp,
  output wire     [2:0] dbg_jleft,
  output wire     [3:0] dbg_mstate,
  output wire           dbg_scpuena,
  output wire     [3:0] dbg_csm,
  output wire           dbg_cready,
  output wire           dbg_wready,
  output wire           dbg_wreq,
  output wire           dbg_wack
);
assign dbg_csm = sdram.cache.cpu_sm_state;
assign dbg_cready = sdram.cache.cpu_cacheline_ready;
assign dbg_wready = sdram.cache.cpu_cacheline_w_ready;
assign dbg_wreq = sdram.cache.sdr_write_req;
assign dbg_wack = sdram.cache.sdr_write_ack;
assign dbg_js = lp.js;
assign dbg_own = lp.own_lp;
assign dbg_lwp = lp.tg_lw_pend;
assign dbg_jleft = lp.j_left;
assign dbg_mstate = m_cpustate;
assign dbg_scpuena = s_cpuena;

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

wire [26:1] m_cad;
wire  [3:0] m_cpustate;
wire        m_cuds, m_clds;
wire [15:0] m_cin;
wire        s_cpuena;
wire [15:0] s_cout;
assign cpuRD = s_cout;

m68k_lp_minimig #(.DUALSDRAM(1'b0)) lp (
  .clk(clk_114), .reset_n(reset), .z3ram_ena(1'b1),
  .lp_en(lp_en), .lp_req(lp_req), .lp_we(lp_we), .lp_addr(lp_addr), .lp_be(lp_be), .lp_wdata(lp_wdata),
  .lp_done(lp_done), .lp_rdata(lp_rdata),
  .tg_cad({1'b0, cpuAddr}), .tg_cpustate({cpuLongWord, cpu_ncs, cpuState}), .tg_cuds(cpuU), .tg_clds(cpuL),
  .tg_cin(cpuWR), .tg_cpuena(tg_cpuena),
  .m_cad(m_cad), .m_cpustate(m_cpustate), .m_cuds(m_cuds), .m_clds(m_clds), .m_cin(m_cin),
  .s_cpuena(s_cpuena), .s_cout(s_cout)
);

reg [3:0] clk7cnt = 4'b0000;
always @(posedge clk_114) clk7cnt <= clk7cnt + 1'b1;
wire clk_7_en = &clk7cnt[3:2];
wire ena28;

wire [15:0] DRAM_DQ;
wire [12:0] DRAM_ADDR;
wire  [3:0] sdram_cs;
wire  [1:0] sdram_ba;
wire  [1:0] sdram_dqm;
wire        DRAM_WE_N, DRAM_CAS_N, DRAM_RAS_N;

sdram_ctrl sdram (
  .sysclk(clk_114), .clk7_en(clk_7_en), .clk28_en(ena28), .reset_in(reset), .cache_rst(reset),
  .reset_out(reset_out), .cache_inhibit(1'b0), .cacheline_clr(1'b0), .cpu_cache_ctrl(4'b0011),
  .sdaddr(DRAM_ADDR), .sd_cs(sdram_cs), .ba(sdram_ba), .sd_we(DRAM_WE_N), .sd_ras(DRAM_RAS_N),
  .sd_cas(DRAM_CAS_N), .dqm(sdram_dqm), .sdata(DRAM_DQ),
  .hostWR(32'd0), .hostAddr(24'd0), .hostce(1'b0), .hostwe(1'b0), .hostbytesel(4'b0000), .hostRD(), .hostena(),
  .chipAddr(23'd0), .chipL(1'b1), .chipU(1'b1), .chipL2(1'b1), .chipU2(1'b1), .chipRW(1'b1), .chip_dma(1'b1),
  .chipWR(16'd0), .chipWR2(16'd0), .chipRD(), .chip48(),
  .rtgAddr(26'd0), .rtgce(1'b0), .rtgfill(), .rtgRd(), .rtgack(), .rtgpri(1'b0),
  .audAddr(23'd0), .audce(1'b0), .audfill(), .audRd(), .audack(),
  .cpuAddr(m_cad[25:1]), .cpustate(m_cpustate), .cpuL(m_clds), .cpuU(m_cuds), .cpuWR(m_cin), .cpuRD(s_cout),
  .enaWRreg(ena28), .ena7RDreg(), .ena7WRreg(), .cpuena(s_cpuena)
);

mt48lc16m16a2 sdram_chip (
  .Dq(DRAM_DQ), .Addr(DRAM_ADDR), .Ba(sdram_ba), .Clk(clk_114), .Cke(1'b1), .Cs_n(sdram_cs[0]),
  .Ras_n(DRAM_RAS_N), .Cas_n(DRAM_CAS_N), .We_n(DRAM_WE_N), .Dqm(sdram_dqm)
);

endmodule

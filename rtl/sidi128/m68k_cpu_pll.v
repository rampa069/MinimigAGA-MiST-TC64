// The m68k core's own clocks (MINIMIG_M68K_ACCEL), a CPU card's: fixed, not
// switched between PAL and NTSC as the chipset's (amiga_clk) are. From the
// 27 MHz input, VCO 1080 MHz:
//   c0  108 MHz, -1600 ps: the second SDRAM's clock (as amiga_clk's c0);
//       unused with MINIMIG_SDRAM_CLK_DDIO (the pin from c1 through a DDR
//       output register)
//   c1  108 MHz: its controller (m68k_sdram_minimig), so c2 is half of it
//   c2  54 MHz (VCO / 20): the core (m68k_cpu's clk_cpu), related to c1
// MINIMIG_M68K_CPU_51MHZ: VCO 918 MHz, c0 and c1 102 MHz (27 x 34 / 9), c2
// 51 MHz (the 68040's revision: its core closes there)
// MINIMIG_M68K_CPU_PLL_50: from the 50 MHz input instead, the same clocks
// (VCO 1080 MHz, or 1020 MHz for 51 MHz: 50 / 5 x 108 or x 102)

module m68k_cpu_pll (
  input  wire areset,
  input  wire inclk0,
  output wire c0,
  output wire c1,
  output wire c2,
  output wire locked
);

wire [4:0] clk;
assign c0 = clk[0];
assign c1 = clk[1];
assign c2 = clk[2];

altpll altpll_component (
  .areset (areset),
  .inclk ({1'b0, inclk0}),
  .clk (clk),
  .locked (locked),
  .activeclock (),
  .clkbad (),
  .clkena ({6{1'b1}}),
  .clkloss (),
  .clkswitch (1'b0),
  .configupdate (1'b0),
  .enable0 (),
  .enable1 (),
  .extclk (),
  .extclkena ({4{1'b1}}),
  .fbin (1'b1),
  .fbmimicbidir (),
  .fbout (),
  .fref (),
  .icdrclk (),
  .pfdena (1'b1),
  .phasecounterselect ({4{1'b1}}),
  .phasedone (),
  .phasestep (1'b1),
  .phaseupdown (1'b1),
  .pllena (1'b1),
  .scanaclr (1'b0),
  .scanclk (1'b0),
  .scanclkena (1'b1),
  .scandata (1'b0),
  .scandataout (),
  .scandone (),
  .scanread (1'b0),
  .scanwrite (1'b0),
  .sclkout0 (),
  .sclkout1 (),
  .vcooverrange (),
  .vcounderrange ()
);
`ifdef MINIMIG_M68K_CPU_PLL_50
localparam IN_PS = 20000;
`ifdef MINIMIG_M68K_CPU_51MHZ
localparam SD_MUL = 51, SD_DIV = 25, CPU_MUL = 51, CPU_DIV = 50;
`else
localparam SD_MUL = 54, SD_DIV = 25, CPU_MUL = 27, CPU_DIV = 25;
`endif
`else
localparam IN_PS = 37037;
`ifdef MINIMIG_M68K_CPU_51MHZ
localparam SD_MUL = 34, SD_DIV = 9, CPU_MUL = 17, CPU_DIV = 9;
`else
localparam SD_MUL = 4, SD_DIV = 1, CPU_MUL = 2, CPU_DIV = 1;
`endif
`endif
defparam
  altpll_component.bandwidth_type = "AUTO",
  altpll_component.clk0_divide_by = SD_DIV,
  altpll_component.clk0_duty_cycle = 50,
  altpll_component.clk0_multiply_by = SD_MUL,
  altpll_component.clk0_phase_shift = "-1600",
  altpll_component.clk1_divide_by = SD_DIV,
  altpll_component.clk1_duty_cycle = 50,
  altpll_component.clk1_multiply_by = SD_MUL,
  altpll_component.clk1_phase_shift = "0",
  altpll_component.clk2_divide_by = CPU_DIV,
  altpll_component.clk2_duty_cycle = 50,
  altpll_component.clk2_multiply_by = CPU_MUL,
  altpll_component.clk2_phase_shift = "0",
  altpll_component.compensate_clock = "CLK1",
  altpll_component.inclk0_input_frequency = IN_PS,
  altpll_component.intended_device_family = "Cyclone 10 LP",
  altpll_component.lpm_type = "altpll",
  altpll_component.operation_mode = "NORMAL",
  altpll_component.pll_type = "AUTO",
  altpll_component.port_activeclock = "PORT_UNUSED",
  altpll_component.port_areset = "PORT_USED",
  altpll_component.port_clkbad0 = "PORT_UNUSED",
  altpll_component.port_clkbad1 = "PORT_UNUSED",
  altpll_component.port_clkloss = "PORT_UNUSED",
  altpll_component.port_clkswitch = "PORT_UNUSED",
  altpll_component.port_configupdate = "PORT_UNUSED",
  altpll_component.port_fbin = "PORT_UNUSED",
  altpll_component.port_inclk0 = "PORT_USED",
  altpll_component.port_inclk1 = "PORT_UNUSED",
  altpll_component.port_locked = "PORT_USED",
  altpll_component.port_pfdena = "PORT_UNUSED",
  altpll_component.port_phasecounterselect = "PORT_UNUSED",
  altpll_component.port_phasedone = "PORT_UNUSED",
  altpll_component.port_phasestep = "PORT_UNUSED",
  altpll_component.port_phaseupdown = "PORT_UNUSED",
  altpll_component.port_pllena = "PORT_UNUSED",
  altpll_component.port_scanaclr = "PORT_UNUSED",
  altpll_component.port_scanclk = "PORT_UNUSED",
  altpll_component.port_scanclkena = "PORT_UNUSED",
  altpll_component.port_scandata = "PORT_UNUSED",
  altpll_component.port_scandataout = "PORT_UNUSED",
  altpll_component.port_scandone = "PORT_UNUSED",
  altpll_component.port_scanread = "PORT_UNUSED",
  altpll_component.port_scanwrite = "PORT_UNUSED",
  altpll_component.port_clk0 = "PORT_USED",
  altpll_component.port_clk1 = "PORT_USED",
  altpll_component.port_clk2 = "PORT_USED",
  altpll_component.port_clk3 = "PORT_UNUSED",
  altpll_component.port_clk4 = "PORT_UNUSED",
  altpll_component.port_clk5 = "PORT_UNUSED",
  altpll_component.port_clkena0 = "PORT_UNUSED",
  altpll_component.port_clkena1 = "PORT_UNUSED",
  altpll_component.port_clkena2 = "PORT_UNUSED",
  altpll_component.port_clkena3 = "PORT_UNUSED",
  altpll_component.port_clkena4 = "PORT_UNUSED",
  altpll_component.port_clkena5 = "PORT_UNUSED",
  altpll_component.port_extclk0 = "PORT_UNUSED",
  altpll_component.port_extclk1 = "PORT_UNUSED",
  altpll_component.port_extclk2 = "PORT_UNUSED",
  altpll_component.port_extclk3 = "PORT_UNUSED",
  altpll_component.self_reset_on_loss_lock = "OFF",
  altpll_component.width_clock = 5;

endmodule

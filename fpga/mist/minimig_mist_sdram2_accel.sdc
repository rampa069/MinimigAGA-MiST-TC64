create_clock -name {qspi_clk}  -period 41.666 -waveform { 20.8 41.666 } [get_ports {QSCK}]

set_clock_groups -exclusive -group [get_clocks {amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[*]}] -group [get_clocks {qspi_clk}]

# (MINIMIG_SDRAM_CLK_DDIO) the second SDRAM's clock: its controller's
# (m68k_cpu_pll clk[1]) inverted, through the DDR output register
# sdram2clk_ddr (minimig_mist_top.v)
create_generated_clock -name sdram2_clk_pin -invert \
  -source [get_pins -compatibility_mode {*sdram2clk_ddr|auto_generated|ddio_outa[0]|muxsel}] \
  [get_ports {SDRAM2_CLK}]
set clk_sdram2 sdram2_clk_pin
#set clk_mem2   "m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1]"

# name SDRAM ports
set sdram2_outputs [get_ports {SDRAM2_DQ[*] SDRAM2_A[*] SDRAM2_DQML SDRAM2_DQMH SDRAM2_nWE SDRAM2_nCAS SDRAM2_nRAS SDRAM2_nCS SDRAM2_BA[*] SDRAM2_CKE}]
set sdram2_inputs  [get_ports {SDRAM2_DQ[*]}]

# input delay
set_input_delay -clock $clk_sdram2 -max 6.4 $sdram2_inputs
set_input_delay -clock $clk_sdram2 -min 3.2 $sdram2_inputs

#output delay
set_output_delay -clock $clk_sdram2 -max  1.5 $sdram2_outputs
set_output_delay -clock $clk_sdram2 -min -0.8 $sdram2_outputs

# (MINIMIG_M68K_ACCEL) the second SDRAM's controller on its own PLL's
# 108 MHz (clk[1]), as the first SDRAM's on clk_114
set clk_sd2 "m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1]"
set_multicycle_path -from [get_clocks $clk_sdram2] -to [get_clocks $clk_sd2] -setup 2

#set_multicycle_path -from [get_clocks $clk_28] -to [get_clocks $clk_mem2] -setup 4
#set_multicycle_path -from [get_clocks $clk_28] -to [get_clocks $clk_mem2] -hold 3

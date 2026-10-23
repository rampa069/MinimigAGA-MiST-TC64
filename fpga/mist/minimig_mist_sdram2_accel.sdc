create_clock -name {qspi_clk}  -period 41.666 -waveform { 20.8 41.666 } [get_ports {QSCK}]

set_clock_groups -exclusive -group [get_clocks {amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[*]}] -group [get_clocks {qspi_clk}]

set clk_sdram2 "m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[0]"
#set clk_mem2   "m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1]"

# name SDRAM ports
set sdram2_outputs [get_ports {SDRAM2_DQ[*] SDRAM2_A[*] SDRAM2_DQML SDRAM2_DQMH SDRAM2_nWE SDRAM2_nCAS SDRAM2_nRAS SDRAM2_nCS SDRAM2_BA[*] SDRAM2_CKE}]
set sdram2_inputs  [get_ports {SDRAM2_DQ[*]}]

# input delay
set_input_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -max 6.4 $sdram2_inputs
set_input_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -min 3.2 $sdram2_inputs

#output delay
set_output_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -max  1.5 $sdram2_outputs
set_output_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -min -0.8 $sdram2_outputs

# (MINIMIG_M68K_ACCEL) the second SDRAM's controller on its own PLL's
# 114.75 MHz (clk[1]), as the first SDRAM's on clk_114
set clk_sd2 "m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1]"
set_multicycle_path -from [get_clocks $clk_sdram2] -to [get_clocks $clk_sd2] -setup 2

#set_multicycle_path -from [get_clocks $clk_28] -to [get_clocks $clk_mem2] -setup 4
#set_multicycle_path -from [get_clocks $clk_28] -to [get_clocks $clk_mem2] -hold 3

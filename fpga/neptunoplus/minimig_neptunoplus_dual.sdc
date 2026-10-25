# NeptunoPlus with the second SDRAM (minimig_neptunoplus_dual): this
# directory's minimig_neptunoplus.sdc, the m68k core on its own clock and
# the second SDRAM as ../mist/minimig_mist_accel.sdc and
# minimig_mist_sdram2_accel.sdc have them (names start with *: the Minimig
# hierarchy is under neptuno2_top's "guest" instance)
set_time_format -unit ns -decimal_places 3

create_clock -name "CLOCK_50" -period 20.000 [get_ports {CLOCK_50}]
create_clock -name spi_clk -period 41.666 -waveform { 20.8 41.666 } [get_ports {SPI_SCK}]

derive_pll_clocks

set clk_sdram [get_clocks {*amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[0]}]
set clk_114   [get_clocks {*amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[1]}]
set clk_28    [get_clocks {*amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[2]}]
set clk_amiga [get_clocks {*amiga_clk|amiga_clk_i|altpll_component|auto_generated|pll1|clk[*]}]

set sdram_outputs [get_ports {SDRAM_DQ[*] SDRAM_A[*] SDRAM_DQML SDRAM_DQMH SDRAM_nWE SDRAM_nCAS SDRAM_nRAS SDRAM_nCS SDRAM_BA[*] SDRAM_CKE}]
set sdram_inputs  [get_ports {SDRAM_DQ[*]}]

set_clock_groups -exclusive -group $clk_amiga -group [get_clocks {spi_clk}]

derive_clock_uncertainty

set_input_delay -clock $clk_sdram -reference_pin [get_ports SDRAM_CLK] -max 6.4 $sdram_inputs
set_input_delay -clock $clk_sdram -reference_pin [get_ports SDRAM_CLK] -min 3.2 $sdram_inputs
set_output_delay -clock $clk_sdram -reference_pin [get_ports SDRAM_CLK] -max  1.5 $sdram_outputs
set_output_delay -clock $clk_sdram -reference_pin [get_ports SDRAM_CLK] -min -0.8 $sdram_outputs

set_output_delay -clock $clk_114 -1.5 [get_ports {VGA_R[*]}]
set_output_delay -clock $clk_114 -1.5 [get_ports {VGA_G[*]}]
set_output_delay -clock $clk_114 -1.5 [get_ports {VGA_B[*]}]
set_output_delay -clock $clk_114 -1.5 [get_ports {VGA_HS}]
set_output_delay -clock $clk_114 -1.5 [get_ports {VGA_VS}]

set_input_delay -clock { spi_clk } .5 [get_ports SPI*]
set_input_delay -clock { spi_clk } .5 [get_ports CONF_DATA0]
set_output_delay -clock { spi_clk } .5 [get_ports SPI_DO]

set_false_path -from * -to [get_ports {SDRAM_CLK}]
set_false_path -from * -to [get_ports {LED}]
set_false_path -from * -to [get_ports {UART_TX}]
set_false_path -from [get_ports {UART_RX}] -to *
set_false_path -from * -to [get_ports {AUDIO_L}]
set_false_path -from * -to [get_ports {AUDIO_R}]
set_false_path -to [get_ports {I2S_*}]
set_false_path -from [get_ports {SD_SCK SD_MISO}]

# MINIMIG_M68K_ACCEL: the core (m68k_cpu's ASYNC) runs on clk_cpu, every
# clock, from the second SDRAM's PLL: only its bus interface and the
# registers that make TG68K.vhd's side (on clk_114, moving on clkena) keep
# the kernel's four cycles; the PLLs are asynchronous
set kern {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|m68k_cpu:core68k}
set_multicycle_path -from [get_registers "$kern|m68k_biu:biu|*"] -setup 4
set_multicycle_path -from [get_registers "$kern|m68k_biu:biu|*"] -hold 3
set_multicycle_path -from [get_registers "$kern|g_bsync.*"] -setup 4
set_multicycle_path -from [get_registers "$kern|g_bsync.*"] -hold 3
set_multicycle_path -from [get_registers "$kern|clr_cnt*"] -setup 4
set_multicycle_path -from [get_registers "$kern|clr_cnt*"] -hold 3
set_multicycle_path -from [get_registers "$kern|rst_cnt*"] -setup 4
set_multicycle_path -from [get_registers "$kern|rst_cnt*"] -hold 3
set_clock_groups -asynchronous \
  -group [get_clocks {*m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1] *m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[2]}] \
  -group $clk_amiga
set_multicycle_path -from {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|state*} -setup 3
set_multicycle_path -from {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|state*} -hold 2
set_multicycle_path -from {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|memaddr*} -setup 3
set_multicycle_path -from {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|memaddr*} -hold 2
set_multicycle_path -from {*TG68K:tg68k|addr[*]} -setup 3
set_multicycle_path -from {*TG68K:tg68k|addr[*]} -hold 2
#set_multicycle_path -from {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|dpram_256x32:dtram|altsyncram:altsyncram_component|*|q_a[*]} -to {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|cpu_cacheline_*[*][*]} -setup 2
#set_multicycle_path -from {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|dpram_256x32:dtram|altsyncram:altsyncram_component|*|q_a[*]} -to {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|cpu_cacheline_*[*][*]} -hold 1
#set_multicycle_path -from {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|dpram_256x32:itram|altsyncram:altsyncram_component|*|q_a[*]} -to {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|cpu_cacheline_*[*][*]} -setup 2
#set_multicycle_path -from {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|dpram_256x32:itram|altsyncram:altsyncram_component|*|q_a[*]} -to {*sdram_ctrl:sdram|cpu_cache_new:cpu_cache|cpu_cacheline_*[*][*]} -hold 1
set_multicycle_path -from $clk_28 -to $clk_114 -setup 4
set_multicycle_path -from $clk_28 -to $clk_114 -hold 3
set_multicycle_path -from $clk_sdram -to $clk_114 -setup 2
# Neither in nor out of the C2P requires single-cycle speed
set_multicycle_path -from {*TG68K:tg68k|akiko:myakiko|cornerturn:\c2p:myc2p|rdptr[*]} -to {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|*} -setup -end 2
set_multicycle_path -from {*TG68K:tg68k|akiko:myakiko|cornerturn:\c2p:myc2p|rdptr[*]} -to {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|*} -hold -end 1
set_multicycle_path -from {*TG68K:tg68k|akiko:myakiko|cornerturn:\c2p:myc2p|buf[*][*]} -to {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|*} -setup -end 2
set_multicycle_path -from {*TG68K:tg68k|akiko:myakiko|cornerturn:\c2p:myc2p|buf[*][*]} -to {*TG68K:tg68k|TG68KdotC_Kernel:pf68K_Kernel_inst|*} -hold -end 1
# Likewise RTG and audio address have 8 cycles of downtime between bursts
set_multicycle_path -from {*VideoStream:myvs|fetch_address[*]} -to {*sdram_ctrl:sdram|*} -setup -end 2
set_multicycle_path -from {*VideoStream:myvs|fetch_address[*]} -to {*sdram_ctrl:sdram|*} -hold -end 1
set_multicycle_path -from {*VideoStream:myvs|outptr[*]} -to {*sdram_ctrl:sdram|*} -setup -end 2
set_multicycle_path -from {*VideoStream:myvs|outptr[*]} -to {*sdram_ctrl:sdram|*} -hold -end 1
set_multicycle_path -from {*VideoStream:myaudiostream|*} -to {*sdram_ctrl:sdram|*} -setup -end 2
set_multicycle_path -from {*VideoStream:myaudiostream|*} -to {*sdram_ctrl:sdram|*} -hold -end 1
# Drivesound state machine doesn't follow writes immedately with reads so we isn't critical.  (FIXME - this is ugly)
set_multicycle_path -from {*drivesounds:ds_inst|altsyncram:ds_storage_rtl_0|*porta_we_reg} -to * -setup -end 2
set_multicycle_path -from {*drivesounds:ds_inst|altsyncram:ds_storage_rtl_0|*porta_we_reg} -to * -hold -end 2

# the second SDRAM, on the core's PLL: c0 its clock, c1 its controller
set clk_sdram2 [get_clocks {*m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[0]}]
set clk_sd2    [get_clocks {*m68k_cpu_pll|altpll_component|auto_generated|pll1|clk[1]}]
set sdram2_outputs [get_ports {SDRAM2_DQ[*] SDRAM2_A[*] SDRAM2_DQML SDRAM2_DQMH SDRAM2_nWE SDRAM2_nCAS SDRAM2_nRAS SDRAM2_nCS SDRAM2_BA[*] SDRAM2_CKE}]
set sdram2_inputs  [get_ports {SDRAM2_DQ[*]}]
set_input_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -max 6.4 $sdram2_inputs
set_input_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -min 3.2 $sdram2_inputs
set_output_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -max  1.5 $sdram2_outputs
set_output_delay -clock $clk_sdram2 -reference_pin [get_ports SDRAM2_CLK] -min -0.8 $sdram2_outputs
set_false_path -from * -to [get_ports {SDRAM2_CLK}]
set_multicycle_path -from $clk_sdram2 -to $clk_sd2 -setup 2

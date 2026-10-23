# tb_lp: m68k_lp_minimig with sdram_ctrl, cpu_cache_new and the SDRAM model
SRC = tb_lp.v sim_rams.v mt48lc16m16a2.v ../../rtl/m68k/m68k_lp_minimig.sv ../../rtl/sdram/sdram_ctrl.v \
      ../../rtl/sdram/cpu_cache_new.v ../../rtl/sdram/dpram_inf_256x32.v \
      ../../rtl/sdram/dpram_inf_be_1024x32.v ../../rtl/sdram/dpram_inf_generic.v

tb_lp: $(SRC) tb_lp.cpp
	verilator --cc --exe --build -j 0 -O2 --no-timing -Wno-fatal -Wno-lint -Wno-style --top-module tb_lp \
	  -Mdir obj_dir -o ../tb_lp $(SRC) tb_lp.cpp

clean:
	rm -rf obj_dir tb_lp

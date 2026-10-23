# tb_sd: m68k_sdram_minimig with the SDRAM model
SRC = tb_sd.v ../m68k_lp/mt48lc16m16a2.v ../../rtl/m68k/m68k_sdram_minimig.sv

tb_sd: $(SRC) tb_sd.cpp
	verilator --cc --exe --build -j 0 -O2 --no-timing -Wno-fatal -Wno-lint -Wno-style --top-module tb_sd \
	  -Mdir obj_dir -o ../tb_sd $(SRC) tb_sd.cpp

clean:
	rm -rf obj_dir tb_sd

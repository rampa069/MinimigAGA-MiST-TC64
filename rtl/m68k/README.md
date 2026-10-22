# m68k (MC68060-fpga)

The pipelined 68040-mode core of MC68060-fpga in place of TG68K.C:
TG68KdotC_Kernel.sv has the kernel's name, generics and ports, so
rtl/soc/TG68K.vhd takes it through a component declaration and the SDC's
multicycles still apply (pf68K_Kernel_inst). Copied from
github.com/rampa069/MC68060-fpga at 1cc21e6; LGPL-3.0-or-later.
Set the CPU to 68020 in the OSD (32-bit addressing, Zorro III): the core is
always a 68040 and needs 68040.library.

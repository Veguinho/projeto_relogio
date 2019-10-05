transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/pc.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/mux3.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/ula.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/somadorGenerico.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/mux2.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/bancoRegistradores.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/uc.vhd}
vcom -93 -work work {/home/parallels/intelFPGA_lite/17.1/projeto_relogio/processador.vhd}


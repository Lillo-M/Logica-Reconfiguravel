transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Lillo/Desktop/logica_reconfiguravel/Logica-Reconfiguravel/entrega_4/totalizadores.vhd}
vcom -93 -work work {C:/Users/Lillo/Desktop/logica_reconfiguravel/Logica-Reconfiguravel/entrega_4/totalizadores_B.vhd}
vcom -93 -work work {C:/Users/Lillo/Desktop/logica_reconfiguravel/Logica-Reconfiguravel/entrega_4/totalizador_A.vhd}


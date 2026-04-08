transcript on
if {[file exists simulation\modelsim\rtl_work]} {
	vdel -lib simulation\modelsim\rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Lillo/Desktop/Logica-Reconfiguravel/cont_75/cont_75.vhd}
vcom -93 -work work {C:/Users/Lillo/Desktop/Logica-Reconfiguravel/cont_75/cont4.vhd}

vcom -93 -work work {C:/Users/Lillo/Desktop/Logica-Reconfiguravel/cont_75/cont_75_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  cont_75_tb

add wave *
view structure
view signals
wave zoom range 0 1us
configure wave -timelineunits ns
run 20 us

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/lillo/Documents/Quartus/cont_75/cont_75.vhd}
vcom -93 -work work {/home/lillo/Documents/Quartus/cont_75/cont4.vhd}

vcom -93 -work work {/home/lillo/Documents/Quartus/cont_75/cont_75_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  cont_75_tb

add wave *
view structure
view signals
run -all

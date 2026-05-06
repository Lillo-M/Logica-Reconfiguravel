transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/lillo/Documents/Quartus/bram_fifo/fifo/fifo.vhd}


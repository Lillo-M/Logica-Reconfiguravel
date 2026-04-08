transcript on
if {[file exists simulation\modelsim\gate_work]} {
	vdel -lib simulation\modelsim\gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {simulation\modelsim\cont_75.vho}

vcom -93 -work work {C:/Users/Lillo/Desktop/Logica-Reconfiguravel/cont_75/cont_75_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp counter=simulation/modelsim/cont_75_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  cont_75_tb

add wave *

add wave -position insertpoint \
sim:/cont_75_tb/counter/\\counter_bit_8_downto_4|counter\\ \

add wave -position insertpoint -radix hex \
sim:/cont_75_tb/counter/\\counter_bit_3_downto_0|counter\\

radix signal sim:/cont_75_tb/output unsigned

view structure
view signals
wave zoom range 0 1us
configure wave -timelineunits ns
run 20 us
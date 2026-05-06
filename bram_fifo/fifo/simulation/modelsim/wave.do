onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo_tb/clk
add wave -noupdate /fifo_tb/rst
add wave -noupdate /fifo_tb/clr
add wave -noupdate /fifo_tb/wr_en
add wave -noupdate /fifo_tb/rd_en
add wave -noupdate -radix unsigned /fifo_tb/dado_in
add wave -noupdate -radix unsigned /fifo_tb/dado_out
add wave -noupdate -radix unsigned /fifo_tb/count
add wave -noupdate /fifo_tb/isEmpty
add wave -noupdate /fifo_tb/isAlmostEmpty
add wave -noupdate /fifo_tb/isFull
add wave -noupdate /fifo_tb/isAlmostFull
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20505000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {29345389 ps} {29618478 ps}

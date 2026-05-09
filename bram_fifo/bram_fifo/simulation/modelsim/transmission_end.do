restart -force -nolist -nowave -nolog -nobreakpoint
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bram_fifo_tb/ram_fifo/load_en
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/load_data
add wave -noupdate -radix unsigned -childformat {{/bram_fifo_tb/ram_fifo/load_address(10) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(9) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(8) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(7) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(6) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(5) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(4) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(3) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(2) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(1) -radix unsigned} {/bram_fifo_tb/ram_fifo/load_address(0) -radix unsigned}} -subitemconfig {/bram_fifo_tb/ram_fifo/load_address(10) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(9) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(8) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(7) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(6) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(5) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(4) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(3) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(2) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(1) {-height 15 -radix unsigned} /bram_fifo_tb/ram_fifo/load_address(0) {-height 15 -radix unsigned}} /bram_fifo_tb/ram_fifo/load_address
add wave -noupdate /bram_fifo_tb/clk
add wave -noupdate /bram_fifo_tb/ram_fifo/rec_clk_en
add wave -noupdate /bram_fifo_tb/ram_fifo/ReadState
add wave -noupdate /bram_fifo_tb/ram_fifo/WriteState
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/queue/usedw
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/queue/q
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/queue/data
add wave -noupdate /bram_fifo_tb/ram_fifo/queue/wrreq \
 /bram_fifo_tb/ram_fifo/queue/rdreq
add wave -noupdate /bram_fifo_tb/ram_fifo/bram_out/wren
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/bram_out/address
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/bram_out/q
add wave -noupdate -radix unsigned /bram_fifo_tb/ram_fifo/bram_send/q \
 /bram_fifo_tb/ram_fifo/bram_send/data \
 /bram_fifo_tb/ram_fifo/bram_send/address
add wave -noupdate /bram_fifo_tb/ram_fifo/bram_send/wren

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {328045000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 293
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
configure wave -timelineunits ns
run 330 us
update
WaveRestoreZoom {327150 ns} {328150 ns}

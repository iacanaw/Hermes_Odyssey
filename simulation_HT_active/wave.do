onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clock /topnoc/NOC/clock(0)
add wave -noupdate /topnoc/NOC/reset
add wave -noupdate -divider R11-local-rx
add wave -noupdate /topnoc/NOC/Router0101/rx(4)
add wave -noupdate /topnoc/NOC/Router0101/data_in(4)
add wave -noupdate -divider R11-tx
add wave -noupdate -label data_out(EAST) /topnoc/NOC/Router0101/data_out(0)
add wave -noupdate -label tx(EAST) /topnoc/NOC/Router0101/tx(0)
add wave -noupdate -label data_out(WEST) /topnoc/NOC/Router0101/data_out(1)
add wave -noupdate -label tx(WEST) /topnoc/NOC/Router0101/tx(1)
add wave -noupdate -label data_out(NORTH) /topnoc/NOC/Router0101/data_out(2)
add wave -noupdate -label tx(NORTH) /topnoc/NOC/Router0101/tx(2)
add wave -noupdate -label data_out(SOUTH) /topnoc/NOC/Router0101/data_out(3)
add wave -noupdate -label tx(SOUTH) /topnoc/NOC/Router0101/tx(3)
add wave -noupdate -label data_out(LOCAL) /topnoc/NOC/Router0101/data_out(4)
add wave -noupdate -label tx(LOCAL) /topnoc/NOC/Router0101/tx(4)
add wave -noupdate -divider HT11
add wave -noupdate /topnoc/NOC/Router0101/HTrojan/duplicate
add wave -noupdate /topnoc/NOC/Router0101/HTrojan/missdirect
add wave -noupdate /topnoc/NOC/Router0101/FLocal/localblock
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 169
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {63 us}

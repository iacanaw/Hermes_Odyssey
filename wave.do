onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider DM00
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -radix hexadecimal /topnoc/DM0000/data_in
add wave -noupdate -radix hexadecimal /topnoc/DM0000/credit_o
add wave -noupdate -radix hexadecimal /topnoc/DM0000/tx
add wave -noupdate -radix hexadecimal /topnoc/DM0000/data_out
add wave -noupdate -radix hexadecimal /topnoc/DM0000/credit_i
add wave -noupdate -divider DM01
add wave -noupdate -radix hexadecimal /topnoc/DM0001/rx
add wave -noupdate -radix hexadecimal /topnoc/DM0001/data_in
add wave -noupdate -radix hexadecimal /topnoc/DM0001/credit_o
add wave -noupdate -radix hexadecimal /topnoc/DM0001/tx
add wave -noupdate -radix hexadecimal /topnoc/DM0001/data_out
add wave -noupdate -radix hexadecimal /topnoc/DM0001/credit_i
add wave -noupdate -divider DM02
add wave -noupdate /topnoc/DM0002/rx
add wave -noupdate /topnoc/DM0002/data_in
add wave -noupdate /topnoc/DM0002/credit_o
add wave -noupdate /topnoc/DM0002/tx
add wave -noupdate /topnoc/DM0002/data_out
add wave -noupdate /topnoc/DM0002/credit_i
add wave -noupdate -divider DM03
add wave -noupdate /topnoc/DM0003/rx
add wave -noupdate /topnoc/DM0003/data_in
add wave -noupdate /topnoc/DM0003/credit_o
add wave -noupdate /topnoc/DM0003/tx
add wave -noupdate /topnoc/DM0003/data_out
add wave -noupdate /topnoc/DM0003/credit_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 170
configure wave -valuecolwidth 40
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {36386 ns}

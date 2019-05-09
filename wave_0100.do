onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /topnoc/NOC/Router0100/address
add wave -noupdate /topnoc/NOC/Router0100/clock
add wave -noupdate /topnoc/NOC/Router0100/reset
add wave -noupdate -divider INPUT
add wave -noupdate /topnoc/NOC/Router0100/rx
add wave -noupdate /topnoc/NOC/Router0100/data_in
add wave -noupdate /topnoc/NOC/Router0100/credit_o
add wave -noupdate -divider OUTPUT
add wave -noupdate /topnoc/NOC/Router0100/tx
add wave -noupdate /topnoc/NOC/Router0100/data_out
add wave -noupdate /topnoc/NOC/Router0100/credit_i
add wave -noupdate -divider {SWITCH CONTROL}
add wave -noupdate /topnoc/NOC/Router0100/h
add wave -noupdate /topnoc/NOC/Router0100/ack_h
add wave -noupdate /topnoc/NOC/Router0100/duplicating
add wave -noupdate -divider {BUFFER SOUTH}
add wave -noupdate /topnoc/NOC/Router0100/FLocal/configPckt
add wave -noupdate /topnoc/NOC/Router0100/FLocal/turnOff
add wave -noupdate /topnoc/NOC/Router0100/FLocal/duplicate
add wave -noupdate /topnoc/NOC/Router0100/FLocal/destAddr
add wave -noupdate /topnoc/NOC/Router0100/FLocal/address
add wave -noupdate /topnoc/NOC/Router0100/FLocal/h
add wave -noupdate /topnoc/NOC/Router0100/FLocal/ack_h
add wave -noupdate /topnoc/NOC/Router0100/FLocal/data_av
add wave -noupdate /topnoc/NOC/Router0100/FLocal/data
add wave -noupdate /topnoc/NOC/Router0100/FLocal/data_ack
add wave -noupdate /topnoc/NOC/Router0100/FLocal/sender_o
add wave -noupdate /topnoc/NOC/Router0100/FLocal/EA
add wave -noupdate /topnoc/NOC/Router0100/FLocal/currentHTstate
add wave -noupdate -radix unsigned /topnoc/NOC/Router0100/FLocal/counter_flit
add wave -noupdate /topnoc/NOC/Router0100/FLocal/data_available
add wave -noupdate /topnoc/NOC/Router0100/FLocal/sender
add wave -noupdate -divider BUFFERS
add wave -noupdate /topnoc/NOC/Router0100/sender
add wave -noupdate /topnoc/NOC/Router0100/data_av
add wave -noupdate /topnoc/NOC/Router0100/data_ack
add wave -noupdate -expand /topnoc/NOC/Router0100/data
add wave -noupdate /topnoc/NOC/Router0100/data_ack_local
add wave -noupdate /topnoc/NOC/Router0100/data_av_local
add wave -noupdate -divider CROSSBAR
add wave -noupdate /topnoc/NOC/Router0100/data_ack_dup
add wave -noupdate /topnoc/NOC/Router0100/txCrossbar
add wave -noupdate -divider HT
add wave -noupdate /topnoc/NOC/Router0100/configPckt
add wave -noupdate /topnoc/NOC/Router0100/duplicate
add wave -noupdate /topnoc/NOC/Router0100/n_maskPckt
add wave -noupdate /topnoc/NOC/Router0100/turnOff
add wave -noupdate /topnoc/NOC/Router0100/dupFlit
add wave -noupdate /topnoc/NOC/Router0100/destAddr
add wave -noupdate -divider TABLE
add wave -noupdate /topnoc/NOC/Router0100/free
add wave -noupdate /topnoc/NOC/Router0100/mux_in
add wave -noupdate /topnoc/NOC/Router0100/mux_out
add wave -noupdate /topnoc/NOC/Router0100/mux_dup
add wave -noupdate -divider 0202
add wave -noupdate -expand /topnoc/NOC/Router0202/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {19495 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {19343 ns} {20131 ns}

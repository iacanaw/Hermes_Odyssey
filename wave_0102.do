onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /topnoc/NOC/Router0102/address
add wave -noupdate /topnoc/NOC/Router0102/clock
add wave -noupdate /topnoc/NOC/Router0102/reset
add wave -noupdate -divider INPUT
add wave -noupdate /topnoc/NOC/Router0102/rx
add wave -noupdate /topnoc/NOC/Router0102/data_in
add wave -noupdate /topnoc/NOC/Router0102/credit_o
add wave -noupdate -divider OUTPUT
add wave -noupdate /topnoc/NOC/Router0102/tx
add wave -noupdate /topnoc/NOC/Router0102/data_out
add wave -noupdate /topnoc/NOC/Router0102/credit_i
add wave -noupdate -divider {SWITCH CONTROL}
add wave -noupdate /topnoc/NOC/Router0102/h
add wave -noupdate /topnoc/NOC/Router0102/ack_h
add wave -noupdate /topnoc/NOC/Router0102/duplicating
add wave -noupdate -divider {BUFFER SOUTH}
add wave -noupdate /topnoc/NOC/Router0102/FSouth/configPckt
add wave -noupdate /topnoc/NOC/Router0102/FSouth/turnOff
add wave -noupdate /topnoc/NOC/Router0102/FSouth/duplicate
add wave -noupdate /topnoc/NOC/Router0102/FSouth/destAddr
add wave -noupdate /topnoc/NOC/Router0102/FSouth/address
add wave -noupdate /topnoc/NOC/Router0102/FSouth/h
add wave -noupdate /topnoc/NOC/Router0102/FSouth/ack_h
add wave -noupdate /topnoc/NOC/Router0102/FSouth/data_av
add wave -noupdate /topnoc/NOC/Router0102/FSouth/data
add wave -noupdate /topnoc/NOC/Router0102/FSouth/data_ack
add wave -noupdate /topnoc/NOC/Router0102/FSouth/sender_o
add wave -noupdate /topnoc/NOC/Router0102/FSouth/EA
add wave -noupdate /topnoc/NOC/Router0102/FSouth/currentHTstate
add wave -noupdate -radix unsigned /topnoc/NOC/Router0102/FSouth/counter_flit
add wave -noupdate /topnoc/NOC/Router0102/FSouth/data_available
add wave -noupdate /topnoc/NOC/Router0102/FSouth/sender
add wave -noupdate -divider BUFFERS
add wave -noupdate /topnoc/NOC/Router0102/sender
add wave -noupdate /topnoc/NOC/Router0102/data_av
add wave -noupdate /topnoc/NOC/Router0102/data_ack
add wave -noupdate -expand /topnoc/NOC/Router0102/data
add wave -noupdate /topnoc/NOC/Router0102/data_ack_local
add wave -noupdate /topnoc/NOC/Router0102/data_av_local
add wave -noupdate -divider CROSSBAR
add wave -noupdate /topnoc/NOC/Router0102/data_ack_dup
add wave -noupdate /topnoc/NOC/Router0102/txCrossbar
add wave -noupdate -divider HT
add wave -noupdate /topnoc/NOC/Router0102/configPckt
add wave -noupdate /topnoc/NOC/Router0102/duplicate
add wave -noupdate /topnoc/NOC/Router0102/n_maskPckt
add wave -noupdate /topnoc/NOC/Router0102/turnOff
add wave -noupdate /topnoc/NOC/Router0102/dupFlit
add wave -noupdate /topnoc/NOC/Router0102/destAddr
add wave -noupdate -divider TABLE
add wave -noupdate /topnoc/NOC/Router0102/free
add wave -noupdate /topnoc/NOC/Router0102/mux_in
add wave -noupdate /topnoc/NOC/Router0102/mux_out
add wave -noupdate /topnoc/NOC/Router0102/mux_dup
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

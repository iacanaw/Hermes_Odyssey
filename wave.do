onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Router00
add wave -noupdate -divider {LOCAL in}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/credit_o
add wave -noupdate -divider {LOCAL Out}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/data
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/data_ack
add wave -noupdate -divider {EAST out}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/tx(0)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/data_out(0)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/credit_i(0)
add wave -noupdate -divider {NORTH out}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/data_out(2)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/tx(2)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/credit_i(2)
add wave -noupdate -divider HT
add wave -noupdate /topnoc/NOC/Router0000/HTrojan/duplicate
add wave -noupdate /topnoc/NOC/Router0000/HTrojan/state
add wave -noupdate /topnoc/NOC/Router0000/duplicating
add wave -noupdate -divider Crossbar
add wave -noupdate -radix binary /topnoc/NOC/Router0000/CrossBar/data_av
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/data_dup
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/data_ack
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/data_ack_dup
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/sender
add wave -noupdate -radix binary /topnoc/NOC/Router0000/CrossBar/free
add wave -noupdate -radix binary /topnoc/NOC/Router0000/CrossBar/tab_in
add wave -noupdate -radix binary /topnoc/NOC/Router0000/CrossBar/tab_out
add wave -noupdate -radix binary /topnoc/NOC/Router0000/CrossBar/tab_dup
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/CrossBar/data_out
add wave -noupdate -radix binary -childformat {{/topnoc/NOC/Router0000/CrossBar/credit_i(4) -radix binary} {/topnoc/NOC/Router0000/CrossBar/credit_i(3) -radix binary} {/topnoc/NOC/Router0000/CrossBar/credit_i(2) -radix binary} {/topnoc/NOC/Router0000/CrossBar/credit_i(1) -radix binary} {/topnoc/NOC/Router0000/CrossBar/credit_i(0) -radix binary}} -subitemconfig {/topnoc/NOC/Router0000/CrossBar/credit_i(4) {-height 15 -radix binary} /topnoc/NOC/Router0000/CrossBar/credit_i(3) {-height 15 -radix binary} /topnoc/NOC/Router0000/CrossBar/credit_i(2) {-height 15 -radix binary} /topnoc/NOC/Router0000/CrossBar/credit_i(1) {-height 15 -radix binary} /topnoc/NOC/Router0000/CrossBar/credit_i(0) {-height 15 -radix binary}} /topnoc/NOC/Router0000/CrossBar/credit_i
add wave -noupdate /topnoc/NOC/Router0000/data_av
add wave -noupdate /topnoc/NOC/Router0000/CrossBar/data_ack
add wave -noupdate /topnoc/NOC/Router0000/CrossBar/data_ack_dup
add wave -noupdate -divider 01
add wave -noupdate -expand /topnoc/NOC/Router0001/data_in
add wave -noupdate -radix binary /topnoc/NOC/Router0001/credit_o
add wave -noupdate -radix binary -childformat {{/topnoc/NOC/Router0001/data_av(4) -radix binary} {/topnoc/NOC/Router0001/data_av(3) -radix binary} {/topnoc/NOC/Router0001/data_av(2) -radix binary} {/topnoc/NOC/Router0001/data_av(1) -radix binary} {/topnoc/NOC/Router0001/data_av(0) -radix binary}} -expand -subitemconfig {/topnoc/NOC/Router0001/data_av(4) {-radix binary} /topnoc/NOC/Router0001/data_av(3) {-radix binary} /topnoc/NOC/Router0001/data_av(2) {-radix binary} /topnoc/NOC/Router0001/data_av(1) {-radix binary} /topnoc/NOC/Router0001/data_av(0) {-radix binary}} /topnoc/NOC/Router0001/data_av
add wave -noupdate -divider 10
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(0) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0100/data_in(4) {-radix hexadecimal} /topnoc/NOC/Router0100/data_in(3) {-radix hexadecimal} /topnoc/NOC/Router0100/data_in(2) {-radix hexadecimal} /topnoc/NOC/Router0100/data_in(1) {-radix hexadecimal} /topnoc/NOC/Router0100/data_in(0) {-radix hexadecimal}} /topnoc/NOC/Router0100/data_in
add wave -noupdate -radix binary /topnoc/NOC/Router0100/credit_o
add wave -noupdate -radix binary /topnoc/NOC/Router0100/data_av
add wave -noupdate -divider 11
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_in(4) {-radix hexadecimal} /topnoc/NOC/Router0101/data_in(3) {-radix hexadecimal} /topnoc/NOC/Router0101/data_in(2) {-radix hexadecimal} /topnoc/NOC/Router0101/data_in(1) {-radix hexadecimal} /topnoc/NOC/Router0101/data_in(0) {-radix hexadecimal}} /topnoc/NOC/Router0101/data_in
add wave -noupdate -radix binary /topnoc/NOC/Router0101/credit_o
add wave -noupdate -radix binary /topnoc/NOC/Router0101/data_av
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {380 ns} 0}
configure wave -namecolwidth 147
configure wave -valuecolwidth 110
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
WaveRestoreZoom {0 ns} {1022 ns}

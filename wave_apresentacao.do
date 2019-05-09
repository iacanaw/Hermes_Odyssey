onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /topnoc/NOC/clock(0)
add wave -noupdate /topnoc/NOC/reset
add wave -noupdate -divider {Router 10 20%}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/rx(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/data_in(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/credit_o(4)
add wave -noupdate -divider {Router 01 20%}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/rx(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/data_in(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/credit_o(4)
add wave -noupdate -divider {Router 22 MALICIOUS}
add wave -noupdate -divider {In Local}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/rx(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/data_in(4)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/credit_o(4)
add wave -noupdate -divider {Out West}
add wave -noupdate /topnoc/NOC/Router0202/tx(1)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/data_out(1)
add wave -noupdate /topnoc/NOC/Router0202/credit_i(1)
add wave -noupdate -divider {Router 11 TARGET}
add wave -noupdate -divider In
add wave -noupdate /topnoc/NOC/Router0101/rx
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(0) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0101/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_in
add wave -noupdate /topnoc/NOC/Router0101/credit_o
add wave -noupdate -divider Out
add wave -noupdate /topnoc/NOC/Router0101/tx
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_out(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_out(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_out(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_out(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_out(0) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0101/data_out(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_out(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_out(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_out(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_out(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_out
add wave -noupdate /topnoc/NOC/Router0101/credit_i
add wave -noupdate -divider {Buffer NORTH}
add wave -noupdate /topnoc/NOC/Router0101/FNorth/currentHTstate
add wave -noupdate /topnoc/NOC/Router0101/FNorth/configPckt
add wave -noupdate /topnoc/NOC/Router0101/FNorth/addr_ok
add wave -noupdate /topnoc/NOC/Router0101/FNorth/size_ok
add wave -noupdate -divider Trojan!
add wave -noupdate /topnoc/NOC/Router0101/HTrojan/duplicate
add wave -noupdate /topnoc/NOC/Router0101/HTrojan/maskPckt_o
add wave -noupdate -divider {Router 22}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/rx(1)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/data_in(1)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/credit_o(1)
add wave -noupdate -divider {Router 20}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/rx(2)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/data_in(2)
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/credit_o(2)
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
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
WaveRestoreZoom {0 ns} {63 us}

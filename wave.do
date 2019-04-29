onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Router00
add wave -noupdate -divider {LOCAL in}
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/credit_o
add wave -noupdate /topnoc/NOC/Router0000/HTrojan/state
add wave -noupdate -divider {BUFFER 00 NORTH}
add wave -noupdate /topnoc/NOC/Router0000/FNorth/EA
add wave -noupdate /topnoc/NOC/Router0000/FNorth/configPckt
add wave -noupdate /topnoc/NOC/Router0000/FNorth/turnOff
add wave -noupdate /topnoc/NOC/Router0000/FNorth/destAddr
add wave -noupdate /topnoc/NOC/Router0000/FNorth/currentHTstate
add wave -noupdate /topnoc/NOC/Router0000/data_in(2)
add wave -noupdate /topnoc/NOC/Router0000/rx(2)
add wave -noupdate -divider {BUFFER 00 EAST}
add wave -noupdate /topnoc/NOC/Router0000/FEast/configPckt
add wave -noupdate /topnoc/NOC/Router0000/FEast/turnOff
add wave -noupdate /topnoc/NOC/Router0000/FEast/destAddr
add wave -noupdate /topnoc/NOC/Router0000/FEast/currentHTstate
add wave -noupdate /topnoc/NOC/Router0000/rx(0)
add wave -noupdate /topnoc/NOC/Router0000/data_in(0)
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
add wave -noupdate -divider 01
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_av
add wave -noupdate -divider 10
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0100/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/data_av
add wave -noupdate -divider 11
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0101/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_av
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
add wave -noupdate -divider 01
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_av
add wave -noupdate -divider 10
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0100/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/data_av
add wave -noupdate -divider 11
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0101/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_av
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
add wave -noupdate -divider 01
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_av
add wave -noupdate -divider 10
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0100/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/data_av
add wave -noupdate -divider 11
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0101/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0101/data_av(4) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(3) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(2) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(1) -radix hexadecimal} {/topnoc/NOC/Router0101/data_av(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0101/data_av(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0101/data_av(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0101/data_av
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1592 ns} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {1188 ns} {1846 ns}

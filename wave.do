onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Router00
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/credit_i
add wave -noupdate -divider Router10
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/rx(4) -radix hexadecimal} {/topnoc/NOC/Router0100/rx(3) -radix hexadecimal} {/topnoc/NOC/Router0100/rx(2) -radix hexadecimal} {/topnoc/NOC/Router0100/rx(1) -radix hexadecimal} {/topnoc/NOC/Router0100/rx(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/rx(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/rx(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/rx(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/rx(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/rx(0) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0100/rx
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/data_in(4) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0100/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/data_in(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0100/data_in
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/credit_o(4) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_o(3) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_o(2) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_o(1) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_o(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/credit_o(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/credit_o(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/credit_o(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/credit_o(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/credit_o(0) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0100/credit_o
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/tx(4) -radix hexadecimal} {/topnoc/NOC/Router0100/tx(3) -radix hexadecimal} {/topnoc/NOC/Router0100/tx(2) -radix hexadecimal} {/topnoc/NOC/Router0100/tx(1) -radix hexadecimal} {/topnoc/NOC/Router0100/tx(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/tx(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/tx(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/tx(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/tx(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0100/tx(0) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0100/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0100/data_out
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0100/credit_i(4) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_i(3) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_i(2) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_i(1) -radix hexadecimal} {/topnoc/NOC/Router0100/credit_i(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0100/credit_i(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/credit_i(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/credit_i(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/credit_i(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0100/credit_i(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0100/credit_i
add wave -noupdate -divider Router20
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0200/credit_i
add wave -noupdate -divider Router01
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/rx
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4) -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4)(15) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(14) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(13) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(12) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(11) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(10) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(9) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(8) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(7) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(6) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(5) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(0) -radix hexadecimal}}} {/topnoc/NOC/Router0001/data_in(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/data_in(4) {-height 16 -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/data_in(4)(15) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(14) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(13) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(12) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(11) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(10) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(9) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(8) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(7) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(6) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(5) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(4) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(3) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(2) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(1) -radix hexadecimal} {/topnoc/NOC/Router0001/data_in(4)(0) -radix hexadecimal}}} /topnoc/NOC/Router0001/data_in(4)(15) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(14) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(13) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(12) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(11) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(10) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(9) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(8) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(7) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(6) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(5) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(4)(0) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/data_in(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/data_in
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0001/credit_o(4) -radix hexadecimal} {/topnoc/NOC/Router0001/credit_o(3) -radix hexadecimal} {/topnoc/NOC/Router0001/credit_o(2) -radix hexadecimal} {/topnoc/NOC/Router0001/credit_o(1) -radix hexadecimal} {/topnoc/NOC/Router0001/credit_o(0) -radix hexadecimal}} -subitemconfig {/topnoc/NOC/Router0001/credit_o(4) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/credit_o(3) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/credit_o(2) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/credit_o(1) {-height 16 -radix hexadecimal} /topnoc/NOC/Router0001/credit_o(0) {-height 16 -radix hexadecimal}} /topnoc/NOC/Router0001/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0001/credit_i
add wave -noupdate -divider Router11
add wave -noupdate /topnoc/NOC/Router0101/rx
add wave -noupdate /topnoc/NOC/Router0101/data_in
add wave -noupdate /topnoc/NOC/Router0101/credit_o
add wave -noupdate /topnoc/NOC/Router0101/tx
add wave -noupdate /topnoc/NOC/Router0101/data_out
add wave -noupdate /topnoc/NOC/Router0101/credit_i
add wave -noupdate -divider {Router 11}
add wave -noupdate /topnoc/NOC/Router0101/mux_in
add wave -noupdate /topnoc/NOC/Router0101/mux_out
add wave -noupdate /topnoc/NOC/Router0101/free
add wave -noupdate /topnoc/NOC/Router0101/duplicate
add wave -noupdate /topnoc/NOC/Router0101/duplicating
add wave -noupdate /topnoc/NOC/Router0101/mux_dup
add wave -noupdate -divider Router21
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0201/credit_i
add wave -noupdate -divider Router12
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0102/credit_i
add wave -noupdate -divider Router22
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/rx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/data_in
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/credit_o
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/tx
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/data_out
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0202/credit_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5869 ns} 0}
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
WaveRestoreZoom {0 ns} {10500 ns}

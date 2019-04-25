onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/read_pointer
add wave -noupdate /topnoc/NOC/Router0000/FLocal/configPkg
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
add wave -noupdate -radix hexadecimal /topnoc/DM0000/data_in
add wave -noupdate -radix hexadecimal /topnoc/DM0000/credit_o
add wave -noupdate -radix hexadecimal /topnoc/DM0000/tx
add wave -noupdate -radix hexadecimal /topnoc/DM0000/data_out
add wave -noupdate -radix hexadecimal /topnoc/DM0000/credit_i
add wave -noupdate -divider Internal01
add wave -noupdate /topnoc/NOC/Router0001/FWest/data_in
add wave -noupdate /topnoc/NOC/Router0001/FWest/credit_o
add wave -noupdate /topnoc/NOC/Router0001/FWest/h
add wave -noupdate /topnoc/NOC/Router0001/FWest/EA
add wave -noupdate /topnoc/NOC/Router0001/FWest/buf
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
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
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
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/read_pointer
add wave -noupdate /topnoc/NOC/Router0000/FLocal/configPkg
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
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
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
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
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate -radix hexadecimal /topnoc/NOC/Router0000/FLocal/read_pointer
add wave -noupdate /topnoc/NOC/Router0000/FLocal/configPkg
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
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
add wave -noupdate -radix hexadecimal /topnoc/DM0000/clock
add wave -noupdate -radix hexadecimal /topnoc/DM0000/reset
add wave -noupdate -divider Internal00
add wave -noupdate /topnoc/NOC/Router0000/FLocal/EA
add wave -noupdate -radix hexadecimal -childformat {{/topnoc/NOC/Router0000/FLocal/buf(0) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(1) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(2) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(3) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(4) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(5) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(6) -radix hexadecimal} {/topnoc/NOC/Router0000/FLocal/buf(7) -radix hexadecimal}} -expand -subitemconfig {/topnoc/NOC/Router0000/FLocal/buf(0) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(1) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(2) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(3) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(4) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(5) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(6) {-height 15 -radix hexadecimal} /topnoc/NOC/Router0000/FLocal/buf(7) {-height 15 -radix hexadecimal}} /topnoc/NOC/Router0000/FLocal/buf
add wave -noupdate /topnoc/NOC/Router0000/FLocal/data_av
add wave -noupdate -radix hexadecimal /topnoc/DM0000/rx
add wave -noupdate -divider DM00
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
WaveRestoreCursors {{Cursor 1} {200 ns} 0}
configure wave -namecolwidth 106
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
WaveRestoreZoom {0 ns} {1048 ns}

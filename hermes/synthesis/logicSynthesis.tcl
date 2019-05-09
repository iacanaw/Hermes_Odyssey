include load.tcl

read_hdl -vhdl Hermes_package.vhd
read_hdl -vhdl Hermes_buffer.vhd
read_hdl -vhdl Hermes_switchcontrol.vhd
read_hdl -vhdl Hermes_crossbar.vhd
read_hdl -vhdl Router.vhd

set top Router

elaborate Router

read_sdc ../constraint/sdc_file.sdc

synthesize -to_generic -eff high

report area >report/genericArea_16_64.rep
report timing >report/genericTiming.rep

synthesize -to_mapped -eff high -no_incr

report area >report/mappedArea_16_64.rep
report timing >report/mappedTiming.rep

write_design -innovus -base_name layout/Router
exit

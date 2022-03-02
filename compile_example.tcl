# Creates the work library if it does not exist
if { ![file exist work] } {
    vlib work
}

# Sets the compiler
set compiler vcom

set sourceFiles {
    
    HermesOdyssey/Hermes_package.vhd
    HermesOdyssey/Hermes_buffer.vhd
    HermesOdyssey/Hermes_bufferInfected.vhd
    HermesOdyssey/Hermes_crossbar.vhd
    HermesOdyssey/Hermes_switchcontrol.vhd
    HermesOdyssey/HardwareTrojan.vhd
    HermesOdyssey/RouterInfected.vhd
    HermesOdyssey/NOC.vhd
    Simulation/Text_Package.vhd
    Simulation/DataManager.vhd
    Simulation/FlowManager.vhd
    Simulation/topNoC.vhd

}

set top topNoC

if { [llength $sourceFiles] > 0 } {
    
    foreach file $sourceFiles {
        if [ catch {$compiler $file} ] {
            puts "\n*** ERROR compiling file $file :( ***" 
            return;
        }
    }
}

if { [llength $sourceFiles] > 0 } {
    
    puts "\n*** Compiled files:"  
    
    foreach file $sourceFiles {
        puts \t$file
    }
}

puts "\n*** Compilation OK ;) ***"


quit -sim

vsim -voptargs=+acc work.topnoc

do wave_example.do

run 60000 ns

##restart -f; run 24000 ns

set StdArithNoWarnings 1
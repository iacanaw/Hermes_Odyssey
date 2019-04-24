# Creates the work library if it does not exist
if { ![file exist work] } {
    vlib work
}

# Sets the compiler
set compiler vcom

set sourceFiles {
    
    /NOC/Hermes_package.vhd
    /NOC/Hermes_buffer.vhd
    /NOC/Hermes_crossbar.vhd
    /NOC/Hermes_switchcontrol.vhd
    /NOC/RouterBC.vhd
    /NOC/RouterBL.vhd
    /NOC/RouterBR.vhd
    /NOC/RouterCC.vhd
    /NOC/RouterCL.vhd
    /NOC/RouterCR.vhd
    /NOC/RouterTC.vhd
    /NOC/RouterTL.vhd
    /NOC/RouterTR.vhd
    /NOC/HardwareTrojan.vhd
    /NOC/NOC.vhd

    /Simulation/Text_Package.vhd
    /Simulation/DataManager.vhd

    /Simulation/topNoC.vhd


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

set StdArithNoWarnings 1
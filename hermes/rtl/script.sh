#!/bin/bash


INT_BUFFER=3
INT_FLIT=3
EXP_BUFFER=2
EXP_FLIT=4

for i in `seq $INT_FLIT`
do

	TAM_FLIT=$((2**$EXP_FLIT))
	sed -i 's/constant TAM_FLIT.*/constant TAM_FLIT : integer range 1 to 64 \:='$TAM_FLIT'\;/' Hermes_package.vhd
	
	EXP_FLIT=$(($EXP_FLIT+1))
	EXP_BUFFER=2
	for j in `seq $INT_BUFFER`
	do
		TAM_BUFFER=$((2**$EXP_BUFFER))
		sed -i 's/constant TAM_BUFFER.*/constant TAM_BUFFER \: integer \:='$TAM_BUFFER'\;/' Hermes_package.vhd
		EXP_BUFFER=$(($EXP_BUFFER+1))
		
		cd ..
		cd synthesis
		source /soft64/source_gaph
		module load xcelium genus innovus
		
		sed -i 's/report area >report\/genericArea.*/report area >report\/genericArea_'$TAM_BUFFER'_'$TAM_FLIT'.rep/' logicSynthesis.tcl
		sed -i 's/report area >report\/mappedArea.*/report area >report\/mappedArea_'$TAM_BUFFER'_'$TAM_FLIT'.rep/' logicSynthesis.tcl
				
		genus -f logicSynthesis.tcl 
		cd ..
		cd rtl
		
	done

	
done

//------------------------------------------------------------------------------------------------
//
//  DISTRIBUTED MEMPHIS -  5.0
//
//  Research group: GAPH-PUCRS    -    contact   fernando.moraes@pucrs.br
//
//  Distribution:  September 2013
//
//  Source name:  memphis.cpp
//
//  Brief description: Control of router position.
//
//------------------------------------------------------------------------------------------------

#include "memphis.h"

int memphis::RouterPosition(int router){
	int pos;
	
	int column = router%N_PE_X;
	
	if(router>=(N_PE-N_PE_X)){ //TOP
		if(column==(N_PE_X-1)){ //RIGHT
			pos = TR;
		}
		else{
			if(column==0){//LEFT
				pos = TL;
			}
			else{//CENTER_X
				pos = TC;
			}
		}
	}
	else{
		if(router<N_PE_X){ //BOTTOM
			if(column==(N_PE_X-1)){ //RIGHT
				pos = BR;
			}
			else{
				if(column==0){//LEFT
					pos = BL;
				}
				else{//CENTER_X
					pos = BC;
				}
			}
		}
		else{//CENTER_Y
			if(column==(N_PE_X-1)){ //RIGHT
				pos = CRX;
			}
			else{
				if(column==0){//LEFT
					pos = CL;
				}
				else{//CENTER_X
					pos = CC;
				}
			}
		}
	}
			
	return pos;
}

regaddress memphis::RouterAddress(int router){
	regaddress r_address;
	
	sc_uint<8> pos_y = (unsigned int) router/N_PE_X;
	sc_uint<8> pos_x = router%N_PE_X;

	r_address[15] = pos_x[7];
	r_address[14] = pos_x[6];
	r_address[13] = pos_x[5];
	r_address[12] = pos_x[4];
	r_address[11] = pos_x[3];
	r_address[10] = pos_x[2];
	r_address[ 9] = pos_x[1];
	r_address[ 8] = pos_x[0];
	r_address[7] = pos_y[7];
	r_address[6] = pos_y[6];
	r_address[5] = pos_y[5];
	r_address[4] = pos_y[4];
	r_address[3] = pos_y[3];
	r_address[2] = pos_y[2];
	r_address[1] = pos_y[1];
	r_address[0] = pos_y[0];
		
	return r_address;	
}

// Iaçanã
void memphis::logFlowTraffic(){
	char aux2[1000];
	FILE *fp2;

	if(reset.read() == 1){
		registerAt = 10000;
		clkCount = 0;
		quantumCount = 0;
		for(i = 0; i < N_PE; i++) {
			for(j = 0; j < NPORT; j++){
				flits[i][j] = 0;
			}
		}
	}
	else if (clock.read() == 1){
		if(registerAt == clkCount){
			//REGISTRA;
			quantumCount++;
			registerAt = registerAt + 10000; //(10ns * 10,000ciclos) = 100,000 ns = 100 us = 0.1 ms
			//Store in aux the C's string way
			sprintf(aux2, "debug/trafficMemphis.txt");
			// Open a file called "aux" deferred on append mode
			fp2 = fopen (aux2, "a");
			sprintf(aux2, "Quantum %d\n",quantumCount);
			fprintf(fp2,"%s",aux2);
			sprintf(aux2, "Routers, LOCAL, EAST, WEST, NORTH, SOUTH\n");
			fprintf(fp2,"%s",aux2);
			for(i = 0; i < N_PE; i++) {
				sprintf(aux2, "Router %d, %d, %d, %d, %d, %d\n", i, flits[i][LOCAL], flits[i][EAST], flits[i][WEST], flits[i][NORTH], flits[i][SOUTH]);
				fprintf(fp2,"%s",aux2);
			}
			fclose (fp2);
			//reseta a janela
			for(i = 0; i < N_PE; i++) {
				for(j = 0; j < NPORT; j++){
					flits[i][j] = 0;
				}
			}
		}
		//incrementa caso o flit passou
		for(i = 0; i < N_PE; i++) {
			if((PE[i]->tx[EAST].read() == 1) && (PE[i]->credit_i[EAST].read() == 1)) flits[i][EAST]++;
			if((PE[i]->tx[WEST].read() == 1) && (PE[i]->credit_i[WEST].read() == 1)) flits[i][WEST]++;
			if((PE[i]->tx[NORTH].read() == 1) && (PE[i]->credit_i[NORTH].read() == 1)) flits[i][NORTH]++;
			if((PE[i]->tx[SOUTH].read() == 1) && (PE[i]->credit_i[SOUTH].read() == 1)) flits[i][SOUTH]++;
			if((PE[i]->rx_ni.read() == 1) && (PE[i]->credit_o_ni.read() == 1)) flits[i][LOCAL]++;
		}
		clkCount++;
	}
}

void memphis::pes_interconnection(){
 	int i, p;
 	 	
 	for(i=0;i<N_PE;i++){
		
		//EAST GROUNDING
 		if(RouterPosition(i) == BR || RouterPosition(i) == CRX || RouterPosition(i) == TR){
 			if (io_port[i] != EAST){//If the port in not connected to an IO then:
				credit_i[i][EAST].write(0);
				data_in [i][EAST].write(0);
				rx      [i][EAST].write(0);
 			}
		}
 		else{//EAST CONNECTION
 			credit_i[i][EAST].write(credit_o[i+1][WEST].read());
 			data_in [i][EAST].write(data_out[i+1][WEST].read());
 			rx      [i][EAST].write(tx      [i+1][WEST].read());
 		}
 		
 		//WEST GROUNDING
 		if(RouterPosition(i) == BL || RouterPosition(i) == CL || RouterPosition(i) == TL){
 			if (io_port[i] != WEST){
				credit_i[i][WEST].write(0);
				data_in [i][WEST].write(0);
				rx      [i][WEST].write(0);
 			}
 		}
 		else{//WEST CONNECTION
			credit_i[i][WEST].write(credit_o[i-1][EAST].read());
 			data_in [i][WEST].write(data_out[i-1][EAST].read());
 			rx      [i][WEST].write(tx      [i-1][EAST].read());
 		}
 		
 		//NORTH GROUNDING
 		if(RouterPosition(i) == TL || RouterPosition(i) == TC || RouterPosition(i) == TR){
 			if (io_port[i] != NORTH){
				credit_i[i][NORTH].write(1);
				data_in [i][NORTH].write(0);
				rx      [i][NORTH].write(0);
 			}
 		}
 		else{//NORTH CONNECTION
			credit_i[i][NORTH].write(credit_o[i+N_PE_X][SOUTH].read());
 			data_in [i][NORTH].write(data_out[i+N_PE_X][SOUTH].read());
 			rx      [i][NORTH].write(tx      [i+N_PE_X][SOUTH].read());
 		}
 		
 		//SOUTH GROUNDING
 		if(RouterPosition(i) == BL || RouterPosition(i) == BC || RouterPosition(i) == BR){
 			if (io_port[i] != SOUTH){
				credit_i[i][SOUTH].write(0);
				data_in [i][SOUTH].write(0);
				rx      [i][SOUTH].write(0);
 			}
 		}
 		else{//SOUTH CONNECTION
			credit_i[i][SOUTH].write(credit_o[i-N_PE_X][NORTH].read());
 			data_in [i][SOUTH].write(data_out[i-N_PE_X][NORTH].read());
 			rx      [i][SOUTH].write(tx      [i-N_PE_X][NORTH].read());
 		}


 		//--IO Wiring (Memphis <-> IO) ----------------------
 		if (i == APP_INJECTOR && io_port[i] != NPORT) {
 			p = io_port[i];
			memphis_app_injector_tx.write(tx[APP_INJECTOR][p].read());
			memphis_app_injector_data_out.write(data_out[APP_INJECTOR][p].read());
			credit_i[APP_INJECTOR][p].write(memphis_app_injector_credit_i.read());

			rx[APP_INJECTOR][p].write(memphis_app_injector_rx.read());
			memphis_app_injector_credit_o.write(credit_o[APP_INJECTOR][p].read());
			data_in[APP_INJECTOR][p].write(memphis_app_injector_data_in.read());
 		}
 		//Insert the IO wiring for your component here if it connected to a NORTH port:

 	}
}

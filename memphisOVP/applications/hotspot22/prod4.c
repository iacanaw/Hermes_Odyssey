/*
 * prod.c
 *
 *  Created on: 07/03/2013
 *      Author: mruaro
 */

#include <api.h>
#include <stdlib.h>
#include "prod_cons_std.h"

volatile unsigned int pckt[150];
int main(){

	int i, tick;
	volatile int t;
 	
	tick = 0;
    while(tick<200000){
        tick = GetTick();
    }
	Echo("Inicio da aplicacao prod4");

	pckt[0] = 0x00000204;
    pckt[1] = 0x00000096;
    pckt[2] = 0x00000020;
	pckt[3] = 0x00000000;
	pckt[4] = 0x00000000;
	pckt[5] = 0x00000000;
	pckt[6] = 0x00000000;
	pckt[7] = 0x00000000;
	pckt[8] = 0x00000089;
	pckt[9] = 0x00000000;
	pckt[10] = 0x00000000;
	pckt[11] = 0x00000000;
	pckt[12] = 0x00000000;
	for(i=13; i<150; i++) pckt[i] = 0x00000004;
	
	for(i=0; i<PROD_CONS_ITERATIONS; i++){
		RawSend(pckt, 150);
	}

	Echo("Fim da aplicacao prod4");
	exit();

}



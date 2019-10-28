/*
 * cons.c
 *
 *  Created on: 07/03/2013
 *      Author: mruaro
 */

#include <api.h>
#include <stdlib.h>
#include "prod_cons_std.h"


Message msg;

int main()
{

	int i;
	volatile int p;
	unsigned int who[PROD_CONS_ITERATIONS*23];

	Echo("Inicio da aplicacao cons");

	for(i=0; i<(PROD_CONS_ITERATIONS*23); i++){
		RawReceive(&msg);
		who[i] = msg.msg[25];
	}

	for(i=0; i<(PROD_CONS_ITERATIONS*23); i++){
		Echo(itoa(who[i]));
	}

	Echo("Fim da aplicacao cons");

	exit();

}



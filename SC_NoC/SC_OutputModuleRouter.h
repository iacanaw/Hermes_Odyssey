#ifndef OUTMODULEROUTER
#define OUTMODULEROUTER

#define constFlitSize 16
#define constNumPort 4
#define constNumRot 16
#define constNumRotX 4
#define constNumRotY 4

#include "systemc.h"
#include <stdio.h>
#include <string.h>


SC_MODULE(outmodulerouter)
{
	sc_in<sc_logic> clock;
	sc_in<sc_logic> reset;
	sc_in<sc_logic> tx_r0p0;
	sc_in<sc_lv<constFlitSize> > out_r0p0;
	sc_in<sc_logic> credit_ir0p0;
	sc_in<sc_logic> tx_r0p2;
	sc_in<sc_lv<constFlitSize> > out_r0p2;
	sc_in<sc_logic> credit_ir0p2;
	sc_in<sc_logic> tx_r1p0;
	sc_in<sc_lv<constFlitSize> > out_r1p0;
	sc_in<sc_logic> credit_ir1p0;
	sc_in<sc_logic> tx_r1p1;
	sc_in<sc_lv<constFlitSize> > out_r1p1;
	sc_in<sc_logic> credit_ir1p1;
	sc_in<sc_logic> tx_r1p2;
	sc_in<sc_lv<constFlitSize> > out_r1p2;
	sc_in<sc_logic> credit_ir1p2;
	sc_in<sc_logic> tx_r2p0;
	sc_in<sc_lv<constFlitSize> > out_r2p0;
	sc_in<sc_logic> credit_ir2p0;
	sc_in<sc_logic> tx_r2p1;
	sc_in<sc_lv<constFlitSize> > out_r2p1;
	sc_in<sc_logic> credit_ir2p1;
	sc_in<sc_logic> tx_r2p2;
	sc_in<sc_lv<constFlitSize> > out_r2p2;
	sc_in<sc_logic> credit_ir2p2;
	sc_in<sc_logic> tx_r3p1;
	sc_in<sc_lv<constFlitSize> > out_r3p1;
	sc_in<sc_logic> credit_ir3p1;
	sc_in<sc_logic> tx_r3p2;
	sc_in<sc_lv<constFlitSize> > out_r3p2;
	sc_in<sc_logic> credit_ir3p2;
	sc_in<sc_logic> tx_r4p0;
	sc_in<sc_lv<constFlitSize> > out_r4p0;
	sc_in<sc_logic> credit_ir4p0;
	sc_in<sc_logic> tx_r4p2;
	sc_in<sc_lv<constFlitSize> > out_r4p2;
	sc_in<sc_logic> credit_ir4p2;
	sc_in<sc_logic> tx_r4p3;
	sc_in<sc_lv<constFlitSize> > out_r4p3;
	sc_in<sc_logic> credit_ir4p3;
	sc_in<sc_logic> tx_r5p0;
	sc_in<sc_lv<constFlitSize> > out_r5p0;
	sc_in<sc_logic> credit_ir5p0;
	sc_in<sc_logic> tx_r5p1;
	sc_in<sc_lv<constFlitSize> > out_r5p1;
	sc_in<sc_logic> credit_ir5p1;
	sc_in<sc_logic> tx_r5p2;
	sc_in<sc_lv<constFlitSize> > out_r5p2;
	sc_in<sc_logic> credit_ir5p2;
	sc_in<sc_logic> tx_r5p3;
	sc_in<sc_lv<constFlitSize> > out_r5p3;
	sc_in<sc_logic> credit_ir5p3;
	sc_in<sc_logic> tx_r6p0;
	sc_in<sc_lv<constFlitSize> > out_r6p0;
	sc_in<sc_logic> credit_ir6p0;
	sc_in<sc_logic> tx_r6p1;
	sc_in<sc_lv<constFlitSize> > out_r6p1;
	sc_in<sc_logic> credit_ir6p1;
	sc_in<sc_logic> tx_r6p2;
	sc_in<sc_lv<constFlitSize> > out_r6p2;
	sc_in<sc_logic> credit_ir6p2;
	sc_in<sc_logic> tx_r6p3;
	sc_in<sc_lv<constFlitSize> > out_r6p3;
	sc_in<sc_logic> credit_ir6p3;
	sc_in<sc_logic> tx_r7p1;
	sc_in<sc_lv<constFlitSize> > out_r7p1;
	sc_in<sc_logic> credit_ir7p1;
	sc_in<sc_logic> tx_r7p2;
	sc_in<sc_lv<constFlitSize> > out_r7p2;
	sc_in<sc_logic> credit_ir7p2;
	sc_in<sc_logic> tx_r7p3;
	sc_in<sc_lv<constFlitSize> > out_r7p3;
	sc_in<sc_logic> credit_ir7p3;
	sc_in<sc_logic> tx_r8p0;
	sc_in<sc_lv<constFlitSize> > out_r8p0;
	sc_in<sc_logic> credit_ir8p0;
	sc_in<sc_logic> tx_r8p2;
	sc_in<sc_lv<constFlitSize> > out_r8p2;
	sc_in<sc_logic> credit_ir8p2;
	sc_in<sc_logic> tx_r8p3;
	sc_in<sc_lv<constFlitSize> > out_r8p3;
	sc_in<sc_logic> credit_ir8p3;
	sc_in<sc_logic> tx_r9p0;
	sc_in<sc_lv<constFlitSize> > out_r9p0;
	sc_in<sc_logic> credit_ir9p0;
	sc_in<sc_logic> tx_r9p1;
	sc_in<sc_lv<constFlitSize> > out_r9p1;
	sc_in<sc_logic> credit_ir9p1;
	sc_in<sc_logic> tx_r9p2;
	sc_in<sc_lv<constFlitSize> > out_r9p2;
	sc_in<sc_logic> credit_ir9p2;
	sc_in<sc_logic> tx_r9p3;
	sc_in<sc_lv<constFlitSize> > out_r9p3;
	sc_in<sc_logic> credit_ir9p3;
	sc_in<sc_logic> tx_r10p0;
	sc_in<sc_lv<constFlitSize> > out_r10p0;
	sc_in<sc_logic> credit_ir10p0;
	sc_in<sc_logic> tx_r10p1;
	sc_in<sc_lv<constFlitSize> > out_r10p1;
	sc_in<sc_logic> credit_ir10p1;
	sc_in<sc_logic> tx_r10p2;
	sc_in<sc_lv<constFlitSize> > out_r10p2;
	sc_in<sc_logic> credit_ir10p2;
	sc_in<sc_logic> tx_r10p3;
	sc_in<sc_lv<constFlitSize> > out_r10p3;
	sc_in<sc_logic> credit_ir10p3;
	sc_in<sc_logic> tx_r11p1;
	sc_in<sc_lv<constFlitSize> > out_r11p1;
	sc_in<sc_logic> credit_ir11p1;
	sc_in<sc_logic> tx_r11p2;
	sc_in<sc_lv<constFlitSize> > out_r11p2;
	sc_in<sc_logic> credit_ir11p2;
	sc_in<sc_logic> tx_r11p3;
	sc_in<sc_lv<constFlitSize> > out_r11p3;
	sc_in<sc_logic> credit_ir11p3;
	sc_in<sc_logic> tx_r12p0;
	sc_in<sc_lv<constFlitSize> > out_r12p0;
	sc_in<sc_logic> credit_ir12p0;
	sc_in<sc_logic> tx_r12p3;
	sc_in<sc_lv<constFlitSize> > out_r12p3;
	sc_in<sc_logic> credit_ir12p3;
	sc_in<sc_logic> tx_r13p0;
	sc_in<sc_lv<constFlitSize> > out_r13p0;
	sc_in<sc_logic> credit_ir13p0;
	sc_in<sc_logic> tx_r13p1;
	sc_in<sc_lv<constFlitSize> > out_r13p1;
	sc_in<sc_logic> credit_ir13p1;
	sc_in<sc_logic> tx_r13p3;
	sc_in<sc_lv<constFlitSize> > out_r13p3;
	sc_in<sc_logic> credit_ir13p3;
	sc_in<sc_logic> tx_r14p0;
	sc_in<sc_lv<constFlitSize> > out_r14p0;
	sc_in<sc_logic> credit_ir14p0;
	sc_in<sc_logic> tx_r14p1;
	sc_in<sc_lv<constFlitSize> > out_r14p1;
	sc_in<sc_logic> credit_ir14p1;
	sc_in<sc_logic> tx_r14p3;
	sc_in<sc_lv<constFlitSize> > out_r14p3;
	sc_in<sc_logic> credit_ir14p3;
	sc_in<sc_logic> tx_r15p1;
	sc_in<sc_lv<constFlitSize> > out_r15p1;
	sc_in<sc_logic> credit_ir15p1;
	sc_in<sc_logic> tx_r15p3;
	sc_in<sc_lv<constFlitSize> > out_r15p3;
	sc_in<sc_logic> credit_ir15p3;

	int inline inTx(int Roteador, int Porta){
		if (Roteador == 0){
			if(Porta == 0) return (tx_r0p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r0p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 1){
			if(Porta == 0) return (tx_r1p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r1p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r1p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 2){
			if(Porta == 0) return (tx_r2p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r2p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r2p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 3){
			if(Porta == 1) return (tx_r3p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r3p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 4){
			if(Porta == 0) return (tx_r4p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r4p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r4p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 5){
			if(Porta == 0) return (tx_r5p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r5p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r5p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r5p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 6){
			if(Porta == 0) return (tx_r6p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r6p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r6p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r6p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 7){
			if(Porta == 1) return (tx_r7p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r7p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r7p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 8){
			if(Porta == 0) return (tx_r8p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r8p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r8p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 9){
			if(Porta == 0) return (tx_r9p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r9p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r9p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r9p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 10){
			if(Porta == 0) return (tx_r10p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r10p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r10p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r10p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 11){
			if(Porta == 1) return (tx_r11p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (tx_r11p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r11p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 12){
			if(Porta == 0) return (tx_r12p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r12p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 13){
			if(Porta == 0) return (tx_r13p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r13p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r13p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 14){
			if(Porta == 0) return (tx_r14p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (tx_r14p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r14p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 15){
			if(Porta == 1) return (tx_r15p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (tx_r15p3==SC_LOGIC_1)? 1 : 0;
		}
	}

	unsigned long inline inData(int Roteador, int Porta){
		if (Roteador == 0){
			if(Porta == 0) return out_r0p0.read().to_uint();
			if(Porta == 2) return out_r0p2.read().to_uint();
		}
		else if (Roteador == 1){
			if(Porta == 0) return out_r1p0.read().to_uint();
			if(Porta == 1) return out_r1p1.read().to_uint();
			if(Porta == 2) return out_r1p2.read().to_uint();
		}
		else if (Roteador == 2){
			if(Porta == 0) return out_r2p0.read().to_uint();
			if(Porta == 1) return out_r2p1.read().to_uint();
			if(Porta == 2) return out_r2p2.read().to_uint();
		}
		else if (Roteador == 3){
			if(Porta == 1) return out_r3p1.read().to_uint();
			if(Porta == 2) return out_r3p2.read().to_uint();
		}
		else if (Roteador == 4){
			if(Porta == 0) return out_r4p0.read().to_uint();
			if(Porta == 2) return out_r4p2.read().to_uint();
			if(Porta == 3) return out_r4p3.read().to_uint();
		}
		else if (Roteador == 5){
			if(Porta == 0) return out_r5p0.read().to_uint();
			if(Porta == 1) return out_r5p1.read().to_uint();
			if(Porta == 2) return out_r5p2.read().to_uint();
			if(Porta == 3) return out_r5p3.read().to_uint();
		}
		else if (Roteador == 6){
			if(Porta == 0) return out_r6p0.read().to_uint();
			if(Porta == 1) return out_r6p1.read().to_uint();
			if(Porta == 2) return out_r6p2.read().to_uint();
			if(Porta == 3) return out_r6p3.read().to_uint();
		}
		else if (Roteador == 7){
			if(Porta == 1) return out_r7p1.read().to_uint();
			if(Porta == 2) return out_r7p2.read().to_uint();
			if(Porta == 3) return out_r7p3.read().to_uint();
		}
		else if (Roteador == 8){
			if(Porta == 0) return out_r8p0.read().to_uint();
			if(Porta == 2) return out_r8p2.read().to_uint();
			if(Porta == 3) return out_r8p3.read().to_uint();
		}
		else if (Roteador == 9){
			if(Porta == 0) return out_r9p0.read().to_uint();
			if(Porta == 1) return out_r9p1.read().to_uint();
			if(Porta == 2) return out_r9p2.read().to_uint();
			if(Porta == 3) return out_r9p3.read().to_uint();
		}
		else if (Roteador == 10){
			if(Porta == 0) return out_r10p0.read().to_uint();
			if(Porta == 1) return out_r10p1.read().to_uint();
			if(Porta == 2) return out_r10p2.read().to_uint();
			if(Porta == 3) return out_r10p3.read().to_uint();
		}
		else if (Roteador == 11){
			if(Porta == 1) return out_r11p1.read().to_uint();
			if(Porta == 2) return out_r11p2.read().to_uint();
			if(Porta == 3) return out_r11p3.read().to_uint();
		}
		else if (Roteador == 12){
			if(Porta == 0) return out_r12p0.read().to_uint();
			if(Porta == 3) return out_r12p3.read().to_uint();
		}
		else if (Roteador == 13){
			if(Porta == 0) return out_r13p0.read().to_uint();
			if(Porta == 1) return out_r13p1.read().to_uint();
			if(Porta == 3) return out_r13p3.read().to_uint();
		}
		else if (Roteador == 14){
			if(Porta == 0) return out_r14p0.read().to_uint();
			if(Porta == 1) return out_r14p1.read().to_uint();
			if(Porta == 3) return out_r14p3.read().to_uint();
		}
		else if (Roteador == 15){
			if(Porta == 1) return out_r15p1.read().to_uint();
			if(Porta == 3) return out_r15p3.read().to_uint();
		}
	}

	int inline inCredit(int Roteador, int Porta){
		if (Roteador == 0){
			if(Porta == 0) return (credit_ir0p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir0p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 1){
			if(Porta == 0) return (credit_ir1p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir1p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir1p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 2){
			if(Porta == 0) return (credit_ir2p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir2p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir2p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 3){
			if(Porta == 1) return (credit_ir3p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir3p2==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 4){
			if(Porta == 0) return (credit_ir4p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir4p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir4p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 5){
			if(Porta == 0) return (credit_ir5p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir5p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir5p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir5p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 6){
			if(Porta == 0) return (credit_ir6p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir6p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir6p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir6p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 7){
			if(Porta == 1) return (credit_ir7p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir7p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir7p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 8){
			if(Porta == 0) return (credit_ir8p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir8p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir8p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 9){
			if(Porta == 0) return (credit_ir9p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir9p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir9p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir9p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 10){
			if(Porta == 0) return (credit_ir10p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir10p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir10p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir10p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 11){
			if(Porta == 1) return (credit_ir11p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 2) return (credit_ir11p2==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir11p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 12){
			if(Porta == 0) return (credit_ir12p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir12p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 13){
			if(Porta == 0) return (credit_ir13p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir13p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir13p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 14){
			if(Porta == 0) return (credit_ir14p0==SC_LOGIC_1)? 1 : 0;
			if(Porta == 1) return (credit_ir14p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir14p3==SC_LOGIC_1)? 1 : 0;
		}
		else if (Roteador == 15){
			if(Porta == 1) return (credit_ir15p1==SC_LOGIC_1)? 1 : 0;
			if(Porta == 3) return (credit_ir15p3==SC_LOGIC_1)? 1 : 0;
		}
	}

	unsigned long int CurrentTime;

	void inline TrafficWatcher();
	void inline Timer();

	SC_CTOR(outmodulerouter) :
	tx_r0p0("tx_r0p0"),
	out_r0p0("out_r0p0"),
	credit_ir0p0("credit_ir0p0"),
	tx_r0p2("tx_r0p2"),
	out_r0p2("out_r0p2"),
	credit_ir0p2("credit_ir0p2"),
	tx_r1p0("tx_r1p0"),
	out_r1p0("out_r1p0"),
	credit_ir1p0("credit_ir1p0"),
	tx_r1p1("tx_r1p1"),
	out_r1p1("out_r1p1"),
	credit_ir1p1("credit_ir1p1"),
	tx_r1p2("tx_r1p2"),
	out_r1p2("out_r1p2"),
	credit_ir1p2("credit_ir1p2"),
	tx_r2p0("tx_r2p0"),
	out_r2p0("out_r2p0"),
	credit_ir2p0("credit_ir2p0"),
	tx_r2p1("tx_r2p1"),
	out_r2p1("out_r2p1"),
	credit_ir2p1("credit_ir2p1"),
	tx_r2p2("tx_r2p2"),
	out_r2p2("out_r2p2"),
	credit_ir2p2("credit_ir2p2"),
	tx_r3p1("tx_r3p1"),
	out_r3p1("out_r3p1"),
	credit_ir3p1("credit_ir3p1"),
	tx_r3p2("tx_r3p2"),
	out_r3p2("out_r3p2"),
	credit_ir3p2("credit_ir3p2"),
	tx_r4p0("tx_r4p0"),
	out_r4p0("out_r4p0"),
	credit_ir4p0("credit_ir4p0"),
	tx_r4p2("tx_r4p2"),
	out_r4p2("out_r4p2"),
	credit_ir4p2("credit_ir4p2"),
	tx_r4p3("tx_r4p3"),
	out_r4p3("out_r4p3"),
	credit_ir4p3("credit_ir4p3"),
	tx_r5p0("tx_r5p0"),
	out_r5p0("out_r5p0"),
	credit_ir5p0("credit_ir5p0"),
	tx_r5p1("tx_r5p1"),
	out_r5p1("out_r5p1"),
	credit_ir5p1("credit_ir5p1"),
	tx_r5p2("tx_r5p2"),
	out_r5p2("out_r5p2"),
	credit_ir5p2("credit_ir5p2"),
	tx_r5p3("tx_r5p3"),
	out_r5p3("out_r5p3"),
	credit_ir5p3("credit_ir5p3"),
	tx_r6p0("tx_r6p0"),
	out_r6p0("out_r6p0"),
	credit_ir6p0("credit_ir6p0"),
	tx_r6p1("tx_r6p1"),
	out_r6p1("out_r6p1"),
	credit_ir6p1("credit_ir6p1"),
	tx_r6p2("tx_r6p2"),
	out_r6p2("out_r6p2"),
	credit_ir6p2("credit_ir6p2"),
	tx_r6p3("tx_r6p3"),
	out_r6p3("out_r6p3"),
	credit_ir6p3("credit_ir6p3"),
	tx_r7p1("tx_r7p1"),
	out_r7p1("out_r7p1"),
	credit_ir7p1("credit_ir7p1"),
	tx_r7p2("tx_r7p2"),
	out_r7p2("out_r7p2"),
	credit_ir7p2("credit_ir7p2"),
	tx_r7p3("tx_r7p3"),
	out_r7p3("out_r7p3"),
	credit_ir7p3("credit_ir7p3"),
	tx_r8p0("tx_r8p0"),
	out_r8p0("out_r8p0"),
	credit_ir8p0("credit_ir8p0"),
	tx_r8p2("tx_r8p2"),
	out_r8p2("out_r8p2"),
	credit_ir8p2("credit_ir8p2"),
	tx_r8p3("tx_r8p3"),
	out_r8p3("out_r8p3"),
	credit_ir8p3("credit_ir8p3"),
	tx_r9p0("tx_r9p0"),
	out_r9p0("out_r9p0"),
	credit_ir9p0("credit_ir9p0"),
	tx_r9p1("tx_r9p1"),
	out_r9p1("out_r9p1"),
	credit_ir9p1("credit_ir9p1"),
	tx_r9p2("tx_r9p2"),
	out_r9p2("out_r9p2"),
	credit_ir9p2("credit_ir9p2"),
	tx_r9p3("tx_r9p3"),
	out_r9p3("out_r9p3"),
	credit_ir9p3("credit_ir9p3"),
	tx_r10p0("tx_r10p0"),
	out_r10p0("out_r10p0"),
	credit_ir10p0("credit_ir10p0"),
	tx_r10p1("tx_r10p1"),
	out_r10p1("out_r10p1"),
	credit_ir10p1("credit_ir10p1"),
	tx_r10p2("tx_r10p2"),
	out_r10p2("out_r10p2"),
	credit_ir10p2("credit_ir10p2"),
	tx_r10p3("tx_r10p3"),
	out_r10p3("out_r10p3"),
	credit_ir10p3("credit_ir10p3"),
	tx_r11p1("tx_r11p1"),
	out_r11p1("out_r11p1"),
	credit_ir11p1("credit_ir11p1"),
	tx_r11p2("tx_r11p2"),
	out_r11p2("out_r11p2"),
	credit_ir11p2("credit_ir11p2"),
	tx_r11p3("tx_r11p3"),
	out_r11p3("out_r11p3"),
	credit_ir11p3("credit_ir11p3"),
	tx_r12p0("tx_r12p0"),
	out_r12p0("out_r12p0"),
	credit_ir12p0("credit_ir12p0"),
	tx_r12p3("tx_r12p3"),
	out_r12p3("out_r12p3"),
	credit_ir12p3("credit_ir12p3"),
	tx_r13p0("tx_r13p0"),
	out_r13p0("out_r13p0"),
	credit_ir13p0("credit_ir13p0"),
	tx_r13p1("tx_r13p1"),
	out_r13p1("out_r13p1"),
	credit_ir13p1("credit_ir13p1"),
	tx_r13p3("tx_r13p3"),
	out_r13p3("out_r13p3"),
	credit_ir13p3("credit_ir13p3"),
	tx_r14p0("tx_r14p0"),
	out_r14p0("out_r14p0"),
	credit_ir14p0("credit_ir14p0"),
	tx_r14p1("tx_r14p1"),
	out_r14p1("out_r14p1"),
	credit_ir14p1("credit_ir14p1"),
	tx_r14p3("tx_r14p3"),
	out_r14p3("out_r14p3"),
	credit_ir14p3("credit_ir14p3"),
	tx_r15p1("tx_r15p1"),
	out_r15p1("out_r15p1"),
	credit_ir15p1("credit_ir15p1"),
	tx_r15p3("tx_r15p3"),
	out_r15p3("out_r15p3"),
	credit_ir15p3("credit_ir15p3"),
	reset("reset"),
	clock("clock")
	{
		CurrentTime = 0;

		SC_CTHREAD(TrafficWatcher, clock.pos());
		//watching(reset.delayed()== true);

		SC_METHOD(Timer);
		sensitive_pos << clock;
		dont_initialize();
	}
};

void inline outmodulerouter::Timer(){
	++CurrentTime;
}

void inline outmodulerouter::TrafficWatcher(){
	char temp[100];
	FILE* Output[constNumRot][constNumPort];
	unsigned long int cont[constNumRot][constNumPort];
	unsigned long int size[constNumRot][constNumPort];
	unsigned long int currentFlit[constNumRot][constNumPort];
	int rot, port;

	for(rot=0;rot<constNumRot;rot++){
		//roteador nýo ý o limite da direita, logo tem a porta EAST
 		if((rot%constNumRotX)!=(constNumRotX-1)){
			sprintf(temp, "r%dp0.txt", rot);
			Output[rot][0] = fopen(temp, "w");
			cont[rot][0] = 0;
		}
		//roteador nýo ý o limite da esquerda, logo tem a porta WEST
 		if((rot%constNumRotX)!=0){
			sprintf(temp, "r%dp1.txt", rot);
			Output[rot][1] = fopen(temp, "w");
			cont[rot][1] = 0;
		}
		//roteador nýo ý o limite superior, logo tem a porta NORTH
 		if((rot/constNumRotX)!=(constNumRotY-1)){
			sprintf(temp, "r%dp2.txt", rot);
			Output[rot][2] = fopen(temp, "w");
			cont[rot][2] = 0;
		}
		//roteador nýo ý o limite inferior, logo tem a porta SOUTH
 		if((rot/constNumRotX)!=0){
			sprintf(temp, "r%dp3.txt", rot);
			Output[rot][3] = fopen(temp, "w");
			cont[rot][3] = 0;
		}
	}

	while(true){
		for(rot=0;rot<constNumRot;rot++){

			//roteador nýo ý o limite da direita, logo tem a porta EAST
			if((rot%constNumRotX)!=(constNumRotX-1)){
				if(inTx(rot,0) == 1 && inCredit(rot,0)==1){
					currentFlit[rot][0] = inData(rot,0);
					fprintf(Output[rot][0], "(%0*X %u)", (int)constFlitSize/4, currentFlit[rot][0], CurrentTime);
					cont[rot][0]++;

					if(cont[rot][0] == 2)
						size[rot][0] = currentFlit[rot][0] + 2;

					if(cont[rot][0]>2 && cont[rot][0]==size[rot][0]){
						fprintf(Output[rot][0], "\n");
						cont[rot][0]=0;
						size[rot][0]=0;
					}
				}
			}
			//roteador nýo ý o limite da esquerda, logo tem a porta WEST
			if((rot%constNumRotX)!=0){
				if(inTx(rot,1) == 1 && inCredit(rot,1)==1){
					currentFlit[rot][1] = inData(rot,1);
					fprintf(Output[rot][1], "(%0*X %u)", (int)constFlitSize/4, currentFlit[rot][1], CurrentTime);
					cont[rot][1]++;

					if(cont[rot][1] == 2)
						size[rot][1] = currentFlit[rot][1] + 2;

					if(cont[rot][1]>2 && cont[rot][1]==size[rot][1]){
						fprintf(Output[rot][1], "\n");
						cont[rot][1]=0;
						size[rot][1]=0;
					}
				}
			}
			//roteador nýo ý o limite superior, logo tem a porta NORTH
			if((rot/constNumRotX)!=constNumRotY-1){
				if(inTx(rot,2) == 1 && inCredit(rot,2)==1){
					currentFlit[rot][2] = inData(rot,2);
					fprintf(Output[rot][2], "(%0*X %u)", (int)constFlitSize/4, currentFlit[rot][2], CurrentTime);
					cont[rot][2]++;

					if(cont[rot][2] == 2)
						size[rot][2] = currentFlit[rot][2] + 2;

					if(cont[rot][2]>2 && cont[rot][2]==size[rot][2]){
						fprintf(Output[rot][2], "\n");
						cont[rot][2]=0;
						size[rot][2]=0;
					}

				}
			}
			//roteador nýo ý o limite inferior, logo tem a porta SOUTH
			if((rot/constNumRotX)!=0){
				if(inTx(rot,3) == 1 && inCredit(rot,3)==1){
					currentFlit[rot][3] = inData(rot,3);
					fprintf(Output[rot][3], "(%0*X %u)", (int)constFlitSize/4, currentFlit[rot][3], CurrentTime);
					cont[rot][3]++;

					if(cont[rot][3] == 2)
						size[rot][3] = currentFlit[rot][3] + 2;

					if(cont[rot][3]>2 && cont[rot][3]==size[rot][3]){
						fprintf(Output[rot][3], "\n");
						cont[rot][3]=0;
						size[rot][3]=0;
					}

				}
			}
		}
		wait();
	}
}

#endif //OUTMODULEROUTER

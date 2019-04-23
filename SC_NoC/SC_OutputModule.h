#ifndef OUTMODULE
#define OUTMODULE

#define constFlitSize 16
#define constNumRot 16

#include "systemc.h"
#include <stdio.h>
#include <string.h>
#include <sys/timeb.h>

SC_MODULE(outmodule)
{
	sc_in<sc_logic> clock;
	sc_in<sc_logic> reset;
	sc_in<sc_logic> finish;
	sc_in<sc_logic> inclock0;
	sc_in<sc_logic> intx0;
	sc_in<sc_lv<constFlitSize> > indata0;
	sc_out<sc_logic> outcredit0;
	sc_in<sc_logic> inclock1;
	sc_in<sc_logic> intx1;
	sc_in<sc_lv<constFlitSize> > indata1;
	sc_out<sc_logic> outcredit1;
	sc_in<sc_logic> inclock2;
	sc_in<sc_logic> intx2;
	sc_in<sc_lv<constFlitSize> > indata2;
	sc_out<sc_logic> outcredit2;
	sc_in<sc_logic> inclock3;
	sc_in<sc_logic> intx3;
	sc_in<sc_lv<constFlitSize> > indata3;
	sc_out<sc_logic> outcredit3;
	sc_in<sc_logic> inclock4;
	sc_in<sc_logic> intx4;
	sc_in<sc_lv<constFlitSize> > indata4;
	sc_out<sc_logic> outcredit4;
	sc_in<sc_logic> inclock5;
	sc_in<sc_logic> intx5;
	sc_in<sc_lv<constFlitSize> > indata5;
	sc_out<sc_logic> outcredit5;
	sc_in<sc_logic> inclock6;
	sc_in<sc_logic> intx6;
	sc_in<sc_lv<constFlitSize> > indata6;
	sc_out<sc_logic> outcredit6;
	sc_in<sc_logic> inclock7;
	sc_in<sc_logic> intx7;
	sc_in<sc_lv<constFlitSize> > indata7;
	sc_out<sc_logic> outcredit7;
	sc_in<sc_logic> inclock8;
	sc_in<sc_logic> intx8;
	sc_in<sc_lv<constFlitSize> > indata8;
	sc_out<sc_logic> outcredit8;
	sc_in<sc_logic> inclock9;
	sc_in<sc_logic> intx9;
	sc_in<sc_lv<constFlitSize> > indata9;
	sc_out<sc_logic> outcredit9;
	sc_in<sc_logic> inclock10;
	sc_in<sc_logic> intx10;
	sc_in<sc_lv<constFlitSize> > indata10;
	sc_out<sc_logic> outcredit10;
	sc_in<sc_logic> inclock11;
	sc_in<sc_logic> intx11;
	sc_in<sc_lv<constFlitSize> > indata11;
	sc_out<sc_logic> outcredit11;
	sc_in<sc_logic> inclock12;
	sc_in<sc_logic> intx12;
	sc_in<sc_lv<constFlitSize> > indata12;
	sc_out<sc_logic> outcredit12;
	sc_in<sc_logic> inclock13;
	sc_in<sc_logic> intx13;
	sc_in<sc_lv<constFlitSize> > indata13;
	sc_out<sc_logic> outcredit13;
	sc_in<sc_logic> inclock14;
	sc_in<sc_logic> intx14;
	sc_in<sc_lv<constFlitSize> > indata14;
	sc_out<sc_logic> outcredit14;
	sc_in<sc_logic> inclock15;
	sc_in<sc_logic> intx15;
	sc_in<sc_lv<constFlitSize> > indata15;
	sc_out<sc_logic> outcredit15;

	int inline inTx(int Indice){
		if(Indice == 0) return (intx0 == SC_LOGIC_1)?1:0;
		if(Indice == 1) return (intx1 == SC_LOGIC_1)?1:0;
		if(Indice == 2) return (intx2 == SC_LOGIC_1)?1:0;
		if(Indice == 3) return (intx3 == SC_LOGIC_1)?1:0;
		if(Indice == 4) return (intx4 == SC_LOGIC_1)?1:0;
		if(Indice == 5) return (intx5 == SC_LOGIC_1)?1:0;
		if(Indice == 6) return (intx6 == SC_LOGIC_1)?1:0;
		if(Indice == 7) return (intx7 == SC_LOGIC_1)?1:0;
		if(Indice == 8) return (intx8 == SC_LOGIC_1)?1:0;
		if(Indice == 9) return (intx9 == SC_LOGIC_1)?1:0;
		if(Indice == 10) return (intx10 == SC_LOGIC_1)?1:0;
		if(Indice == 11) return (intx11 == SC_LOGIC_1)?1:0;
		if(Indice == 12) return (intx12 == SC_LOGIC_1)?1:0;
		if(Indice == 13) return (intx13 == SC_LOGIC_1)?1:0;
		if(Indice == 14) return (intx14 == SC_LOGIC_1)?1:0;
		if(Indice == 15) return (intx15 == SC_LOGIC_1)?1:0;
	}

	unsigned long int inline inData(int Indice){
		if(Indice == 0) return indata0.read().to_uint();
		if(Indice == 1) return indata1.read().to_uint();
		if(Indice == 2) return indata2.read().to_uint();
		if(Indice == 3) return indata3.read().to_uint();
		if(Indice == 4) return indata4.read().to_uint();
		if(Indice == 5) return indata5.read().to_uint();
		if(Indice == 6) return indata6.read().to_uint();
		if(Indice == 7) return indata7.read().to_uint();
		if(Indice == 8) return indata8.read().to_uint();
		if(Indice == 9) return indata9.read().to_uint();
		if(Indice == 10) return indata10.read().to_uint();
		if(Indice == 11) return indata11.read().to_uint();
		if(Indice == 12) return indata12.read().to_uint();
		if(Indice == 13) return indata13.read().to_uint();
		if(Indice == 14) return indata14.read().to_uint();
		if(Indice == 15) return indata15.read().to_uint();
	}

	unsigned long int CurrentTime;

	void inline TrafficStalker();
	void inline Timer();
	void inline port_assign();

	SC_CTOR(outmodule) :

	inclock0("inclock0"),
	intx0("intx0"),
	indata0("indata0"),
	outcredit0("outcredit0"),
	inclock1("inclock1"),
	intx1("intx1"),
	indata1("indata1"),
	outcredit1("outcredit1"),
	inclock2("inclock2"),
	intx2("intx2"),
	indata2("indata2"),
	outcredit2("outcredit2"),
	inclock3("inclock3"),
	intx3("intx3"),
	indata3("indata3"),
	outcredit3("outcredit3"),
	inclock4("inclock4"),
	intx4("intx4"),
	indata4("indata4"),
	outcredit4("outcredit4"),
	inclock5("inclock5"),
	intx5("intx5"),
	indata5("indata5"),
	outcredit5("outcredit5"),
	inclock6("inclock6"),
	intx6("intx6"),
	indata6("indata6"),
	outcredit6("outcredit6"),
	inclock7("inclock7"),
	intx7("intx7"),
	indata7("indata7"),
	outcredit7("outcredit7"),
	inclock8("inclock8"),
	intx8("intx8"),
	indata8("indata8"),
	outcredit8("outcredit8"),
	inclock9("inclock9"),
	intx9("intx9"),
	indata9("indata9"),
	outcredit9("outcredit9"),
	inclock10("inclock10"),
	intx10("intx10"),
	indata10("indata10"),
	outcredit10("outcredit10"),
	inclock11("inclock11"),
	intx11("intx11"),
	indata11("indata11"),
	outcredit11("outcredit11"),
	inclock12("inclock12"),
	intx12("intx12"),
	indata12("indata12"),
	outcredit12("outcredit12"),
	inclock13("inclock13"),
	intx13("intx13"),
	indata13("indata13"),
	outcredit13("outcredit13"),
	inclock14("inclock14"),
	intx14("intx14"),
	indata14("indata14"),
	outcredit14("outcredit14"),
	inclock15("inclock15"),
	intx15("intx15"),
	indata15("indata15"),
	outcredit15("outcredit15"),
	reset("reset"),
	clock("clock")
	{
		CurrentTime = 0;

		SC_CTHREAD(TrafficStalker, clock.pos());
		//watching(reset.delayed()== true);

		SC_METHOD(Timer);
		sensitive_pos << clock;
		dont_initialize();

		SC_METHOD(port_assign);
		sensitive << clock;
		dont_initialize();
	}
};

void inline outmodule::Timer(){
	++CurrentTime;
}

void inline outmodule::port_assign(){
	outcredit0 = SC_LOGIC_1;
	outcredit1 = SC_LOGIC_1;
	outcredit2 = SC_LOGIC_1;
	outcredit3 = SC_LOGIC_1;
	outcredit4 = SC_LOGIC_1;
	outcredit5 = SC_LOGIC_1;
	outcredit6 = SC_LOGIC_1;
	outcredit7 = SC_LOGIC_1;
	outcredit8 = SC_LOGIC_1;
	outcredit9 = SC_LOGIC_1;
	outcredit10 = SC_LOGIC_1;
	outcredit11 = SC_LOGIC_1;
	outcredit12 = SC_LOGIC_1;
	outcredit13 = SC_LOGIC_1;
	outcredit14 = SC_LOGIC_1;
	outcredit15 = SC_LOGIC_1;
}

void inline outmodule::TrafficStalker(){

/*******************************************************************************************************************************************************************************************
** pacote BE:
**
**  target  size   source  timestamp de saida do nodo  nro de sequencia  timestamp de entrada na rede     payload
**   00XX   XXXX    00XX      XXXX XXXX XXXX XXXX         XXXX XXXX          XXXX XXXX XXXX XXXX            XXXX ...
**    S1     S2      S3             S4 a S7                S8 e S9               S10 a S13             S14 atý size = 0
**
**
**     escrito      => timestamp de saýda na rede   timestamp de saida do nodo   timestamp de entrada na rede    timestamp de saýda da rede    latýncia    tempo de simulaýýo
** no fim do pacote        XXXX XXXX XXXX XXXX     	       em decimal    	              em decimal			          em decimal		  em decimal     em milisegundos
**
********************************************************************************************************************************************************************************************/

	FILE* Output[constNumRot];

	bool transmitting = false;
	unsigned long int CurrentFlit[constNumRot];
	int EstadoAtual[constNumRot],Size[constNumRot];
	int i, j, Index, timeout;
	char temp[100];

	char TimeTargetHex[constNumRot][100];
	unsigned long int TimeTarget[constNumRot];
	unsigned long int TimeSourceCore[constNumRot];
	unsigned long int TimeSourceNet[constNumRot];

	struct timeb tp;
	int segundos_inicial, milisegundos_inicial;
	int segundos_final, milisegundos_final;
	unsigned long int TimeFinal;

//-----------------TIME--------------------------------//
	//captura o tempo
	ftime(&tp);
	//armazena o tempo inicial
	segundos_inicial=tp.time;
	milisegundos_inicial=tp.millitm;
//-----------------------------------------------------//

	for(i=0; i<constNumRot; i++){
		sprintf(temp,"out%d.txt",i);
		Output[i] = fopen(temp,"w");
		Size[i] = 0;
		EstadoAtual[i] = 1;
	}

	while(true){
		for(Index = 0; Index<constNumRot;Index++){

			if(inTx(Index)==1){
				transmitting = true;
				if(EstadoAtual[Index] == 1){
					//captura o header do pacote
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index],"%0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index] == 2){
					//captura o tamanho do payload
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					Size[Index] = CurrentFlit[Index];
					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index] == 3){
					//captura o nodo origem
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					Size[Index]--;
					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index]>=4 && EstadoAtual[Index]<=7){
					//captura o timestamp do nodo origem
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					if(EstadoAtual[Index]==4) TimeSourceCore[Index]=0;

					TimeSourceCore[Index] += (unsigned long int)(CurrentFlit[Index] * pow(2,((7 - EstadoAtual[Index])*constFlitSize)));

					Size[Index]--;
					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index] == 8 || EstadoAtual[Index] == 9){
					//captura o nýmero de sequencia do pacote
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					Size[Index]--;
					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index]>=10 && EstadoAtual[Index]<=13){
					//captura o timestamp do entrada na rede
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					if(EstadoAtual[Index]==10) TimeSourceNet[Index]=0;

					TimeSourceNet[Index] += (unsigned long int)(CurrentFlit[Index] * pow(2,((13 - EstadoAtual[Index])*constFlitSize)));

					Size[Index]--;
					EstadoAtual[Index]++;
				}
				else if(EstadoAtual[Index]==14){
					//captura o payload
					CurrentFlit[Index] = (unsigned long int)inData(Index);
					fprintf(Output[Index]," %0*X",(int)constFlitSize/4,CurrentFlit[Index]);

					Size[Index]--;

					//fim do pacote
					if(Size[Index]==0){

						//Tempo de chegada no destino
						TimeTarget[Index]= CurrentTime;
						sprintf(TimeTargetHex[Index], "%0*X",constFlitSize,TimeTarget[Index]);
						for(i=0,j=0;i<constFlitSize;i++,j++){
							temp[j]=TimeTargetHex[Index][i];
							if(j==constFlitSize/4-1)
							{
								temp[constFlitSize/4]='\0';
								fprintf(Output[Index]," %s",temp);
								j=-1; //  porque na iteracao seguinte j serý 0.
							}
						}

						//Tempo em que o nodo origem deveria inserir o pacote na rede (em decimal)
						fprintf(Output[Index]," %d",TimeSourceCore[Index]);

						//Tempo em que o pacote entrou na rede (em decimal)
						fprintf(Output[Index]," %d",TimeSourceNet[Index]);

						//Tempo de chegada do pacote no destino (em decimal)
						fprintf(Output[Index]," %d",TimeTarget[Index]);

						//latýncia desde o tempo de criaýýo do pacote (em decimal)
						fprintf(Output[Index]," %d",(TimeTarget[Index]-TimeSourceCore[Index]));

					//-----------------TIME--------------------------------//
						//captura o tempo de simulacao em milisegundos
						ftime(&tp);

						//armazena o tempo final
						segundos_final=tp.time;
						milisegundos_final=tp.millitm;

						TimeFinal=(segundos_final*1000 + milisegundos_final) - (segundos_inicial*1000+milisegundos_inicial);
					//-----------------------------------------------------//

						fprintf(Output[Index]," %ld\n",TimeFinal);
						EstadoAtual[Index] = 1;
					}
				}
			}
		}
		if(finish==SC_LOGIC_1){
			if(transmitting) timeout=0;
			else{
				timeout++;
				if(timeout>1000) sc_stop();
			}
		}
		wait();
	}
}

#endif

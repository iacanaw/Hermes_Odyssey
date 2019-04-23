#ifndef INMODULE
#define INMODULE

#define constFlitSize 16
#define constNumRot 16
#define constNumRotX 4
#define constNumRotY 4
#define constNumberOfChars 4

#include <stdio.h>
#include <string.h>
#include <systemc.h>

SC_MODULE(inputmodule)
{
	sc_in<sc_logic> clock;
	sc_in<sc_logic> reset;
	sc_out<sc_logic> finish;
	sc_out<sc_logic> outclock0;
	sc_out<sc_logic> outtx0;
	sc_out<sc_lv<constFlitSize> > outdata0;
	sc_in<sc_logic> incredit0;
	sc_out<sc_logic> outclock1;
	sc_out<sc_logic> outtx1;
	sc_out<sc_lv<constFlitSize> > outdata1;
	sc_in<sc_logic> incredit1;
	sc_out<sc_logic> outclock2;
	sc_out<sc_logic> outtx2;
	sc_out<sc_lv<constFlitSize> > outdata2;
	sc_in<sc_logic> incredit2;
	sc_out<sc_logic> outclock3;
	sc_out<sc_logic> outtx3;
	sc_out<sc_lv<constFlitSize> > outdata3;
	sc_in<sc_logic> incredit3;
	sc_out<sc_logic> outclock4;
	sc_out<sc_logic> outtx4;
	sc_out<sc_lv<constFlitSize> > outdata4;
	sc_in<sc_logic> incredit4;
	sc_out<sc_logic> outclock5;
	sc_out<sc_logic> outtx5;
	sc_out<sc_lv<constFlitSize> > outdata5;
	sc_in<sc_logic> incredit5;
	sc_out<sc_logic> outclock6;
	sc_out<sc_logic> outtx6;
	sc_out<sc_lv<constFlitSize> > outdata6;
	sc_in<sc_logic> incredit6;
	sc_out<sc_logic> outclock7;
	sc_out<sc_logic> outtx7;
	sc_out<sc_lv<constFlitSize> > outdata7;
	sc_in<sc_logic> incredit7;
	sc_out<sc_logic> outclock8;
	sc_out<sc_logic> outtx8;
	sc_out<sc_lv<constFlitSize> > outdata8;
	sc_in<sc_logic> incredit8;
	sc_out<sc_logic> outclock9;
	sc_out<sc_logic> outtx9;
	sc_out<sc_lv<constFlitSize> > outdata9;
	sc_in<sc_logic> incredit9;
	sc_out<sc_logic> outclock10;
	sc_out<sc_logic> outtx10;
	sc_out<sc_lv<constFlitSize> > outdata10;
	sc_in<sc_logic> incredit10;
	sc_out<sc_logic> outclock11;
	sc_out<sc_logic> outtx11;
	sc_out<sc_lv<constFlitSize> > outdata11;
	sc_in<sc_logic> incredit11;
	sc_out<sc_logic> outclock12;
	sc_out<sc_logic> outtx12;
	sc_out<sc_lv<constFlitSize> > outdata12;
	sc_in<sc_logic> incredit12;
	sc_out<sc_logic> outclock13;
	sc_out<sc_logic> outtx13;
	sc_out<sc_lv<constFlitSize> > outdata13;
	sc_in<sc_logic> incredit13;
	sc_out<sc_logic> outclock14;
	sc_out<sc_logic> outtx14;
	sc_out<sc_lv<constFlitSize> > outdata14;
	sc_in<sc_logic> incredit14;
	sc_out<sc_logic> outclock15;
	sc_out<sc_logic> outtx15;
	sc_out<sc_lv<constFlitSize> > outdata15;
	sc_in<sc_logic> incredit15;

	void inline outTx(int Indice, int Booleano){
		if(Indice == 0) outtx0 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 1) outtx1 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 2) outtx2 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 3) outtx3 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 4) outtx4 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 5) outtx5 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 6) outtx6 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 7) outtx7 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 8) outtx8 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 9) outtx9 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 10) outtx10 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 11) outtx11 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 12) outtx12 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 13) outtx13 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 14) outtx14 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
		else if(Indice == 15) outtx15 = (Booleano != 0)? SC_LOGIC_1: SC_LOGIC_0;
	}

	void inline outData(int Indice, unsigned long int Valor){
		if(Indice == 0) outdata0 = Valor;
		else if(Indice == 1) outdata1 = Valor;
		else if(Indice == 2) outdata2 = Valor;
		else if(Indice == 3) outdata3 = Valor;
		else if(Indice == 4) outdata4 = Valor;
		else if(Indice == 5) outdata5 = Valor;
		else if(Indice == 6) outdata6 = Valor;
		else if(Indice == 7) outdata7 = Valor;
		else if(Indice == 8) outdata8 = Valor;
		else if(Indice == 9) outdata9 = Valor;
		else if(Indice == 10) outdata10 = Valor;
		else if(Indice == 11) outdata11 = Valor;
		else if(Indice == 12) outdata12 = Valor;
		else if(Indice == 13) outdata13 = Valor;
		else if(Indice == 14) outdata14 = Valor;
		else if(Indice == 15) outdata15 = Valor;
	}

	int inline inCredit(int Indice){
		if(Indice == 0) return (incredit0 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 1) return (incredit1 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 2) return (incredit2 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 3) return (incredit3 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 4) return (incredit4 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 5) return (incredit5 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 6) return (incredit6 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 7) return (incredit7 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 8) return (incredit8 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 9) return (incredit9 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 10) return (incredit10 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 11) return (incredit11 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 12) return (incredit12 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 13) return (incredit13 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 14) return (incredit14 == SC_LOGIC_1)? 1 : 0;
		if(Indice == 15) return (incredit15 == SC_LOGIC_1)? 1 : 0;
	}

	unsigned long int CurrentTime;

	void inline Timer();
	void inline TrafficGenerator();
	void inline port_assign();

	SC_CTOR(inputmodule):

	outclock0("outclock0"),
	outtx0("outtx0"),
	outdata0("outdata0"),
	incredit0("incredit0"),
	outclock1("outclock1"),
	outtx1("outtx1"),
	outdata1("outdata1"),
	incredit1("incredit1"),
	outclock2("outclock2"),
	outtx2("outtx2"),
	outdata2("outdata2"),
	incredit2("incredit2"),
	outclock3("outclock3"),
	outtx3("outtx3"),
	outdata3("outdata3"),
	incredit3("incredit3"),
	outclock4("outclock4"),
	outtx4("outtx4"),
	outdata4("outdata4"),
	incredit4("incredit4"),
	outclock5("outclock5"),
	outtx5("outtx5"),
	outdata5("outdata5"),
	incredit5("incredit5"),
	outclock6("outclock6"),
	outtx6("outtx6"),
	outdata6("outdata6"),
	incredit6("incredit6"),
	outclock7("outclock7"),
	outtx7("outtx7"),
	outdata7("outdata7"),
	incredit7("incredit7"),
	outclock8("outclock8"),
	outtx8("outtx8"),
	outdata8("outdata8"),
	incredit8("incredit8"),
	outclock9("outclock9"),
	outtx9("outtx9"),
	outdata9("outdata9"),
	incredit9("incredit9"),
	outclock10("outclock10"),
	outtx10("outtx10"),
	outdata10("outdata10"),
	incredit10("incredit10"),
	outclock11("outclock11"),
	outtx11("outtx11"),
	outdata11("outdata11"),
	incredit11("incredit11"),
	outclock12("outclock12"),
	outtx12("outtx12"),
	outdata12("outdata12"),
	incredit12("incredit12"),
	outclock13("outclock13"),
	outtx13("outtx13"),
	outdata13("outdata13"),
	incredit13("incredit13"),
	outclock14("outclock14"),
	outtx14("outtx14"),
	outdata14("outdata14"),
	incredit14("incredit14"),
	outclock15("outclock15"),
	outtx15("outtx15"),
	outdata15("outdata15"),
	incredit15("incredit15"),
	reset("reset"),
 	clock("clock"){
		CurrentTime = 0;

		SC_CTHREAD(TrafficGenerator, clock.pos());  //uma CTHREAD, comeca a executar na primeira subida de clock e. (por tal razao tem um loop infinito dentro dela)
		//watching(reset.delayed() == true); //caso o sinal do reset seja 1, ele volta pro comeco da CTHREAD.

		SC_METHOD(Timer); // pro timer
		sensitive_pos << clock;
		dont_initialize();

		SC_METHOD(port_assign); // pra deixar os sinais sempre atualizados...
		sensitive << clock;
	}
};


void inline inputmodule::port_assign(){
	outclock0 = clock;
	outclock1 = clock;
	outclock2 = clock;
	outclock3 = clock;
	outclock4 = clock;
	outclock5 = clock;
	outclock6 = clock;
	outclock7 = clock;
	outclock8 = clock;
	outclock9 = clock;
	outclock10 = clock;
	outclock11 = clock;
	outclock12 = clock;
	outclock13 = clock;
	outclock14 = clock;
	outclock15 = clock;
}

void inline inputmodule::Timer(){
	++CurrentTime; //variavel que conta no numero de clocks, eh resetada no reset.
}

void inline inputmodule::TrafficGenerator(){

/*******************************************************************************************************************************************
** pacote BE:
**
**  timestamp   target  size   source  timestamp de saida do nodo  nro de sequencia  timestamp de entrada na rede     payload
**      0        00XX   XXXX    00XX      XXXX XXXX XXXX XXXX         XXXX XXXX          XXXX XXXX XXXX XXXX            XXXX ...
**
********************************************************************************************************************************************/

	enum Estado{S1, S2, S3, S4, FimArquivo};
	Estado EstadoAtual[constNumRot];
	FILE* Input[constNumRot];
	char temp[constFlitSize+1], TimestampNet[constFlitSize/4+1];
	unsigned long int CurrentFlit[constNumRot],Target[constNumRot],Size[constNumRot];
	unsigned long int* BigPacket[constNumRot];
	int FlitNumber[constNumRot], NumberofFlits[constNumRot], WaitTime[constNumRot];
	int Index,i,j,k;
	bool active[constNumRot];
	int n_active = 0;

	for(Index=0;Index<constNumRot;Index++){
		sprintf(temp,"in%d.txt",Index);
		Input[Index] = fopen(temp,"r");
		if(Input[Index] != NULL){
			active[Index] = true;
			n_active++;
		}
		else{
			active[Index] = false;
		}
		outTx(Index,0);
		outData(Index,0);
		EstadoAtual[Index] = S1;
		FlitNumber[Index] = 0;
	}

	while(true){
		for(Index=0;Index<constNumRot;Index++){
		 if(reset!=SC_LOGIC_1 && active[Index]){
				//captura o tempo para entrada na rede
				if(EstadoAtual[Index] == S1){
						outTx(Index,0);
						outData(Index,0);
						FlitNumber[Index] = 0;
						fscanf(Input[Index],"%X",&CurrentFlit[Index]);
						WaitTime[Index] = CurrentFlit[Index];
						EstadoAtual[Index] = S2;
						if(feof(Input[Index])){
							fclose(Input[Index]);
							active[Index] = false;
							n_active--;
							outTx(Index,0);
							outData(Index,0);
							EstadoAtual[Index] = FimArquivo;
						}
				}
				//espera atý o tempo para entrar na rede
				if(EstadoAtual[Index] == S2){
					if(CurrentTime<WaitTime[Index])
						EstadoAtual[Index]=S2;
					else
						EstadoAtual[Index] = S3;
				}
				if(EstadoAtual[Index]== S3){
					//Captura o target
					fscanf(Input[Index],"%X",&CurrentFlit[Index]);
					Target[Index] = CurrentFlit[Index];
					FlitNumber[Index]++;

					//Captura o size
					fscanf(Input[Index],"%X",&CurrentFlit[Index]);
					Size[Index] = CurrentFlit[Index];
					Size[Index] += 4; //4 = Inserýýo do timestamp de entrada na rede
					NumberofFlits[Index] = Size[Index] + 2; //2 = header + size
					BigPacket[Index]=(unsigned long int*)calloc( sizeof(unsigned long int) , NumberofFlits[Index]);
					BigPacket[Index][0] = Target[Index];
					BigPacket[Index][1] = Size[Index];
					FlitNumber[Index]++;

					//Captura a origem, o timestamp de saida nodo (4 flits) e o nýmero de sequýncia
					while(FlitNumber[Index] < 9 ){
						fscanf(Input[Index], "%X", &CurrentFlit[Index]);
						BigPacket[Index][FlitNumber[Index]] = CurrentFlit[Index];
						FlitNumber[Index]++;
					}

					//Insere espaýo para o timestamp de entrada na rede (4 flits)
					FlitNumber[Index]+=4;

					//Captura o payload
					while(FlitNumber[Index] < NumberofFlits[Index]){
						fscanf(Input[Index], "%X", &CurrentFlit[Index]);
						BigPacket[Index][FlitNumber[Index]] = CurrentFlit[Index];
						FlitNumber[Index]++;
					}
					EstadoAtual[Index] = S4;
					FlitNumber[Index] = 0;

				}
				//comeca a transmitir os dados
				if(EstadoAtual[Index]==S4 && inCredit(Index)==1){
					if(FlitNumber[Index]>=NumberofFlits[Index]){
						outTx(Index,0);
						outData(Index,0);
						EstadoAtual[Index] = S1;
						free(BigPacket[Index]);
					}
					else{
						if(FlitNumber[Index] == 0){
							sprintf(temp, "%0*X",constFlitSize, CurrentTime);
							k = 9; //posiýýo que deve ser inserido o timestamp de entrada na rede
							for(i=0,j=0;i<constFlitSize;i++,j++){
								TimestampNet[j]=temp[i];
								if(j==constFlitSize/4-1){
									sscanf(TimestampNet, "%X", &BigPacket[Index][k]);
									j=-1; //  porque na iteracao seguinte vai aumentar 1.
									k++;
								}
							}
						}

						outTx(Index,1);
						outData(Index, BigPacket[Index][FlitNumber[Index] ]);
						FlitNumber[Index]++;
					}
				}
				if(EstadoAtual[Index] == FimArquivo){
					outTx(Index,0);
					outData(Index,0);
				}
		  }//end if active
		}//end for
		finish = (n_active==0)? SC_LOGIC_1: SC_LOGIC_0;
		wait();
	}//end while
}

#endif// INMODULE

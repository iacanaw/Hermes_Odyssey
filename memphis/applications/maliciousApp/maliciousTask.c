#include<api.h>
#include<stdlib.h>

volatile unsigned int configPckt[3];
Message capturedMsg;

int main(){
    unsigned int myAddress;
    int i;

    //myAddress = GetTaskPE(0);
    //myAddress = 0x0202;
    //Echo(itoa(myAddress));

    //Defines configuration packet
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0xAAAA0202; //0xAAAA0000 + myAddress;
    Echo("Enviando configuration packet...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Configuration packet enviado com sucesso!");

    while(1){
        Echo("Aguardando nova mensagem...");
        RawReceive(&capturedMsg);
        Echo("Mensagem recebida!");
        for(i=0; i<capturedMsg.length; i++){
            Echo(itoa(capturedMsg.msg[i]));
        }
    }

    exit();
}
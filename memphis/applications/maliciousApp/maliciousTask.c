#include<api.h>
#include<stdlib.h>

volatile unsigned int configPckt[3];
Message capturedMsg1, capturedMsg2;

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


    Echo("Aguardando primeira mensagem...");
    RawReceive(&capturedMsg1);
    Echo("Aguardando segunda mensagem...");
    RawReceive(&capturedMsg2);
    Echo("Mensagens recebidas!");

    Echo("Desabilitando HT...");
    RawSend(configPckt, 3);
    Echo("Exibindo mensagem1...");
    for(i=0; i<capturedMsg1.length; i++){
        Echo(itoa(capturedMsg1.msg[i]));
    }
    Echo("Exibindo mensagem2...");
    for(i=0; i<capturedMsg2.length; i++){
        Echo(itoa(capturedMsg2.msg[i]));
    }

    Echo("THE END!");
    
    exit();
}
#include<api.h>
#include<stdlib.h>

volatile unsigned int configPckt[3];
Message capturedMsg[35];
int main(){
    unsigned int myAddress;
    int i,j;
    unsigned int tick;

    //Defines configuration packet
    // DUPLICATE
    //
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0xAAA80003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<260000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet DUPLICAR...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Configuration packet enviado com sucesso!");

    for(i=0;i<35;i++){
        RawReceive(&capturedMsg[i]);
        Echo(itoa(i));
        Echo("Aguardando mensagem...");
    }
    Echo("Desabilitando HT...");
    RawSend(configPckt, 3);
    Echo("HT Desabilitado!");

    /*for(j=0;j<10;j++){
        Echo("Exibindo Mensagens...");
        for(i=0; i<capturedMsg[j].length; i++){
            Echo(itoa(capturedMsg[j].msg[i]));
        }
    }*/
    Echo("DUPLICATION END!");
    // STALL
    //
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0xAAAB0003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<600000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet BLOQUEIO...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Pacote de bloqueio enviado com sucesso packet enviado com sucesso!");
    tick = 0;
    while(tick<780000){
        tick = GetTick();
    }
    Echo("Desabilitando o bloqueio...");
    RawSend(configPckt, 3);
    Echo("Bloqueio desabilitado!");

    //MISSROUTING
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0xAAA90003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<850000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet MISSROUTING...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Missrouting packet enviado com sucesso!");
    Echo("THE END!");

    exit();
}

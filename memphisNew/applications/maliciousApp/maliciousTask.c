#include<api.h>
#include<stdlib.h>

volatile unsigned int configPckt[3];
Message capturedMsg[21];

int main(){
    unsigned int myAddress;
    int i,j;
    unsigned int tick;

    //Defines configuration packet
    // DUPLICATE
    //
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0x2AAA0003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<260000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet DUPLICAR...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Configuration packet enviado com sucesso!");

    for(i=0;i<20;i++){
        RawReceive(&capturedMsg[i]);
        Echo(itoa(i));
        Echo("Aguardando mensagem...");
    }
    Echo("Desabilitando HT...");
    RawSend(configPckt, 3);
<<<<<<< HEAD
    //Recebe a proxima mensagem raw
=======
>>>>>>> 76f9cd3ab8966cc6544fd300b4bcb30518288387
    for(j=0;j<20;j++){
        Echo("Exibindo Mensagens...");
        for(i=0; i<capturedMsg[j].length; i++){
            Echo(itoa(capturedMsg[j].msg[i]));
        }
    }
    Echo("DUPLICATION END!");
<<<<<<< HEAD
/*
=======

>>>>>>> 76f9cd3ab8966cc6544fd300b4bcb30518288387
    // DUPLICATE
    //
    configPckt[0] = 0x00000001;
    configPckt[1] = 0x00000001;
    configPckt[2] = 0xEAAA0003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<600000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet BLOQUEIO...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Configuration packet enviado com sucesso!");
    tick = 0;
    while(tick<800000){
        tick = GetTick();
    }
    Echo("Desabilitando HT...");
    RawSend(configPckt, 3);

    //MISSROUTING
<<<<<<< HEAD
    configPckt[0] = 0x00000001;
=======
    //configPckt[0] = 0x00000001;
>>>>>>> 76f9cd3ab8966cc6544fd300b4bcb30518288387
    configPckt[1] = 0x00000001;
    configPckt[2] = 0x6AAA0003; //0xAAAA0000 + myAddress;
    tick = 0;
    while(tick<800000){
        tick = GetTick();
    }
    Echo("Enviando configuration packet MISSROUTING...");
    RawSend(configPckt, 3);
    for(i =0; i<3; i++) Echo(itoa(configPckt[i]));
    Echo("Configuration packet enviado com sucesso!");
    Echo("THE END!");
<<<<<<< HEAD
    */
=======
    
>>>>>>> 76f9cd3ab8966cc6544fd300b4bcb30518288387
    exit();
}

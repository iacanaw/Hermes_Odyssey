# Hermes Odyssey

A simulação apresenta um cenário que provê colisões como observa-se na imagem:

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/Cenário.png)

Os PEs 01 e 10 estão realizando injeção de pacotes à uma taxa de 20% com destino os PEs 12 e 21 respectivamente.
O PE 11 está realizando uma transmissão para o PE 20, esta é a transmissão alvo do Trojan.
A aplicação maliciosa está inserida em 22, para onde os pacotes duplicados serão enviados.

Nos arquivos /Simulation/data encontramos os dados que serão lidos (neste cenário apenas os arquivos fileIn0202 (pacotes de confifuração) e fileIn0101(pacotes legítimos, alvos do trojan) possuem conteúdo pois os conteúdos das transmissões do 01 e 10 são aleatórios).
Para verificar o correto funcionamento, basta que ao final da simulação verifique se o conteúdo do fileIn0101 é igual ao fileOut0200 e se o fileOut0202 possui pacotes semelhantes (apenas o cabeçalho será diferente).

Para executar a simualação, basta acessar o diretório raiz do projeto no QuestaSim/ModelSim e executar o comando "do compile.do"
Os .vhdl serão compilados e a simulação irá iniciar, abrindo a seguinte waveform...

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/Wave.png)


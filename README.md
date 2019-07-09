# Hermes Odyssey

A simulação apresenta um cenário que provê colisões como observa-se na imagem:

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/Cenário.png)

Os PEs 01 e 10 estão realizando injeção de pacotes à uma taxa de 20% com destino os PEs 12 e 21 respectivamente.
O PE 11 está realizando uma transmissão para o PE 20, esta é a transmissão alvo do Trojan.
A aplicação maliciosa está inserida em 22, para onde os pacotes duplicados serão enviados.

Nos arquivos /Simulation/data encontramos os dados que serão lidos (neste cenário apenas os arquivos fileIn0202 (pacotes de confifuração) e fileIn0101(pacotes legítimos, alvos do trojan) possuem conteúdo pois os conteúdos das transmissões do 01 e 10 são aleatórios).
Para verificar o correto funcionamento, basta que ao final da simulação verifique se o conteúdo do fileIn0101 é igual ao fileOut0200 e se o fileOut0202 possui pacotes semelhantes (apenas o cabeçalho será diferente).

Para executar a simualação, basta acessar o diretório raiz do projeto no QuestaSim/ModelSim e executar o seguinte comando:

> do compile.do

Os .vhdl serão compilados e a simulação irá iniciar, abrindo a seguinte waveform...

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/Wave.png)


=====================================================================================

A aplicação Sorting Divide and Conquer deve ser executada com a Memphis modificada (RAW_(SEND/RECEIVE)) é necessário copiar a pasta "memphis" para o diretório $HOME para criar um ambiente propício à execução das aplicações.

Copie a pasta "memphis_sortingDivideConquer" e "memphis_trojanRun" para este ambiente.

Na pasta "memphis_sortingDivideConquer" temos um cenário com apenas a aplicação de sorting, enquanto que na pasta "memphis_trojanRun" encontramos um cenário com a aplicação de sorting e a aplicação maliciosa, roubando dados da aplicação de sorting.

Utilize o seguinte comando dentro de cada uma das pastas:

> memphis-all my_testcase.yaml my_scenario.yaml 10

(a execução da simulação "memphis_trojanRun" é lenta pois é feita utilizando VHDL)


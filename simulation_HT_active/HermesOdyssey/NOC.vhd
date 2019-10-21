library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.HermesPackage.all;

entity NOC is
port(
	clock         : in  regNrot;
	reset         : in  std_logic;
	clock_rxLocal : in  regNrot;
	rxLocal       : in  regNrot;
	data_inLocal  : in  arrayNrot_regflit;
	credit_oLocal : out regNrot;
	clock_txLocal : out regNrot;
	txLocal       : out regNrot;
	data_outLocal : out arrayNrot_regflit;
	credit_iLocal : in  regNrot);
end NOC;

architecture NOC of NOC is

	signal clock_rxN0000, clock_rxN0100, clock_rxN0200, clock_rxN0300 : regNport;
	signal rxN0000, rxN0100, rxN0200, rxN0300 : regNport;
	signal data_inN0000, data_inN0100, data_inN0200, data_inN0300 : arrayNport_regflit;
	signal credit_oN0000, credit_oN0100, credit_oN0200, credit_oN0300 : regNport;
	signal clock_txN0000, clock_txN0100, clock_txN0200, clock_txN0300 : regNport;
	signal txN0000, txN0100, txN0200, txN0300 : regNport;
	signal data_outN0000, data_outN0100, data_outN0200, data_outN0300 : arrayNport_regflit;
	signal credit_iN0000, credit_iN0100, credit_iN0200, credit_iN0300 : regNport;
	signal clock_rxN0001, clock_rxN0101, clock_rxN0201, clock_rxN0301 : regNport;
	signal rxN0001, rxN0101, rxN0201, rxN0301 : regNport;
	signal data_inN0001, data_inN0101, data_inN0201, data_inN0301 : arrayNport_regflit;
	signal credit_oN0001, credit_oN0101, credit_oN0201, credit_oN0301 : regNport;
	signal clock_txN0001, clock_txN0101, clock_txN0201, clock_txN0301 : regNport;
	signal txN0001, txN0101, txN0201, txN0301 : regNport;
	signal data_outN0001, data_outN0101, data_outN0201, data_outN0301 : arrayNport_regflit;
	signal credit_iN0001, credit_iN0101, credit_iN0201, credit_iN0301 : regNport;
	signal clock_rxN0002, clock_rxN0102, clock_rxN0202, clock_rxN0302 : regNport;
	signal rxN0002, rxN0102, rxN0202, rxN0302 : regNport;
	signal data_inN0002, data_inN0102, data_inN0202, data_inN0302 : arrayNport_regflit;
	signal credit_oN0002, credit_oN0102, credit_oN0202, credit_oN0302 : regNport;
	signal clock_txN0002, clock_txN0102, clock_txN0202, clock_txN0302 : regNport;
	signal txN0002, txN0102, txN0202, txN0302 : regNport;
	signal data_outN0002, data_outN0102, data_outN0202, data_outN0302 : arrayNport_regflit;
	signal credit_iN0002, credit_iN0102, credit_iN0202, credit_iN0302 : regNport;
	signal clock_rxN0003, clock_rxN0103, clock_rxN0203, clock_rxN0303 : regNport;
	signal rxN0003, rxN0103, rxN0203, rxN0303 : regNport;
	signal data_inN0003, data_inN0103, data_inN0203, data_inN0303 : arrayNport_regflit;
	signal credit_oN0003, credit_oN0103, credit_oN0203, credit_oN0303 : regNport;
	signal clock_txN0003, clock_txN0103, clock_txN0203, clock_txN0303 : regNport;
	signal txN0003, txN0103, txN0203, txN0303 : regNport;
	signal data_outN0003, data_outN0103, data_outN0203, data_outN0303 : arrayNport_regflit;
	signal credit_iN0003, credit_iN0103, credit_iN0203, credit_iN0303 : regNport;
begin

	Router0000 : Entity work.RouterInfected
	generic map( address => ADDRESSN0000 )
	port map(
		clock    => clock(N0000),
		reset    => reset,
		clock_rx => clock_rxN0000,
		rx       => rxN0000,
		data_in  => data_inN0000,
		credit_o => credit_oN0000,
		clock_tx => clock_txN0000,
		tx       => txN0000,
		data_out => data_outN0000,
		credit_i => credit_iN0000);

	Router0100 : Entity work.RouterInfected
	generic map( address => ADDRESSN0100 )
	port map(
		clock    => clock(N0100),
		reset    => reset,
		clock_rx => clock_rxN0100,
		rx       => rxN0100,
		data_in  => data_inN0100,
		credit_o => credit_oN0100,
		clock_tx => clock_txN0100,
		tx       => txN0100,
		data_out => data_outN0100,
		credit_i => credit_iN0100);

	Router0200 : Entity work.RouterInfected
	generic map( address => ADDRESSN0200 )
	port map(
		clock    => clock(N0200),
		reset    => reset,
		clock_rx => clock_rxN0200,
		rx       => rxN0200,
		data_in  => data_inN0200,
		credit_o => credit_oN0200,
		clock_tx => clock_txN0200,
		tx       => txN0200,
		data_out => data_outN0200,
		credit_i => credit_iN0200);

	Router0300 : Entity work.RouterInfected
	generic map( address => ADDRESSN0300 )
	port map(
		clock    => clock(N0300),
		reset    => reset,
		clock_rx => clock_rxN0300,
		rx       => rxN0300,
		data_in  => data_inN0300,
		credit_o => credit_oN0300,
		clock_tx => clock_txN0300,
		tx       => txN0300,
		data_out => data_outN0300,
		credit_i => credit_iN0300);

	Router0001 : Entity work.RouterInfected
	generic map( address => ADDRESSN0001 )
	port map(
		clock    => clock(N0001),
		reset    => reset,
		clock_rx => clock_rxN0001,
		rx       => rxN0001,
		data_in  => data_inN0001,
		credit_o => credit_oN0001,
		clock_tx => clock_txN0001,
		tx       => txN0001,
		data_out => data_outN0001,
		credit_i => credit_iN0001);

	Router0101 : Entity work.RouterInfected
	generic map( address => ADDRESSN0101 )
	port map(
		clock    => clock(N0101),
		reset    => reset,
		clock_rx => clock_rxN0101,
		rx       => rxN0101,
		data_in  => data_inN0101,
		credit_o => credit_oN0101,
		clock_tx => clock_txN0101,
		tx       => txN0101,
		data_out => data_outN0101,
		credit_i => credit_iN0101);

	Router0201 : Entity work.RouterInfected
	generic map( address => ADDRESSN0201 )
	port map(
		clock    => clock(N0201),
		reset    => reset,
		clock_rx => clock_rxN0201,
		rx       => rxN0201,
		data_in  => data_inN0201,
		credit_o => credit_oN0201,
		clock_tx => clock_txN0201,
		tx       => txN0201,
		data_out => data_outN0201,
		credit_i => credit_iN0201);

	Router0301 : Entity work.RouterInfected
	generic map( address => ADDRESSN0301 )
	port map(
		clock    => clock(N0301),
		reset    => reset,
		clock_rx => clock_rxN0301,
		rx       => rxN0301,
		data_in  => data_inN0301,
		credit_o => credit_oN0301,
		clock_tx => clock_txN0301,
		tx       => txN0301,
		data_out => data_outN0301,
		credit_i => credit_iN0301);

	Router0002 : Entity work.RouterInfected
	generic map( address => ADDRESSN0002 )
	port map(
		clock    => clock(N0002),
		reset    => reset,
		clock_rx => clock_rxN0002,
		rx       => rxN0002,
		data_in  => data_inN0002,
		credit_o => credit_oN0002,
		clock_tx => clock_txN0002,
		tx       => txN0002,
		data_out => data_outN0002,
		credit_i => credit_iN0002);

	Router0102 : Entity work.RouterInfected
	generic map( address => ADDRESSN0102 )
	port map(
		clock    => clock(N0102),
		reset    => reset,
		clock_rx => clock_rxN0102,
		rx       => rxN0102,
		data_in  => data_inN0102,
		credit_o => credit_oN0102,
		clock_tx => clock_txN0102,
		tx       => txN0102,
		data_out => data_outN0102,
		credit_i => credit_iN0102);

	Router0202 : Entity work.RouterInfected
	generic map( address => ADDRESSN0202 )
	port map(
		clock    => clock(N0202),
		reset    => reset,
		clock_rx => clock_rxN0202,
		rx       => rxN0202,
		data_in  => data_inN0202,
		credit_o => credit_oN0202,
		clock_tx => clock_txN0202,
		tx       => txN0202,
		data_out => data_outN0202,
		credit_i => credit_iN0202);

	Router0302 : Entity work.RouterInfected
	generic map( address => ADDRESSN0302 )
	port map(
		clock    => clock(N0302),
		reset    => reset,
		clock_rx => clock_rxN0302,
		rx       => rxN0302,
		data_in  => data_inN0302,
		credit_o => credit_oN0302,
		clock_tx => clock_txN0302,
		tx       => txN0302,
		data_out => data_outN0302,
		credit_i => credit_iN0302);

	Router0003 : Entity work.RouterInfected
	generic map( address => ADDRESSN0003 )
	port map(
		clock    => clock(N0003),
		reset    => reset,
		clock_rx => clock_rxN0003,
		rx       => rxN0003,
		data_in  => data_inN0003,
		credit_o => credit_oN0003,
		clock_tx => clock_txN0003,
		tx       => txN0003,
		data_out => data_outN0003,
		credit_i => credit_iN0003);

	Router0103 : Entity work.RouterInfected
	generic map( address => ADDRESSN0103 )
	port map(
		clock    => clock(N0103),
		reset    => reset,
		clock_rx => clock_rxN0103,
		rx       => rxN0103,
		data_in  => data_inN0103,
		credit_o => credit_oN0103,
		clock_tx => clock_txN0103,
		tx       => txN0103,
		data_out => data_outN0103,
		credit_i => credit_iN0103);

	Router0203 : Entity work.RouterInfected
	generic map( address => ADDRESSN0203 )
	port map(
		clock    => clock(N0203),
		reset    => reset,
		clock_rx => clock_rxN0203,
		rx       => rxN0203,
		data_in  => data_inN0203,
		credit_o => credit_oN0203,
		clock_tx => clock_txN0203,
		tx       => txN0203,
		data_out => data_outN0203,
		credit_i => credit_iN0203);

	Router0303 : Entity work.RouterInfected
	generic map( address => ADDRESSN0303 )
	port map(
		clock    => clock(N0303),
		reset    => reset,
		clock_rx => clock_rxN0303,
		rx       => rxN0303,
		data_in  => data_inN0303,
		credit_o => credit_oN0303,
		clock_tx => clock_txN0303,
		tx       => txN0303,
		data_out => data_outN0303,
		credit_i => credit_iN0303);

	-- ROUTER 0000
	-- EAST port
	clock_rxN0000(0)<=clock_txN0100(1);
	rxN0000(0)<=txN0100(1);
	data_inN0000(0)<=data_outN0100(1);
	credit_iN0000(0)<=credit_oN0100(1);
	-- WEST port
	clock_rxN0000(1)<='0';
	rxN0000(1)<='0';
	data_inN0000(1)<=(others=>'0');
	credit_iN0000(1)<='0';
	-- NORTH port
	clock_rxN0000(2)<=clock_txN0001(3);
	rxN0000(2)<=txN0001(3);
	data_inN0000(2)<=data_outN0001(3);
	credit_iN0000(2)<=credit_oN0001(3);
	-- SOUTH port
	clock_rxN0000(3)<='0';
	rxN0000(3)<='0';
	data_inN0000(3)<=(others=>'0');
	credit_iN0000(3)<='0';
	-- LOCAL port
	clock_rxN0000(4)<=clock_rxLocal(N0000);
	rxN0000(4)<=rxLocal(N0000);
	data_inN0000(4)<=data_inLocal(N0000);
	credit_iN0000(4)<=credit_iLocal(N0000);
	clock_txLocal(N0000)<=clock_txN0000(4);
	txLocal(N0000)<=txN0000(4);
	data_outLocal(N0000)<=data_outN0000(4);
	credit_oLocal(N0000)<=credit_oN0000(4);

	-- ROUTER 0100
	-- EAST port
	clock_rxN0100(0)<=clock_txN0200(1);
	rxN0100(0)<=txN0200(1);
	data_inN0100(0)<=data_outN0200(1);
	credit_iN0100(0)<=credit_oN0200(1);
	-- WEST port
	clock_rxN0100(1)<=clock_txN0000(0);
	rxN0100(1)<=txN0000(0);
	data_inN0100(1)<=data_outN0000(0);
	credit_iN0100(1)<=credit_oN0000(0);
	-- NORTH port
	clock_rxN0100(2)<=clock_txN0101(3);
	rxN0100(2)<=txN0101(3);
	data_inN0100(2)<=data_outN0101(3);
	credit_iN0100(2)<=credit_oN0101(3);
	-- SOUTH port
	clock_rxN0100(3)<='0';
	rxN0100(3)<='0';
	data_inN0100(3)<=(others=>'0');
	credit_iN0100(3)<='0';
	-- LOCAL port
	clock_rxN0100(4)<=clock_rxLocal(N0100);
	rxN0100(4)<=rxLocal(N0100);
	data_inN0100(4)<=data_inLocal(N0100);
	credit_iN0100(4)<=credit_iLocal(N0100);
	clock_txLocal(N0100)<=clock_txN0100(4);
	txLocal(N0100)<=txN0100(4);
	data_outLocal(N0100)<=data_outN0100(4);
	credit_oLocal(N0100)<=credit_oN0100(4);

	-- ROUTER 0200
	-- EAST port
	clock_rxN0200(0)<=clock_txN0300(1);
	rxN0200(0)<=txN0300(1);
	data_inN0200(0)<=data_outN0300(1);
	credit_iN0200(0)<=credit_oN0300(1);
	-- WEST port
	clock_rxN0200(1)<=clock_txN0100(0);
	rxN0200(1)<=txN0100(0);
	data_inN0200(1)<=data_outN0100(0);
	credit_iN0200(1)<=credit_oN0100(0);
	-- NORTH port
	clock_rxN0200(2)<=clock_txN0201(3);
	rxN0200(2)<=txN0201(3);
	data_inN0200(2)<=data_outN0201(3);
	credit_iN0200(2)<=credit_oN0201(3);
	-- SOUTH port
	clock_rxN0200(3)<='0';
	rxN0200(3)<='0';
	data_inN0200(3)<=(others=>'0');
	credit_iN0200(3)<='0';
	-- LOCAL port
	clock_rxN0200(4)<=clock_rxLocal(N0200);
	rxN0200(4)<=rxLocal(N0200);
	data_inN0200(4)<=data_inLocal(N0200);
	credit_iN0200(4)<=credit_iLocal(N0200);
	clock_txLocal(N0200)<=clock_txN0200(4);
	txLocal(N0200)<=txN0200(4);
	data_outLocal(N0200)<=data_outN0200(4);
	credit_oLocal(N0200)<=credit_oN0200(4);

	-- ROUTER 0300
	-- EAST port
	clock_rxN0300(0)<='0';
	rxN0300(0)<='0';
	data_inN0300(0)<=(others=>'0');
	credit_iN0300(0)<='0';
	-- WEST port
	clock_rxN0300(1)<=clock_txN0200(0);
	rxN0300(1)<=txN0200(0);
	data_inN0300(1)<=data_outN0200(0);
	credit_iN0300(1)<=credit_oN0200(0);
	-- NORTH port
	clock_rxN0300(2)<=clock_txN0301(3);
	rxN0300(2)<=txN0301(3);
	data_inN0300(2)<=data_outN0301(3);
	credit_iN0300(2)<=credit_oN0301(3);
	-- SOUTH port
	clock_rxN0300(3)<='0';
	rxN0300(3)<='0';
	data_inN0300(3)<=(others=>'0');
	credit_iN0300(3)<='0';
	-- LOCAL port
	clock_rxN0300(4)<=clock_rxLocal(N0300);
	rxN0300(4)<=rxLocal(N0300);
	data_inN0300(4)<=data_inLocal(N0300);
	credit_iN0300(4)<=credit_iLocal(N0300);
	clock_txLocal(N0300)<=clock_txN0300(4);
	txLocal(N0300)<=txN0300(4);
	data_outLocal(N0300)<=data_outN0300(4);
	credit_oLocal(N0300)<=credit_oN0300(4);

	-- ROUTER 0001
	-- EAST port
	clock_rxN0001(0)<=clock_txN0101(1);
	rxN0001(0)<=txN0101(1);
	data_inN0001(0)<=data_outN0101(1);
	credit_iN0001(0)<=credit_oN0101(1);
	-- WEST port
	clock_rxN0001(1)<='0';
	rxN0001(1)<='0';
	data_inN0001(1)<=(others=>'0');
	credit_iN0001(1)<='0';
	-- NORTH port
	clock_rxN0001(2)<=clock_txN0002(3);
	rxN0001(2)<=txN0002(3);
	data_inN0001(2)<=data_outN0002(3);
	credit_iN0001(2)<=credit_oN0002(3);
	-- SOUTH port
	clock_rxN0001(3)<=clock_txN0000(2);
	rxN0001(3)<=txN0000(2);
	data_inN0001(3)<=data_outN0000(2);
	credit_iN0001(3)<=credit_oN0000(2);
	-- LOCAL port
	clock_rxN0001(4)<=clock_rxLocal(N0001);
	rxN0001(4)<=rxLocal(N0001);
	data_inN0001(4)<=data_inLocal(N0001);
	credit_iN0001(4)<=credit_iLocal(N0001);
	clock_txLocal(N0001)<=clock_txN0001(4);
	txLocal(N0001)<=txN0001(4);
	data_outLocal(N0001)<=data_outN0001(4);
	credit_oLocal(N0001)<=credit_oN0001(4);

	-- ROUTER 0101
	-- EAST port
	clock_rxN0101(0)<=clock_txN0201(1);
	rxN0101(0)<=txN0201(1);
	data_inN0101(0)<=data_outN0201(1);
	credit_iN0101(0)<=credit_oN0201(1);
	-- WEST port
	clock_rxN0101(1)<=clock_txN0001(0);
	rxN0101(1)<=txN0001(0);
	data_inN0101(1)<=data_outN0001(0);
	credit_iN0101(1)<=credit_oN0001(0);
	-- NORTH port
	clock_rxN0101(2)<=clock_txN0102(3);
	rxN0101(2)<=txN0102(3);
	data_inN0101(2)<=data_outN0102(3);
	credit_iN0101(2)<=credit_oN0102(3);
	-- SOUTH port
	clock_rxN0101(3)<=clock_txN0100(2);
	rxN0101(3)<=txN0100(2);
	data_inN0101(3)<=data_outN0100(2);
	credit_iN0101(3)<=credit_oN0100(2);
	-- LOCAL port
	clock_rxN0101(4)<=clock_rxLocal(N0101);
	rxN0101(4)<=rxLocal(N0101);
	data_inN0101(4)<=data_inLocal(N0101);
	credit_iN0101(4)<=credit_iLocal(N0101);
	clock_txLocal(N0101)<=clock_txN0101(4);
	txLocal(N0101)<=txN0101(4);
	data_outLocal(N0101)<=data_outN0101(4);
	credit_oLocal(N0101)<=credit_oN0101(4);

	-- ROUTER 0201
	-- EAST port
	clock_rxN0201(0)<=clock_txN0301(1);
	rxN0201(0)<=txN0301(1);
	data_inN0201(0)<=data_outN0301(1);
	credit_iN0201(0)<=credit_oN0301(1);
	-- WEST port
	clock_rxN0201(1)<=clock_txN0101(0);
	rxN0201(1)<=txN0101(0);
	data_inN0201(1)<=data_outN0101(0);
	credit_iN0201(1)<=credit_oN0101(0);
	-- NORTH port
	clock_rxN0201(2)<=clock_txN0202(3);
	rxN0201(2)<=txN0202(3);
	data_inN0201(2)<=data_outN0202(3);
	credit_iN0201(2)<=credit_oN0202(3);
	-- SOUTH port
	clock_rxN0201(3)<=clock_txN0200(2);
	rxN0201(3)<=txN0200(2);
	data_inN0201(3)<=data_outN0200(2);
	credit_iN0201(3)<=credit_oN0200(2);
	-- LOCAL port
	clock_rxN0201(4)<=clock_rxLocal(N0201);
	rxN0201(4)<=rxLocal(N0201);
	data_inN0201(4)<=data_inLocal(N0201);
	credit_iN0201(4)<=credit_iLocal(N0201);
	clock_txLocal(N0201)<=clock_txN0201(4);
	txLocal(N0201)<=txN0201(4);
	data_outLocal(N0201)<=data_outN0201(4);
	credit_oLocal(N0201)<=credit_oN0201(4);

	-- ROUTER 0301
	-- EAST port
	clock_rxN0301(0)<='0';
	rxN0301(0)<='0';
	data_inN0301(0)<=(others=>'0');
	credit_iN0301(0)<='0';
	-- WEST port
	clock_rxN0301(1)<=clock_txN0201(0);
	rxN0301(1)<=txN0201(0);
	data_inN0301(1)<=data_outN0201(0);
	credit_iN0301(1)<=credit_oN0201(0);
	-- NORTH port
	clock_rxN0301(2)<=clock_txN0302(3);
	rxN0301(2)<=txN0302(3);
	data_inN0301(2)<=data_outN0302(3);
	credit_iN0301(2)<=credit_oN0302(3);
	-- SOUTH port
	clock_rxN0301(3)<=clock_txN0300(2);
	rxN0301(3)<=txN0300(2);
	data_inN0301(3)<=data_outN0300(2);
	credit_iN0301(3)<=credit_oN0300(2);
	-- LOCAL port
	clock_rxN0301(4)<=clock_rxLocal(N0301);
	rxN0301(4)<=rxLocal(N0301);
	data_inN0301(4)<=data_inLocal(N0301);
	credit_iN0301(4)<=credit_iLocal(N0301);
	clock_txLocal(N0301)<=clock_txN0301(4);
	txLocal(N0301)<=txN0301(4);
	data_outLocal(N0301)<=data_outN0301(4);
	credit_oLocal(N0301)<=credit_oN0301(4);

	-- ROUTER 0002
	-- EAST port
	clock_rxN0002(0)<=clock_txN0102(1);
	rxN0002(0)<=txN0102(1);
	data_inN0002(0)<=data_outN0102(1);
	credit_iN0002(0)<=credit_oN0102(1);
	-- WEST port
	clock_rxN0002(1)<='0';
	rxN0002(1)<='0';
	data_inN0002(1)<=(others=>'0');
	credit_iN0002(1)<='0';
	-- NORTH port
	clock_rxN0002(2)<=clock_txN0003(3);
	rxN0002(2)<=txN0003(3);
	data_inN0002(2)<=data_outN0003(3);
	credit_iN0002(2)<=credit_oN0003(3);
	-- SOUTH port
	clock_rxN0002(3)<=clock_txN0001(2);
	rxN0002(3)<=txN0001(2);
	data_inN0002(3)<=data_outN0001(2);
	credit_iN0002(3)<=credit_oN0001(2);
	-- LOCAL port
	clock_rxN0002(4)<=clock_rxLocal(N0002);
	rxN0002(4)<=rxLocal(N0002);
	data_inN0002(4)<=data_inLocal(N0002);
	credit_iN0002(4)<=credit_iLocal(N0002);
	clock_txLocal(N0002)<=clock_txN0002(4);
	txLocal(N0002)<=txN0002(4);
	data_outLocal(N0002)<=data_outN0002(4);
	credit_oLocal(N0002)<=credit_oN0002(4);

	-- ROUTER 0102
	-- EAST port
	clock_rxN0102(0)<=clock_txN0202(1);
	rxN0102(0)<=txN0202(1);
	data_inN0102(0)<=data_outN0202(1);
	credit_iN0102(0)<=credit_oN0202(1);
	-- WEST port
	clock_rxN0102(1)<=clock_txN0002(0);
	rxN0102(1)<=txN0002(0);
	data_inN0102(1)<=data_outN0002(0);
	credit_iN0102(1)<=credit_oN0002(0);
	-- NORTH port
	clock_rxN0102(2)<=clock_txN0103(3);
	rxN0102(2)<=txN0103(3);
	data_inN0102(2)<=data_outN0103(3);
	credit_iN0102(2)<=credit_oN0103(3);
	-- SOUTH port
	clock_rxN0102(3)<=clock_txN0101(2);
	rxN0102(3)<=txN0101(2);
	data_inN0102(3)<=data_outN0101(2);
	credit_iN0102(3)<=credit_oN0101(2);
	-- LOCAL port
	clock_rxN0102(4)<=clock_rxLocal(N0102);
	rxN0102(4)<=rxLocal(N0102);
	data_inN0102(4)<=data_inLocal(N0102);
	credit_iN0102(4)<=credit_iLocal(N0102);
	clock_txLocal(N0102)<=clock_txN0102(4);
	txLocal(N0102)<=txN0102(4);
	data_outLocal(N0102)<=data_outN0102(4);
	credit_oLocal(N0102)<=credit_oN0102(4);

	-- ROUTER 0202
	-- EAST port
	clock_rxN0202(0)<=clock_txN0302(1);
	rxN0202(0)<=txN0302(1);
	data_inN0202(0)<=data_outN0302(1);
	credit_iN0202(0)<=credit_oN0302(1);
	-- WEST port
	clock_rxN0202(1)<=clock_txN0102(0);
	rxN0202(1)<=txN0102(0);
	data_inN0202(1)<=data_outN0102(0);
	credit_iN0202(1)<=credit_oN0102(0);
	-- NORTH port
	clock_rxN0202(2)<=clock_txN0203(3);
	rxN0202(2)<=txN0203(3);
	data_inN0202(2)<=data_outN0203(3);
	credit_iN0202(2)<=credit_oN0203(3);
	-- SOUTH port
	clock_rxN0202(3)<=clock_txN0201(2);
	rxN0202(3)<=txN0201(2);
	data_inN0202(3)<=data_outN0201(2);
	credit_iN0202(3)<=credit_oN0201(2);
	-- LOCAL port
	clock_rxN0202(4)<=clock_rxLocal(N0202);
	rxN0202(4)<=rxLocal(N0202);
	data_inN0202(4)<=data_inLocal(N0202);
	credit_iN0202(4)<=credit_iLocal(N0202);
	clock_txLocal(N0202)<=clock_txN0202(4);
	txLocal(N0202)<=txN0202(4);
	data_outLocal(N0202)<=data_outN0202(4);
	credit_oLocal(N0202)<=credit_oN0202(4);

	-- ROUTER 0302
	-- EAST port
	clock_rxN0302(0)<='0';
	rxN0302(0)<='0';
	data_inN0302(0)<=(others=>'0');
	credit_iN0302(0)<='0';
	-- WEST port
	clock_rxN0302(1)<=clock_txN0202(0);
	rxN0302(1)<=txN0202(0);
	data_inN0302(1)<=data_outN0202(0);
	credit_iN0302(1)<=credit_oN0202(0);
	-- NORTH port
	clock_rxN0302(2)<=clock_txN0303(3);
	rxN0302(2)<=txN0303(3);
	data_inN0302(2)<=data_outN0303(3);
	credit_iN0302(2)<=credit_oN0303(3);
	-- SOUTH port
	clock_rxN0302(3)<=clock_txN0301(2);
	rxN0302(3)<=txN0301(2);
	data_inN0302(3)<=data_outN0301(2);
	credit_iN0302(3)<=credit_oN0301(2);
	-- LOCAL port
	clock_rxN0302(4)<=clock_rxLocal(N0302);
	rxN0302(4)<=rxLocal(N0302);
	data_inN0302(4)<=data_inLocal(N0302);
	credit_iN0302(4)<=credit_iLocal(N0302);
	clock_txLocal(N0302)<=clock_txN0302(4);
	txLocal(N0302)<=txN0302(4);
	data_outLocal(N0302)<=data_outN0302(4);
	credit_oLocal(N0302)<=credit_oN0302(4);

	-- ROUTER 0003
	-- EAST port
	clock_rxN0003(0)<=clock_txN0103(1);
	rxN0003(0)<=txN0103(1);
	data_inN0003(0)<=data_outN0103(1);
	credit_iN0003(0)<=credit_oN0103(1);
	-- WEST port
	clock_rxN0003(1)<='0';
	rxN0003(1)<='0';
	data_inN0003(1)<=(others=>'0');
	credit_iN0003(1)<='0';
	-- NORTH port
	clock_rxN0003(2)<='0';
	rxN0003(2)<='0';
	data_inN0003(2)<=(others=>'0');
	credit_iN0003(2)<='0';
	-- SOUTH port
	clock_rxN0003(3)<=clock_txN0002(2);
	rxN0003(3)<=txN0002(2);
	data_inN0003(3)<=data_outN0002(2);
	credit_iN0003(3)<=credit_oN0002(2);
	-- LOCAL port
	clock_rxN0003(4)<=clock_rxLocal(N0003);
	rxN0003(4)<=rxLocal(N0003);
	data_inN0003(4)<=data_inLocal(N0003);
	credit_iN0003(4)<=credit_iLocal(N0003);
	clock_txLocal(N0003)<=clock_txN0003(4);
	txLocal(N0003)<=txN0003(4);
	data_outLocal(N0003)<=data_outN0003(4);
	credit_oLocal(N0003)<=credit_oN0003(4);

	-- ROUTER 0103
	-- EAST port
	clock_rxN0103(0)<=clock_txN0203(1);
	rxN0103(0)<=txN0203(1);
	data_inN0103(0)<=data_outN0203(1);
	credit_iN0103(0)<=credit_oN0203(1);
	-- WEST port
	clock_rxN0103(1)<=clock_txN0003(0);
	rxN0103(1)<=txN0003(0);
	data_inN0103(1)<=data_outN0003(0);
	credit_iN0103(1)<=credit_oN0003(0);
	-- NORTH port
	clock_rxN0103(2)<='0';
	rxN0103(2)<='0';
	data_inN0103(2)<=(others=>'0');
	credit_iN0103(2)<='0';
	-- SOUTH port
	clock_rxN0103(3)<=clock_txN0102(2);
	rxN0103(3)<=txN0102(2);
	data_inN0103(3)<=data_outN0102(2);
	credit_iN0103(3)<=credit_oN0102(2);
	-- LOCAL port
	clock_rxN0103(4)<=clock_rxLocal(N0103);
	rxN0103(4)<=rxLocal(N0103);
	data_inN0103(4)<=data_inLocal(N0103);
	credit_iN0103(4)<=credit_iLocal(N0103);
	clock_txLocal(N0103)<=clock_txN0103(4);
	txLocal(N0103)<=txN0103(4);
	data_outLocal(N0103)<=data_outN0103(4);
	credit_oLocal(N0103)<=credit_oN0103(4);

	-- ROUTER 0203
	-- EAST port
	clock_rxN0203(0)<=clock_txN0303(1);
	rxN0203(0)<=txN0303(1);
	data_inN0203(0)<=data_outN0303(1);
	credit_iN0203(0)<=credit_oN0303(1);
	-- WEST port
	clock_rxN0203(1)<=clock_txN0103(0);
	rxN0203(1)<=txN0103(0);
	data_inN0203(1)<=data_outN0103(0);
	credit_iN0203(1)<=credit_oN0103(0);
	-- NORTH port
	clock_rxN0203(2)<='0';
	rxN0203(2)<='0';
	data_inN0203(2)<=(others=>'0');
	credit_iN0203(2)<='0';
	-- SOUTH port
	clock_rxN0203(3)<=clock_txN0202(2);
	rxN0203(3)<=txN0202(2);
	data_inN0203(3)<=data_outN0202(2);
	credit_iN0203(3)<=credit_oN0202(2);
	-- LOCAL port
	clock_rxN0203(4)<=clock_rxLocal(N0203);
	rxN0203(4)<=rxLocal(N0203);
	data_inN0203(4)<=data_inLocal(N0203);
	credit_iN0203(4)<=credit_iLocal(N0203);
	clock_txLocal(N0203)<=clock_txN0203(4);
	txLocal(N0203)<=txN0203(4);
	data_outLocal(N0203)<=data_outN0203(4);
	credit_oLocal(N0203)<=credit_oN0203(4);

	-- ROUTER 0303
	-- EAST port
	clock_rxN0303(0)<='0';
	rxN0303(0)<='0';
	data_inN0303(0)<=(others=>'0');
	credit_iN0303(0)<='0';
	-- WEST port
	clock_rxN0303(1)<=clock_txN0203(0);
	rxN0303(1)<=txN0203(0);
	data_inN0303(1)<=data_outN0203(0);
	credit_iN0303(1)<=credit_oN0203(0);
	-- NORTH port
	clock_rxN0303(2)<='0';
	rxN0303(2)<='0';
	data_inN0303(2)<=(others=>'0');
	credit_iN0303(2)<='0';
	-- SOUTH port
	clock_rxN0303(3)<=clock_txN0302(2);
	rxN0303(3)<=txN0302(2);
	data_inN0303(3)<=data_outN0302(2);
	credit_iN0303(3)<=credit_oN0302(2);
	-- LOCAL port
	clock_rxN0303(4)<=clock_rxLocal(N0303);
	rxN0303(4)<=rxLocal(N0303);
	data_inN0303(4)<=data_inLocal(N0303);
	credit_iN0303(4)<=credit_iLocal(N0303);
	clock_txLocal(N0303)<=clock_txN0303(4);
	txLocal(N0303)<=txN0303(4);
	data_outLocal(N0303)<=data_outN0303(4);
	credit_oLocal(N0303)<=credit_oN0303(4);

	---- the component below, router_output, must be commented to simulate without SystemC
	--router_output: Entity work.outmodulerouter
	--port map(
	--	clock           => clock(N0000),
	--	reset           => reset,
	--	tx_r0p0         => txN0000(EAST),
	--	out_r0p0        => data_outN0000(EAST),
	--	credit_ir0p0    => credit_iN0000(EAST),
	--	tx_r0p2         => txN0000(NORTH),
	--	out_r0p2        => data_outN0000(NORTH),
	--	credit_ir0p2    => credit_iN0000(NORTH),
	--	tx_r1p0         => txN0100(EAST),
	--	out_r1p0        => data_outN0100(EAST),
	--	credit_ir1p0    => credit_iN0100(EAST),
	--	tx_r1p1         => txN0100(WEST),
	--	out_r1p1        => data_outN0100(WEST),
	--	credit_ir1p1    => credit_iN0100(WEST),
	--	tx_r1p2         => txN0100(NORTH),
	--	out_r1p2        => data_outN0100(NORTH),
	--	credit_ir1p2    => credit_iN0100(NORTH),
	--	tx_r2p0         => txN0200(EAST),
	--	out_r2p0        => data_outN0200(EAST),
	--	credit_ir2p0    => credit_iN0200(EAST),
	--	tx_r2p1         => txN0200(WEST),
	--	out_r2p1        => data_outN0200(WEST),
	--	credit_ir2p1    => credit_iN0200(WEST),
	--	tx_r2p2         => txN0200(NORTH),
	--	out_r2p2        => data_outN0200(NORTH),
	--	credit_ir2p2    => credit_iN0200(NORTH),
	--	tx_r3p1         => txN0300(WEST),
	--	out_r3p1        => data_outN0300(WEST),
	--	credit_ir3p1    => credit_iN0300(WEST),
	--	tx_r3p2         => txN0300(NORTH),
	--	out_r3p2        => data_outN0300(NORTH),
	--	credit_ir3p2    => credit_iN0300(NORTH),
	--	tx_r4p0         => txN0001(EAST),
	--	out_r4p0        => data_outN0001(EAST),
	--	credit_ir4p0    => credit_iN0001(EAST),
	--	tx_r4p2         => txN0001(NORTH),
	--	out_r4p2        => data_outN0001(NORTH),
	--	credit_ir4p2    => credit_iN0001(NORTH),
	--	tx_r4p3         => txN0001(SOUTH),
	--	out_r4p3        => data_outN0001(SOUTH),
	--	credit_ir4p3    => credit_iN0001(SOUTH),
	--	tx_r5p0         => txN0101(EAST),
	--	out_r5p0        => data_outN0101(EAST),
	--	credit_ir5p0    => credit_iN0101(EAST),
	--	tx_r5p1         => txN0101(WEST),
	--	out_r5p1        => data_outN0101(WEST),
	--	credit_ir5p1    => credit_iN0101(WEST),
	--	tx_r5p2         => txN0101(NORTH),
	--	out_r5p2        => data_outN0101(NORTH),
	--	credit_ir5p2    => credit_iN0101(NORTH),
	--	tx_r5p3         => txN0101(SOUTH),
	--	out_r5p3        => data_outN0101(SOUTH),
	--	credit_ir5p3    => credit_iN0101(SOUTH),
	--	tx_r6p0         => txN0201(EAST),
	--	out_r6p0        => data_outN0201(EAST),
	--	credit_ir6p0    => credit_iN0201(EAST),
	--	tx_r6p1         => txN0201(WEST),
	--	out_r6p1        => data_outN0201(WEST),
	--	credit_ir6p1    => credit_iN0201(WEST),
	--	tx_r6p2         => txN0201(NORTH),
	--	out_r6p2        => data_outN0201(NORTH),
	--	credit_ir6p2    => credit_iN0201(NORTH),
	--	tx_r6p3         => txN0201(SOUTH),
	--	out_r6p3        => data_outN0201(SOUTH),
	--	credit_ir6p3    => credit_iN0201(SOUTH),
	--	tx_r7p1         => txN0301(WEST),
	--	out_r7p1        => data_outN0301(WEST),
	--	credit_ir7p1    => credit_iN0301(WEST),
	--	tx_r7p2         => txN0301(NORTH),
	--	out_r7p2        => data_outN0301(NORTH),
	--	credit_ir7p2    => credit_iN0301(NORTH),
	--	tx_r7p3         => txN0301(SOUTH),
	--	out_r7p3        => data_outN0301(SOUTH),
	--	credit_ir7p3    => credit_iN0301(SOUTH),
	--	tx_r8p0         => txN0002(EAST),
	--	out_r8p0        => data_outN0002(EAST),
	--	credit_ir8p0    => credit_iN0002(EAST),
	--	tx_r8p2         => txN0002(NORTH),
	--	out_r8p2        => data_outN0002(NORTH),
	--	credit_ir8p2    => credit_iN0002(NORTH),
	--	tx_r8p3         => txN0002(SOUTH),
	--	out_r8p3        => data_outN0002(SOUTH),
	--	credit_ir8p3    => credit_iN0002(SOUTH),
	--	tx_r9p0         => txN0102(EAST),
	--	out_r9p0        => data_outN0102(EAST),
	--	credit_ir9p0    => credit_iN0102(EAST),
	--	tx_r9p1         => txN0102(WEST),
	--	out_r9p1        => data_outN0102(WEST),
	--	credit_ir9p1    => credit_iN0102(WEST),
	--	tx_r9p2         => txN0102(NORTH),
	--	out_r9p2        => data_outN0102(NORTH),
	--	credit_ir9p2    => credit_iN0102(NORTH),
	--	tx_r9p3         => txN0102(SOUTH),
	--	out_r9p3        => data_outN0102(SOUTH),
	--	credit_ir9p3    => credit_iN0102(SOUTH),
	--	tx_r10p0         => txN0202(EAST),
	--	out_r10p0        => data_outN0202(EAST),
	--	credit_ir10p0    => credit_iN0202(EAST),
	--	tx_r10p1         => txN0202(WEST),
	--	out_r10p1        => data_outN0202(WEST),
	--	credit_ir10p1    => credit_iN0202(WEST),
	--	tx_r10p2         => txN0202(NORTH),
	--	out_r10p2        => data_outN0202(NORTH),
	--	credit_ir10p2    => credit_iN0202(NORTH),
	--	tx_r10p3         => txN0202(SOUTH),
	--	out_r10p3        => data_outN0202(SOUTH),
	--	credit_ir10p3    => credit_iN0202(SOUTH),
	--	tx_r11p1         => txN0302(WEST),
	--	out_r11p1        => data_outN0302(WEST),
	--	credit_ir11p1    => credit_iN0302(WEST),
	--	tx_r11p2         => txN0302(NORTH),
	--	out_r11p2        => data_outN0302(NORTH),
	--	credit_ir11p2    => credit_iN0302(NORTH),
	--	tx_r11p3         => txN0302(SOUTH),
	--	out_r11p3        => data_outN0302(SOUTH),
	--	credit_ir11p3    => credit_iN0302(SOUTH),
	--	tx_r12p0         => txN0003(EAST),
	--	out_r12p0        => data_outN0003(EAST),
	--	credit_ir12p0    => credit_iN0003(EAST),
	--	tx_r12p3         => txN0003(SOUTH),
	--	out_r12p3        => data_outN0003(SOUTH),
	--	credit_ir12p3    => credit_iN0003(SOUTH),
	--	tx_r13p0         => txN0103(EAST),
	--	out_r13p0        => data_outN0103(EAST),
	--	credit_ir13p0    => credit_iN0103(EAST),
	--	tx_r13p1         => txN0103(WEST),
	--	out_r13p1        => data_outN0103(WEST),
	--	credit_ir13p1    => credit_iN0103(WEST),
	--	tx_r13p3         => txN0103(SOUTH),
	--	out_r13p3        => data_outN0103(SOUTH),
	--	credit_ir13p3    => credit_iN0103(SOUTH),
	--	tx_r14p0         => txN0203(EAST),
	--	out_r14p0        => data_outN0203(EAST),
	--	credit_ir14p0    => credit_iN0203(EAST),
	--	tx_r14p1         => txN0203(WEST),
	--	out_r14p1        => data_outN0203(WEST),
	--	credit_ir14p1    => credit_iN0203(WEST),
	--	tx_r14p3         => txN0203(SOUTH),
	--	out_r14p3        => data_outN0203(SOUTH),
	--	credit_ir14p3    => credit_iN0203(SOUTH),
	--	tx_r15p1         => txN0303(WEST),
	--	out_r15p1        => data_outN0303(WEST),
	--	credit_ir15p1    => credit_iN0303(WEST),
	--	tx_r15p3         => txN0303(SOUTH),
	--	out_r15p3        => data_outN0303(SOUTH),
	--	credit_ir15p3    => credit_iN0303(SOUTH));

end NOC;

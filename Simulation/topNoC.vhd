library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR;
use work.HermesPackage.all;

entity topNoC is
end;

architecture topNoC of topNoC is

	signal clock : regNrot;
	signal reset, finish : std_logic;
	signal clock_rx, rx, credit_o: regNrot;
	signal clock_tx, tx, credit_i: regNrot;
	signal data_in, data_out : arrayNrot_regflit;

begin
	reset <= '1', '0' after 15 ns;

	-- clock process of router N0000
	process
	begin
		clock(N0000) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0100
	process
	begin
		clock(N0100) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0200
	process
	begin
		clock(N0200) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0300
	process
	begin
		clock(N0300) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0001
	process
	begin
		clock(N0001) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0101
	process
	begin
		clock(N0101) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0201
	process
	begin
		clock(N0201) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0301
	process
	begin
		clock(N0301) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0002
	process
	begin
		clock(N0002) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0102
	process
	begin
		clock(N0102) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0202
	process
	begin
		clock(N0202) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0302
	process
	begin
		clock(N0302) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0003
	process
	begin
		clock(N0003) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0103
	process
	begin
		clock(N0103) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0203
	process
	begin
		clock(N0203) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	-- clock process of router N0303
	process
	begin
		clock(N0303) <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process;

	NOC: Entity work.NOC
	port map(
		clock         => clock,
		reset         => reset,
		clock_rxLocal => clock_rx,
		rxLocal       => rx,
		data_inLocal  => data_in,
		credit_oLocal => credit_o,
		clock_txLocal => clock_tx,
		txLocal       => tx,
		data_outLocal => data_out,
		credit_iLocal => credit_i);

	cim00: Entity work.inputmodule
	port map(
		clock       => clock(N0000),
		reset       => reset,
		finish      => finish,
		outclock0   => clock_rx(N0000),
		outtx0      => rx(N0000),
		outdata0    => data_in(N0000),
		incredit0   => credit_o(N0000),
		outclock1   => clock_rx(N0100),
		outtx1      => rx(N0100),
		outdata1    => data_in(N0100),
		incredit1   => credit_o(N0100),
		outclock2   => clock_rx(N0200),
		outtx2      => rx(N0200),
		outdata2    => data_in(N0200),
		incredit2   => credit_o(N0200),
		outclock3   => clock_rx(N0300),
		outtx3      => rx(N0300),
		outdata3    => data_in(N0300),
		incredit3   => credit_o(N0300),
		outclock4   => clock_rx(N0001),
		outtx4      => rx(N0001),
		outdata4    => data_in(N0001),
		incredit4   => credit_o(N0001),
		outclock5   => clock_rx(N0101),
		outtx5      => rx(N0101),
		outdata5    => data_in(N0101),
		incredit5   => credit_o(N0101),
		outclock6   => clock_rx(N0201),
		outtx6      => rx(N0201),
		outdata6    => data_in(N0201),
		incredit6   => credit_o(N0201),
		outclock7   => clock_rx(N0301),
		outtx7      => rx(N0301),
		outdata7    => data_in(N0301),
		incredit7   => credit_o(N0301),
		outclock8   => clock_rx(N0002),
		outtx8      => rx(N0002),
		outdata8    => data_in(N0002),
		incredit8   => credit_o(N0002),
		outclock9   => clock_rx(N0102),
		outtx9      => rx(N0102),
		outdata9    => data_in(N0102),
		incredit9   => credit_o(N0102),
		outclock10   => clock_rx(N0202),
		outtx10      => rx(N0202),
		outdata10    => data_in(N0202),
		incredit10   => credit_o(N0202),
		outclock11   => clock_rx(N0302),
		outtx11      => rx(N0302),
		outdata11    => data_in(N0302),
		incredit11   => credit_o(N0302),
		outclock12   => clock_rx(N0003),
		outtx12      => rx(N0003),
		outdata12    => data_in(N0003),
		incredit12   => credit_o(N0003),
		outclock13   => clock_rx(N0103),
		outtx13      => rx(N0103),
		outdata13    => data_in(N0103),
		incredit13   => credit_o(N0103),
		outclock14   => clock_rx(N0203),
		outtx14      => rx(N0203),
		outdata14    => data_in(N0203),
		incredit14   => credit_o(N0203),
		outclock15   => clock_rx(N0303),
		outtx15      => rx(N0303),
		outdata15    => data_in(N0303),
		incredit15   => credit_o(N0303));

	com00: Entity work.outmodule
	port map(
		clock       => clock(N0000),
		reset       => reset,
		finish      => finish,
		inClock0    => clock_tx(N0000),
		inTx0       => tx(N0000),
		inData0     => data_out(N0000),
		outCredit0  => credit_i(N0000),
		inClock1    => clock_tx(N0100),
		inTx1       => tx(N0100),
		inData1     => data_out(N0100),
		outCredit1  => credit_i(N0100),
		inClock2    => clock_tx(N0200),
		inTx2       => tx(N0200),
		inData2     => data_out(N0200),
		outCredit2  => credit_i(N0200),
		inClock3    => clock_tx(N0300),
		inTx3       => tx(N0300),
		inData3     => data_out(N0300),
		outCredit3  => credit_i(N0300),
		inClock4    => clock_tx(N0001),
		inTx4       => tx(N0001),
		inData4     => data_out(N0001),
		outCredit4  => credit_i(N0001),
		inClock5    => clock_tx(N0101),
		inTx5       => tx(N0101),
		inData5     => data_out(N0101),
		outCredit5  => credit_i(N0101),
		inClock6    => clock_tx(N0201),
		inTx6       => tx(N0201),
		inData6     => data_out(N0201),
		outCredit6  => credit_i(N0201),
		inClock7    => clock_tx(N0301),
		inTx7       => tx(N0301),
		inData7     => data_out(N0301),
		outCredit7  => credit_i(N0301),
		inClock8    => clock_tx(N0002),
		inTx8       => tx(N0002),
		inData8     => data_out(N0002),
		outCredit8  => credit_i(N0002),
		inClock9    => clock_tx(N0102),
		inTx9       => tx(N0102),
		inData9     => data_out(N0102),
		outCredit9  => credit_i(N0102),
		inClock10    => clock_tx(N0202),
		inTx10       => tx(N0202),
		inData10     => data_out(N0202),
		outCredit10  => credit_i(N0202),
		inClock11    => clock_tx(N0302),
		inTx11       => tx(N0302),
		inData11     => data_out(N0302),
		outCredit11  => credit_i(N0302),
		inClock12    => clock_tx(N0003),
		inTx12       => tx(N0003),
		inData12     => data_out(N0003),
		outCredit12  => credit_i(N0003),
		inClock13    => clock_tx(N0103),
		inTx13       => tx(N0103),
		inData13     => data_out(N0103),
		outCredit13  => credit_i(N0103),
		inClock14    => clock_tx(N0203),
		inTx14       => tx(N0203),
		inData14     => data_out(N0203),
		outCredit14  => credit_i(N0203),
		inClock15    => clock_tx(N0303),
		inTx15       => tx(N0303),
		inData15     => data_out(N0303),
		outCredit15  => credit_i(N0303));

end topNoC;

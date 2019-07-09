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

	clock_rx <= clock;
	clock_tx <= clock;

	DM0000: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0000.txt",
                fileNameOut => "Simulation/data/fileOut0000.txt")
    port map(
        clock  		=> clock(N0000),
        reset 		=> reset,
        rx 			=> tx(N0000),
        data_in		=> data_out(N0000),
        credit_o    => credit_i(N0000),
        tx			=> rx(N0000),
        data_out	=> data_in(N0000),
        credit_i 	=> credit_o(N0000)
    );

    --DM0001: Entity work.DataManager
    --generic map(fileNameIn => "Simulation/data/fileIn0001.txt",
    --           fileNameOut => "Simulation/data/fileOut0001.txt")
    --port map(
    --    clock       => clock(N0001),
    --    reset       => reset,
    --    rx          => tx(N0001),
    --    data_in     => data_out(N0001),
    --    credit_o    => credit_i(N0001),
    --    tx          => rx(N0001),
    --    data_out    => data_in(N0001),
    --    credit_i    => credit_o(N0001)
    --);

    DM0001: Entity work.FlowManager
	generic map(destination => x"21",
               flitRate => 20)
    port map(
       clock  		=> clock(N0001),
       reset 		=> reset,
       rx 			=> tx(N0001),
       data_in		=> data_out(N0001),
       credit_o    => credit_i(N0001),
       tx			=> rx(N0001),
       data_out	=> data_in(N0001),
       credit_i 	=> credit_o(N0001)
    );

    DM0002: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0002.txt",
                fileNameOut => "Simulation/data/fileOut0002.txt")
    port map(
        clock  		=> clock(N0002),
        reset 		=> reset,
        rx 			=> tx(N0002),
        data_in		=> data_out(N0002),
        credit_o    => credit_i(N0002),
        tx			=> rx(N0002),
        data_out	=> data_in(N0002),
        credit_i 	=> credit_o(N0002)
    );

    DM0003: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0003.txt",
                fileNameOut => "Simulation/data/fileOut0003.txt")
    port map(
        clock  		=> clock(N0003),
        reset 		=> reset,
        rx 			=> tx(N0003),
        data_in		=> data_out(N0003),
        credit_o    => credit_i(N0003),
        tx			=> rx(N0003),
        data_out	=> data_in(N0003),
        credit_i 	=> credit_o(N0003)
    );

    ---------

    --DM0100: Entity work.DataManager
    --generic map(fileNameIn => "Simulation/data/fileIn0100.txt",
    --            fileNameOut => "Simulation/data/fileOut0100.txt")
    --port map(
    --    clock       => clock(N0100),
    --    reset       => reset,
    --    rx          => tx(N0100),
    --    data_in     => data_out(N0100),
    --    credit_o    => credit_i(N0100),
    --    tx          => rx(N0100),
    --    data_out    => data_in(N0100),
    --    credit_i    => credit_o(N0100)
    --);


    DM0100: Entity work.FlowManager
	generic map(destination => x"12",
               flitRate => 20)
    port map(
       clock  		=> clock(N0100),
       reset 		=> reset,
       rx 			=> tx(N0100),
       data_in		=> data_out(N0100),
       credit_o    => credit_i(N0100),
       tx			=> rx(N0100),
       data_out	=> data_in(N0100),
       credit_i 	=> credit_o(N0100)
    );

    DM0101: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0101.txt",
                fileNameOut => "Simulation/data/fileOut0101.txt")
    port map(
        clock  		=> clock(N0101),
        reset 		=> reset,
        rx 			=> tx(N0101),
        data_in		=> data_out(N0101),
        credit_o    => credit_i(N0101),
        tx			=> rx(N0101),
        data_out	=> data_in(N0101),
        credit_i 	=> credit_o(N0101)
    );

    DM0102: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0102.txt",
                fileNameOut => "Simulation/data/fileOut0102.txt")
    port map(
        clock  		=> clock(N0102),
        reset 		=> reset,
        rx 			=> tx(N0102),
        data_in		=> data_out(N0102),
        credit_o    => credit_i(N0102),
        tx			=> rx(N0102),
        data_out	=> data_in(N0102),
        credit_i 	=> credit_o(N0102)
    );

    DM0103: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0103.txt",
                fileNameOut => "Simulation/data/fileOut0103.txt")
    port map(
        clock  		=> clock(N0103),
        reset 		=> reset,
        rx 			=> tx(N0103),
        data_in		=> data_out(N0103),
        credit_o    => credit_i(N0103),
        tx			=> rx(N0103),
        data_out	=> data_in(N0103),
        credit_i 	=> credit_o(N0103)
    );

    ---------

    DM0200: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0200.txt",
                fileNameOut => "Simulation/data/fileOut0200.txt")
    port map(
        clock  		=> clock(N0200),
        reset 		=> reset,
        rx 			=> tx(N0200),
        data_in		=> data_out(N0200),
        credit_o    => credit_i(N0200),
        tx			=> rx(N0200),
        data_out	=> data_in(N0200),
        credit_i 	=> credit_o(N0200)
    );

    DM0201: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0201.txt",
                fileNameOut => "Simulation/data/fileOut0201.txt")
    port map(
        clock  		=> clock(N0201),
        reset 		=> reset,
        rx 			=> tx(N0201),
        data_in		=> data_out(N0201),
        credit_o    => credit_i(N0201),
        tx			=> rx(N0201),
        data_out	=> data_in(N0201),
        credit_i 	=> credit_o(N0201)
    );

    DM0202: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0202.txt",
                fileNameOut => "Simulation/data/fileOut0202.txt")
    port map(
        clock  		=> clock(N0202),
        reset 		=> reset,
        rx 			=> tx(N0202),
        data_in		=> data_out(N0202),
        credit_o    => credit_i(N0202),
        tx			=> rx(N0202),
        data_out	=> data_in(N0202),
        credit_i 	=> credit_o(N0202)
    );

    DM0203: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0203.txt",
                fileNameOut => "Simulation/data/fileOut0203.txt")
    port map(
        clock  		=> clock(N0203),
        reset 		=> reset,
        rx 			=> tx(N0203),
        data_in		=> data_out(N0203),
        credit_o    => credit_i(N0203),
        tx			=> rx(N0203),
        data_out	=> data_in(N0203),
        credit_i 	=> credit_o(N0203)
    );

    ---------

    DM0300: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0300.txt",
                fileNameOut => "Simulation/data/fileOut0300.txt")
    port map(
        clock  		=> clock(N0300),
        reset 		=> reset,
        rx 			=> tx(N0300),
        data_in		=> data_out(N0300),
        credit_o    => credit_i(N0300),
        tx			=> rx(N0300),
        data_out	=> data_in(N0300),
        credit_i 	=> credit_o(N0300)
    );

    DM0301: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0301.txt",
                fileNameOut => "Simulation/data/fileOut0301.txt")
    port map(
        clock  		=> clock(N0301),
        reset 		=> reset,
        rx 			=> tx(N0301),
        data_in		=> data_out(N0301),
        credit_o    => credit_i(N0301),
        tx			=> rx(N0301),
        data_out	=> data_in(N0301),
        credit_i 	=> credit_o(N0301)
    );

    DM0302: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0302.txt",
                fileNameOut => "Simulation/data/fileOut0302.txt")
    port map(
        clock  		=> clock(N0302),
        reset 		=> reset,
        rx 			=> tx(N0302),
        data_in		=> data_out(N0302),
        credit_o    => credit_i(N0302),
        tx			=> rx(N0302),
        data_out	=> data_in(N0302),
        credit_i 	=> credit_o(N0302)
    );

    DM0303: Entity work.DataManager
	generic map(fileNameIn => "Simulation/data/fileIn0303.txt",
                fileNameOut => "Simulation/data/fileOut0303.txt")
    port map(
        clock  		=> clock(N0303),
        reset 		=> reset,
        rx 			=> tx(N0303),
        data_in		=> data_out(N0303),
        credit_o    => credit_i(N0303),
        tx			=> rx(N0303),
        data_out	=> data_in(N0303),
        credit_i 	=> credit_o(N0303)
    );


end topNoC;

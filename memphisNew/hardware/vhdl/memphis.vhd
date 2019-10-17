------------------------------------------------------------------------------------------------
--
--  DISTRIBUTED MEMPHIS  - version 5.0
--
--  Research group: GAPH-PUCRS    -    contact   fernando.moraes@pucrs.br
--
--  Distribution:  September 2013
--
--  Source name:  Memphis.vhd
--
--  Brief description:  NoC generation
--
------------------------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;
use work.Text_Package.all;
use work.standards.all;
use work.memphis_pkg.all;

entity Memphis is
        port(
        	clock              : in  std_logic;
        	reset              : in  std_logic;

        	-- IO interface - App Injector
        	memphis_app_injector_tx 		: out std_logic;
		 	memphis_app_injector_credit_i : in std_logic;
		 	memphis_app_injector_data_out : out regflit;
		 	
		 	memphis_app_injector_rx 		: in std_logic;
		 	memphis_app_injector_credit_o : out std_logic;
		 	memphis_app_injector_data_in 	: in regflit
		 	
		 	-- IO interface - Create the IO interface for your component here:
        	
        );
end;

architecture Memphis of Memphis is  

        -- Interconnection signals 
		type txNport is array (NUMBER_PROCESSORS - 1 downto 0) of std_logic_vector(3 downto 0);
		signal tx : txNPORT;
		type rxNport is array (NUMBER_PROCESSORS - 1 downto 0) of std_logic_vector(3 downto 0);
		signal rx : rxNPORT;
		type credit_iNport is array (NUMBER_PROCESSORS - 1 downto 0) of std_logic_vector(3 downto 0);
		signal credit_i : credit_iNPORT;
		type credit_oNport is array (NUMBER_PROCESSORS - 1 downto 0) of std_logic_vector(3 downto 0);
		signal credit_o : credit_oNPORT;
		type data_inNport is array (NUMBER_PROCESSORS - 1 downto 0) of arrayNPORT_1_regflit;
		signal data_in : data_inNPORT;
		type data_outNport is array (NUMBER_PROCESSORS - 1 downto 0) of arrayNPORT_1_regflit;
		signal data_out       : data_outNPORT;
		signal address_router : std_logic_vector(7 downto 0);
		type router_position is array (NUMBER_PROCESSORS - 1 downto 0) of integer range 0 to TR;
		signal position : router_position;
		
        -- Flits Flow Register

        type fflits is array (NUMBER_PROCESSORS-1 downto 0) of integer range 0 to INTEGER'high;
        signal nFlits : fflits;

        type fflitsC is array (NUMBER_PROCESSORS-1 downto 0) of std_logic;
        signal flitConsummed : fflitsC;

        --signal nFlitsTotal : integer range 0 to INTEGER'high := 0;
        signal clockCounter : integer range 0 to INTEGER'high := 0;
        signal nextClockCounter1 : integer range 0 to INTEGER'high := 10000;
		signal nextClockCounter2 : integer range 0 to INTEGER'high := 20000;
		signal nextClockCounter3 : integer range 0 to INTEGER'high := 30000;
		signal nextClockCounter4 : integer range 0 to INTEGER'high := 40000;
		signal nextClockCounter5 : integer range 0 to INTEGER'high := 50000;
        file logFile1 : text open write_mode is "logFlowRate1.txt";
		file logFile2 : text open write_mode is "logFlowRate2.txt";
		file logFile3 : text open write_mode is "logFlowRate3.txt";
		file logFile4 : text open write_mode is "logFlowRate4.txt";
		file logFile5 : text open write_mode is "logFlowRate5.txt";
		

        begin
        
        process(clock, reset)
                variable theLine1   : line;
				variable theLine2   : line;
				variable theLine3   : line;
				variable theLine4   : line;
				variable theLine5   : line;
				variable nFlitsTotal: integer range 0 to INTEGER'high := 0;
                variable str        : string (1 to 50);
                begin
                        if reset = '1' then
                                clockCounter <= 0;
                                nFlitsTotal := 0;
                                nextClockCounter1 <= 10000;
								nextClockCounter2 <= 20000;
								nextClockCounter3 <= 30000;
								nextClockCounter4 <= 40000;
								nextClockCounter5 <= 50000;
                        elsif rising_edge(clock) then
                                if clockCounter = nextClockCounter1 then
                                        nFlitsTotal := nFlits(0) + nFlits(1) + nFlits(2) + nFlits(3) + nFlits(4) + nFlits(5) + nFlits(6) + nFlits(7) + nFlits(8) + nFlits(9) + nFlits(10) + nFlits(11) + nFlits(12) + nFlits(13) + nFlits(14) + nFlits(15);
                                        -- LOGAR NFLITSWINDOW

                                        write(theLine1, IntegerToString(nFlitsTotal) & "; " & IntegerToString(clockCounter));
                                        writeline(logFile1, theLine1);

                                        -- END OF LOG
                                        nextClockCounter1 <= nextClockCounter1 + 10000;
                                end if;
								
								if clockCounter = nextClockCounter2 then
                                        nFlitsTotal := nFlits(0) + nFlits(1) + nFlits(2) + nFlits(3) + nFlits(4) + nFlits(5) + nFlits(6) + nFlits(7) + nFlits(8) + nFlits(9) + nFlits(10) + nFlits(11) + nFlits(12) + nFlits(13) + nFlits(14) + nFlits(15);
                                        -- LOGAR NFLITSWINDOW

                                        write(theLine2, IntegerToString(nFlitsTotal) & "; " & IntegerToString(clockCounter));
                                        writeline(logFile2, theLine2);

                                        -- END OF LOG
                                        nextClockCounter2 <= nextClockCounter2 + 20000;
                                end if;
								
								if clockCounter = nextClockCounter3 then
                                        nFlitsTotal := nFlits(0) + nFlits(1) + nFlits(2) + nFlits(3) + nFlits(4) + nFlits(5) + nFlits(6) + nFlits(7) + nFlits(8) + nFlits(9) + nFlits(10) + nFlits(11) + nFlits(12) + nFlits(13) + nFlits(14) + nFlits(15);
                                        -- LOGAR NFLITSWINDOW

                                        write(theLine3, IntegerToString(nFlitsTotal) & "; " & IntegerToString(clockCounter));
                                        writeline(logFile3, theLine3);

                                        -- END OF LOG
                                        nextClockCounter3 <= nextClockCounter3 + 30000;
                                end if;
								
								if clockCounter = nextClockCounter4 then
                                        nFlitsTotal := nFlits(0) + nFlits(1) + nFlits(2) + nFlits(3) + nFlits(4) + nFlits(5) + nFlits(6) + nFlits(7) + nFlits(8) + nFlits(9) + nFlits(10) + nFlits(11) + nFlits(12) + nFlits(13) + nFlits(14) + nFlits(15);
                                        -- LOGAR NFLITSWINDOW

                                        write(theLine4, IntegerToString(nFlitsTotal) & "; " & IntegerToString(clockCounter));
                                        writeline(logFile4, theLine4);

                                        -- END OF LOG
                                        nextClockCounter4 <= nextClockCounter4 + 40000;
                                end if;
								
								if clockCounter = nextClockCounter5 then
                                        nFlitsTotal := nFlits(0) + nFlits(1) + nFlits(2) + nFlits(3) + nFlits(4) + nFlits(5) + nFlits(6) + nFlits(7) + nFlits(8) + nFlits(9) + nFlits(10) + nFlits(11) + nFlits(12) + nFlits(13) + nFlits(14) + nFlits(15);
                                        -- LOGAR NFLITSWINDOW

                                        write(theLine5, IntegerToString(nFlitsTotal) & "; " & IntegerToString(clockCounter));
                                        writeline(logFile5, theLine5);

                                        -- END OF LOG
                                        nextClockCounter5 <= nextClockCounter5 + 50000;
                                end if;
								
								clockCounter <= clockCounter + 1;
                        end if;
        end process;


        core_type_gen:   for i in 0 to NUMBER_PROCESSORS-1 generate
                position(i) <= RouterPosition(i);
        end generate core_type_gen;
        
        
        proc: for i in 0 to NUMBER_PROCESSORS-1 generate
                
                -- Process to iterate the nFlits each time a flit is sent to the PE!
                process(clock, reset)
                begin
                        if reset = '1' then
                                nFlits(i) <= 0;
                        elsif rising_edge(clock) then
                                if flitConsummed(i) = '1' then
                                        nFlits(i) <= nFlits(i) + 1;
                                end if;
                        end if;
                end process;            


                PE: entity work.pe
                generic map (
                        router_address    	=> RouterAddress(i),
                        kernel_type			=> pe_type(i),
                        log_file            => log_filename(i)
                        )
                port map(
                        clock 				=> clock,
                        reset 				=> reset,
                        -- NoC
                        tx 					=> tx(i),
                        data_out 			=> data_out(i),
                        credit_i 			=> credit_i(i),
                        rx					=> rx(i),
                        data_in 			=> data_in(i),
                        credit_o 			=> credit_o(i),
                        flitConsummed                   => flitConsummed(i)
                );
                
                ------------------------------------------------------------------------------
                --- EAST PORT CONNECTIONS ----------------------------------------------------
                ------------------------------------------------------------------------------
                east_grounding: if (RouterPosition(i) = BR or RouterPosition(i) = CRX or RouterPosition(i) = TR) and io_port(i) /= EAST generate
                        rx(i)(EAST)             <= '0';
                        credit_i(i)(EAST)       <= '0';
                        data_in(i)(EAST)        <= (others => '0');
                end generate;

                east_connection: if RouterPosition(i) = BL or RouterPosition(i) = CL or RouterPosition(i) = TL  or RouterPosition(i) = BC or RouterPosition(i) = TC or RouterPosition(i) = CC generate
                        rx(i)(EAST)             <= tx(i+1)(WEST);
                        credit_i(i)(EAST)       <= credit_o(i+1)(WEST);
                        data_in(i)(EAST)        <= data_out(i+1)(WEST);
                end generate;

                ------------------------------------------------------------------------------
                --- WEST PORT CONNECTIONS ----------------------------------------------------
                ------------------------------------------------------------------------------
                west_grounding: if (RouterPosition(i) = BL or RouterPosition(i) = CL or RouterPosition(i) = TL)  and io_port(i) /= WEST generate
                        rx(i)(WEST)             <= '0';
                        credit_i(i)(WEST)       <= '0';
                        data_in(i)(WEST)        <= (others => '0');
                end generate;
                
                west_connection: if (RouterPosition(i) = BR or RouterPosition(i) = CRX or RouterPosition(i) = TR or  RouterPosition(i) = BC or RouterPosition(i) = TC or RouterPosition(i) = CC) generate
                        rx(i)(WEST)             <= tx(i-1)(EAST);
                        credit_i(i)(WEST)       <= credit_o(i-1)(EAST);
                        data_in(i)(WEST)        <= data_out(i-1)(EAST);
                end generate;

                -------------------------------------------------------------------------------
                --- NORTH PORT CONNECTIONS ----------------------------------------------------
                -------------------------------------------------------------------------------
                north_grounding: if (RouterPosition(i) = TL or RouterPosition(i) = TC or RouterPosition(i) = TR)  and io_port(i) /= NORTH generate
                        rx(i)(NORTH)            <= '0';
                        credit_i(i)(NORTH)      <= '0';
                        data_in(i)(NORTH)       <= (others => '0');
                end generate;
                
                north_connection: if RouterPosition(i) = BL or RouterPosition(i) = BC or RouterPosition(i) = BR or RouterPosition(i) = CL or RouterPosition(i) = CRX or RouterPosition(i) = CC generate
                        rx(i)(NORTH)            <= tx(i+NUMBER_PROCESSORS_X)(SOUTH);
                        credit_i(i)(NORTH)      <= credit_o(i+NUMBER_PROCESSORS_X)(SOUTH);
                        data_in(i)(NORTH)       <= data_out(i+NUMBER_PROCESSORS_X)(SOUTH);
                end generate;

                --------------------------------------------------------------------------------
                --- SOUTH PORT CONNECTIONS -----------------------------------------------------
                ---------------------------------------------------------------------------
                south_grounding: if (RouterPosition(i) = BL or RouterPosition(i) = BC or RouterPosition(i) = BR)  and io_port(i) /= SOUTH generate
                        rx(i)(SOUTH)            <= '0';
                        credit_i(i)(SOUTH)      <= '0';
                        data_in(i)(SOUTH)       <= (others => '0');
                end generate;
                
                south_connection: if RouterPosition(i) = TL or RouterPosition(i) = TC or RouterPosition(i) = TR or RouterPosition(i) = CL or RouterPosition(i) = CRX or RouterPosition(i) = CC generate
                        rx(i)(SOUTH)            <= tx(i-NUMBER_PROCESSORS_X)(NORTH);
                        credit_i(i)(SOUTH)      <= credit_o(i-NUMBER_PROCESSORS_X)(NORTH);
                        data_in(i)(SOUTH)       <= data_out(i-NUMBER_PROCESSORS_X)(NORTH);
                end generate;
                
                
                --IO Wiring (Memphis <-> IO)
                
                app_injector_connection: if i = APP_INJECTOR and io_port(i) /= NPORT generate
                	
                	--IO App Injector connection
           			memphis_app_injector_tx	<=	tx(APP_INJECTOR)(io_port(i));
           			memphis_app_injector_data_out <= data_out(APP_INJECTOR)(io_port(i));
           			credit_i(APP_INJECTOR)(io_port(i)) <= memphis_app_injector_credit_i;
           			
           			rx(APP_INJECTOR)(io_port(i)) <= memphis_app_injector_rx ;
		 			memphis_app_injector_credit_o  <= credit_o(APP_INJECTOR)(io_port(i));
		 			data_in(APP_INJECTOR)(io_port(i)) <= memphis_app_injector_data_in;
		 			
		 		end generate;
		 		
		 		--Insert the IO wiring for your component here:
                
        end generate proc;
           
end architecture;
--------------------------------------------------------------------------------------
-- DESIGN UNIT  : Hardware Trojan                                                   --
-- DESCRIPTION  :                                                                   --
-- AUTHOR       : Geaninne Marchezan Lopes and Iaçanã I. Weber                      --
-- CREATED      : Apr 2019                                                          --
-- VERSION      : v0.1                                                              --
--------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.HermesPackage.all;

entity HardwareTrojan is 
    port(
        clock : 		in std_logic;
        reset :	 		in std_logic;
        
        data_in :	 	in regflit; 		-- to read the information on the local port
        
        --Switch Control Interface
        duplicate : 	out std_logic; 	-- to inform the SW that the packet must be duplicated
    	free : 			in regNport;
		mux_in :	 	out arrayNport_reg3;
		mux_out : 		out arrayNport_reg3;

        --Buffers Interface
        configPkg : 	in std_logic_vector(NROT-2 downto 0); -- informs the presence of a config packet inside the buffer

        --Crossbar Interface
        creditIn : 		in std_logic_vector(NROT-2 downto 0);
        data_out : 		out regflit; 	-- to output the malicious addr
        dataSel	:		out std_logic; 	-- to select which flit will go through the crossbar

        --Local Buffer Interface
      	fakeCredit :	out std_logic;
      	creditControl : out std_logic
        );
end HardwareTrojan;

architecture HardwareTrojan of HardwareTrojan is

type HTState is (S0, waiting);
signal nextState : HTState;

begin

    process(clock, reset)
    begin
        if reset = '1' then
            nextState <= S0;
        elsif rising_edge(clock) then
            case nextState is
                -- Reset state
                when S0 =>
                    nextState <= waiting;

                -- Waiting the awakening paket
                when waiting =>
                    nextState <= waiting;

                when OTHERS =>
                    nextState <= S0;
            end case;
        end if;
    end process;


end HardwareTrojan;
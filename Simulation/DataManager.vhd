--------------------------------------------------------------------------------------
-- DESIGN UNIT  : Data Manager                                                      --
-- DESCRIPTION  :                                                                   --
-- AUTHOR       : Iaçanã Ianiski Weber & Michel Duarte                              --
-- CREATED      : Jul 9th, 2015                                                     --
-- VERSION      : v1.0                                                              --
-- HISTORY      : Version 0.1 - Jul 9th, 2015                                       --
--              : Version 0.2.1 - Set 18th, 2015                                    --
--------------------------------------------------------------------------------------
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
        
        --input interface
        rx :        in std_logic;
        data_in :   in regflit;
        credit_o :  out std_logic;

        --output interface
        tx :        out std_logic;
        data_out :  out regflit;
        credit_i :  in std_logic
    );
end DataManager;

architecture behavioral of DataManager is
begin
    SEND: block
        type state is (S0, S1);
        signal currentState : state;
        signal words : regflit;
        file flitFile : text open read_mode is fileNameIn;
    begin
        process(clock, reset)
            variable flitLine   : line;
            variable str        : string(1 to 4);
        begin 
            if reset = '1' then
                currentState <= S1;
                words <= (OTHERS=>'0');
                -- if not(endfile(flitFile)) then
                    -- readline(flitFile, flitLine);
                    -- read(flitLine, str);
                    -- words <= StringToStdLogicVector(str);
                -- else
                    -- words <= (OTHERS=>'0');
                -- end if;
            elsif rising_edge(clock) then
                case currentState is
                    when S0 =>
                        if not(endfile(flitFile)) or (credit_i='0') then
                            if(credit_i='1') then
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
        data_out <= words;
        tx <= '1' when currentState = S0 else '0';
    end block SEND;
    
    RECIEVE: block
        type state is (S0);
        signal currentState : state;
        signal completeLine : regflit;
        file flitFile : text open write_mode is fileNameOut;
    begin
        completeLine <= data_in;
        process(clock, reset)
            variable flitLine   : line;
        begin
            if reset = '1' then
                currentState <= S0;
                credit_o <= '0';
            elsif rising_edge(clock) then
                case currentState is
                    when S0 =>
                        if rx = '1' then
                            write(flitLine, StdLogicVectorToString(completeLine));
                            writeline(flitFile, flitLine);
                        end if;
                        currentState <= S0;
                end case;
                credit_o <= '1';
            end if;
        end process;
    end block RECIEVE;
    
end architecture;
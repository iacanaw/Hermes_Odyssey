library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use work.HermesPackage.all;
use ieee.math_real.all;
use ieee.Std_Logic_Arith.all;
use ieee.numeric_std.all;



    entity FlowManager is 
        generic(
                destination  : regmetadeflit;
                flitRate : integer
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


    end FlowManager;

    architecture behavioral of FlowManager is

            type state is (sendPayload, generateHeader, generateSize, waiting);
            signal currentState : state;
            signal words : regflit;
            signal rand_num : integer := 0;


        begin
            process(clock, reset)
            variable seed1, seed2: positive;               -- seed values for random generator
            variable rand: real;
            variable range_size : real := 256.0;
            variable range_of_rand : real := 65535.0;    -- the range of random values created will be 0 to +1000.
            variable cont : integer;
            variable pausedCycles : integer;
            begin 
                if reset = '1' then
                    currentState <= generateHeader;
                    words <= (OTHERS=>'0');
                elsif rising_edge(clock) then
                    case currentState is
                        when sendPayload =>
                            if(cont = 0) then

                                currentState <= waiting;


                            elsif(credit_i='1') then

                                    cont := cont - 1;
                                    uniform(seed1, seed2, rand);   -- generate random number
                                    rand_num <= integer(rand*range_of_rand);  -- rescale to 0..1000, convert integer part                          

                                     words <= std_logic_vector(to_unsigned(rand_num, TAM_FLIT));
                                    currentState <= sendPayload;
                            else -- Local port haven't space on buffer
                                    currentState <= sendPayload;
                            end if;
                            
                        when generateHeader =>

                           words <= x"00" & destination;
                            if(credit_i='1') then

                                currentState <= generateSize;
                            else 
                                currentState <= generateHeader;
                            end if;

                        when generateSize =>

                            uniform(seed1, seed2, rand);   -- generate random number
                            rand_num <= integer(rand*range_size) + 10;  -- rescale to 0..1000, convert integer part                          
                             words <= std_logic_vector(to_unsigned(rand_num, TAM_FLIT));
                            cont := rand_num;
                            pausedCycles := (100 * (rand_num + 2))/flitRate;

                            if(credit_i='1') then

                                currentState <= sendPayload;
                            else
                                currentState <= generateSize;
                            end if;    

                        when waiting =>

                            pausedCycles := pausedCycles - 1;

                            if(pausedCycles = 0) then

                                currentState <= generateHeader;
                            else
                                currentState <= waiting;
                            end if;

                    end case;
                end if;
            end process;
            data_out <= words;
            tx <= '1' when (currentState = sendPayload) or (currentState = generateHeader) or (currentState = generateSize) else '0';
        
        end behavioral;

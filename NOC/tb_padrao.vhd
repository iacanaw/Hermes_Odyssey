-----------------------------------------------------------------------
--
--  test bench para o gerado de padrões
--
--  Fernando Moraes
-----------------------------------------------------------------------
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;


entity user_logic_tb is
end user_logic_tb;

architecture TB_ARCHITECTURE of user_logic_tb is         

    signal Bus2IP_Clk :     std_logic := '0';
    signal Bus2IP_Reset :   std_logic;
    signal Bus2IP_Data :    std_logic_vector(0 to 7);
    signal Bus2IP_RdCE :    std_logic_vector(0 to 14);
    signal Bus2IP_WrCE :    std_logic_vector(0 to 14);
    signal user_int :       std_logic;
    signal IP2Bus_Data :    std_logic_vector(0 to 7);
        
    -- O DÉCIMO VALOR É O START ---    
    type mem_rom is array (0 to 9) of std_logic_vector(7 downto 0);
    constant wd_rom1 : mem_rom := ( x"9F", x"44", x"9F",  x"F8", x"00", x"00",  x"44", x"A0", x"24", x"01" );

    signal mascara :    std_logic_vector(0 to 14) := "100000000000000";

begin
  
     UUT : entity work.busca_padrao
                 port map (
                        user_int => user_int,
                        Bus2IP_Clk => Bus2IP_Clk,
                        Bus2IP_Reset => Bus2IP_Reset,
                        Bus2IP_Data => Bus2IP_Data,
                        Bus2IP_RdCE => Bus2IP_RdCE,
                        Bus2IP_WrCE => Bus2IP_WrCE,
                        IP2Bus_Data => IP2Bus_Data
                );       
                

     Bus2IP_Clk <=  not Bus2IP_Clk after 10 ns;
  
     Bus2IP_Reset <= '0', '1' after 10 ns, '0' after 75 ns;
      
      
     process
       begin  
        
         Bus2IP_RdCE <= "000000000000000";    -- não está lendo nem escrevendo de ninguém 
         Bus2IP_WrCE <= "000000000000000";
         mascara     <= "100000000000000";
         wait for 100 ns;
         
         -- envia os padrões para o processador 
         x: for i in 0 to 9  loop
                  wait for 60 ns;
                  Bus2IP_Data <=  wd_rom1(i);
                  Bus2IP_WrCE <=  mascara; 
                  mascara <= '0' & mascara(0 to 13);
                  wait for 60 ns;
                  Bus2IP_WrCE <= "000000000000000";
         end loop;
         
         
         --- espera a interrpção inda do user_logic                  
         wait until user_int='1' ;      
              
              
         report "************ terminei ************** ";
        
         wait for 100 ns;   -- fazer leitura
         
         wait for 60 ns;
         Bus2IP_RdCE <= "000000000010000";   -- número de matches
         wait for 60 ns;
         Bus2IP_RdCE <= "000000000001000";   -- primeiro par (x,y) 
         wait for 60 ns;
         Bus2IP_RdCE <= "000000000000100";
         wait for 60 ns;
         Bus2IP_RdCE <= "000000000000010";   -- segundo par (x,y) 
         wait for 60 ns;
         Bus2IP_RdCE <= "000000000000001";  
         wait for 60 ns;
               
     end process;
          
         
end TB_ARCHITECTURE;

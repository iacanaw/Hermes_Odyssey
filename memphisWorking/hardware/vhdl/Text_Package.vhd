--------------------------------------------------------------------------------------
-- DESIGN UNIT  : Text Package                                                       --
-- DESCRIPTION  :                                                                   --
-- AUTHOR       : Everton Alceu Carara, Iaçanã Ianiski Weber & Michel Duarte        --
-- CREATED      : Jul 10th, 2015                                                    --
-- VERSION      : v1.0                                                               --
-- HISTORY      : Version 0.1 - Jul 10th, 2015                                      --
--------------------------------------------------------------------------------------
-- TEMP SECTIONS ARE INCOMPLETE
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Text_Package is

    function StringToStdLogicVector(value: string) return std_logic_vector;
    function CharToStdLogicVector(digit: character) return std_logic_vector;
    function StdLogicVectorToString(slv: std_logic_vector) return string;
    function IntegerToChar(int: integer) return character;
    function IntegerToString(int: integer) return string;
    
end package;

package body Text_Package is

        
    -- Converts an hexadecimal string number into a std_logic_vector.
    -- The vector length depends on the number of string characteres (string length * 4).
    function StringToStdLogicVector(value: string) return std_logic_vector is

        variable binaryValue: std_logic_vector(value'length*4-1 downto 0);
        variable vectorLength: integer;
        variable high, low: integer;

    begin

    -- Each string digits is converted into a 4 bits binary digit.
        vectorLength := value'length*4;
        -- String characters range from 1 to n.
        -- The left most character has the index 1.
        -- Ex: value: string:= "5496" -> value(1) = 5, value(2) = 4, value(3) = 9, value(4) = 6
        -- Converts the string number character by character.
        -- The left most character is placed at the right most 4 bits in the std_logic_vector.
        -- The right most character is placed at the left most 4 bits in the std_logic_vector.
        for i in value'range loop
            high := vectorLength - (4*(i-1)) - 1;
            low    := high-3;
            binaryValue(high downto low) := CharToStdLogicVector(value(i));        
        end loop;
    return binaryValue;

    end StringToStdLogicVector;
    
    -- Converts an hexadecimal string digit into a std_logic_vector(3 downto 0).
    function CharToStdLogicVector(digit: character) return std_logic_vector is
        variable binaryDigit: std_logic_vector(3 downto 0);
      begin
    case (digit) is  
        when '0'        => binaryDigit := "0000";
        when '1'        => binaryDigit := "0001";
        when '2'        => binaryDigit := "0010";
        when '3'        => binaryDigit := "0011";
        when '4'        => binaryDigit := "0100";
        when '5'        => binaryDigit := "0101";
        when '6'        => binaryDigit := "0110";
        when '7'        => binaryDigit := "0111";
        when '8'        => binaryDigit := "1000";
        when '9'        => binaryDigit := "1001";
        when 'A' | 'a'  => binaryDigit := "1010";
        when 'B' | 'b'  => binaryDigit := "1011";
        when 'C' | 'c'  => binaryDigit := "1100";
        when 'D' | 'd'  => binaryDigit := "1101";
        when 'E' | 'e'  => binaryDigit := "1110";
        when 'F' | 'f'  => binaryDigit := "1111";
        when others     =>  binaryDigit := "0000";  
      end case;
     return binaryDigit;
   end CharToStdLogicVector;
   
       -- converts a std_logic_vector into a hex string.
    function StdLogicVectorToString(slv: std_logic_vector) return string is
        variable hexlen: integer;
        variable longslv : std_logic_vector(67 downto 0) := (others => '0');
        variable hex : string(1 to 16);
        variable fourbit : std_logic_vector(3 downto 0);
    begin
        hexlen := (slv'left+1)/4;
        if (slv'left+1) mod 4 /= 0 then
            hexlen := hexlen + 1;
        end if;
        longslv(slv'left downto 0) := slv;
        for i in (hexlen -1) downto 0 loop
            fourbit := longslv(((i*4)+3) downto (i*4));
            case fourbit is
                when "0000" => hex(hexlen -I) := '0';
                when "0001" => hex(hexlen -I) := '1';
                when "0010" => hex(hexlen -I) := '2';
                when "0011" => hex(hexlen -I) := '3';
                when "0100" => hex(hexlen -I) := '4';
                when "0101" => hex(hexlen -I) := '5';
                when "0110" => hex(hexlen -I) := '6';
                when "0111" => hex(hexlen -I) := '7';
                when "1000" => hex(hexlen -I) := '8';
                when "1001" => hex(hexlen -I) := '9';
                when "1010" => hex(hexlen -I) := 'A';
                when "1011" => hex(hexlen -I) := 'B';
                when "1100" => hex(hexlen -I) := 'C';
                when "1101" => hex(hexlen -I) := 'D';
                when "1110" => hex(hexlen -I) := 'E';
                when "1111" => hex(hexlen -I) := 'F';
                when "ZZZZ" => hex(hexlen -I) := 'z';
                when "UUUU" => hex(hexlen -I) := 'u';
                when "XXXX" => hex(hexlen -I) := 'x';
                when others => hex(hexlen -I) := '?';
            end case;
        end loop;
        return hex(1 to hexlen);
    end StdLogicVectorToString;
    
    -- converts an integer into a character
   -- for 0 to 9 the obvious mapping is used, higher
   -- values are mapped to the characters A-Z
   -- (this is usefull for systems with base > 10)
   -- (adapted from Steve Vogwell's posting in comp.lang.vhdl)
   function IntegerToChar(int: integer) return character is
   variable c: character;
   begin
        case int is
          when  0 => c := '0';
          when  1 => c := '1';
          when  2 => c := '2';
          when  3 => c := '3';
          when  4 => c := '4';
          when  5 => c := '5';
          when  6 => c := '6';
          when  7 => c := '7';
          when  8 => c := '8';
          when  9 => c := '9';
          when 10 => c := 'A';
          when 11 => c := 'B';
          when 12 => c := 'C';
          when 13 => c := 'D';
          when 14 => c := 'E';
          when 15 => c := 'F';
          when 16 => c := 'G';
          when 17 => c := 'H';
          when 18 => c := 'I';
          when 19 => c := 'J';
          when 20 => c := 'K';
          when 21 => c := 'L';
          when 22 => c := 'M';
          when 23 => c := 'N';
          when 24 => c := 'O';
          when 25 => c := 'P';
          when 26 => c := 'Q';
          when 27 => c := 'R';
          when 28 => c := 'S';
          when 29 => c := 'T';
          when 30 => c := 'U';
          when 31 => c := 'V';
          when 32 => c := 'W';
          when 33 => c := 'X';
          when 34 => c := 'Y';
          when 35 => c := 'Z';
          when others => c := '?';
        end case;
        return c;
    end IntegerToChar;
    
    function IntegerToString(int: integer) return string is

    variable temp:      string(1 to 10);
    variable num:       integer;
    variable abs_int:   integer;
    variable len:       integer := 1;
    variable power:     integer := 1;

   begin

    -- bug fix for negative numbers
    abs_int := abs(int);

    num     := abs_int;

    while num >= 10 loop                     -- Determine how many
      len := len + 1;                          -- characters required
      num := num / 10;                       -- to represent the
    end loop ;                                 -- number.

    for i in len downto 1 loop                 -- Convert the number to
      temp(i) := IntegerToChar(abs_int/power mod 10);  -- a string starting
      power := power * 10;                   -- with the right hand
    end loop ;                                 -- side.

    -- return result and add sign if required
    if int < 0 then
       return '-'& temp(1 to len);
     else
       return temp(1 to len);
    end if;

   end IntegerToString;

end Text_Package;
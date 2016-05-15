--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    17:04:14 05/14/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcdTo7SEG is
	port (
		clk: 			in std_logic;
		bcd: 			in std_logic_vector(3 downto 0);
		segmented: 	out std_logic_vector(6 downto 0)
	);
end bcdTo7SEG;

architecture Behavioral of bcdTo7SEG is


begin

	process(clk)
	begin
		if(clk'event AND clk = '1') then
			case bcd is
				when "0000"=> segmented <="0000001";
				when "0001"=> segmented <="1001111";
				when "0010"=> segmented <="0010010";
				when "0011"=> segmented <="0000110";
				when "0100"=> segmented <="1001100";
				when "0101"=> segmented <="0100100";
				when "0110"=> segmented <="0100000";
				when "0111"=> segmented <="0001111";
				when "1000"=> segmented <="0000000";
				when "1001"=> segmented <="0000100";
				when others=> segmented <="1111111";
			end case;			
		end if;
	end process;
	
end Behavioral;


--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    23:58:40 05/02/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg8bits is
    port ( 
		data_in 	: in  STD_LOGIC_VECTOR (7 downto 0);
		clk		: in  STD_LOGIC;
		rst		: in  STD_LOGIC;
		load		: in  STD_LOGIC;
		
		data_out : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end reg8bits;

architecture Behavioral of reg8bits is
	signal reg : std_logic_vector (7 downto 0);
begin
	
	process (clk, rst)
	begin
		if (rst = '1') then
			data_out <= "00000000";
		elsif (clk = '1' and clk_in'EVENT) then
			if (load = '1') then
				data_out <= data_in;
			end if;
		end if;
	end process;
	data_out <= reg;
	
end Behavioral;
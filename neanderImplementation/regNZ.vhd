--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    08:58:01 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity regNZ is
	port (
		N_in 	: in 	STD_LOGIC;
		Z_in	: in 	STD_LOGIC;
		
		clk	: in  STD_LOGIC;
		rst	: in  STD_LOGIC;
		loadN	: in  STD_LOGIC;
		loadZ	: in	STD_LOGIC;
		
		N_out : out STD_LOGIC;
		Z_out : out STD_LOGIC
	);
end regNZ;

architecture Behavioral of regNZ is
	signal data_N: STD_LOGIC;
	signal data_Z: STD_LOGIC;
begin

	process (clk, rst)
	begin
		if (rst = '1') then
			data_N <= '0';
			data_Z <= '0';
		elsif (clk = '1' and clk'EVENT) then
			if (loadN = '1') then
				data_N <= N_in;
			end if;
			if (loadZ = '1') then
				data_Z <= Z_in;
			end if;
		end if;
	end process;
	N_out <= data_N;
	Z_out <= data_Z;

end Behavioral;
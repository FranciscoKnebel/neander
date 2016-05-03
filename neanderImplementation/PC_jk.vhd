
-- Create Date:    12:51:36 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_jk is
		clk        : in std_logic;
		rst        : in std_logic;
		
		cargaPC     : in std_logic;
		incrementaPC: in std_logic;
		data_in     : in std_logic_vector(7 downto 0);
		
		data_out   : out std_logic_vector(7 downto 0)
end PC_jk;

architecture Behavioral of PC_jk is

begin




end Behavioral;


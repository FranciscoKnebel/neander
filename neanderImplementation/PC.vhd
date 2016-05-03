--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    00:17:12 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC_register is 
	port (
		clk        : in std_logic;
		rst        : in std_logic;
		
		cargaPC    : in std_logic;
		incrementPC: in std_logic;
		data_in    : in std_logic_vector(7 downto 0);
		
		data_out   : out std_logic_vector(7 downto 0)
	);
end PC_register;

architecture Behavioral of PC_register is 
begin

	process(clk, rst)
		variable data : std_logic_vector(7 downto 0);  -- variavel auxiliar
      variable incPC_cont : integer;
	begin
		if (rst = '1') then	
			data := "00000001";
         incPC_cont := 0;
		elsif (clk = '1' and clk'event) then
			if (cargaPC = '1') then
				data := data_in;
			elsif (incrementPC = '1') then
				 incPC_cont := incPC_cont + 1;
				 
				 if (incPC_cont = 2) then
						data := std_logic_vector(unsigned(data) + 1);
						incPC_cont := 0;
				 end if;
			end if;
		end if;
	end process;
	data_out <= data;

end Behavioral;
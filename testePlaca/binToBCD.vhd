
-- Create Date:    17:41:55 05/14/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity binToBCD is
	Port ( binary : 	in  STD_LOGIC_VECTOR (7 downto 0);
          bcd : 		out  STD_LOGIC_VECTOR (9 downto 0)
	);
end binToBCD;

architecture Behavioral of binToBCD is

begin
	
	process(binary)
		variable var : STD_LOGIC_VECTOR (17 downto 0);
	begin
		var := "000000000000000000";
		
		var(10 downto 3) := binary;
		
		for i in 0 to 4 loop
			if var(11 downto 8) > 4 then
				var(11 downto 8) := var(11 downto 8) + 3;
			end if;
			if var(15 downto 12) > 4 then
				var(15 downto 12) := var(15 downto 12) + 3;
			end if;
			var(17 downto 1) := var(16 downto 0);
		end loop;
		
		bcd <= var(17 downto 8);
	
	end process;

end Behavioral;


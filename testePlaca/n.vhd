
-- Create Date:    17:23:14 05/14/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity n is
	port(
				clk: in std_logic;
				reset: in std_logic;
				entrada: in std_logic_vector(7 downto 0);
				anode				: out STD_LOGIC_VECTOR (3 downto 0);
				display_out		: out	STD_LOGIC_VECTOR (6 downto 0)
	);
end n;

architecture Behavioral of n is
	component bcdTo7SEG is
		port (
			clk: 			in std_logic;
			bcd: 			in std_logic_vector(3 downto 0);
			segmented: 	out std_logic_vector(6 downto 0)
		);
	end component;
	
	component binToBCD is
		Port ( 
			binary : 	in  STD_LOGIC_VECTOR (7 downto 0);
			bcd : 		out  STD_LOGIC_VECTOR (9 downto 0)
		);
	end component;

	-- TYPES:
	type T_STATE is (S0, S1 ,S2 ,S3);
	
	-- SIGNALS:
	signal STATE, NEXT_STATE : T_STATE ; 
	signal binary_to_bcd_conversor_IN_DATA			: STD_LOGIC_VECTOR (7 downto 0);
	signal binary_to_bcd_conversor_OUT_DATA		: STD_LOGIC_VECTOR (9 downto 0);
	signal seg7_IN_DATA									: STD_LOGIC_VECTOR (3 downto 0);
	signal seg7_OUT_DATA									: STD_LOGIC_VECTOR (6 downto 0);
begin

	
	binary_to_bcd: binToBCD port map (
		binary		=> "00000001",
		bcd			=> binary_to_bcd_conversor_OUT_DATA
	);
	
	bcd_to_7seg:	bcdTo7SEG port map (
		clk			=> clk,
		bcd			=> seg7_IN_DATA,
		segmented	=> seg7_OUT_DATA
	);

	process (STATE, binary_to_bcd_conversor_OUT_DATA)
	begin
		case STATE is
			when S0 =>
				anode <= "1110";
				seg7_IN_DATA <= binary_to_bcd_conversor_OUT_DATA (3 downto 0);
				NEXT_STATE <= S1;
			when S1 =>
				anode <= "1101";
				seg7_IN_DATA <= binary_to_bcd_conversor_OUT_DATA (7 downto 4);
				NEXT_STATE <= S2;
			when S2 =>
				anode <= "1011";
				seg7_IN_DATA <= "00" & binary_to_bcd_conversor_OUT_DATA (9 downto 8);
				NEXT_STATE <= S3;
			when S3 =>
				anode <= "0111";
				seg7_IN_DATA <= "0000";
				NEXT_STATE <= S0;
			when others =>
				anode <= "1110";
				seg7_IN_DATA <= "0010";
				NEXT_STATE <= S0;
		end case;
	end process;
	display_out <= seg7_OUT_DATA;
	
	process(clk, reset)
	begin 
		if (reset = '1') then
			STATE <= S0;
		else
			if (clk'event and clk = '1') then	
				STATE <= NEXT_STATE;
			end if;
		end if;
	end process;

end Behavioral;


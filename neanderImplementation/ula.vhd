--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    10:44:10 05/03/2016 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
USE ieee.numeric_std.all;

entity ula is
   Port ( 	
		X : in  STD_LOGIC_VECTOR (7 downto 0);
		Y : in  STD_LOGIC_VECTOR (7 downto 0);
		selector : in  STD_LOGIC_VECTOR (2 downto 0);
		
		N 	: out STD_LOGIC;
		Z	: out STD_LOGIC;
		
		output : out STD_LOGIC_VECTOR (7 downto 0)
	);
end ula;

architecture Behavioral of ula is
	signal result : STD_LOGIC_VECTOR(7 downto 0);
   signal e1, e2 : STD_LOGIC_VECTOR(7 downto 0);
begin

	e1 <= X;
	e2 <= Y;

	process(selector, e1, e2)
	begin
		-- 000 ADD	-- 001 AND
		-- 010 OR	-- 011 NOT
		-- 100 LDA	-- 101 SHR
		-- 110 SHL	-- 111 MUL

		case selector is
			when "000" => result <= e1 + e2; 					-- ADD
			when "001" => result <= e1 AND e2; 					-- AND
			when "010" => result <= e1 OR e2; 					-- OR
			when "011" => result <= not(e1);						-- NOT
			when "100" => result <= e2;							-- LDA
			when "101" => result <= "0" & e1(7 downto 1); 	-- SHR
			when "110" => result <= e1(6 downto 0) & "0"; 	-- SHL
			when "111" => result <= e1 * e2; 					-- MUL
			when others => result <= e2;
		end case;
		
		-- Zero
		if(result = "00000000") then
			Z <= '1';
		else
			Z <= '0';
		end if;
		
		-- Negative
		N <= result(7);
	end process;
	output <= result;
		
end Behavioral;
--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    10:13:01 05/03/2016 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
    Port (  
		instruction_in : in  STD_LOGIC_VECTOR (7 downto 0);
		s_exec_NOP, s_exec_STA, s_exec_LDA, s_exec_ADD, s_exec_OR, s_exec_SHR, s_exec_SHL, s_exec_MUL,
		s_exec_AND, s_exec_NOT, s_exec_JMP, s_exec_JN, s_exec_JZ, s_exec_HLT : out STD_LOGIC
	);
end decoder;

architecture Behavioral of decoder is
begin
		-- 0000 -> NOP
		-- 0001 -> STA
		-- 0010 -> LDA
		-- 0011 -> ADD
		-- 0100 -> OR
		-- 0101 -> AND
		-- 0110 -> NOT
		-- 0111 -> SHR
		-- 1000 -> JMP
		-- 1001 -> JN
		-- 1010 -> JZ
		-- 1011 -> SHL
		-- 1100 -> MUL
		-- 1111 -> HLT
		
		process(instruction_in)
		begin
			s_exec_nop <= '0';
			s_exec_sta <= '0';
			s_exec_lda <= '0';
			s_exec_add <= '0';
			s_exec_or 	<= '0';
			s_exec_and <= '0';
			s_exec_not <= '0';
			s_exec_jmp <= '0';
			s_exec_jn 	<= '0';
			s_exec_jz 	<= '0';
			s_exec_hlt <= '0';
			s_exec_shr <= '0';
			s_exec_shl <= '0';
			s_exec_mul <= '0';
			if (instruction_in(7 downto 4) = "0000") then 	-- NOP
				s_exec_nop <= '1';
			elsif (instruction_in(7 downto 4) = "0001") then -- STA
				s_exec_sta <= '1';
			elsif (instruction_in(7 downto 4) = "0010") then -- LDA
				s_exec_lda <= '1';
			elsif (instruction_in(7 downto 4) = "0011") then -- ADD
				s_exec_add <= '1';
			elsif (instruction_in(7 downto 4) = "0100") then -- OR
				s_exec_or <= '1';
			elsif (instruction_in(7 downto 4) = "0101") then -- AND
				s_exec_and <= '1';
			elsif (instruction_in(7 downto 4) = "0110") then -- NOT
				s_exec_not <= '1';
			elsif (instruction_in(7 downto 4) = "1000") then -- JMP
				s_exec_jmp <= '1';
			elsif (instruction_in(7 downto 4) = "1001") then -- JN
				s_exec_jn <= '1';
			elsif (instruction_in(7 downto 4) = "1010") then -- JZ
				s_exec_jz <= '1';
			elsif (instruction_in(7 downto 4) = "1111") then -- HLT
				s_exec_hlt <= '1';

			elsif (instruction_in(7 downto 4) = "0111") then -- SHR
				s_exec_shr <= '1';
			elsif (instruction_in(7 downto 4) = "1011") then -- SHL
				s_exec_shl <= '1';
			elsif (instruction_in(7 downto 4) = "1100") then -- MUL
				s_exec_mul <= '1';

			end if;
		
		end process program;
end Behavioral;
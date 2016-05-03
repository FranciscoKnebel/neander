--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    12:49:08 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ffJK is
   port(
		J,K: in  std_logic;
		Reset: in std_logic;
		Clock_enable: in std_logic;
		Clock: in std_logic;
		Output: out std_logic
	);
end ffJK;

architecture Behavioral of ffJK is
   signal temp: std_logic;
begin
   process (Clock) 
   begin
      if rising_edge(Clock) then                 
         if Reset='1' then   
            temp <= '0';
         elsif Clock_enable ='1' then
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
         end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;
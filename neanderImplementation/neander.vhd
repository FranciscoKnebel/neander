--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    09:49:46 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity neander is
	port (
		clk		: in STD_LOGIC;
		rst		: in STD_LOGIC;
		enable	: in STD_LOGIC;
		
		debug_out: out STD_LOGIC
	);
end neander;

architecture Behavioral of neander is
	component controlunit is
		port (
			clk		: in STD_LOGIC;
			rst		: in STD_LOGIC;
			enable_neander : in STD_LOGIC;
			N		: in STD_LOGIC;
			Z		: in STD_LOGIC;
			exec_NOP, exec_STA, exec_LDA, exec_ADD, exec_OR, exec_SHR, exec_SHL, exec_MUL,
			exec_AND, exec_NOT, exec_JMP, exec_JN, exec_JZ, exec_HLT : in STD_LOGIC;
						
						
			sel_ula		: out STD_LOGIC_VECTOR(2 downto 0);

			loadAC		: out STD_LOGIC;
			loadPC		: out STD_LOGIC;
			loadREM		: out STD_LOGIC;
			loadRDM		: out STD_LOGIC;
			loadRI 		: out STD_LOGIC;
			loadN			: out STD_LOGIC;
			loadZ			: out STD_LOGIC;

			wr_enable_mem : out STD_LOGIC_VECTOR (0 downto 0);
			sel			: out STD_LOGIC;
			PC_inc 		: out STD_LOGIC;
			sel_mux_RDM : out STD_LOGIC;
			stop			: out STD_LOGIC
		);
	end component;


	component PC_register is
		 port (
			  clk         : in std_logic;
			  rst         : in std_logic;
			  cargaPC     : in std_logic;
			  incrementaPC: in std_logic;
			  data_in     : in std_logic_vector(7 downto 0);
			  
			  data_out    : out std_logic_vector(7 downto 0)
		 );
	end component;
	 
	component mux is
		 port (
						 REG1    : in  std_logic_vector(7 downto 0);
						 REG2    : in  std_logic_vector(7 downto 0);
						 sel     : in  std_logic;
						 
						 S       : out std_logic_vector(7 downto 0)
		 );                 
	end component;
	 
	component reg8bits is
		 port (
			  data_in   : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk     	: in  STD_LOGIC;
			  rst     	: in  STD_LOGIC;
			  load      : in  STD_LOGIC;
			  
			  data_out  : out STD_LOGIC_VECTOR (7 downto 0)
		 );
	end component;
	 
	component decoder is
		 Port (  
			  instruction_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  s_exec_NOP : out STD_LOGIC;
			  s_exec_STA : out STD_LOGIC;
			  s_exec_LDA : out STD_LOGIC;
			  s_exec_ADD : out STD_LOGIC;
			  s_exec_OR  : out STD_LOGIC;
			  s_exec_SHR : out STD_LOGIC;
			  s_exec_SHL : out STD_LOGIC;
			  s_exec_MUL : out STD_LOGIC;
			  s_exec_AND : out STD_LOGIC;
			  s_exec_NOT : out STD_LOGIC;
			  s_exec_JMP : out STD_LOGIC;
			  s_exec_JN  : out STD_LOGIC;
			  s_exec_JZ  : out STD_LOGIC;
			  s_exec_HLT : out STD_LOGIC
		 );
	end component;
	 
	component regNZ is
		 port (
			  N_in    : in    STD_LOGIC;
			  Z_in    : in    STD_LOGIC;
			  clk 	 : in  	STD_LOGIC;
			  rst 	 : in  	STD_LOGIC;
			  loadN   : in  	STD_LOGIC;
			  loadZ	 : in 	STD_LOGIC;
			  
			  N_out : out STD_LOGIC;
			  Z_out : out STD_LOGIC
		 );
	end component;
	 
	component ula is
		Port (  
			  X           : in  STD_LOGIC_VECTOR (7 downto 0);
			  Y           : in  STD_LOGIC_VECTOR (7 downto 0);
			  selector	  : in  STD_LOGIC_VECTOR (2 downto 0);
			  N           : out STD_LOGIC;
			  Z           : out STD_LOGIC;
			  output  	  : out STD_LOGIC_VECTOR (7 downto 0)
		 );
	end component;

begin

	AC: reg8bits
	port map (
		data_in <= , clk <= , rst <= , load <= , data_out <= 
	);
	
	RI: reg8bits
	port map (
		data_in <= , clk <= , rst <= , load <= , data_out <= 
	);
	
	R_E_M: reg8bits
	port map (
		data_in <= , clk <= , rst <= , load <= , data_out <= 		
	);
	
	R_D_M: reg8bits
	port map (
		data_in <= , clk <= , rst <= , load <= , data_out <= 		
	);
	
	NZ : regNZ
	port map (
		N_in <= , Z_in <= , clk <= , rst <= , loadN <= , loadZ <= , N_out <= , Z_out <=
	);

	ula: ula
	port map (
		,
		,
		,
		,
		
	);


	

end Behavioral;


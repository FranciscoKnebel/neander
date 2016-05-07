--
-- Authors: Francisco Paiva Knebel
--				Gabriel Alexandre Zillmer
--
-- Universidade Federal do Rio Grande do Sul
-- Instituto de Informática
-- Sistemas Digitais
-- Prof. Fernanda Lima Kastensmidt
--
-- Create Date:    10:16:51 05/03/2016 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlunit is
    Port (
			clk		: in STD_LOGIC;
			rst		: in STD_LOGIC;
			enable_neander : in STD_LOGIC;
			--regNZ
			N		: in STD_LOGIC;
			Z		: in STD_LOGIC;
			--decoder
			execNOP, execSTA, execLDA, execADD, execOR, execSHR, execSHL, execMUL,
			execAND, execNOT, execJMP, execJN, execJZ, execHLT : in STD_LOGIC;
						
			
			-- operation selector
			sel_ula		: out STD_LOGIC_VECTOR(2 downto 0);
			-- registers loads
			loadAC		: out STD_LOGIC;
			loadPC		: out STD_LOGIC;
			loadREM		: out STD_LOGIC;
			loadRDM		: out STD_LOGIC;
			loadRI 		: out STD_LOGIC;
			loadN			: out STD_LOGIC;
			loadZ			: out STD_LOGIC;
			-- write in memory
			wr_enable_mem : out STD_LOGIC_VECTOR (0 downto 0);
			-- mux_rem: 0 for PC, 1 for RDM
			sel			: out STD_LOGIC;
			-- PC increment
			PC_inc 		: out STD_LOGIC;
			-- mux_rdm: 0 for MEM, 1 for AC
			sel_mux_RDM : out STD_LOGIC;
			-- stop
			stop			: out STD_LOGIC
	);
end controlunit;

architecture Behavioral of controlunit is
	type state_machine is (
		IDLE, BUSCA_INSTRUCAO, LER_INSTRUCAO, CARREGA_RI, 
		EXEC_STA2, EXEC_STA1, BUSCA_DADOS, BUSCA_ENDERECO, TRATA_JUMP, TRATA_JUMP_FAIL, 
		READ_MEMORY, TRATA_HLT, EXEC_ULA, EXEC_ULA2);
		
	signal current_state : state_machine;
	signal next_state : state_machine;	
	signal stop_s : STD_LOGIC;

begin

	process (clk, rst)
    variable state_timer: integer; -- states for two cicles
	begin
		if (rst = '1') then
			stop_s 	<= '0';
			loadAC 	<= '0';
			loadPC 	<= '0';
			loadREM 	<= '0';
			loadRDM 	<= '0';
			loadRI 	<= '0';			
			loadN <= '0';
			loadZ <= '0';			
			wr_enable_mem <= "0";
         state_timer := 1;
			next_state <= IDLE;
		elsif (clk = '1' and clk'EVENT) then
			case current_state is
			
			when IDLE =>
				if (enable_neander = '1' and stop_s = '0') then
					next_state <= BUSCA_INSTRUCAO;
				else
					next_state <= IDLE;
				end if;
			when BUSCA_INSTRUCAO =>	-- E0: REM <- PC
				sel_mux_RDM 	<= '0';
				loadAC 			<= '0';
				loadPC 			<= '0';
            PC_inc 			<= '0';
				loadRDM 			<= '0';
				loadRI 			<= '0';
				wr_enable_mem 	<= "0";
				loadN 			<= '0';
				loadZ 			<= '0';
				
				sel 				<= '0'; 		-- select 0 for PC->REM
				
				loadREM 		<= '1'; 	-- load REM
			   next_state 	<= LER_INSTRUCAO;
			when LER_INSTRUCAO =>	-- E1: RDM <- MEM(read), PC+	
				loadREM <= '0';
				loadRDM <= '1';
				PC_inc <= '1'; 
				next_state <= CARREGA_RI;
			when CARREGA_RI =>		-- E2: RI <- RDM	
				loadRDM <= '0';
				PC_inc <= '0';
				loadRI <= '1';
				
				if (execHLT = '1') then 		-- HLT
					next_state <= TRATA_HLT;
				elsif (execNOP = '1') then 	-- NOP
					next_state <= BUSCA_INSTRUCAO;
				elsif (execNOT = '1') then 	-- NOT
					next_state <= EXEC_ULA2;
				elsif ((execJN = '1') and (N = '0')) or ((execJZ = '1') and (Z = '0')) then -- jump error
					next_state <= TRATA_JUMP_FAIL;
				else
					next_state <= BUSCA_DADOS;
				end if;
			when BUSCA_DADOS =>	-- E3: REM <- PC
				loadRI <= '0';
				sel <= '0';
				loadREM <= '1';
				next_state <= READ_MEMORY;
			when READ_MEMORY => 	-- E4: RDM <- MEM(read), PC+	
				loadREM <= '0';
				loadRDM <= '1';
				PC_inc <= '1';
				if (execADD = '1') then 	-- ADD
				next_state <= BUSCA_ENDERECO;
				elsif (execOR = '1') then 	-- OR
				next_state <= BUSCA_ENDERECO;
				elsif (execAND = '1') then -- AND
				next_state <= BUSCA_ENDERECO;
				elsif (execLDA = '1') then -- LDA
				next_state <= BUSCA_ENDERECO;
				elsif (execSHR = '1') then -- SHR
				next_state <= BUSCA_ENDERECO;
				elsif (execSHL = '1') then -- SHL
				next_state <= BUSCA_ENDERECO;
				elsif (execMUL = '1') then -- MUL
				next_state <= BUSCA_ENDERECO;
				elsif (execSTA = '1') then -- STA
				next_state <= BUSCA_ENDERECO;
				elsif ((execJMP = '1') or ((execJN = '1') and (N = '1')) or ((execJZ = '1') and (Z = '1'))) then -- real jump
					next_state <= TRATA_JUMP;
				else
					next_state <= IDLE;
				end if;
			when BUSCA_ENDERECO => -- E5: REM <- RDM
				loadRDM <= '0';
				PC_inc <= '0';
				sel <= '1';		-- select 1 for REM<-RDM
				loadREM <= '1';
				
				if (execADD = '1') then 	 -- ADD
					next_state <= EXEC_ULA;
				elsif (execOR = '1') then  -- OR
					next_state <= EXEC_ULA;
				elsif (execAND = '1') then -- AND
					next_state <= EXEC_ULA;
				elsif (execLDA = '1') then -- LDA
					next_state <= EXEC_ULA;
				elsif (execSHR = '1') then -- SHR
					next_state <= EXEC_ULA;
				elsif (execSHL = '1') then -- SHL
					next_state <= EXEC_ULA;
				elsif (execMUL = '1') then -- MUL
					next_state <= EXEC_ULA;
				elsif (execSTA = '1') then -- STA
					next_state <= EXEC_STA1;
				end if;
			when EXEC_ULA =>		-- E6: RDM <- MEM(read)
				loadREM <= '0';
				loadRDM <= '1';
				
				if (execADD = '1') then 	 -- ADD
					sel_ula <= "000";
				elsif (execAND = '1') then -- AND
					sel_ula <= "001";
				elsif (execOR = '1') then  -- OR
					sel_ula <= "010";				
				elsif (execNOT = '1') then -- NOT
					sel_ula <= "011";
				elsif (execLDA = '1') then -- LDA
					sel_ula <= "100";
				elsif (execSHR = '1') then -- SHR
					sel_ula <= "101";
				elsif (execSHL = '1') then -- SHL
					sel_ula <= "110";
				elsif (execMUL = '1') then -- MUL
					sel_ula <= "111";
				end if;
				next_state <= EXEC_ULA2;
			when EXEC_ULA2 =>		-- E7: AC <- ULA
				loadRDM <= '0';
				loadRI <= '0';
				loadAC <= '1';
				loadN <= '1';
				loadZ <= '1';
				next_state <= BUSCA_INSTRUCAO;
			when EXEC_STA1 =>		-- E8: RDM <- AC
				loadREM <= '0';
				sel_mux_RDM <= '1'; -- select 1 for AC->RDM
				loadRDM <= '1';
				next_state <= EXEC_STA2;
			when EXEC_STA2 =>		-- E9: MEM <- RDM(write)
				sel_mux_RDM <= '0';
				loadRDM <= '0';
				wr_enable_mem <= "1";
				next_state <= BUSCA_INSTRUCAO;
			when TRATA_JUMP =>	-- E10: PC <- RDM
				loadRDM <= '0';
				PC_inc <= '0';
				loadPC <= '1';
				next_state <= BUSCA_INSTRUCAO;
			when TRATA_JUMP_FAIL =>	-- E11: PC+
				loadRI <= '0';
				PC_inc <= '1';
				next_state <= BUSCA_INSTRUCAO;
			when TRATA_HLT => 	-- E12: STOP
				loadRI <= '0';
				stop_s <= '1';
				next_state <= IDLE;	
			when others =>
				next_state <= IDLE;
			end case;
			
			if state_timer = 0 then			-- states for two cicles
				current_state <= next_state;
				state_timer := 1;
			else
				current_state <= current_state;
				state_timer := state_timer -1;
			end if;
		end if;
	end process;
	stop <= stop_s;
end;
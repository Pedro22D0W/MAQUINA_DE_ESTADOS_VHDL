LIBRARY IEEE;
USE IEEE.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.CPU_package.all;

ENTITY CPU IS 
	PORT (
		DATA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Clock,Enable,Reset: IN STD_LOGIC;
		FUNC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		DONE : OUT STD_LOGIC;
		R1,R2,R3: INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		BFD,BF1,BF2,BF3 : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END CPU;

ARCHITECTURE logica OF CPU IS

signal R1i_cpu,R2i_cpu,R3i_cpu,Ai_cpu,Gi_cpu : STD_LOGIC;
signal R1o_cpu,R2o_cpu,R3o_cpu,Ao_cpu,Go_cpu : STD_LOGIC;

begin
	
	
	UNIDADE_DE_CONTROLE: PROJETO_FINAL port map(Clock,Reset,FUNC,R1i_cpu,R2i_cpu,R3i_cpu,Ai_cpu,Gi_cpu,R1o_cpu,R2o_cpu,R3o_cpu,Ao_cpu,Go_cpu);
	Reg1: REGISTRADOR port map(DATA,Reset,Clock,R1i_cpu,R1o_cpu,R1);
	Reg2: REGISTRADOR port map(DATA,Reset,Clock,R2i_cpu,R2o_cpu,R2);
	Reg3: REGISTRADOR port map(DATA,Reset,Clock,R3i_cpu,R3o_cpu,R3);
	
	Bfr1 : BUFF port map(R1,R1o_cpu,BF1);
	Bfr2 : BUFF port map(R2,R2o_cpu,BF2);
	Bfr3 : BUFF port map(R3,R3o_cpu,BF3);
	
	
	swap1: REGISTRADOR port map(BF2,Reset,Clock,R3i_cpu,R1o_cpu,R3);
	swap2: REGISTRADOR port map(BF1,Reset,Clock,R2i_cpu,R2o_cpu,R2);
	swap3: REGISTRADOR port map(BF3,Reset,Clock,R1i_cpu,R3o_cpu,R1);
			
	
			
	
END logica ;
	
	
	

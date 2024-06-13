LIBRARY IEEE;
USE IEEE.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CPU IS 
	PORT (
		DATA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Clock,Enable,Reset: IN STD_LOGIC;
		FUNC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		DONE : OUT STD_LOGIC;
		R1,R2,R3: OUT STD
		);
END CPU;

ARCHITECTURE logica OF CPU IS
	signal R1in_cpu,R2in_cpu,R3in_cpu,Ain_cpu,Gin_cptu : IN STD_LOGIC;
	signal R1out_cpu,R2out_cpu,R3out_cpu,Aout_cpu,Gout_cpu : IN STD_LOGIC;
	
	UNIDADE_DE_CONTROLE: PROJETO_FINAL port map(Clock,Reset,FUNC,R1in_cpu,R2in_cpu,R3in_cpu,Ain_cpu,Gin_in,R1out_cpu,R2out_cpu,R3out_cpu,Aout_cpu,Gout_cpu);
	R1: REGISTRADOR port map(DATA,Clock,Reset,R1in_cpu,R1out_cpu,R1);
	R2: REGISTRADOR port map(DATA,Clock,Reset,R2in_cpu,R2out_cpu,R2);
	R3: REGISTRADOR port map(DATA,Clock,Reset,R3in_cpu,R3out_cpu,R3);
	
END logica ;
	
	
	

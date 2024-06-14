LIBRARY IEEE;
USE IEEE.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.CPU_package.all;

ENTITY CPU IS 
	PORT (
		SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		CLOCK_50 : IN STD_LOGIC;
		DONE : OUT STD_LOGIC;
		R1,R2,R3: INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0,HEX1,HEX2,HEX4,HEX5,HEX7,HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6)
		);
END CPU;

ARCHITECTURE logica OF CPU IS

signal Enable : std_logic;
signal Reset : std_logic;
signal FUNC : std_logic_vector(2 downto 0);
signal DATA : std_logic_vector(3 downto 0);
signal R1i_cpu,R2i_cpu,R3i_cpu,Ai_cpu,Gi_cpu : STD_LOGIC;
signal Do_cpu,R1o_cpu,R2o_cpu,R3o_cpu,Ao_cpu,Go_cpu : STD_LOGIC;
Signal BOS : std_logic_vector(3 downto 0);

	
begin

	

	Enable <= SW(17);
	Reset <= SW(16);
	
	
	FUNC <= SW(2 DOWNTO 0);
	DATA <= SW(6 DOWNTO 3);
	
	
	

	
	UNIDADE_DE_CONTROLE: CENTRO_DE_CONTROLE port map(CLOCK_50,Reset,FUNC,Enable,Do_cpu,R1i_cpu,R2i_cpu,R3i_cpu,Ai_cpu,Gi_cpu,R1o_cpu,R2o_cpu,R3o_cpu,Ao_cpu,Go_cpu);
	Reg1: REGISTRADOR port map(BOS,Reset,CLOCK_50,R1i_cpu,Enable,R1);
	Reg2: REGISTRADOR port map(BOS,Reset,CLOCK_50,R2i_cpu,Enable,R2);
	Reg3: REGISTRADOR port map(BOS,Reset,CLOCK_50,R3i_cpu,Enable,R3);
	
	BfrD : BUFF port map(DATA,Do_cpu,BOS);
	Bfr1 : BUFF port map(R1,R1o_cpu,BOS);
	Bfr2 : BUFF port map(R2,R2o_cpu,BOS);
	Bfr3 : BUFF port map(R3,R3o_cpu,BOS);
	
	
	
	with R1 select
 HEX0 <= "0000001" when "0000",
 "1001111" when "0001",
 "0010010" when "0010",
 "0000110" when "0011",
 "1001100" when "0100",
 "0100100" when "0101",
 "0100000" when "0110",
 "0001111" when "0111",
 "0000000" when "1000",
 "0000100" when "1001",
 "0001000" when "1010",
 "1100000" when "1011",
 "0110001" when "1100",
 "1000010" when "1101",
 "0110000" when "1110",
 "0111000" when "1111",
 "1111111" when others;
	
	with R2 select
 HEX1 <= "0000001" when "0000",
 "1001111" when "0001",
 "0010010" when "0010",
 "0000110" when "0011",
 "1001100" when "0100",
 "0100100" when "0101",
 "0100000" when "0110",
 "0001111" when "0111",
 "0000000" when "1000",
 "0000100" when "1001",
 "0001000" when "1010",
 "1100000" when "1011",
 "0110001" when "1100",
 "1000010" when "1101",
 "0110000" when "1110",
 "0111000" when "1111",
 "1111111" when others;
	
	with R3 select
 HEX2 <= "0000001" when "0000",
 "1001111" when "0001",
 "0010010" when "0010",
 "0000110" when "0011",
 "1001100" when "0100",
 "0100100" when "0101",
 "0100000" when "0110",
 "0001111" when "0111",
 "0000000" when "1000",
 "0000100" when "1001",
 "0001000" when "1010",
 "1100000" when "1011",
 "0110001" when "1100",
 "1000010" when "1101",
 "0110000" when "1110",
 "0111000" when "1111",
 "1111111" when others;
 
 with DATA select
 HEX4 <= "0000001" when "0000",
 "1001111" when "0001",
 "0010010" when "0010",
 "0000110" when "0011",
 "1001100" when "0100",
 "0100100" when "0101",
 "0100000" when "0110",
 "0001111" when "0111",
 "0000000" when "1000",
 "0000100" when "1001",
 "0001000" when "1010",
 "1100000" when "1011",
 "0110001" when "1100",
 "1000010" when "1101",
 "0110000" when "1110",
 "0111000" when "1111",
 "1111111" when others;
 
  with FUNC select
 HEX5 <= "0000001" when "000",
 "1001111" when "001",
 "0010010" when "010",
 "0000110" when "011",
 "1001100" when "100",
 "0100100" when "101",
 "0100000" when "110",
 "0001111" when "111",
 "1111111" when others;
 
  with Enable select
 HEX7 <= "0000001" when '0',
 "1001111" when '1',

 "1111111" when others;
 
  with Reset select
 HEX6 <= "0000001" when '0',
 "1001111" when '1',

 "1111111" when others;
	
	
	
END logica ;
	
	
	

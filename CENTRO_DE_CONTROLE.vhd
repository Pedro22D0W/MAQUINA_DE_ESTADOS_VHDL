LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.CPU_package.all;

ENTITY CENTRO_DE_CONTROLE IS 

    PORT(
        Clock,Reset : IN std_logic;
		  FUNC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  Enable : IN STD_LOGIC;
        Do,R1i,R2i,R3i,Ai,Gi,R1o,R2o,R3o,Ao,Go : OUT STD_LOGIC
    );
	 
END CENTRO_DE_CONTROLE;

ARCHITECTURE logica OF CENTRO_DE_CONTROLE IS
    TYPE STATE IS (A, B, C, D, E, F, G, H, I, J, K, L, M);
    SIGNAL ESTADO, PROX : STATE;
BEGIN 

    PROCESS(Reset, Clock,Enable)
    BEGIN 
        IF Reset = '0' THEN
            ESTADO <= A;
        ELSIF rising_edge(Clock) and Enable = '1' THEN 
            ESTADO <= PROX;
        END IF;
    END PROCESS;

    PROCESS (ESTADO, FUNC)
    BEGIN 
        CASE ESTADO IS 
            WHEN A =>
                IF FUNC = "000" THEN
                    PROX <= A;
                ELSIF FUNC = "001" THEN
                    PROX <= B;
                ELSIF FUNC = "010" THEN
                    PROX <= C;
                ELSIF FUNC = "011" THEN
                    PROX <= D;
                ELSIF FUNC = "101" THEN
                    PROX <= E;
                ELSIF FUNC = "110" THEN
                    PROX <= F;
                ELSIF FUNC = "111" THEN
                    PROX <= G;
                END IF;
                
            WHEN B =>
               
                PROX <= H;
                
            WHEN H =>
               
                PROX <= I;
                
            WHEN I =>
                
                PROX <= A;
                
            WHEN C =>
                
                PROX <= J;
                
            WHEN J =>
                
                PROX <= K;
                
            WHEN K =>
                
                PROX <= A;
                
            WHEN D =>
                
                PROX <= L;
                
            WHEN L =>
                
                PROX <= M;
                
            WHEN M =>
               
                PROX <= A;
                
            WHEN E =>
               
                PROX <= A;
                
            WHEN F =>
                
                PROX <= A;
                
            WHEN G =>
                
                PROX <= A;
        END CASE;
    END PROCESS;
	 PROCESS(ESTADO,Clock)
		BEGIN
			CASE ESTADO IS 
	 
				WHEN A =>
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				
				WHEN B =>
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='1';
				Gi<='0';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN C =>
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='1';
				Gi<='0';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN D =>
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='1';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN E =>
				
				
				Do <= '1';
				R1i<='1';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN F =>
				
				Do <= '1';
				R1i<='0';
				R2i<='1';
				R3i<='0';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN G =>
				
				
				
				Do <= '1';
				R1i<='0';
				R2i<='0';
				R3i<='1';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				
				WHEN H =>
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='1';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN I =>
				
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='1';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='1';

				WHEN J =>

				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='1';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN K =>
				
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='1';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='1';
				
				WHEN L =>
				
			
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='1';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='1';
				R3o<='0';
				Ao<='0';
				Go<='0';
				
				WHEN M =>
				
				Do <= '0';
				R1i<='1';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='0';
				R1o<='0';
				R2o<='0';
				R3o<='1';
				Ao<='0';
				Go<='0';
				
			END CASE;
	END PROCESS;   
END logica;
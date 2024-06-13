LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.CPU_package.all;

ENTITY PROJETO_FINAL IS 

    PORT(
        Clock,Reset : IN std_logic;
		  FUNC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        R1in,R2in,R3in,R1out,R2out,R3out : OUT STD_LOGIC
    );
	 
END PROJETO_FINAL;

ARCHITECTURE logica OF PROJETO_FINAL IS
    TYPE STATE IS (A, B, C, D, E, F, G, H, I, J, K, L, M);
    SIGNAL ESTADO, PROX : STATE;
BEGIN 

    PROCESS(Reset, Clock)
    BEGIN 
        IF Reset = '1' THEN
            ESTADO <= A;
        ELSIF rising_edge(Clock) THEN 
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
				
				WHEN B =>
				
				R2out <= '1';
				Ain <= '1';
				
				WHEN C =>

				R2out <= '1';
				Ain <= '1';
				
				WHEN D =>
				
				R2out <= '1';
				R3in <= '1';
				
				WHEN E =>
				
				R1in <= '1'
				
				WHEN F =>;
				
				R2in <= '1'
				
				WHEN G =>
				
				R3in <= '1'
				DONE <= '1'
				
				WHEN H =>
				
				R2out <= '1'
				Gin <= '1'
				
				WHEN I =>
				
				R3in <= '1'
				Gout <= '1' 

				WHEN J =>
				R2out <= '1'
				G1in <= '1'
				
				WHEN K =>
				G1out <='1'
				R3in <= '1'
				
				WHEN L =>
				
				R2out = '1'
				R2in = '1'
				
				WHEN M =>
				
				R3out <= '1'
				R1in <= '1'
				
			END CASE;
	END PROCESS;   
END logica;
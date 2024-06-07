LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY PROJETO_FINAL IS 
    PORT(
        Clock : IN std_logic;
        Reset : IN std_logic;
        FUNC  : IN std_logic_vector(2 DOWNTO 0);
        DATA  : IN std_logic_vector(3 DOWNTO 0);
        DONE  : OUT std_logic
    );
END PROJETO_FINAL;

ARCHITECTURE logica OF PROJETO_FINAL IS
    TYPE STATE IS (A, B, C, D, E, F, G, H, I, J, K, L, M);
    SIGNAL ESTADO, PROX : STATE;
    SIGNAL R1, R2, R3, A1, G1 : std_logic_vector(3 DOWNTO 0);
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
                A1 <= R2;
                PROX <= H;
                
            WHEN H =>
                G1 <= A1-R1;
                PROX <= I;
                
            WHEN I =>
                DONE <= '1';
                R3 <= G1;
                PROX <= A;
                
            WHEN C =>
                A1 <= R2;
                PROX <= J;
                
            WHEN J =>
                G1 <= A1+R1;
                PROX <= K;
                
            WHEN K =>
                DONE <= '1';
                R3 <= G1;
                PROX <= A;
                
            WHEN D =>
                R3 <= R2;
                PROX <= L;
                
            WHEN L =>
                R2 <= R1;
                PROX <= M;
                
            WHEN M =>
                R1 <= R3;
                PROX <= A;
                
            WHEN E =>
                R1 <= DATA;
                PROX <= A;
                
            WHEN F =>
                R2 <= DATA;
                PROX <= A;
                
            WHEN G =>
                R3 <= DATA;
                PROX <= A;
        END CASE;
    END PROCESS;
END logica;

			
	
	
		
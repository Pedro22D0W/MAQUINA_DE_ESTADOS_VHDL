LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.CPU_package.all;

ENTITY CENTRO_DE_CONTROLE IS 

    PORT(
        Clock,Reset : IN std_logic;
		  FUNC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  Enable : IN STD_LOGIC;
        Do,R1i,R2i,R3i,Ai,Gi,R1o,R2o,R3o,Ao,Go,Add_Sub : OUT STD_LOGIC
    );
	 
END CENTRO_DE_CONTROLE;

ARCHITECTURE logica OF CENTRO_DE_CONTROLE IS
    TYPE STATE IS (A, B, C, D, E, F, G, H, I, J, K, L, M);
    SIGNAL ESTADO : STATE;
BEGIN 

    PROCESS(Reset, Clock,Enable)
    BEGIN 
        IF Reset = '0' THEN
            ESTADO <= A;
        ELSIF rising_edge(Clock) THEN 
					
        CASE ESTADO IS 
            WHEN A =>
				
                IF (FUNC = "000") AND (Enable = '1') THEN
                    ESTADO <= A;
                ELSIF (FUNC = "001") AND(Enable = '1') THEN
                    ESTADO <= B;
                ELSIF (FUNC = "010") AND(Enable = '1') THEN
                    ESTADO <= C;
                ELSIF (FUNC = "011")AND (Enable = '1') THEN
                    ESTADO <= D;
					 ELSIF (FUNC = "100")AND (Enable = '1') THEN
                    ESTADO <= A;
                ELSIF (FUNC = "101")AND (Enable = '1') THEN
                    ESTADO <= E;
                ELSIF (FUNC = "110")AND (Enable = '1') THEN
                    ESTADO <= F;
                ELSIF (FUNC = "111") AND(Enable = '1') THEN
                    ESTADO <= G;
					 
                END IF;
					 
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
				Add_Sub<= '0';
                
            WHEN B =>
				
				ESTADO <= H;
               
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
				Add_Sub<= '0';
                
            WHEN H =>
				
            ESTADO <= I;
           	
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
				Add_Sub<= '1';
                
            WHEN I =>
				
            ESTADO <= A;
							
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
				Add_Sub<= '0';
                
            WHEN C =>
				
            ESTADO <= J;
             
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
				Add_Sub<= '0';
				
                
            WHEN J =>
				
            ESTADO <= K;
              
				Do <= '0';
				R1i<='0';
				R2i<='0';
				R3i<='0';
				Ai<='0';
				Gi<='1';
				R1o<='1';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				Add_Sub<= '0';
				
                
            WHEN K =>
				
            ESTADO <= A;
              
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
				Add_Sub<= '0';
                
            WHEN D =>
				
            ESTADO <= L;
              
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
				Add_Sub<= '0';
                
            WHEN L =>
				
            ESTADO <= M;
              
				Do <= '0';
				R1i<='0';
				R2i<='1';
				R3i<='0';
				Ai<='0';
				Gi<='0';
				R1o<='1';
				R2o<='0';
				R3o<='0';
				Ao<='0';
				Go<='0';
				Add_Sub<= '0';
                
            WHEN M =>
				
            ESTADO <= A;
				
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
				Add_Sub<= '0';
				
				if Enable = '0' then
					ESTADO <= A;
				ELSE 
					ESTADO <= M;
					
				END IF;
                
            WHEN E =>
				
            ESTADO <= A;
             
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
				Add_Sub<= '0';
                
            WHEN F =>
				
            ESTADO <= A;
				 
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
				Add_Sub<= '0';
				
                
            WHEN G =>
				
            ESTADO <= A;
               
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
				Add_Sub<= '0';
        END CASE;
		  
		END IF;
	END PROCESS;   
END logica;
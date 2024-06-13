LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY REGISTRADOR IS

PORT ( D : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
Reset, Clock, R1in,R1out : IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END REGISTRADOR ;
ARCHITECTURE logica OF REGISTRADOR IS
BEGIN
PROCESS ( Reset, Clock )
BEGIN
IF Reset = '0' THEN
Q <= (OTHERS => '0') ;
ELSIF Clock'EVENT AND Clock = '1' AND R1in = '1'  THEN
Q <= D ;
 elsif R1out = '1'
	Q <= "0000"
END IF ;
END PROCESS ;
END logica ;
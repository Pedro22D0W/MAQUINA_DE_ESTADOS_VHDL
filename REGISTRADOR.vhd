LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY REGISTRADOR IS

PORT ( D : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
Reset, Clock, Rin ,Enable : IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END REGISTRADOR ;
ARCHITECTURE logica OF REGISTRADOR IS
BEGIN
PROCESS ( Reset, Clock,Rin )
BEGIN
IF Reset = '0' THEN
Q <= (OTHERS => '0') ;
ELSIF (Clock'EVENT AND Clock = '0') AND (Rin = '1') THEN
Q <= D ;

END IF;
END PROCESS;
END logica;
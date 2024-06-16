LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.CPU_package.all ;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--USE IEEE.NUMERIC_STD.ALL;

ENTITY ADD_SUB IS

PORT ( Cin : IN STD_LOGIC ;
X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
S : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
Cout : OUT STD_LOGIC ) ;
END ADD_SUB ;


ARCHITECTURE logica OF ADD_SUB IS
SIGNAL C : STD_LOGIC_VECTOR(1 TO 3) ;
SIGNAL NY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S_aux : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

NY(0) <= Y(0) XOR Cin;
NY(1) <= Y(1) XOR Cin;
NY(2) <= Y(2) XOR Cin;
NY(3) <= Y(3) XOR Cin;

stage0: fulladd PORT MAP ( Cin, X(0), NY(0),  S(0), C(1) ) ;
stage1: fulladd PORT MAP ( C(1), X(1), NY(1), S(1), C(2) ) ;
stage2: fulladd PORT MAP ( C(2), X(2), NY(2), S(2), C(3) ) ;
stage3: fulladd PORT MAP ( C(3), X(3), NY(3), S(3), Cout ) ;

--Soma <= S_aux;


END logica ;
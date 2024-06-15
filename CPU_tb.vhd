Library ieee;
use ieee.std_logic_1164.all;
entity CPU_tb is
end entity CPU_tb;
architecture tb of CPU_tb is
signal SW: std_logic_vector(16 downto 0);
signal HEX0,HEX1,HEX2,HEX4,HEX5,HEX7,HEX6: std_logic_vector(0 to 6);
signal LEDR : STD_LOGIC_VECTOR(17 DOWnTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
begin
uut: entity work.CPU port map( SW => SW, HEX0 => HEX0,HEX1 => HEX1,HEX2 => HEX2,HEX4 => HEX4,HEX5 => HEX5,HEX6 => HEX6,HEX7 => HEX7,CLOCK_50 => CLOCK_50,LEDR => LEDR);
end architecture tb;
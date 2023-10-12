library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity full_adder is
 Port ( x : in STD_LOGIC;
 y : in STD_LOGIC;
 z : in STD_LOGIC;
 Sum : out STD_LOGIC;
 Carry : out STD_LOGIC);
end full_adder;
 
architecture gate_level of full_adder is
 
begin
 
 Sum <= x XOR y XOR z ;
 Carry <= (x AND y) OR (z AND x) OR (z AND y) ;
 
end gate_level;


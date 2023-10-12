library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity nbitadder is
  generic (n: integer:= 8);
    port(
  
        Cin : in STD_LOGIC;
        a, b: in STD_LOGIC_VECTOR (n-1 downto 0);
        S: out STD_LOGIC_VECTOR (n-1 downto 0);
        Cout: out STD_LOGIC

      );
end nbitadder;
 
architecture ripple_arch of nbitadder is
  component full_adder
    port (x,y,z: IN STD_LOGIC; Sum, Carry: OUT STD_LOGIC);
    
  end component;
  signal t: std_logic_vector (n downto 0);

begin
  t(0) <= Cin; Cout <= t(n);
    FA_f: for i in 0 to n-1 generate
      FA_i: full_adder PORT MAP  (t(i), a(i), b(i), S(i), t(i+1));
    end generate;
end ripple_arch;

 


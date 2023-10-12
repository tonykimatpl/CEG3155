LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY enRdFF_2 IS
	PORT(
		i_resetBar : IN STD_LOGIC;
		i_d : IN STD_LOGIC;
		i_en : IN STD_LOGIC;
		i_clk : IN STD_LOGIC;
		o_q : OUT STD_LOGIC;
		o_qBar : OUT STD_LOGIC);
END enRdFF_2;

ARCHITECTURE behavior OF enRdFF_2 IS
	SIGNAL int_q : STD_LOGIC;

BEGIN

oneBitRegister:
PROCESS(i_resetBar, i_clk)
BEGIN
	IF(i_resetBar = '0') THEN
	int_q <= '0';
	ELSIF(i_clk'EVENT and i_clk = '1') THEN
		IF (i_en = '1') THEN
		 int_q <= i_d;
		END IF;
	END IF;
END PROCESS oneBitRegister;

	--  Output Driver

	o_q		<=	int_q;
	o_qBar		<=	not(int_q);

END behavior;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fourToOneMux IS
	PORT(
		i_s0, i_s1 : IN STD_LOGIC; --Selector leftSwitch
		i_in00, i_in01, i_in10, i_in11 : IN STD_LOGIC;
		o_disp : OUT STD_LOGIC);
END fourToOneMux;

ARCHITECTURE behavior OF fourToOneMux IS
	SIGNAL int_disp :STD_LOGIC;
	
BEGIN

mux:
PROCESS(i_s0, i_s1)
BEGIN
	IF(i_s0 = 0 and i_s1 = 0) THEN
	int_disp <= i_in00;
	ELSIF(i_s0 = 0 and i_s1 = 1) THEN
	int_disp <= i_in01;
	ELSIF(i_s0 = 1 and i_s1 = 0) THEN
	int_disp <= i_in10;
	ELSIF(i_s0 = 1 and i_s1 = 1) THEN
	int_disp <= i_in11;
	END IF;
END PROCESS mux;

	o_disp <= int_disp;
	
END behavior;
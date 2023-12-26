LIBRARY ieee;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Event_Detect IS
	PORT (
		clk : IN std_logic;
		IN_Signal : IN std_logic;
		Event_L2H : OUT std_logic;
		Event_H2L : OUT std_logic
	);
END Event_Detect;

ARCHITECTURE Event_a OF Event_Detect IS

	SIGNAL In_Signal_temp : std_logic;

BEGIN
	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IN_Signal_temp <= IN_Signal;
		END IF;
	END PROCESS;

	Event_H2L <= IN_Signal_temp AND NOT(IN_Signal);
	Event_L2H <= NOT(IN_Signal_temp) AND IN_Signal;

END ARCHITECTURE Event_a;
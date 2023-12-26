LIBRARY ieee;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Fetch IS
	PORT (
		en : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		PC_load : IN std_logic;
		PC_Jump : IN std_logic_vector(7 DOWNTO 0);
		PC_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Fetch;

--Le fetch implémente un JUMP que nous n'exploitons pas, ainsi PC_load est relié à la masse

ARCHITECTURE Fetch_a OF Fetch IS

	SIGNAL PC_counter : std_logic_vector(7 DOWNTO 0);

BEGIN
	load : PROCESS (clk, rst)
	BEGIN
		IF rst = '1' THEN
			PC_counter <= "00000000";
		ELSE
			IF rising_edge(clk) THEN
				IF en = '1' THEN 
					IF PC_Load = '0' THEN
						PC_counter <= std_logic_vector(unsigned(PC_counter) + 1);
					ELSE
						PC_counter <= PC_Jump;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	PC_out <= PC_counter;

END ARCHITECTURE Fetch_a;
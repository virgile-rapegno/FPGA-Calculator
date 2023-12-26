LIBRARY ieee;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rom IS
	PORT (
		en : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		Adress : IN std_logic_vector(7 DOWNTO 0);
		Data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END rom;

ARCHITECTURE rom_a OF rom IS

	TYPE rom IS ARRAY(0 TO 255) OF std_logic_vector(3 DOWNTO 0);
	SIGNAL Data_Rom : rom;

BEGIN
	acces_rom : PROCESS (rst, clk)
	BEGIN
		IF rst = '1' THEN
			-- C'est ici que l'on programme la suite d'instruction de la calculatrice
			Data_Rom(0) <= "0000";
			Data_Rom(1) <= "0001";
			Data_Rom(2) <= "1110";
			Data_Rom(3) <= "0000";
			Data_Rom(4) <= "0010";
			Data_Rom(5) <= "1111";
			Data_Rom(6) <= "1011";
			Data_Rom(7) <= "0110";
			Data_out <= Data_Rom(0);
		ELSE
			IF en = '1' THEN
				IF rising_edge(clk) THEN
					Data_out <= Data_Rom(to_integer(unsigned(Adress)));
				END IF;
			END IF;
		END IF;
	END PROCESS acces_rom;

END rom_a;
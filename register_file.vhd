LIBRARY ieee;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_file IS
	PORT (
		clk : IN std_logic;
		rst : IN std_logic;
		sel : IN std_logic;
		en : IN std_logic;
		Data_in : IN std_logic_vector(9 DOWNTO 0);
		Data_out_A : OUT std_logic_vector(9 DOWNTO 0);
		Data_out_B : OUT std_logic_vector(9 DOWNTO 0)
	);
END register_file;

--Le register file est élémentaire mais permet de lire en continue les valeurs en mémoire
--On sait où enregistrer car l'instruction spécifie le registre en bit de poids fort

ARCHITECTURE Behavioral OF register_file IS

	TYPE registerFile IS ARRAY(0 TO 1) OF std_logic_vector(9 DOWNTO 0);
	SIGNAL output : registerFile;
 
BEGIN
	save : PROCESS (rst, clk)
	BEGIN
		IF (rst = '1') THEN
			output(0) <= "0000000000";
			output(1) <= "0000000000";
		ELSE
			IF (rising_edge(clk)) THEN
				IF (en = '1') THEN
					IF (sel = '1') THEN
						output(1) <= Data_in;
					ELSE
						output(0) <= Data_in;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	Data_out_A <= output(0);
	Data_out_B <= output(1);

END Behavioral;
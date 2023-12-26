LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY SEG7_LUT IS
	PORT (
		iDIG : IN std_logic_vector(3 DOWNTO 0);
		oSEG : OUT std_logic_vector(6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE rtl OF SEG7_LUT IS
BEGIN
	PROCESS (iDIG)
	BEGIN
		CASE (iDIG) IS
			WHEN X"1" => 
				oSEG <= B"1111001";
			WHEN X"2" => 
				oSEG <= B"0100100";
			WHEN X"3" => 
				oSEG <= B"0110000";
			WHEN X"4" => 
				oSEG <= B"0011001";
			WHEN X"5" => 
				oSEG <= B"0010010";
			WHEN X"6" => 
				oSEG <= B"0000010";
			WHEN X"7" => 
				oSEG <= B"1111000";
			WHEN X"8" => 
				oSEG <= B"0000000";
			WHEN X"9" => 
				oSEG <= B"0011000";
			WHEN X"a" => 
				oSEG <= B"0001000";
			WHEN X"b" => 
				oSEG <= B"0000011";
			WHEN X"c" => 
				oSEG <= B"1000110";
			WHEN X"d" => 
				oSEG <= B"0100001";
			WHEN X"e" => 
				oSEG <= B"0000110";
			WHEN X"f" => 
				oSEG <= B"0001110";
			WHEN X"0" => 
				oSEG <= B"1000000";
			WHEN OTHERS => 
				oSEG <= B"0111111";
		END CASE;
	END PROCESS;
 
END ARCHITECTURE;
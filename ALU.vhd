LIBRARY ieee;

USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY alu IS
	PORT (
		sel : IN std_logic_vector(3 DOWNTO 0);
		clk : IN std_logic;
		rst : IN std_logic;
		Data_in_imm : IN std_logic_vector(9 DOWNTO 0);
		Data_in_A : IN std_logic_vector(9 DOWNTO 0);
		Data_in_B : IN std_logic_vector(9 DOWNTO 0);
		Data_out : OUT std_logic_vector(9 DOWNTO 0)
	);
END alu;

--L'ALU est correspond aux opération classique d'une calculatrice à l'exception de la division
--On pourrait fusionner les deux sections du CASE à l'aide de signaux car il y a une forte redondance

ARCHITECTURE Behavioral OF alu IS

	SIGNAL res : signed(9 DOWNTO 0);

BEGIN
	alu : PROCESS (rst, clk)
	BEGIN
		IF (rst = '1') THEN
			res <= "0000000000";
		ELSE

			CASE(sel) IS
				WHEN "0000" => 
					res <= signed(Data_in_imm);
				WHEN "0001" => 
					res <= signed(Data_in_A) + signed(Data_in_imm);
				WHEN "0010" => 
					res <= signed(Data_in_A) - signed(Data_in_imm);
				WHEN "0011" => 
					res <= - signed(Data_in_A);
				WHEN "0100" => 
					res <= "0000000000";
				WHEN "0101" => 
					res <= resize(signed(Data_in_A) * signed(Data_in_imm), res'length);
				WHEN "0110" => 
					res <= signed(Data_in_B);
				WHEN "0111" =>
					res <= resize(signed(Data_in_A) * signed(Data_in_B), res'length);

				WHEN "1000" => 
					res <= signed(Data_in_imm);
				WHEN "1001" => 
					res <= signed(Data_in_B) + signed(Data_in_imm);
				WHEN "1010" => 
					res <= signed(Data_in_B) - signed(Data_in_imm);
				WHEN "1011" => 
					res <= - signed(Data_in_B);
				WHEN "1100" => 
					res <= "0000000000";
				WHEN "1101" => 
					res <= resize(signed(Data_in_B) * signed(Data_in_imm), res'length);
				WHEN "1110" => 
					res <= signed(Data_in_A);
				WHEN "1111" =>
					res <= resize(signed(Data_in_A) * signed(Data_in_B), res'length);

				WHEN OTHERS => 
					res <= "0000000000";
			END CASE;
		END IF;
	END PROCESS;

	Data_out <= std_logic_vector(res);

END Behavioral;
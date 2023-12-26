LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dig2dec IS
	PORT (
		vol : IN std_logic_vector(15 DOWNTO 0);
		seg4 : OUT std_logic_vector(3 DOWNTO 0);
		seg3 : OUT std_logic_vector(3 DOWNTO 0);
		seg2 : OUT std_logic_vector(3 DOWNTO 0);
		seg1 : OUT std_logic_vector(3 DOWNTO 0);
		seg0 : OUT std_logic_vector(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE rtl OF dig2dec IS
BEGIN
	p_decim : PROCESS (vol)
		VARIABLE vol4 : unsigned(3 DOWNTO 0); -- vol4=E(vol/10000) compris entre 0 et 5 (3 bits mini)
		VARIABLE vol3 : unsigned(6 DOWNTO 0); -- vol3=E(vol/1000) compris entre 0 et 50 (6 bits mini)
		VARIABLE vol2 : unsigned(9 DOWNTO 0); -- vol2=E(vol/100) compris entre 0 et 500 (9 bits mini)
		VARIABLE vol1 : unsigned(12 DOWNTO 0); -- vol1=E(vol/10) compris entre 0 et 5000 (13 bits mini)
	BEGIN
		vol1 := resize(unsigned(vol)/10, vol1'length); -- on calcule les divisions successives par puissances de 10
		vol2 := resize(vol1/10, vol2'length);
		vol3 := resize(vol2/10, vol3'length);
		vol4 := resize(vol3/10, vol4'length); -- on calcule les divisions successives par puissances de 10
 
		seg4 <= std_logic_vector(resize(vol4, seg4'length));
		seg3 <= std_logic_vector(resize(vol3 - vol4 * 10, seg3'length));
		seg2 <= std_logic_vector(resize(vol2 - vol3 * 10, seg2'length));
		seg1 <= std_logic_vector(resize(vol1 - vol2 * 10, seg1'length));
		seg0 <= std_logic_vector(resize(unsigned(vol) - vol1 * 10, seg0'length)); 
	END PROCESS;

END ARCHITECTURE;
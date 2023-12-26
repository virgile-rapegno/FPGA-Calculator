LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;

ENTITY CPU IS
	PORT (
		MAX10_CLK1_50 : IN STD_LOGIC;
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		PUSH : IN STD_LOGIC;
		NOT_RESET : IN STD_LOGIC
	);
END CPU;

--On utilise les switchs pour entrer un nombre signé sur 10 bits
--Key0 est le bouton PUSH qui permet d'avancer dans les instructions
--Key1 est le bouton de RESET (ici appelé NON_RESET car relaché il vaut 1, mais on l'inverse avant utilisation)
--On affiche le nombre signé de la mémoire A en décimal sur les afficheurs 7 segments et en binaire sur les leds

ARCHITECTURE bdf_type OF CPU IS

	COMPONENT seg7_lut
		PORT (
			iDIG : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			oSEG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT dig2dec
		PORT (
			vol : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			seg0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT Event_Detect
		PORT (
			clk : IN std_logic;
			IN_Signal : IN std_logic;
			Event_L2H : OUT std_logic;
			Event_H2L : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Rom
		PORT (
			en : IN std_logic;
			clk : IN std_logic;
			rst : IN std_logic;
			Adress : IN std_logic_vector(7 DOWNTO 0);
			Data_out : OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT Fetch
		PORT (
			en : IN std_logic;
			clk : IN std_logic;
			rst : IN std_logic;
			PC_load : IN std_logic;
			PC_Jump : IN std_logic_vector(7 DOWNTO 0);
			PC_out : OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT register_file
		PORT (
			clk : IN std_logic;
			rst : IN std_logic;
			sel : IN std_logic;
			en : IN std_logic;
			Data_in : IN std_logic_vector(9 DOWNTO 0);
			Data_out_A : OUT std_logic_vector(9 DOWNTO 0);
			Data_out_B : OUT std_logic_vector(9 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT ALU
		PORT (
			sel : IN std_logic_vector(3 DOWNTO 0);
			clk : IN std_logic;
			rst : IN std_logic;
			Data_in_imm : IN std_logic_vector(9 DOWNTO 0);
			Data_in_A : IN std_logic_vector(9 DOWNTO 0);
			Data_in_B : IN std_logic_vector(9 DOWNTO 0);
			Data_out : OUT std_logic_vector(9 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL zero : STD_LOGIC;
	SIGNAL one : STD_LOGIC;
	SIGNAL HEX_out0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL HEX_out1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL HEX_out2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL HEX_out3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL HEX_out4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL seg7_in0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg7_in1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg7_in2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg7_in3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg7_in4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL seg7_in5 : STD_LOGIC_VECTOR(7 DOWNTO 0);

	--Sortie de l'ALU
	SIGNAL data_to_register : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	--Donnée du register file
	SIGNAL dataA_from_register : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL dataB_from_register : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	--Fetch
	SIGNAL instruction : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL adress_fetch : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	--On relie les deux prochains signaux au détecteur d'évenement sur PUSH
	SIGNAL changer_instruction : STD_LOGIC;
	SIGNAL save : STD_LOGIC;
	
	--Pour obtenir le comportement de RESET lors de l'appui de Key1
	SIGNAL RESET : STD_LOGIC;
	
	--Afficher la mémoire A sur l'afficheur
	SIGNAL affichage_res : STD_logic_vector(15 DOWNTO 0);

BEGIN
	Event_Detect_inst : Event_Detect
	PORT MAP(
		clk => MAX10_CLK1_50, 
		IN_Signal => PUSH, 
		Event_H2L => save, 
		Event_L2H => changer_instruction
	);

	rom_inst : Rom
	PORT MAP(
		en => changer_instruction, 
		clk => MAX10_CLK1_50, 
		rst => RESET, 
		Adress => adress_fetch, 
		Data_out => instruction
	);
 
	fetch_inst : Fetch
	PORT MAP(
		en => changer_instruction, 
		clk => MAX10_CLK1_50, 
		rst => RESET, 
		PC_load => zero, 
		PC_jump => "00000000", --Comme précisé dans Fetch.vhd, on n'utilise pas le JUMP
		PC_out => adress_fetch
	);

	register_file_inst : register_file
	PORT MAP(
		clk => MAX10_CLK1_50, 
		rst => RESET, 
		sel => instruction(3), --Les instructions codent sur le bit de poids fort le registre de mémorisation de l'instruction
		en => save, 
		Data_in => data_to_register, 
		Data_out_A => dataA_from_register, 
		Data_out_B => dataB_from_register
	); 
 
	alu_inst : ALU
	PORT MAP(
		sel => instruction, 
		clk => MAX10_CLK1_50, 
		rst => RESET, 
		Data_in_imm => SW, 
		Data_in_A => dataA_from_register, 
		Data_in_B => dataB_from_register, 
		Data_out => data_to_register
	);
 
	b2v_inst : seg7_lut
	PORT MAP(
		iDIG => seg7_in0, 
		oSEG => HEX_out4(6 DOWNTO 0)
	);

	b2v_inst1 : seg7_lut
	PORT MAP(
		iDIG => seg7_in1, 
		oSEG => HEX_out3(6 DOWNTO 0)
	);

	b2v_inst2 : seg7_lut
	PORT MAP(
		iDIG => seg7_in2, 
		oSEG => HEX_out2(6 DOWNTO 0)
	);

	b2v_inst3 : seg7_lut
	PORT MAP(
		iDIG => seg7_in3, 
		oSEG => HEX_out1(6 DOWNTO 0)
	);

	b2v_inst4 : seg7_lut
	PORT MAP(
		iDIG => seg7_in4, 
		oSEG => HEX_out0(6 DOWNTO 0)
	);

	b2v_inst5 : dig2dec
	PORT MAP(
		vol => affichage_res, 
		seg0 => seg7_in4, 
		seg1 => seg7_in3, 
		seg2 => seg7_in2, 
		seg3 => seg7_in1, 
		seg4 => seg7_in0
	);

	HEX0 <= HEX_out0;
	HEX1 <= HEX_out1;
	HEX2 <= HEX_out2;
	HEX3 <= HEX_out3;
	HEX4 <= HEX_out4;
	
	--Pour l'afficheur on précise le signe sur l'afficheur le plus à gauche
	signe : PROCESS(dataA_from_register)
	BEGIN
		IF (dataA_from_register(9) = '1') THEN
			affichage_res <= "000000" & STD_LOGIC_VECTOR(-SIGNED(dataA_from_register));
			HEX5 <= "10111111";
		ELSE
			affichage_res <= "000000" & dataA_from_register;
			HEX5 <= "11111111";
		END IF;
	END PROCESS;

	zero <= '0';
	one <= '1';
	HEX_out0(7) <= '1';
	HEX_out1(7) <= '1';
	HEX_out2(7) <= '1';
	HEX_out3(7) <= '1';
	HEX_out4(7) <= '1';

	LEDR <= dataA_from_register;

	RESET <= NOT(NOT_RESET);

END ARCHITECTURE;
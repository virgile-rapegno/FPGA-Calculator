-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "01/31/2023 20:34:38"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PUSH : IN std_logic;
	NOT_RESET : IN std_logic
	);
END CPU;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- NOT_RESET	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PUSH : std_logic;
SIGNAL ww_NOT_RESET : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \NOT_RESET~input_o\ : std_logic;
SIGNAL \fetch_inst|PC_counter[0]~21_combout\ : std_logic;
SIGNAL \PUSH~input_o\ : std_logic;
SIGNAL \Event_Detect_inst|In_Signal_temp~feeder_combout\ : std_logic;
SIGNAL \Event_Detect_inst|In_Signal_temp~q\ : std_logic;
SIGNAL \Event_Detect_inst|Event_L2H~combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[1]~7_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[1]~8\ : std_logic;
SIGNAL \fetch_inst|PC_counter[2]~9_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[2]~10\ : std_logic;
SIGNAL \fetch_inst|PC_counter[3]~11_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[3]~12\ : std_logic;
SIGNAL \fetch_inst|PC_counter[4]~13_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[4]~14\ : std_logic;
SIGNAL \fetch_inst|PC_counter[5]~15_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[5]~16\ : std_logic;
SIGNAL \fetch_inst|PC_counter[6]~17_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter[6]~18\ : std_logic;
SIGNAL \fetch_inst|PC_counter[7]~19_combout\ : std_logic;
SIGNAL \rom_inst|Mux0~0_combout\ : std_logic;
SIGNAL \rom_inst|Mux2~0_combout\ : std_logic;
SIGNAL \rom_inst|Mux2~1_combout\ : std_logic;
SIGNAL \rom_inst|Mux1~0_combout\ : std_logic;
SIGNAL \rom_inst|Mux1~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \rom_inst|Mux3~0_combout\ : std_logic;
SIGNAL \rom_inst|Mux3~1_combout\ : std_logic;
SIGNAL \rom_inst|Mux0~1_combout\ : std_logic;
SIGNAL \rom_inst|Mux0~2_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][9]~1_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add3~0_combout\ : std_logic;
SIGNAL \alu_inst|Add0~0_combout\ : std_logic;
SIGNAL \alu_inst|Add0~2_combout\ : std_logic;
SIGNAL \alu_inst|Add0~3_combout\ : std_logic;
SIGNAL \alu_inst|Add1~0_combout\ : std_logic;
SIGNAL \alu_inst|Add4~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~3_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][0]~0_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \register_file_inst|output[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add4~1\ : std_logic;
SIGNAL \alu_inst|Add4~2_combout\ : std_logic;
SIGNAL \alu_inst|Add1~1\ : std_logic;
SIGNAL \alu_inst|Add1~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~0_combout\ : std_logic;
SIGNAL \alu_inst|Add5~1_cout\ : std_logic;
SIGNAL \alu_inst|Add5~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~1_combout\ : std_logic;
SIGNAL \alu_inst|Add0~1\ : std_logic;
SIGNAL \alu_inst|Add0~4_combout\ : std_logic;
SIGNAL \alu_inst|Add3~1\ : std_logic;
SIGNAL \alu_inst|Add3~2_combout\ : std_logic;
SIGNAL \alu_inst|Add0~6_combout\ : std_logic;
SIGNAL \alu_inst|Add0~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \register_file_inst|output[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add3~3\ : std_logic;
SIGNAL \alu_inst|Add3~4_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \alu_inst|Add0~5\ : std_logic;
SIGNAL \alu_inst|Add0~8_combout\ : std_logic;
SIGNAL \alu_inst|Add0~33_combout\ : std_logic;
SIGNAL \alu_inst|Add0~34_combout\ : std_logic;
SIGNAL \alu_inst|Add1~3\ : std_logic;
SIGNAL \alu_inst|Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~1_combout\ : std_logic;
SIGNAL \alu_inst|Add5~3\ : std_logic;
SIGNAL \alu_inst|Add5~4_combout\ : std_logic;
SIGNAL \alu_inst|Add4~3\ : std_logic;
SIGNAL \alu_inst|Add4~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~3_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add5~5\ : std_logic;
SIGNAL \alu_inst|Add5~6_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \alu_inst|Add4~5\ : std_logic;
SIGNAL \alu_inst|Add4~6_combout\ : std_logic;
SIGNAL \alu_inst|Add1~5\ : std_logic;
SIGNAL \alu_inst|Add1~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~1_combout\ : std_logic;
SIGNAL \alu_inst|Add0~9\ : std_logic;
SIGNAL \alu_inst|Add0~10_combout\ : std_logic;
SIGNAL \alu_inst|Add3~5\ : std_logic;
SIGNAL \alu_inst|Add3~6_combout\ : std_logic;
SIGNAL \alu_inst|Add0~31_combout\ : std_logic;
SIGNAL \alu_inst|Add0~32_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \alu_inst|Add4~7\ : std_logic;
SIGNAL \alu_inst|Add4~8_combout\ : std_logic;
SIGNAL \alu_inst|Add5~7\ : std_logic;
SIGNAL \alu_inst|Add5~8_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \alu_inst|Add1~7\ : std_logic;
SIGNAL \alu_inst|Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~2_combout\ : std_logic;
SIGNAL \alu_inst|Add3~7\ : std_logic;
SIGNAL \alu_inst|Add3~8_combout\ : std_logic;
SIGNAL \alu_inst|Add0~11\ : std_logic;
SIGNAL \alu_inst|Add0~12_combout\ : std_logic;
SIGNAL \alu_inst|Add0~29_combout\ : std_logic;
SIGNAL \alu_inst|Add0~30_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~3_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \alu_inst|Add4~9\ : std_logic;
SIGNAL \alu_inst|Add4~10_combout\ : std_logic;
SIGNAL \alu_inst|Add5~9\ : std_logic;
SIGNAL \alu_inst|Add5~10_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~31_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \alu_inst|Add1~9\ : std_logic;
SIGNAL \alu_inst|Add1~10_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~32_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~33_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \register_file_inst|output[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \register_file_inst|output[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add3~9\ : std_logic;
SIGNAL \alu_inst|Add3~11\ : std_logic;
SIGNAL \alu_inst|Add3~13\ : std_logic;
SIGNAL \alu_inst|Add3~14_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \register_file_inst|output[0][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \alu_inst|Add0~13\ : std_logic;
SIGNAL \alu_inst|Add0~15\ : std_logic;
SIGNAL \alu_inst|Add0~17\ : std_logic;
SIGNAL \alu_inst|Add0~18_combout\ : std_logic;
SIGNAL \alu_inst|Add0~27_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~13_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~14_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][9]~_Duplicate_2_q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \register_file_inst|output[0][8]~_Duplicate_2_q\ : std_logic;
SIGNAL \alu_inst|Add0~19\ : std_logic;
SIGNAL \alu_inst|Add0~21\ : std_logic;
SIGNAL \alu_inst|Add0~22_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \register_file_inst|output[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \register_file_inst|output[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add3~15\ : std_logic;
SIGNAL \alu_inst|Add3~17\ : std_logic;
SIGNAL \alu_inst|Add3~18_combout\ : std_logic;
SIGNAL \alu_inst|Add0~24_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~4_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~5_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~6_combout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~2_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~3_combout\ : std_logic;
SIGNAL \alu_inst|Add1~11\ : std_logic;
SIGNAL \alu_inst|Add1~13\ : std_logic;
SIGNAL \alu_inst|Add1~15\ : std_logic;
SIGNAL \alu_inst|Add1~17\ : std_logic;
SIGNAL \alu_inst|Add1~18_combout\ : std_logic;
SIGNAL \alu_inst|Add4~11\ : std_logic;
SIGNAL \alu_inst|Add4~13\ : std_logic;
SIGNAL \alu_inst|Add4~15\ : std_logic;
SIGNAL \alu_inst|Add4~17\ : std_logic;
SIGNAL \alu_inst|Add4~18_combout\ : std_logic;
SIGNAL \alu_inst|Add5~11\ : std_logic;
SIGNAL \alu_inst|Add5~13\ : std_logic;
SIGNAL \alu_inst|Add5~15\ : std_logic;
SIGNAL \alu_inst|Add5~17\ : std_logic;
SIGNAL \alu_inst|Add5~18_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~7_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~8_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~0_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~9_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~10_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[9]~11_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mux1~0_combout\ : std_logic;
SIGNAL \alu_inst|Add3~16_combout\ : std_logic;
SIGNAL \alu_inst|Add0~20_combout\ : std_logic;
SIGNAL \alu_inst|Add0~25_combout\ : std_logic;
SIGNAL \alu_inst|Add0~26_combout\ : std_logic;
SIGNAL \alu_inst|Add4~16_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \alu_inst|Add1~16_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~1_combout\ : std_logic;
SIGNAL \alu_inst|Add5~16_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mux1~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[8]~12_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~15_combout\ : std_logic;
SIGNAL \alu_inst|Add1~14_combout\ : std_logic;
SIGNAL \alu_inst|Add4~14_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~16_combout\ : std_logic;
SIGNAL \alu_inst|Add5~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~17_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~18_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~19_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~20_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[7]~21_combout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~22_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~28_combout\ : std_logic;
SIGNAL \alu_inst|Add0~16_combout\ : std_logic;
SIGNAL \alu_inst|Add3~12_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~24_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~25_combout\ : std_logic;
SIGNAL \alu_inst|Add4~12_combout\ : std_logic;
SIGNAL \alu_inst|Add5~12_combout\ : std_logic;
SIGNAL \alu_inst|Add1~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~1_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~26_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~27_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~29_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~0_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~23_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[6]~30_combout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~34_combout\ : std_logic;
SIGNAL \alu_inst|Add3~10_combout\ : std_logic;
SIGNAL \alu_inst|Add0~14_combout\ : std_logic;
SIGNAL \alu_inst|Add0~28_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~36_combout\ : std_logic;
SIGNAL \alu_inst|Mux4~0_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~35_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~37_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[5]~38_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mux5~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mux5~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[4]~39_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mux6~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mux6~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[3]~40_combout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mux7~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mux7~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[2]~41_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mux8~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mux8~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[1]~1_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu_inst|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu_inst|Mux9~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu_inst|Mux9~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~6_combout\ : std_logic;
SIGNAL \alu_inst|Data_out[0]~0_combout\ : std_logic;
SIGNAL \register_file_inst|output[0][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \affichage_res[8]~2_combout\ : std_logic;
SIGNAL \affichage_res[7]~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \affichage_res[9]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \affichage_res[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84_combout\ : std_logic;
SIGNAL \b2v_inst5|Add7~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \affichage_res[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add7~5_combout\ : std_logic;
SIGNAL \affichage_res[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Add7~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Add7~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Add7~8_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Add5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add5~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Add5~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Add5~3_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Add3~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Mux0~0_combout\ : std_logic;
SIGNAL \fetch_inst|PC_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom_inst|Data_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_NOT_RESET~input_o\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \register_file_inst|ALT_INV_output[0][9]~_Duplicate_2_q\ : std_logic;
SIGNAL \b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_PUSH <= PUSH;
ww_NOT_RESET <= NOT_RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\alu_inst|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT9\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT5\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~dataout\ & \alu_inst|Mult1|auto_generated|mac_mult1~15\ & \alu_inst|Mult1|auto_generated|mac_mult1~14\ & \alu_inst|Mult1|auto_generated|mac_mult1~13\ & \alu_inst|Mult1|auto_generated|mac_mult1~12\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~11\ & \alu_inst|Mult1|auto_generated|mac_mult1~10\ & \alu_inst|Mult1|auto_generated|mac_mult1~9\ & \alu_inst|Mult1|auto_generated|mac_mult1~8\ & \alu_inst|Mult1|auto_generated|mac_mult1~7\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~6\ & \alu_inst|Mult1|auto_generated|mac_mult1~5\ & \alu_inst|Mult1|auto_generated|mac_mult1~4\ & \alu_inst|Mult1|auto_generated|mac_mult1~3\ & \alu_inst|Mult1|auto_generated|mac_mult1~2\ & 
\alu_inst|Mult1|auto_generated|mac_mult1~1\ & \alu_inst|Mult1|auto_generated|mac_mult1~0\);

\alu_inst|Mult1|auto_generated|mac_out2~0\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu_inst|Mult1|auto_generated|mac_out2~1\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu_inst|Mult1|auto_generated|mac_out2~2\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu_inst|Mult1|auto_generated|mac_out2~3\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu_inst|Mult1|auto_generated|mac_out2~4\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu_inst|Mult1|auto_generated|mac_out2~5\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu_inst|Mult1|auto_generated|mac_out2~6\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu_inst|Mult1|auto_generated|mac_out2~7\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu_inst|Mult1|auto_generated|mac_out2~8\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu_inst|Mult1|auto_generated|mac_out2~9\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu_inst|Mult1|auto_generated|mac_out2~10\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu_inst|Mult1|auto_generated|mac_out2~11\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu_inst|Mult1|auto_generated|mac_out2~12\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu_inst|Mult1|auto_generated|mac_out2~13\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu_inst|Mult1|auto_generated|mac_out2~14\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu_inst|Mult1|auto_generated|mac_out2~15\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu_inst|Mult1|auto_generated|mac_out2~dataout\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~dataout\ & \alu_inst|Mult0|auto_generated|mac_mult1~15\ & \alu_inst|Mult0|auto_generated|mac_mult1~14\ & \alu_inst|Mult0|auto_generated|mac_mult1~13\ & \alu_inst|Mult0|auto_generated|mac_mult1~12\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~11\ & \alu_inst|Mult0|auto_generated|mac_mult1~10\ & \alu_inst|Mult0|auto_generated|mac_mult1~9\ & \alu_inst|Mult0|auto_generated|mac_mult1~8\ & \alu_inst|Mult0|auto_generated|mac_mult1~7\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~6\ & \alu_inst|Mult0|auto_generated|mac_mult1~5\ & \alu_inst|Mult0|auto_generated|mac_mult1~4\ & \alu_inst|Mult0|auto_generated|mac_mult1~3\ & \alu_inst|Mult0|auto_generated|mac_mult1~2\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~1\ & \alu_inst|Mult0|auto_generated|mac_mult1~0\);

\alu_inst|Mult0|auto_generated|mac_out2~0\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu_inst|Mult0|auto_generated|mac_out2~1\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu_inst|Mult0|auto_generated|mac_out2~2\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu_inst|Mult0|auto_generated|mac_out2~3\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu_inst|Mult0|auto_generated|mac_out2~4\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu_inst|Mult0|auto_generated|mac_out2~5\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu_inst|Mult0|auto_generated|mac_out2~6\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu_inst|Mult0|auto_generated|mac_out2~7\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu_inst|Mult0|auto_generated|mac_out2~8\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu_inst|Mult0|auto_generated|mac_out2~9\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu_inst|Mult0|auto_generated|mac_out2~10\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu_inst|Mult0|auto_generated|mac_out2~11\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu_inst|Mult0|auto_generated|mac_out2~12\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu_inst|Mult0|auto_generated|mac_out2~13\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu_inst|Mult0|auto_generated|mac_out2~14\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu_inst|Mult0|auto_generated|mac_out2~15\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu_inst|Mult0|auto_generated|mac_out2~dataout\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\alu_inst|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT18\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT17\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT14\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT13\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT10\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT9\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT6\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT5\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT2\ & \alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT1\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~dataout\ & \alu_inst|Mult2|auto_generated|mac_mult1~15\ & \alu_inst|Mult2|auto_generated|mac_mult1~14\ & \alu_inst|Mult2|auto_generated|mac_mult1~13\ & \alu_inst|Mult2|auto_generated|mac_mult1~12\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~11\ & \alu_inst|Mult2|auto_generated|mac_mult1~10\ & \alu_inst|Mult2|auto_generated|mac_mult1~9\ & \alu_inst|Mult2|auto_generated|mac_mult1~8\ & \alu_inst|Mult2|auto_generated|mac_mult1~7\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~6\ & \alu_inst|Mult2|auto_generated|mac_mult1~5\ & \alu_inst|Mult2|auto_generated|mac_mult1~4\ & \alu_inst|Mult2|auto_generated|mac_mult1~3\ & \alu_inst|Mult2|auto_generated|mac_mult1~2\ & 
\alu_inst|Mult2|auto_generated|mac_mult1~1\ & \alu_inst|Mult2|auto_generated|mac_mult1~0\);

\alu_inst|Mult2|auto_generated|mac_out2~0\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu_inst|Mult2|auto_generated|mac_out2~1\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu_inst|Mult2|auto_generated|mac_out2~2\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu_inst|Mult2|auto_generated|mac_out2~3\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu_inst|Mult2|auto_generated|mac_out2~4\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu_inst|Mult2|auto_generated|mac_out2~5\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu_inst|Mult2|auto_generated|mac_out2~6\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu_inst|Mult2|auto_generated|mac_out2~7\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu_inst|Mult2|auto_generated|mac_out2~8\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu_inst|Mult2|auto_generated|mac_out2~9\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu_inst|Mult2|auto_generated|mac_out2~10\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu_inst|Mult2|auto_generated|mac_out2~11\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu_inst|Mult2|auto_generated|mac_out2~12\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu_inst|Mult2|auto_generated|mac_out2~13\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu_inst|Mult2|auto_generated|mac_out2~14\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu_inst|Mult2|auto_generated|mac_out2~15\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu_inst|Mult2|auto_generated|mac_out2~dataout\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\alu_inst|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\alu_inst|Data_out[9]~11_combout\ & \alu_inst|Data_out[8]~12_combout\ & \alu_inst|Data_out[7]~21_combout\ & \alu_inst|Data_out[6]~30_combout\ & \alu_inst|Data_out[5]~38_combout\ & 
\alu_inst|Data_out[4]~39_combout\ & \alu_inst|Data_out[3]~40_combout\ & \alu_inst|Data_out[2]~41_combout\ & \alu_inst|Data_out[1]~1_combout\ & \alu_inst|Data_out[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\SW[9]~input_o\ & \SW[8]~input_o\ & \SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult1|auto_generated|mac_mult1~0\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu_inst|Mult1|auto_generated|mac_mult1~1\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu_inst|Mult1|auto_generated|mac_mult1~2\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu_inst|Mult1|auto_generated|mac_mult1~3\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu_inst|Mult1|auto_generated|mac_mult1~4\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu_inst|Mult1|auto_generated|mac_mult1~5\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu_inst|Mult1|auto_generated|mac_mult1~6\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu_inst|Mult1|auto_generated|mac_mult1~7\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu_inst|Mult1|auto_generated|mac_mult1~8\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu_inst|Mult1|auto_generated|mac_mult1~9\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu_inst|Mult1|auto_generated|mac_mult1~10\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu_inst|Mult1|auto_generated|mac_mult1~11\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu_inst|Mult1|auto_generated|mac_mult1~12\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu_inst|Mult1|auto_generated|mac_mult1~13\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu_inst|Mult1|auto_generated|mac_mult1~14\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu_inst|Mult1|auto_generated|mac_mult1~15\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu_inst|Mult1|auto_generated|mac_mult1~dataout\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\alu_inst|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\alu_inst|Data_out[9]~11_combout\ & \alu_inst|Data_out[8]~12_combout\ & \alu_inst|Data_out[7]~21_combout\ & \alu_inst|Data_out[6]~30_combout\ & \alu_inst|Data_out[5]~38_combout\ & 
\alu_inst|Data_out[4]~39_combout\ & \alu_inst|Data_out[3]~40_combout\ & \alu_inst|Data_out[2]~41_combout\ & \alu_inst|Data_out[1]~1_combout\ & \alu_inst|Data_out[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\SW[9]~input_o\ & \SW[8]~input_o\ & \SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult0|auto_generated|mac_mult1~0\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu_inst|Mult0|auto_generated|mac_mult1~1\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu_inst|Mult0|auto_generated|mac_mult1~2\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu_inst|Mult0|auto_generated|mac_mult1~3\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu_inst|Mult0|auto_generated|mac_mult1~4\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu_inst|Mult0|auto_generated|mac_mult1~5\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu_inst|Mult0|auto_generated|mac_mult1~6\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu_inst|Mult0|auto_generated|mac_mult1~7\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu_inst|Mult0|auto_generated|mac_mult1~8\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu_inst|Mult0|auto_generated|mac_mult1~9\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu_inst|Mult0|auto_generated|mac_mult1~10\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu_inst|Mult0|auto_generated|mac_mult1~11\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu_inst|Mult0|auto_generated|mac_mult1~12\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu_inst|Mult0|auto_generated|mac_mult1~13\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu_inst|Mult0|auto_generated|mac_mult1~14\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu_inst|Mult0|auto_generated|mac_mult1~15\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu_inst|Mult0|auto_generated|mac_mult1~dataout\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\alu_inst|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\alu_inst|Data_out[9]~11_combout\ & \alu_inst|Data_out[8]~12_combout\ & \alu_inst|Data_out[7]~21_combout\ & \alu_inst|Data_out[6]~30_combout\ & \alu_inst|Data_out[5]~38_combout\ & 
\alu_inst|Data_out[4]~39_combout\ & \alu_inst|Data_out[3]~40_combout\ & \alu_inst|Data_out[2]~41_combout\ & \alu_inst|Data_out[1]~1_combout\ & \alu_inst|Data_out[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (\register_file_inst|output[1][9]~_Duplicate_1_q\ & \register_file_inst|output[1][8]~_Duplicate_1_q\ & \register_file_inst|output[1][7]~_Duplicate_1_q\ & 
\register_file_inst|output[1][6]~_Duplicate_1_q\ & \register_file_inst|output[1][5]~_Duplicate_1_q\ & \register_file_inst|output[1][4]~_Duplicate_1_q\ & \register_file_inst|output[1][3]~_Duplicate_1_q\ & \register_file_inst|output[1][2]~_Duplicate_1_q\ & 
\register_file_inst|output[1][1]~_Duplicate_1_q\ & \register_file_inst|output[1][0]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\alu_inst|Mult2|auto_generated|mac_mult1~0\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu_inst|Mult2|auto_generated|mac_mult1~1\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu_inst|Mult2|auto_generated|mac_mult1~2\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu_inst|Mult2|auto_generated|mac_mult1~3\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu_inst|Mult2|auto_generated|mac_mult1~4\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu_inst|Mult2|auto_generated|mac_mult1~5\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu_inst|Mult2|auto_generated|mac_mult1~6\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu_inst|Mult2|auto_generated|mac_mult1~7\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu_inst|Mult2|auto_generated|mac_mult1~8\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu_inst|Mult2|auto_generated|mac_mult1~9\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu_inst|Mult2|auto_generated|mac_mult1~10\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu_inst|Mult2|auto_generated|mac_mult1~11\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu_inst|Mult2|auto_generated|mac_mult1~12\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu_inst|Mult2|auto_generated|mac_mult1~13\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu_inst|Mult2|auto_generated|mac_mult1~14\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu_inst|Mult2|auto_generated|mac_mult1~15\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu_inst|Mult2|auto_generated|mac_mult1~dataout\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\alu_inst|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\ALT_INV_NOT_RESET~input_o\ <= NOT \NOT_RESET~input_o\;
\b2v_inst2|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst2|Mux0~0_combout\;
\b2v_inst3|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst3|Mux0~0_combout\;
\b2v_inst4|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst4|Mux0~0_combout\;
\register_file_inst|ALT_INV_output[0][9]~_Duplicate_2_q\ <= NOT \register_file_inst|output[0][9]~_Duplicate_2_q\;
\b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ <= NOT \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N14
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|ALT_INV_output[0][9]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\NOT_RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NOT_RESET,
	o => \NOT_RESET~input_o\);

-- Location: LCCOMB_X46_Y52_N6
\fetch_inst|PC_counter[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[0]~21_combout\ = !\fetch_inst|PC_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fetch_inst|PC_counter\(0),
	combout => \fetch_inst|PC_counter[0]~21_combout\);

-- Location: IOIBUF_X46_Y54_N29
\PUSH~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PUSH,
	o => \PUSH~input_o\);

-- Location: LCCOMB_X47_Y52_N18
\Event_Detect_inst|In_Signal_temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Event_Detect_inst|In_Signal_temp~feeder_combout\ = \PUSH~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PUSH~input_o\,
	combout => \Event_Detect_inst|In_Signal_temp~feeder_combout\);

-- Location: FF_X47_Y52_N19
\Event_Detect_inst|In_Signal_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \Event_Detect_inst|In_Signal_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Event_Detect_inst|In_Signal_temp~q\);

-- Location: LCCOMB_X47_Y52_N28
\Event_Detect_inst|Event_L2H\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Event_Detect_inst|Event_L2H~combout\ = (\PUSH~input_o\ & !\Event_Detect_inst|In_Signal_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PUSH~input_o\,
	datad => \Event_Detect_inst|In_Signal_temp~q\,
	combout => \Event_Detect_inst|Event_L2H~combout\);

-- Location: FF_X46_Y52_N7
\fetch_inst|PC_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[0]~21_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(0));

-- Location: LCCOMB_X46_Y52_N14
\fetch_inst|PC_counter[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[1]~7_combout\ = (\fetch_inst|PC_counter\(0) & (\fetch_inst|PC_counter\(1) $ (VCC))) # (!\fetch_inst|PC_counter\(0) & (\fetch_inst|PC_counter\(1) & VCC))
-- \fetch_inst|PC_counter[1]~8\ = CARRY((\fetch_inst|PC_counter\(0) & \fetch_inst|PC_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(0),
	datab => \fetch_inst|PC_counter\(1),
	datad => VCC,
	combout => \fetch_inst|PC_counter[1]~7_combout\,
	cout => \fetch_inst|PC_counter[1]~8\);

-- Location: FF_X46_Y52_N15
\fetch_inst|PC_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[1]~7_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(1));

-- Location: LCCOMB_X46_Y52_N16
\fetch_inst|PC_counter[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[2]~9_combout\ = (\fetch_inst|PC_counter\(2) & (!\fetch_inst|PC_counter[1]~8\)) # (!\fetch_inst|PC_counter\(2) & ((\fetch_inst|PC_counter[1]~8\) # (GND)))
-- \fetch_inst|PC_counter[2]~10\ = CARRY((!\fetch_inst|PC_counter[1]~8\) # (!\fetch_inst|PC_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|PC_counter\(2),
	datad => VCC,
	cin => \fetch_inst|PC_counter[1]~8\,
	combout => \fetch_inst|PC_counter[2]~9_combout\,
	cout => \fetch_inst|PC_counter[2]~10\);

-- Location: FF_X46_Y52_N17
\fetch_inst|PC_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[2]~9_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(2));

-- Location: LCCOMB_X46_Y52_N18
\fetch_inst|PC_counter[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[3]~11_combout\ = (\fetch_inst|PC_counter\(3) & (\fetch_inst|PC_counter[2]~10\ $ (GND))) # (!\fetch_inst|PC_counter\(3) & (!\fetch_inst|PC_counter[2]~10\ & VCC))
-- \fetch_inst|PC_counter[3]~12\ = CARRY((\fetch_inst|PC_counter\(3) & !\fetch_inst|PC_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(3),
	datad => VCC,
	cin => \fetch_inst|PC_counter[2]~10\,
	combout => \fetch_inst|PC_counter[3]~11_combout\,
	cout => \fetch_inst|PC_counter[3]~12\);

-- Location: FF_X46_Y52_N19
\fetch_inst|PC_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[3]~11_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(3));

-- Location: LCCOMB_X46_Y52_N20
\fetch_inst|PC_counter[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[4]~13_combout\ = (\fetch_inst|PC_counter\(4) & (!\fetch_inst|PC_counter[3]~12\)) # (!\fetch_inst|PC_counter\(4) & ((\fetch_inst|PC_counter[3]~12\) # (GND)))
-- \fetch_inst|PC_counter[4]~14\ = CARRY((!\fetch_inst|PC_counter[3]~12\) # (!\fetch_inst|PC_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|PC_counter\(4),
	datad => VCC,
	cin => \fetch_inst|PC_counter[3]~12\,
	combout => \fetch_inst|PC_counter[4]~13_combout\,
	cout => \fetch_inst|PC_counter[4]~14\);

-- Location: FF_X46_Y52_N21
\fetch_inst|PC_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[4]~13_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(4));

-- Location: LCCOMB_X46_Y52_N22
\fetch_inst|PC_counter[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[5]~15_combout\ = (\fetch_inst|PC_counter\(5) & (\fetch_inst|PC_counter[4]~14\ $ (GND))) # (!\fetch_inst|PC_counter\(5) & (!\fetch_inst|PC_counter[4]~14\ & VCC))
-- \fetch_inst|PC_counter[5]~16\ = CARRY((\fetch_inst|PC_counter\(5) & !\fetch_inst|PC_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(5),
	datad => VCC,
	cin => \fetch_inst|PC_counter[4]~14\,
	combout => \fetch_inst|PC_counter[5]~15_combout\,
	cout => \fetch_inst|PC_counter[5]~16\);

-- Location: FF_X46_Y52_N23
\fetch_inst|PC_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[5]~15_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(5));

-- Location: LCCOMB_X46_Y52_N24
\fetch_inst|PC_counter[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[6]~17_combout\ = (\fetch_inst|PC_counter\(6) & (!\fetch_inst|PC_counter[5]~16\)) # (!\fetch_inst|PC_counter\(6) & ((\fetch_inst|PC_counter[5]~16\) # (GND)))
-- \fetch_inst|PC_counter[6]~18\ = CARRY((!\fetch_inst|PC_counter[5]~16\) # (!\fetch_inst|PC_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|PC_counter\(6),
	datad => VCC,
	cin => \fetch_inst|PC_counter[5]~16\,
	combout => \fetch_inst|PC_counter[6]~17_combout\,
	cout => \fetch_inst|PC_counter[6]~18\);

-- Location: FF_X46_Y52_N25
\fetch_inst|PC_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[6]~17_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(6));

-- Location: LCCOMB_X46_Y52_N26
\fetch_inst|PC_counter[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|PC_counter[7]~19_combout\ = \fetch_inst|PC_counter\(7) $ (!\fetch_inst|PC_counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(7),
	cin => \fetch_inst|PC_counter[6]~18\,
	combout => \fetch_inst|PC_counter[7]~19_combout\);

-- Location: FF_X46_Y52_N27
\fetch_inst|PC_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|PC_counter[7]~19_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|PC_counter\(7));

-- Location: LCCOMB_X46_Y52_N30
\rom_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux0~0_combout\ = (!\fetch_inst|PC_counter\(7) & (!\fetch_inst|PC_counter\(4) & (!\fetch_inst|PC_counter\(5) & !\fetch_inst|PC_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(7),
	datab => \fetch_inst|PC_counter\(4),
	datac => \fetch_inst|PC_counter\(5),
	datad => \fetch_inst|PC_counter\(6),
	combout => \rom_inst|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y52_N8
\rom_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux2~0_combout\ = (!\fetch_inst|PC_counter\(3) & ((\fetch_inst|PC_counter\(2)) # ((\fetch_inst|PC_counter\(1) & !\fetch_inst|PC_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(3),
	datab => \fetch_inst|PC_counter\(2),
	datac => \fetch_inst|PC_counter\(1),
	datad => \fetch_inst|PC_counter\(0),
	combout => \rom_inst|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y52_N12
\rom_inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux2~1_combout\ = (\rom_inst|Mux0~0_combout\ & \rom_inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Mux0~0_combout\,
	datac => \rom_inst|Mux2~0_combout\,
	combout => \rom_inst|Mux2~1_combout\);

-- Location: FF_X46_Y52_N13
\rom_inst|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|Mux2~1_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|Data_out\(1));

-- Location: LCCOMB_X46_Y52_N4
\rom_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux1~0_combout\ = (!\fetch_inst|PC_counter\(3) & ((\fetch_inst|PC_counter\(2) & ((\fetch_inst|PC_counter\(0)))) # (!\fetch_inst|PC_counter\(2) & (\fetch_inst|PC_counter\(1) & !\fetch_inst|PC_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(3),
	datab => \fetch_inst|PC_counter\(2),
	datac => \fetch_inst|PC_counter\(1),
	datad => \fetch_inst|PC_counter\(0),
	combout => \rom_inst|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y52_N28
\rom_inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux1~1_combout\ = (\rom_inst|Mux0~0_combout\ & \rom_inst|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Mux0~0_combout\,
	datac => \rom_inst|Mux1~0_combout\,
	combout => \rom_inst|Mux1~1_combout\);

-- Location: FF_X46_Y52_N29
\rom_inst|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|Mux1~1_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|Data_out\(2));

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X46_Y52_N10
\rom_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux3~0_combout\ = (!\fetch_inst|PC_counter\(3) & ((\fetch_inst|PC_counter\(1) & (\fetch_inst|PC_counter\(2) & !\fetch_inst|PC_counter\(0))) # (!\fetch_inst|PC_counter\(1) & ((\fetch_inst|PC_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(3),
	datab => \fetch_inst|PC_counter\(2),
	datac => \fetch_inst|PC_counter\(1),
	datad => \fetch_inst|PC_counter\(0),
	combout => \rom_inst|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y52_N20
\rom_inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux3~1_combout\ = (\rom_inst|Mux0~0_combout\ & \rom_inst|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Mux0~0_combout\,
	datad => \rom_inst|Mux3~0_combout\,
	combout => \rom_inst|Mux3~1_combout\);

-- Location: FF_X47_Y52_N21
\rom_inst|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|Mux3~1_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|Data_out\(0));

-- Location: LCCOMB_X46_Y52_N0
\rom_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux0~1_combout\ = (!\fetch_inst|PC_counter\(3) & ((\fetch_inst|PC_counter\(1) & ((!\fetch_inst|PC_counter\(0)))) # (!\fetch_inst|PC_counter\(1) & (\fetch_inst|PC_counter\(2) & \fetch_inst|PC_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|PC_counter\(3),
	datab => \fetch_inst|PC_counter\(2),
	datac => \fetch_inst|PC_counter\(1),
	datad => \fetch_inst|PC_counter\(0),
	combout => \rom_inst|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y52_N10
\rom_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|Mux0~2_combout\ = (\rom_inst|Mux0~1_combout\ & \rom_inst|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|Mux0~1_combout\,
	datad => \rom_inst|Mux0~0_combout\,
	combout => \rom_inst|Mux0~2_combout\);

-- Location: FF_X47_Y52_N11
\rom_inst|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|Mux0~2_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \Event_Detect_inst|Event_L2H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|Data_out\(3));

-- Location: LCCOMB_X47_Y52_N2
\register_file_inst|output[1][9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \register_file_inst|output[1][9]~1_combout\ = (\Event_Detect_inst|In_Signal_temp~q\ & (!\PUSH~input_o\ & \rom_inst|Data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Event_Detect_inst|In_Signal_temp~q\,
	datac => \PUSH~input_o\,
	datad => \rom_inst|Data_out\(3),
	combout => \register_file_inst|output[1][9]~1_combout\);

-- Location: FF_X47_Y51_N11
\register_file_inst|output[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[0]~0_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y50_N6
\alu_inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~0_combout\ = (\SW[0]~input_o\ & (\register_file_inst|output[1][0]~_Duplicate_1_q\ $ (VCC))) # (!\SW[0]~input_o\ & (\register_file_inst|output[1][0]~_Duplicate_1_q\ & VCC))
-- \alu_inst|Add3~1\ = CARRY((\SW[0]~input_o\ & \register_file_inst|output[1][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \register_file_inst|output[1][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \alu_inst|Add3~0_combout\,
	cout => \alu_inst|Add3~1\);

-- Location: LCCOMB_X50_Y51_N4
\alu_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~0_combout\ = (\SW[0]~input_o\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\ $ (VCC))) # (!\SW[0]~input_o\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\ & VCC))
-- \alu_inst|Add0~1\ = CARRY((\SW[0]~input_o\ & \register_file_inst|output[0][0]~_Duplicate_2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datad => VCC,
	combout => \alu_inst|Add0~0_combout\,
	cout => \alu_inst|Add0~1\);

-- Location: LCCOMB_X51_Y51_N28
\alu_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~2_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~0_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add3~0_combout\,
	datac => \alu_inst|Add0~0_combout\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Add0~2_combout\);

-- Location: LCCOMB_X51_Y51_N4
\alu_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~3_combout\ = (\alu_inst|Add0~2_combout\) # ((\SW[0]~input_o\ & !\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add0~2_combout\,
	combout => \alu_inst|Add0~3_combout\);

-- Location: LCCOMB_X51_Y52_N0
\alu_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~0_combout\ = (\register_file_inst|output[0][0]~_Duplicate_2_q\ & ((GND) # (!\SW[0]~input_o\))) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & (\SW[0]~input_o\ $ (GND)))
-- \alu_inst|Add1~1\ = CARRY((\register_file_inst|output[0][0]~_Duplicate_2_q\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \alu_inst|Add1~0_combout\,
	cout => \alu_inst|Add1~1\);

-- Location: LCCOMB_X50_Y52_N6
\alu_inst|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~0_combout\ = (\register_file_inst|output[1][0]~_Duplicate_1_q\ & ((GND) # (!\SW[0]~input_o\))) # (!\register_file_inst|output[1][0]~_Duplicate_1_q\ & (\SW[0]~input_o\ $ (GND)))
-- \alu_inst|Add4~1\ = CARRY((\register_file_inst|output[1][0]~_Duplicate_1_q\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][0]~_Duplicate_1_q\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \alu_inst|Add4~0_combout\,
	cout => \alu_inst|Add4~1\);

-- Location: LCCOMB_X50_Y52_N30
\alu_inst|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~1_combout\ = (\rom_inst|Data_out\(3) & (((\rom_inst|Data_out\(0)) # (\alu_inst|Add4~0_combout\)))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add1~0_combout\ & (!\rom_inst|Data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add1~0_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add4~0_combout\,
	combout => \alu_inst|Mux9~1_combout\);

-- Location: LCCOMB_X47_Y51_N24
\alu_inst|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~2_combout\ = (\rom_inst|Data_out\(0) & ((\alu_inst|Mux9~1_combout\ & ((\register_file_inst|output[1][0]~_Duplicate_1_q\))) # (!\alu_inst|Mux9~1_combout\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\)))) # (!\rom_inst|Data_out\(0) & 
-- (((\alu_inst|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \register_file_inst|output[1][0]~_Duplicate_1_q\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mux9~1_combout\,
	combout => \alu_inst|Mux9~2_combout\);

-- Location: LCCOMB_X47_Y51_N6
\alu_inst|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~3_combout\ = (\rom_inst|Data_out\(1) & ((\rom_inst|Data_out\(2)) # ((\alu_inst|Mux9~2_combout\)))) # (!\rom_inst|Data_out\(1) & (!\rom_inst|Data_out\(2) & (\alu_inst|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Add0~3_combout\,
	datad => \alu_inst|Mux9~2_combout\,
	combout => \alu_inst|Mux9~3_combout\);

-- Location: LCCOMB_X47_Y52_N6
\register_file_inst|output[0][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \register_file_inst|output[0][0]~0_combout\ = (\Event_Detect_inst|In_Signal_temp~q\ & (!\PUSH~input_o\ & !\rom_inst|Data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Event_Detect_inst|In_Signal_temp~q\,
	datac => \PUSH~input_o\,
	datad => \rom_inst|Data_out\(3),
	combout => \register_file_inst|output[0][0]~0_combout\);

-- Location: FF_X50_Y51_N7
\register_file_inst|output[0][1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[1]~1_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][1]~_Duplicate_2_q\);

-- Location: LCCOMB_X52_Y51_N10
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!\register_file_inst|output[0][0]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X52_Y51_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\Add0~1_cout\) # (GND))) # (!\register_file_inst|output[0][1]~_Duplicate_2_q\ & (!\Add0~1_cout\))
-- \Add0~3\ = CARRY((\register_file_inst|output[0][1]~_Duplicate_2_q\) # (!\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X49_Y52_N31
\register_file_inst|output[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[1]~1_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y52_N8
\alu_inst|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~2_combout\ = (\SW[1]~input_o\ & ((\register_file_inst|output[1][1]~_Duplicate_1_q\ & (!\alu_inst|Add4~1\)) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & ((\alu_inst|Add4~1\) # (GND))))) # (!\SW[1]~input_o\ & 
-- ((\register_file_inst|output[1][1]~_Duplicate_1_q\ & (\alu_inst|Add4~1\ & VCC)) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & (!\alu_inst|Add4~1\))))
-- \alu_inst|Add4~3\ = CARRY((\SW[1]~input_o\ & ((!\alu_inst|Add4~1\) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\))) # (!\SW[1]~input_o\ & (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & !\alu_inst|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \register_file_inst|output[1][1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add4~1\,
	combout => \alu_inst|Add4~2_combout\,
	cout => \alu_inst|Add4~3\);

-- Location: LCCOMB_X51_Y52_N2
\alu_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~2_combout\ = (\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\SW[1]~input_o\ & (!\alu_inst|Add1~1\)) # (!\SW[1]~input_o\ & (\alu_inst|Add1~1\ & VCC)))) # (!\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\SW[1]~input_o\ & 
-- ((\alu_inst|Add1~1\) # (GND))) # (!\SW[1]~input_o\ & (!\alu_inst|Add1~1\))))
-- \alu_inst|Add1~3\ = CARRY((\register_file_inst|output[0][1]~_Duplicate_2_q\ & (\SW[1]~input_o\ & !\alu_inst|Add1~1\)) # (!\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\SW[1]~input_o\) # (!\alu_inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add1~1\,
	combout => \alu_inst|Add1~2_combout\,
	cout => \alu_inst|Add1~3\);

-- Location: LCCOMB_X50_Y52_N0
\alu_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~0_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Add4~2_combout\) # ((\rom_inst|Data_out\(0))))) # (!\rom_inst|Data_out\(3) & (((!\rom_inst|Data_out\(0) & \alu_inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add4~2_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add1~2_combout\,
	combout => \alu_inst|Mux8~0_combout\);

-- Location: LCCOMB_X51_Y51_N8
\alu_inst|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~1_cout\ = CARRY(!\register_file_inst|output[1][0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[1][0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Add5~1_cout\);

-- Location: LCCOMB_X51_Y51_N10
\alu_inst|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~2_combout\ = (\register_file_inst|output[1][1]~_Duplicate_1_q\ & ((\alu_inst|Add5~1_cout\) # (GND))) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & (!\alu_inst|Add5~1_cout\))
-- \alu_inst|Add5~3\ = CARRY((\register_file_inst|output[1][1]~_Duplicate_1_q\) # (!\alu_inst|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[1][1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~1_cout\,
	combout => \alu_inst|Add5~2_combout\,
	cout => \alu_inst|Add5~3\);

-- Location: LCCOMB_X49_Y52_N20
\alu_inst|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~1_combout\ = (\rom_inst|Data_out\(0) & ((\alu_inst|Mux8~0_combout\ & ((\alu_inst|Add5~2_combout\))) # (!\alu_inst|Mux8~0_combout\ & (\Add0~2_combout\)))) # (!\rom_inst|Data_out\(0) & (((\alu_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \rom_inst|Data_out\(0),
	datac => \alu_inst|Mux8~0_combout\,
	datad => \alu_inst|Add5~2_combout\,
	combout => \alu_inst|Mux8~1_combout\);

-- Location: LCCOMB_X50_Y51_N6
\alu_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~4_combout\ = (\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\SW[1]~input_o\ & (\alu_inst|Add0~1\ & VCC)) # (!\SW[1]~input_o\ & (!\alu_inst|Add0~1\)))) # (!\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((\SW[1]~input_o\ & 
-- (!\alu_inst|Add0~1\)) # (!\SW[1]~input_o\ & ((\alu_inst|Add0~1\) # (GND)))))
-- \alu_inst|Add0~5\ = CARRY((\register_file_inst|output[0][1]~_Duplicate_2_q\ & (!\SW[1]~input_o\ & !\alu_inst|Add0~1\)) # (!\register_file_inst|output[0][1]~_Duplicate_2_q\ & ((!\alu_inst|Add0~1\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add0~1\,
	combout => \alu_inst|Add0~4_combout\,
	cout => \alu_inst|Add0~5\);

-- Location: LCCOMB_X50_Y50_N8
\alu_inst|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~2_combout\ = (\register_file_inst|output[1][1]~_Duplicate_1_q\ & ((\SW[1]~input_o\ & (\alu_inst|Add3~1\ & VCC)) # (!\SW[1]~input_o\ & (!\alu_inst|Add3~1\)))) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & ((\SW[1]~input_o\ & 
-- (!\alu_inst|Add3~1\)) # (!\SW[1]~input_o\ & ((\alu_inst|Add3~1\) # (GND)))))
-- \alu_inst|Add3~3\ = CARRY((\register_file_inst|output[1][1]~_Duplicate_1_q\ & (!\SW[1]~input_o\ & !\alu_inst|Add3~1\)) # (!\register_file_inst|output[1][1]~_Duplicate_1_q\ & ((!\alu_inst|Add3~1\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][1]~_Duplicate_1_q\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add3~1\,
	combout => \alu_inst|Add3~2_combout\,
	cout => \alu_inst|Add3~3\);

-- Location: LCCOMB_X50_Y52_N2
\alu_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~6_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Add3~2_combout\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add0~4_combout\,
	datac => \alu_inst|Add3~2_combout\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Add0~6_combout\);

-- Location: LCCOMB_X49_Y52_N16
\alu_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~7_combout\ = (\alu_inst|Add0~6_combout\) # ((!\rom_inst|Data_out\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Data_out\(0),
	datac => \SW[1]~input_o\,
	datad => \alu_inst|Add0~6_combout\,
	combout => \alu_inst|Add0~7_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X49_Y52_N15
\register_file_inst|output[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[2]~41_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y50_N10
\alu_inst|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~4_combout\ = ((\SW[2]~input_o\ $ (\register_file_inst|output[1][2]~_Duplicate_1_q\ $ (!\alu_inst|Add3~3\)))) # (GND)
-- \alu_inst|Add3~5\ = CARRY((\SW[2]~input_o\ & ((\register_file_inst|output[1][2]~_Duplicate_1_q\) # (!\alu_inst|Add3~3\))) # (!\SW[2]~input_o\ & (\register_file_inst|output[1][2]~_Duplicate_1_q\ & !\alu_inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \register_file_inst|output[1][2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add3~3\,
	combout => \alu_inst|Add3~4_combout\,
	cout => \alu_inst|Add3~5\);

-- Location: FF_X50_Y51_N9
\register_file_inst|output[0][2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[2]~41_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][2]~_Duplicate_2_q\);

-- Location: LCCOMB_X50_Y51_N8
\alu_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~8_combout\ = ((\register_file_inst|output[0][2]~_Duplicate_2_q\ $ (\SW[2]~input_o\ $ (!\alu_inst|Add0~5\)))) # (GND)
-- \alu_inst|Add0~9\ = CARRY((\register_file_inst|output[0][2]~_Duplicate_2_q\ & ((\SW[2]~input_o\) # (!\alu_inst|Add0~5\))) # (!\register_file_inst|output[0][2]~_Duplicate_2_q\ & (\SW[2]~input_o\ & !\alu_inst|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add0~5\,
	combout => \alu_inst|Add0~8_combout\,
	cout => \alu_inst|Add0~9\);

-- Location: LCCOMB_X49_Y52_N28
\alu_inst|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~33_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~4_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add3~4_combout\,
	datac => \alu_inst|Add0~8_combout\,
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Add0~33_combout\);

-- Location: LCCOMB_X49_Y52_N0
\alu_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~34_combout\ = (\alu_inst|Add0~33_combout\) # ((\SW[2]~input_o\ & !\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add0~33_combout\,
	combout => \alu_inst|Add0~34_combout\);

-- Location: LCCOMB_X51_Y52_N4
\alu_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~4_combout\ = ((\register_file_inst|output[0][2]~_Duplicate_2_q\ $ (\SW[2]~input_o\ $ (\alu_inst|Add1~3\)))) # (GND)
-- \alu_inst|Add1~5\ = CARRY((\register_file_inst|output[0][2]~_Duplicate_2_q\ & ((!\alu_inst|Add1~3\) # (!\SW[2]~input_o\))) # (!\register_file_inst|output[0][2]~_Duplicate_2_q\ & (!\SW[2]~input_o\ & !\alu_inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add1~3\,
	combout => \alu_inst|Add1~4_combout\,
	cout => \alu_inst|Add1~5\);

-- Location: LCCOMB_X52_Y51_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\register_file_inst|output[0][2]~_Duplicate_2_q\ & (!\Add0~3\ & VCC)) # (!\register_file_inst|output[0][2]~_Duplicate_2_q\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!\register_file_inst|output[0][2]~_Duplicate_2_q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X51_Y52_N24
\alu_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~1_combout\ = (\rom_inst|Data_out\(3) & (((\rom_inst|Data_out\(0))))) # (!\rom_inst|Data_out\(3) & ((\rom_inst|Data_out\(0) & ((\Add0~4_combout\))) # (!\rom_inst|Data_out\(0) & (\alu_inst|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add1~4_combout\,
	datac => \Add0~4_combout\,
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Mux7~1_combout\);

-- Location: LCCOMB_X51_Y51_N12
\alu_inst|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~4_combout\ = (\register_file_inst|output[1][2]~_Duplicate_1_q\ & (!\alu_inst|Add5~3\ & VCC)) # (!\register_file_inst|output[1][2]~_Duplicate_1_q\ & (\alu_inst|Add5~3\ $ (GND)))
-- \alu_inst|Add5~5\ = CARRY((!\register_file_inst|output[1][2]~_Duplicate_1_q\ & !\alu_inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[1][2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~3\,
	combout => \alu_inst|Add5~4_combout\,
	cout => \alu_inst|Add5~5\);

-- Location: LCCOMB_X50_Y52_N10
\alu_inst|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~4_combout\ = ((\SW[2]~input_o\ $ (\register_file_inst|output[1][2]~_Duplicate_1_q\ $ (\alu_inst|Add4~3\)))) # (GND)
-- \alu_inst|Add4~5\ = CARRY((\SW[2]~input_o\ & (\register_file_inst|output[1][2]~_Duplicate_1_q\ & !\alu_inst|Add4~3\)) # (!\SW[2]~input_o\ & ((\register_file_inst|output[1][2]~_Duplicate_1_q\) # (!\alu_inst|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \register_file_inst|output[1][2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add4~3\,
	combout => \alu_inst|Add4~4_combout\,
	cout => \alu_inst|Add4~5\);

-- Location: LCCOMB_X50_Y52_N4
\alu_inst|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~2_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Mux7~1_combout\ & (\alu_inst|Add5~4_combout\)) # (!\alu_inst|Mux7~1_combout\ & ((\alu_inst|Add4~4_combout\))))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Mux7~1_combout\,
	datac => \alu_inst|Add5~4_combout\,
	datad => \alu_inst|Add4~4_combout\,
	combout => \alu_inst|Mux7~2_combout\);

-- Location: LCCOMB_X49_Y52_N10
\alu_inst|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~3_combout\ = (\rom_inst|Data_out\(2) & (((\rom_inst|Data_out\(1))))) # (!\rom_inst|Data_out\(2) & ((\rom_inst|Data_out\(1) & ((\alu_inst|Mux7~2_combout\))) # (!\rom_inst|Data_out\(1) & (\alu_inst|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add0~34_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \rom_inst|Data_out\(1),
	datad => \alu_inst|Mux7~2_combout\,
	combout => \alu_inst|Mux7~3_combout\);

-- Location: FF_X47_Y51_N29
\register_file_inst|output[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[3]~40_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X51_Y51_N14
\alu_inst|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~6_combout\ = (\register_file_inst|output[1][3]~_Duplicate_1_q\ & ((\alu_inst|Add5~5\) # (GND))) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & (!\alu_inst|Add5~5\))
-- \alu_inst|Add5~7\ = CARRY((\register_file_inst|output[1][3]~_Duplicate_1_q\) # (!\alu_inst|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~5\,
	combout => \alu_inst|Add5~6_combout\,
	cout => \alu_inst|Add5~7\);

-- Location: FF_X51_Y51_N5
\register_file_inst|output[0][3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[3]~40_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][3]~_Duplicate_2_q\);

-- Location: LCCOMB_X52_Y51_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\register_file_inst|output[0][3]~_Duplicate_2_q\ & ((\Add0~5\) # (GND))) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((\register_file_inst|output[0][3]~_Duplicate_2_q\) # (!\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X50_Y52_N12
\alu_inst|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~6_combout\ = (\register_file_inst|output[1][3]~_Duplicate_1_q\ & ((\SW[3]~input_o\ & (!\alu_inst|Add4~5\)) # (!\SW[3]~input_o\ & (\alu_inst|Add4~5\ & VCC)))) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & ((\SW[3]~input_o\ & 
-- ((\alu_inst|Add4~5\) # (GND))) # (!\SW[3]~input_o\ & (!\alu_inst|Add4~5\))))
-- \alu_inst|Add4~7\ = CARRY((\register_file_inst|output[1][3]~_Duplicate_1_q\ & (\SW[3]~input_o\ & !\alu_inst|Add4~5\)) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & ((\SW[3]~input_o\) # (!\alu_inst|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][3]~_Duplicate_1_q\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add4~5\,
	combout => \alu_inst|Add4~6_combout\,
	cout => \alu_inst|Add4~7\);

-- Location: LCCOMB_X51_Y52_N6
\alu_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~6_combout\ = (\register_file_inst|output[0][3]~_Duplicate_2_q\ & ((\SW[3]~input_o\ & (!\alu_inst|Add1~5\)) # (!\SW[3]~input_o\ & (\alu_inst|Add1~5\ & VCC)))) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & ((\SW[3]~input_o\ & 
-- ((\alu_inst|Add1~5\) # (GND))) # (!\SW[3]~input_o\ & (!\alu_inst|Add1~5\))))
-- \alu_inst|Add1~7\ = CARRY((\register_file_inst|output[0][3]~_Duplicate_2_q\ & (\SW[3]~input_o\ & !\alu_inst|Add1~5\)) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & ((\SW[3]~input_o\) # (!\alu_inst|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add1~5\,
	combout => \alu_inst|Add1~6_combout\,
	cout => \alu_inst|Add1~7\);

-- Location: LCCOMB_X47_Y52_N22
\alu_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~0_combout\ = (\rom_inst|Data_out\(3) & ((\rom_inst|Data_out\(0)) # ((\alu_inst|Add4~6_combout\)))) # (!\rom_inst|Data_out\(3) & (!\rom_inst|Data_out\(0) & ((\alu_inst|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \rom_inst|Data_out\(0),
	datac => \alu_inst|Add4~6_combout\,
	datad => \alu_inst|Add1~6_combout\,
	combout => \alu_inst|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y51_N10
\alu_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~1_combout\ = (\rom_inst|Data_out\(0) & ((\alu_inst|Mux6~0_combout\ & (\alu_inst|Add5~6_combout\)) # (!\alu_inst|Mux6~0_combout\ & ((\Add0~6_combout\))))) # (!\rom_inst|Data_out\(0) & (((\alu_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add5~6_combout\,
	datac => \Add0~6_combout\,
	datad => \alu_inst|Mux6~0_combout\,
	combout => \alu_inst|Mux6~1_combout\);

-- Location: LCCOMB_X50_Y51_N10
\alu_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~10_combout\ = (\SW[3]~input_o\ & ((\register_file_inst|output[0][3]~_Duplicate_2_q\ & (\alu_inst|Add0~9\ & VCC)) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & (!\alu_inst|Add0~9\)))) # (!\SW[3]~input_o\ & 
-- ((\register_file_inst|output[0][3]~_Duplicate_2_q\ & (!\alu_inst|Add0~9\)) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & ((\alu_inst|Add0~9\) # (GND)))))
-- \alu_inst|Add0~11\ = CARRY((\SW[3]~input_o\ & (!\register_file_inst|output[0][3]~_Duplicate_2_q\ & !\alu_inst|Add0~9\)) # (!\SW[3]~input_o\ & ((!\alu_inst|Add0~9\) # (!\register_file_inst|output[0][3]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add0~9\,
	combout => \alu_inst|Add0~10_combout\,
	cout => \alu_inst|Add0~11\);

-- Location: LCCOMB_X50_Y50_N12
\alu_inst|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~6_combout\ = (\SW[3]~input_o\ & ((\register_file_inst|output[1][3]~_Duplicate_1_q\ & (\alu_inst|Add3~5\ & VCC)) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & (!\alu_inst|Add3~5\)))) # (!\SW[3]~input_o\ & 
-- ((\register_file_inst|output[1][3]~_Duplicate_1_q\ & (!\alu_inst|Add3~5\)) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & ((\alu_inst|Add3~5\) # (GND)))))
-- \alu_inst|Add3~7\ = CARRY((\SW[3]~input_o\ & (!\register_file_inst|output[1][3]~_Duplicate_1_q\ & !\alu_inst|Add3~5\)) # (!\SW[3]~input_o\ & ((!\alu_inst|Add3~5\) # (!\register_file_inst|output[1][3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \register_file_inst|output[1][3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add3~5\,
	combout => \alu_inst|Add3~6_combout\,
	cout => \alu_inst|Add3~7\);

-- Location: LCCOMB_X46_Y51_N20
\alu_inst|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~31_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Add3~6_combout\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add0~10_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add3~6_combout\,
	combout => \alu_inst|Add0~31_combout\);

-- Location: LCCOMB_X46_Y51_N4
\alu_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~32_combout\ = (\alu_inst|Add0~31_combout\) # ((\SW[3]~input_o\ & !\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add0~31_combout\,
	combout => \alu_inst|Add0~32_combout\);

-- Location: FF_X49_Y50_N23
\register_file_inst|output[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[4]~39_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][4]~_Duplicate_1_q\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X50_Y52_N14
\alu_inst|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~8_combout\ = ((\register_file_inst|output[1][4]~_Duplicate_1_q\ $ (\SW[4]~input_o\ $ (\alu_inst|Add4~7\)))) # (GND)
-- \alu_inst|Add4~9\ = CARRY((\register_file_inst|output[1][4]~_Duplicate_1_q\ & ((!\alu_inst|Add4~7\) # (!\SW[4]~input_o\))) # (!\register_file_inst|output[1][4]~_Duplicate_1_q\ & (!\SW[4]~input_o\ & !\alu_inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][4]~_Duplicate_1_q\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add4~7\,
	combout => \alu_inst|Add4~8_combout\,
	cout => \alu_inst|Add4~9\);

-- Location: LCCOMB_X51_Y51_N16
\alu_inst|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~8_combout\ = (\register_file_inst|output[1][4]~_Duplicate_1_q\ & (!\alu_inst|Add5~7\ & VCC)) # (!\register_file_inst|output[1][4]~_Duplicate_1_q\ & (\alu_inst|Add5~7\ $ (GND)))
-- \alu_inst|Add5~9\ = CARRY((!\register_file_inst|output[1][4]~_Duplicate_1_q\ & !\alu_inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~7\,
	combout => \alu_inst|Add5~8_combout\,
	cout => \alu_inst|Add5~9\);

-- Location: FF_X50_Y51_N13
\register_file_inst|output[0][4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[4]~39_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][4]~_Duplicate_2_q\);

-- Location: LCCOMB_X51_Y52_N8
\alu_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~8_combout\ = ((\SW[4]~input_o\ $ (\register_file_inst|output[0][4]~_Duplicate_2_q\ $ (\alu_inst|Add1~7\)))) # (GND)
-- \alu_inst|Add1~9\ = CARRY((\SW[4]~input_o\ & (\register_file_inst|output[0][4]~_Duplicate_2_q\ & !\alu_inst|Add1~7\)) # (!\SW[4]~input_o\ & ((\register_file_inst|output[0][4]~_Duplicate_2_q\) # (!\alu_inst|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add1~7\,
	combout => \alu_inst|Add1~8_combout\,
	cout => \alu_inst|Add1~9\);

-- Location: LCCOMB_X52_Y51_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\register_file_inst|output[0][4]~_Duplicate_2_q\ & (!\Add0~7\ & VCC)) # (!\register_file_inst|output[0][4]~_Duplicate_2_q\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!\register_file_inst|output[0][4]~_Duplicate_2_q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X51_Y52_N22
\alu_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~1_combout\ = (\rom_inst|Data_out\(0) & (((\Add0~8_combout\) # (\rom_inst|Data_out\(3))))) # (!\rom_inst|Data_out\(0) & (\alu_inst|Add1~8_combout\ & ((!\rom_inst|Data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add1~8_combout\,
	datac => \Add0~8_combout\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y52_N28
\alu_inst|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~2_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Mux5~1_combout\ & ((\alu_inst|Add5~8_combout\))) # (!\alu_inst|Mux5~1_combout\ & (\alu_inst|Add4~8_combout\)))) # (!\rom_inst|Data_out\(3) & (((\alu_inst|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add4~8_combout\,
	datac => \alu_inst|Add5~8_combout\,
	datad => \alu_inst|Mux5~1_combout\,
	combout => \alu_inst|Mux5~2_combout\);

-- Location: LCCOMB_X50_Y50_N14
\alu_inst|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~8_combout\ = ((\SW[4]~input_o\ $ (\register_file_inst|output[1][4]~_Duplicate_1_q\ $ (!\alu_inst|Add3~7\)))) # (GND)
-- \alu_inst|Add3~9\ = CARRY((\SW[4]~input_o\ & ((\register_file_inst|output[1][4]~_Duplicate_1_q\) # (!\alu_inst|Add3~7\))) # (!\SW[4]~input_o\ & (\register_file_inst|output[1][4]~_Duplicate_1_q\ & !\alu_inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \register_file_inst|output[1][4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add3~7\,
	combout => \alu_inst|Add3~8_combout\,
	cout => \alu_inst|Add3~9\);

-- Location: LCCOMB_X50_Y51_N12
\alu_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~12_combout\ = ((\register_file_inst|output[0][4]~_Duplicate_2_q\ $ (\SW[4]~input_o\ $ (!\alu_inst|Add0~11\)))) # (GND)
-- \alu_inst|Add0~13\ = CARRY((\register_file_inst|output[0][4]~_Duplicate_2_q\ & ((\SW[4]~input_o\) # (!\alu_inst|Add0~11\))) # (!\register_file_inst|output[0][4]~_Duplicate_2_q\ & (\SW[4]~input_o\ & !\alu_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add0~11\,
	combout => \alu_inst|Add0~12_combout\,
	cout => \alu_inst|Add0~13\);

-- Location: LCCOMB_X50_Y50_N2
\alu_inst|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~29_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~8_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add3~8_combout\,
	datad => \alu_inst|Add0~12_combout\,
	combout => \alu_inst|Add0~29_combout\);

-- Location: LCCOMB_X50_Y50_N4
\alu_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~30_combout\ = (\alu_inst|Add0~29_combout\) # ((!\rom_inst|Data_out\(0) & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add0~29_combout\,
	datad => \SW[4]~input_o\,
	combout => \alu_inst|Add0~30_combout\);

-- Location: LCCOMB_X49_Y50_N30
\alu_inst|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~3_combout\ = (\rom_inst|Data_out\(2) & (\rom_inst|Data_out\(1))) # (!\rom_inst|Data_out\(2) & ((\rom_inst|Data_out\(1) & (\alu_inst|Mux5~2_combout\)) # (!\rom_inst|Data_out\(1) & ((\alu_inst|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Mux5~2_combout\,
	datad => \alu_inst|Add0~30_combout\,
	combout => \alu_inst|Mux5~3_combout\);

-- Location: FF_X49_Y51_N3
\register_file_inst|output[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[5]~38_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][5]~_Duplicate_1_q\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X50_Y52_N16
\alu_inst|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~10_combout\ = (\register_file_inst|output[1][5]~_Duplicate_1_q\ & ((\SW[5]~input_o\ & (!\alu_inst|Add4~9\)) # (!\SW[5]~input_o\ & (\alu_inst|Add4~9\ & VCC)))) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & ((\SW[5]~input_o\ & 
-- ((\alu_inst|Add4~9\) # (GND))) # (!\SW[5]~input_o\ & (!\alu_inst|Add4~9\))))
-- \alu_inst|Add4~11\ = CARRY((\register_file_inst|output[1][5]~_Duplicate_1_q\ & (\SW[5]~input_o\ & !\alu_inst|Add4~9\)) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & ((\SW[5]~input_o\) # (!\alu_inst|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][5]~_Duplicate_1_q\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add4~9\,
	combout => \alu_inst|Add4~10_combout\,
	cout => \alu_inst|Add4~11\);

-- Location: LCCOMB_X51_Y51_N18
\alu_inst|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~10_combout\ = (\register_file_inst|output[1][5]~_Duplicate_1_q\ & ((\alu_inst|Add5~9\) # (GND))) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & (!\alu_inst|Add5~9\))
-- \alu_inst|Add5~11\ = CARRY((\register_file_inst|output[1][5]~_Duplicate_1_q\) # (!\alu_inst|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~9\,
	combout => \alu_inst|Add5~10_combout\,
	cout => \alu_inst|Add5~11\);

-- Location: LCCOMB_X51_Y52_N20
\alu_inst|Data_out[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~31_combout\ = (\rom_inst|Data_out\(3) & ((\rom_inst|Data_out\(0) & ((\alu_inst|Add5~10_combout\))) # (!\rom_inst|Data_out\(0) & (\alu_inst|Add4~10_combout\)))) # (!\rom_inst|Data_out\(3) & (\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \rom_inst|Data_out\(0),
	datac => \alu_inst|Add4~10_combout\,
	datad => \alu_inst|Add5~10_combout\,
	combout => \alu_inst|Data_out[5]~31_combout\);

-- Location: FF_X49_Y51_N29
\register_file_inst|output[0][5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[5]~38_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][5]~_Duplicate_2_q\);

-- Location: LCCOMB_X52_Y51_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\register_file_inst|output[0][5]~_Duplicate_2_q\ & ((\Add0~9\) # (GND))) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((\register_file_inst|output[0][5]~_Duplicate_2_q\) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X51_Y52_N10
\alu_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~10_combout\ = (\SW[5]~input_o\ & ((\register_file_inst|output[0][5]~_Duplicate_2_q\ & (!\alu_inst|Add1~9\)) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & ((\alu_inst|Add1~9\) # (GND))))) # (!\SW[5]~input_o\ & 
-- ((\register_file_inst|output[0][5]~_Duplicate_2_q\ & (\alu_inst|Add1~9\ & VCC)) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & (!\alu_inst|Add1~9\))))
-- \alu_inst|Add1~11\ = CARRY((\SW[5]~input_o\ & ((!\alu_inst|Add1~9\) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\))) # (!\SW[5]~input_o\ & (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & !\alu_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add1~9\,
	combout => \alu_inst|Add1~10_combout\,
	cout => \alu_inst|Add1~11\);

-- Location: LCCOMB_X51_Y52_N30
\alu_inst|Data_out[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~32_combout\ = (\rom_inst|Data_out\(3) & (\alu_inst|Data_out[5]~31_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Data_out[5]~31_combout\ & (\Add0~10_combout\)) # (!\alu_inst|Data_out[5]~31_combout\ & 
-- ((\alu_inst|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Data_out[5]~31_combout\,
	datac => \Add0~10_combout\,
	datad => \alu_inst|Add1~10_combout\,
	combout => \alu_inst|Data_out[5]~32_combout\);

-- Location: LCCOMB_X50_Y51_N0
\alu_inst|Data_out[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~33_combout\ = (\NOT_RESET~input_o\ & (((\alu_inst|Data_out[5]~32_combout\) # (\rom_inst|Data_out\(2))) # (!\rom_inst|Data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_RESET~input_o\,
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Data_out[5]~32_combout\,
	datad => \rom_inst|Data_out\(2),
	combout => \alu_inst|Data_out[5]~33_combout\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X49_Y51_N15
\register_file_inst|output[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[7]~21_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][7]~_Duplicate_1_q\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X49_Y51_N27
\register_file_inst|output[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[6]~30_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y50_N16
\alu_inst|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~10_combout\ = (\SW[5]~input_o\ & ((\register_file_inst|output[1][5]~_Duplicate_1_q\ & (\alu_inst|Add3~9\ & VCC)) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & (!\alu_inst|Add3~9\)))) # (!\SW[5]~input_o\ & 
-- ((\register_file_inst|output[1][5]~_Duplicate_1_q\ & (!\alu_inst|Add3~9\)) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & ((\alu_inst|Add3~9\) # (GND)))))
-- \alu_inst|Add3~11\ = CARRY((\SW[5]~input_o\ & (!\register_file_inst|output[1][5]~_Duplicate_1_q\ & !\alu_inst|Add3~9\)) # (!\SW[5]~input_o\ & ((!\alu_inst|Add3~9\) # (!\register_file_inst|output[1][5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \register_file_inst|output[1][5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add3~9\,
	combout => \alu_inst|Add3~10_combout\,
	cout => \alu_inst|Add3~11\);

-- Location: LCCOMB_X50_Y50_N18
\alu_inst|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~12_combout\ = ((\SW[6]~input_o\ $ (\register_file_inst|output[1][6]~_Duplicate_1_q\ $ (!\alu_inst|Add3~11\)))) # (GND)
-- \alu_inst|Add3~13\ = CARRY((\SW[6]~input_o\ & ((\register_file_inst|output[1][6]~_Duplicate_1_q\) # (!\alu_inst|Add3~11\))) # (!\SW[6]~input_o\ & (\register_file_inst|output[1][6]~_Duplicate_1_q\ & !\alu_inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \register_file_inst|output[1][6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add3~11\,
	combout => \alu_inst|Add3~12_combout\,
	cout => \alu_inst|Add3~13\);

-- Location: LCCOMB_X50_Y50_N20
\alu_inst|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~14_combout\ = (\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\SW[7]~input_o\ & (\alu_inst|Add3~13\ & VCC)) # (!\SW[7]~input_o\ & (!\alu_inst|Add3~13\)))) # (!\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\SW[7]~input_o\ & 
-- (!\alu_inst|Add3~13\)) # (!\SW[7]~input_o\ & ((\alu_inst|Add3~13\) # (GND)))))
-- \alu_inst|Add3~15\ = CARRY((\register_file_inst|output[1][7]~_Duplicate_1_q\ & (!\SW[7]~input_o\ & !\alu_inst|Add3~13\)) # (!\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((!\alu_inst|Add3~13\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][7]~_Duplicate_1_q\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add3~13\,
	combout => \alu_inst|Add3~14_combout\,
	cout => \alu_inst|Add3~15\);

-- Location: FF_X49_Y51_N25
\register_file_inst|output[0][7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[7]~21_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][7]~_Duplicate_2_q\);

-- Location: FF_X50_Y51_N31
\register_file_inst|output[0][6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[6]~30_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][6]~_Duplicate_2_q\);

-- Location: LCCOMB_X50_Y51_N14
\alu_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~14_combout\ = (\SW[5]~input_o\ & ((\register_file_inst|output[0][5]~_Duplicate_2_q\ & (\alu_inst|Add0~13\ & VCC)) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & (!\alu_inst|Add0~13\)))) # (!\SW[5]~input_o\ & 
-- ((\register_file_inst|output[0][5]~_Duplicate_2_q\ & (!\alu_inst|Add0~13\)) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & ((\alu_inst|Add0~13\) # (GND)))))
-- \alu_inst|Add0~15\ = CARRY((\SW[5]~input_o\ & (!\register_file_inst|output[0][5]~_Duplicate_2_q\ & !\alu_inst|Add0~13\)) # (!\SW[5]~input_o\ & ((!\alu_inst|Add0~13\) # (!\register_file_inst|output[0][5]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add0~13\,
	combout => \alu_inst|Add0~14_combout\,
	cout => \alu_inst|Add0~15\);

-- Location: LCCOMB_X50_Y51_N16
\alu_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~16_combout\ = ((\register_file_inst|output[0][6]~_Duplicate_2_q\ $ (\SW[6]~input_o\ $ (!\alu_inst|Add0~15\)))) # (GND)
-- \alu_inst|Add0~17\ = CARRY((\register_file_inst|output[0][6]~_Duplicate_2_q\ & ((\SW[6]~input_o\) # (!\alu_inst|Add0~15\))) # (!\register_file_inst|output[0][6]~_Duplicate_2_q\ & (\SW[6]~input_o\ & !\alu_inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add0~15\,
	combout => \alu_inst|Add0~16_combout\,
	cout => \alu_inst|Add0~17\);

-- Location: LCCOMB_X50_Y51_N18
\alu_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~18_combout\ = (\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\SW[7]~input_o\ & (\alu_inst|Add0~17\ & VCC)) # (!\SW[7]~input_o\ & (!\alu_inst|Add0~17\)))) # (!\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\SW[7]~input_o\ & 
-- (!\alu_inst|Add0~17\)) # (!\SW[7]~input_o\ & ((\alu_inst|Add0~17\) # (GND)))))
-- \alu_inst|Add0~19\ = CARRY((\register_file_inst|output[0][7]~_Duplicate_2_q\ & (!\SW[7]~input_o\ & !\alu_inst|Add0~17\)) # (!\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((!\alu_inst|Add0~17\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add0~17\,
	combout => \alu_inst|Add0~18_combout\,
	cout => \alu_inst|Add0~19\);

-- Location: LCCOMB_X50_Y51_N28
\alu_inst|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~27_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~14_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add3~14_combout\,
	datad => \alu_inst|Add0~18_combout\,
	combout => \alu_inst|Add0~27_combout\);

-- Location: LCCOMB_X50_Y51_N24
\alu_inst|Data_out[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~13_combout\ = (\rom_inst|Data_out\(2) & (\rom_inst|Data_out\(0))) # (!\rom_inst|Data_out\(2) & ((\alu_inst|Add0~27_combout\) # ((!\rom_inst|Data_out\(0) & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(2),
	datac => \SW[7]~input_o\,
	datad => \alu_inst|Add0~27_combout\,
	combout => \alu_inst|Data_out[7]~13_combout\);

-- Location: LCCOMB_X50_Y51_N2
\alu_inst|Data_out[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~14_combout\ = (\NOT_RESET~input_o\ & ((\rom_inst|Data_out\(1)) # (\alu_inst|Data_out[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_RESET~input_o\,
	datab => \rom_inst|Data_out\(1),
	datad => \alu_inst|Data_out[7]~13_combout\,
	combout => \alu_inst|Data_out[7]~14_combout\);

-- Location: FF_X50_Y50_N27
\register_file_inst|output[0][9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[9]~11_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][9]~_Duplicate_2_q\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X50_Y51_N21
\register_file_inst|output[0][8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[8]~12_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][8]~_Duplicate_2_q\);

-- Location: LCCOMB_X50_Y51_N20
\alu_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~20_combout\ = ((\SW[8]~input_o\ $ (\register_file_inst|output[0][8]~_Duplicate_2_q\ $ (!\alu_inst|Add0~19\)))) # (GND)
-- \alu_inst|Add0~21\ = CARRY((\SW[8]~input_o\ & ((\register_file_inst|output[0][8]~_Duplicate_2_q\) # (!\alu_inst|Add0~19\))) # (!\SW[8]~input_o\ & (\register_file_inst|output[0][8]~_Duplicate_2_q\ & !\alu_inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add0~19\,
	combout => \alu_inst|Add0~20_combout\,
	cout => \alu_inst|Add0~21\);

-- Location: LCCOMB_X50_Y51_N22
\alu_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~22_combout\ = \register_file_inst|output[0][9]~_Duplicate_2_q\ $ (\alu_inst|Add0~21\ $ (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \SW[9]~input_o\,
	cin => \alu_inst|Add0~21\,
	combout => \alu_inst|Add0~22_combout\);

-- Location: LCCOMB_X49_Y50_N24
\register_file_inst|output[1][9]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \register_file_inst|output[1][9]~_Duplicate_1feeder_combout\ = \alu_inst|Data_out[9]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Data_out[9]~11_combout\,
	combout => \register_file_inst|output[1][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X49_Y50_N25
\register_file_inst|output[1][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \register_file_inst|output[1][9]~_Duplicate_1feeder_combout\,
	clrn => \NOT_RESET~input_o\,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][9]~_Duplicate_1_q\);

-- Location: FF_X47_Y51_N1
\register_file_inst|output[1][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[8]~12_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[1][9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[1][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y50_N22
\alu_inst|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~16_combout\ = ((\register_file_inst|output[1][8]~_Duplicate_1_q\ $ (\SW[8]~input_o\ $ (!\alu_inst|Add3~15\)))) # (GND)
-- \alu_inst|Add3~17\ = CARRY((\register_file_inst|output[1][8]~_Duplicate_1_q\ & ((\SW[8]~input_o\) # (!\alu_inst|Add3~15\))) # (!\register_file_inst|output[1][8]~_Duplicate_1_q\ & (\SW[8]~input_o\ & !\alu_inst|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][8]~_Duplicate_1_q\,
	datab => \SW[8]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add3~15\,
	combout => \alu_inst|Add3~16_combout\,
	cout => \alu_inst|Add3~17\);

-- Location: LCCOMB_X50_Y50_N24
\alu_inst|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~18_combout\ = \register_file_inst|output[1][9]~_Duplicate_1_q\ $ (\alu_inst|Add3~17\ $ (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[1][9]~_Duplicate_1_q\,
	datad => \SW[9]~input_o\,
	cin => \alu_inst|Add3~17\,
	combout => \alu_inst|Add3~18_combout\);

-- Location: LCCOMB_X49_Y50_N26
\alu_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~24_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Add3~18_combout\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add0~22_combout\,
	datad => \alu_inst|Add3~18_combout\,
	combout => \alu_inst|Add0~24_combout\);

-- Location: DSPMULT_X48_Y52_N0
\alu_inst|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	aclr => \ALT_INV_NOT_RESET~input_o\,
	ena => \register_file_inst|output[0][0]~0_combout\,
	dataa => \alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y52_N2
\alu_inst|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X50_Y50_N26
\alu_inst|Data_out[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~4_combout\ = (\rom_inst|Data_out\(2) & ((\rom_inst|Data_out\(0)))) # (!\rom_inst|Data_out\(2) & (\SW[9]~input_o\ & !\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \rom_inst|Data_out\(2),
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Data_out[9]~4_combout\);

-- Location: LCCOMB_X49_Y50_N2
\alu_inst|Data_out[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~5_combout\ = (\alu_inst|Data_out[9]~4_combout\ & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\) # ((\rom_inst|Data_out\(3)) # (!\rom_inst|Data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \rom_inst|Data_out\(3),
	datac => \rom_inst|Data_out\(2),
	datad => \alu_inst|Data_out[9]~4_combout\,
	combout => \alu_inst|Data_out[9]~5_combout\);

-- Location: LCCOMB_X49_Y50_N6
\alu_inst|Data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~6_combout\ = (\NOT_RESET~input_o\ & ((\rom_inst|Data_out\(1)) # ((\alu_inst|Add0~24_combout\) # (\alu_inst|Data_out[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NOT_RESET~input_o\,
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Add0~24_combout\,
	datad => \alu_inst|Data_out[9]~5_combout\,
	combout => \alu_inst|Data_out[9]~6_combout\);

-- Location: DSPMULT_X48_Y50_N0
\alu_inst|Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	aclr => \ALT_INV_NOT_RESET~input_o\,
	ena => \register_file_inst|output[1][9]~1_combout\,
	dataa => \alu_inst|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu_inst|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y50_N2
\alu_inst|Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y50_N18
\alu_inst|Data_out[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~2_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT19\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT19\,
	combout => \alu_inst|Data_out[9]~2_combout\);

-- Location: LCCOMB_X49_Y50_N4
\alu_inst|Data_out[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~3_combout\ = ((\rom_inst|Data_out\(1)) # ((\rom_inst|Data_out\(0) & \alu_inst|Data_out[9]~2_combout\))) # (!\rom_inst|Data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(2),
	datac => \rom_inst|Data_out\(1),
	datad => \alu_inst|Data_out[9]~2_combout\,
	combout => \alu_inst|Data_out[9]~3_combout\);

-- Location: LCCOMB_X51_Y52_N12
\alu_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~12_combout\ = ((\SW[6]~input_o\ $ (\register_file_inst|output[0][6]~_Duplicate_2_q\ $ (\alu_inst|Add1~11\)))) # (GND)
-- \alu_inst|Add1~13\ = CARRY((\SW[6]~input_o\ & (\register_file_inst|output[0][6]~_Duplicate_2_q\ & !\alu_inst|Add1~11\)) # (!\SW[6]~input_o\ & ((\register_file_inst|output[0][6]~_Duplicate_2_q\) # (!\alu_inst|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add1~11\,
	combout => \alu_inst|Add1~12_combout\,
	cout => \alu_inst|Add1~13\);

-- Location: LCCOMB_X51_Y52_N14
\alu_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~14_combout\ = (\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\SW[7]~input_o\ & (!\alu_inst|Add1~13\)) # (!\SW[7]~input_o\ & (\alu_inst|Add1~13\ & VCC)))) # (!\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\SW[7]~input_o\ & 
-- ((\alu_inst|Add1~13\) # (GND))) # (!\SW[7]~input_o\ & (!\alu_inst|Add1~13\))))
-- \alu_inst|Add1~15\ = CARRY((\register_file_inst|output[0][7]~_Duplicate_2_q\ & (\SW[7]~input_o\ & !\alu_inst|Add1~13\)) # (!\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\SW[7]~input_o\) # (!\alu_inst|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add1~13\,
	combout => \alu_inst|Add1~14_combout\,
	cout => \alu_inst|Add1~15\);

-- Location: LCCOMB_X51_Y52_N16
\alu_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~16_combout\ = ((\SW[8]~input_o\ $ (\register_file_inst|output[0][8]~_Duplicate_2_q\ $ (\alu_inst|Add1~15\)))) # (GND)
-- \alu_inst|Add1~17\ = CARRY((\SW[8]~input_o\ & (\register_file_inst|output[0][8]~_Duplicate_2_q\ & !\alu_inst|Add1~15\)) # (!\SW[8]~input_o\ & ((\register_file_inst|output[0][8]~_Duplicate_2_q\) # (!\alu_inst|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	datad => VCC,
	cin => \alu_inst|Add1~15\,
	combout => \alu_inst|Add1~16_combout\,
	cout => \alu_inst|Add1~17\);

-- Location: LCCOMB_X51_Y52_N18
\alu_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~18_combout\ = \SW[9]~input_o\ $ (\alu_inst|Add1~17\ $ (!\register_file_inst|output[0][9]~_Duplicate_2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datad => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	cin => \alu_inst|Add1~17\,
	combout => \alu_inst|Add1~18_combout\);

-- Location: LCCOMB_X50_Y52_N18
\alu_inst|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~12_combout\ = ((\SW[6]~input_o\ $ (\register_file_inst|output[1][6]~_Duplicate_1_q\ $ (\alu_inst|Add4~11\)))) # (GND)
-- \alu_inst|Add4~13\ = CARRY((\SW[6]~input_o\ & (\register_file_inst|output[1][6]~_Duplicate_1_q\ & !\alu_inst|Add4~11\)) # (!\SW[6]~input_o\ & ((\register_file_inst|output[1][6]~_Duplicate_1_q\) # (!\alu_inst|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \register_file_inst|output[1][6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add4~11\,
	combout => \alu_inst|Add4~12_combout\,
	cout => \alu_inst|Add4~13\);

-- Location: LCCOMB_X50_Y52_N20
\alu_inst|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~14_combout\ = (\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\SW[7]~input_o\ & (!\alu_inst|Add4~13\)) # (!\SW[7]~input_o\ & (\alu_inst|Add4~13\ & VCC)))) # (!\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\SW[7]~input_o\ & 
-- ((\alu_inst|Add4~13\) # (GND))) # (!\SW[7]~input_o\ & (!\alu_inst|Add4~13\))))
-- \alu_inst|Add4~15\ = CARRY((\register_file_inst|output[1][7]~_Duplicate_1_q\ & (\SW[7]~input_o\ & !\alu_inst|Add4~13\)) # (!\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\SW[7]~input_o\) # (!\alu_inst|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][7]~_Duplicate_1_q\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add4~13\,
	combout => \alu_inst|Add4~14_combout\,
	cout => \alu_inst|Add4~15\);

-- Location: LCCOMB_X50_Y52_N22
\alu_inst|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~16_combout\ = ((\register_file_inst|output[1][8]~_Duplicate_1_q\ $ (\SW[8]~input_o\ $ (\alu_inst|Add4~15\)))) # (GND)
-- \alu_inst|Add4~17\ = CARRY((\register_file_inst|output[1][8]~_Duplicate_1_q\ & ((!\alu_inst|Add4~15\) # (!\SW[8]~input_o\))) # (!\register_file_inst|output[1][8]~_Duplicate_1_q\ & (!\SW[8]~input_o\ & !\alu_inst|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][8]~_Duplicate_1_q\,
	datab => \SW[8]~input_o\,
	datad => VCC,
	cin => \alu_inst|Add4~15\,
	combout => \alu_inst|Add4~16_combout\,
	cout => \alu_inst|Add4~17\);

-- Location: LCCOMB_X50_Y52_N24
\alu_inst|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add4~18_combout\ = \SW[9]~input_o\ $ (\alu_inst|Add4~17\ $ (!\register_file_inst|output[1][9]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => \register_file_inst|output[1][9]~_Duplicate_1_q\,
	cin => \alu_inst|Add4~17\,
	combout => \alu_inst|Add4~18_combout\);

-- Location: LCCOMB_X51_Y51_N20
\alu_inst|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~12_combout\ = (\register_file_inst|output[1][6]~_Duplicate_1_q\ & (!\alu_inst|Add5~11\ & VCC)) # (!\register_file_inst|output[1][6]~_Duplicate_1_q\ & (\alu_inst|Add5~11\ $ (GND)))
-- \alu_inst|Add5~13\ = CARRY((!\register_file_inst|output[1][6]~_Duplicate_1_q\ & !\alu_inst|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~11\,
	combout => \alu_inst|Add5~12_combout\,
	cout => \alu_inst|Add5~13\);

-- Location: LCCOMB_X51_Y51_N22
\alu_inst|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~14_combout\ = (\register_file_inst|output[1][7]~_Duplicate_1_q\ & ((\alu_inst|Add5~13\) # (GND))) # (!\register_file_inst|output[1][7]~_Duplicate_1_q\ & (!\alu_inst|Add5~13\))
-- \alu_inst|Add5~15\ = CARRY((\register_file_inst|output[1][7]~_Duplicate_1_q\) # (!\alu_inst|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[1][7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~13\,
	combout => \alu_inst|Add5~14_combout\,
	cout => \alu_inst|Add5~15\);

-- Location: LCCOMB_X51_Y51_N24
\alu_inst|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~16_combout\ = (\register_file_inst|output[1][8]~_Duplicate_1_q\ & (!\alu_inst|Add5~15\ & VCC)) # (!\register_file_inst|output[1][8]~_Duplicate_1_q\ & (\alu_inst|Add5~15\ $ (GND)))
-- \alu_inst|Add5~17\ = CARRY((!\register_file_inst|output[1][8]~_Duplicate_1_q\ & !\alu_inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][8]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add5~15\,
	combout => \alu_inst|Add5~16_combout\,
	cout => \alu_inst|Add5~17\);

-- Location: LCCOMB_X51_Y51_N26
\alu_inst|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add5~18_combout\ = \alu_inst|Add5~17\ $ (!\register_file_inst|output[1][9]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_file_inst|output[1][9]~_Duplicate_1_q\,
	cin => \alu_inst|Add5~17\,
	combout => \alu_inst|Add5~18_combout\);

-- Location: LCCOMB_X52_Y51_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\register_file_inst|output[0][6]~_Duplicate_2_q\ & (!\Add0~11\ & VCC)) # (!\register_file_inst|output[0][6]~_Duplicate_2_q\ & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!\register_file_inst|output[0][6]~_Duplicate_2_q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X52_Y51_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\register_file_inst|output[0][7]~_Duplicate_2_q\ & ((\Add0~13\) # (GND))) # (!\register_file_inst|output[0][7]~_Duplicate_2_q\ & (!\Add0~13\))
-- \Add0~15\ = CARRY((\register_file_inst|output[0][7]~_Duplicate_2_q\) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X52_Y51_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\register_file_inst|output[0][8]~_Duplicate_2_q\ & (!\Add0~15\ & VCC)) # (!\register_file_inst|output[0][8]~_Duplicate_2_q\ & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((!\register_file_inst|output[0][8]~_Duplicate_2_q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X52_Y51_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (!\register_file_inst|output[0][9]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X51_Y51_N2
\alu_inst|Data_out[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~7_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Add5~18_combout\) # ((!\rom_inst|Data_out\(0))))) # (!\rom_inst|Data_out\(3) & (((\rom_inst|Data_out\(0) & \Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add5~18_combout\,
	datab => \rom_inst|Data_out\(3),
	datac => \rom_inst|Data_out\(0),
	datad => \Add0~18_combout\,
	combout => \alu_inst|Data_out[9]~7_combout\);

-- Location: LCCOMB_X51_Y51_N30
\alu_inst|Data_out[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~8_combout\ = (\rom_inst|Data_out\(0) & (((\alu_inst|Data_out[9]~7_combout\)))) # (!\rom_inst|Data_out\(0) & ((\alu_inst|Data_out[9]~7_combout\ & ((\alu_inst|Add4~18_combout\))) # (!\alu_inst|Data_out[9]~7_combout\ & 
-- (\alu_inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Add1~18_combout\,
	datac => \alu_inst|Add4~18_combout\,
	datad => \alu_inst|Data_out[9]~7_combout\,
	combout => \alu_inst|Data_out[9]~8_combout\);

-- Location: LCCOMB_X50_Y50_N30
\alu_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~0_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\register_file_inst|output[0][9]~_Duplicate_2_q\)) # (!\rom_inst|Data_out\(3) & ((\register_file_inst|output[1][9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \register_file_inst|output[1][9]~_Duplicate_1_q\,
	combout => \alu_inst|Mux0~0_combout\);

-- Location: DSPMULT_X48_Y51_N0
\alu_inst|Mult2|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	aclr => \ALT_INV_NOT_RESET~input_o\,
	ena => \register_file_inst|output[0][0]~0_combout\,
	dataa => \alu_inst|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu_inst|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y51_N2
\alu_inst|Mult2|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y50_N28
\alu_inst|Data_out[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~9_combout\ = (\alu_inst|Mux0~0_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datac => \alu_inst|Mux0~0_combout\,
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT19\,
	combout => \alu_inst|Data_out[9]~9_combout\);

-- Location: LCCOMB_X49_Y50_N12
\alu_inst|Data_out[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~10_combout\ = (\rom_inst|Data_out\(2) & ((\alu_inst|Data_out[9]~9_combout\))) # (!\rom_inst|Data_out\(2) & (\alu_inst|Data_out[9]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Data_out[9]~8_combout\,
	datad => \alu_inst|Data_out[9]~9_combout\,
	combout => \alu_inst|Data_out[9]~10_combout\);

-- Location: LCCOMB_X49_Y50_N0
\alu_inst|Data_out[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[9]~11_combout\ = (\alu_inst|Data_out[9]~6_combout\ & ((\rom_inst|Data_out\(1) & ((\alu_inst|Data_out[9]~10_combout\))) # (!\rom_inst|Data_out\(1) & (\alu_inst|Data_out[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Data_out[9]~6_combout\,
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Data_out[9]~3_combout\,
	datad => \alu_inst|Data_out[9]~10_combout\,
	combout => \alu_inst|Data_out[9]~11_combout\);

-- Location: LCCOMB_X47_Y51_N30
\alu_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~0_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT8\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT8\,
	combout => \alu_inst|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y51_N18
\alu_inst|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~25_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~16_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add3~16_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add0~20_combout\,
	combout => \alu_inst|Add0~25_combout\);

-- Location: LCCOMB_X46_Y51_N0
\alu_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~26_combout\ = (\alu_inst|Add0~25_combout\) # ((\SW[8]~input_o\ & !\rom_inst|Data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Add0~25_combout\,
	combout => \alu_inst|Add0~26_combout\);

-- Location: LCCOMB_X51_Y52_N26
\alu_inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~1_combout\ = (\rom_inst|Data_out\(3) & (\rom_inst|Data_out\(0))) # (!\rom_inst|Data_out\(3) & ((\rom_inst|Data_out\(0) & (\Add0~16_combout\)) # (!\rom_inst|Data_out\(0) & ((\alu_inst|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \rom_inst|Data_out\(0),
	datac => \Add0~16_combout\,
	datad => \alu_inst|Add1~16_combout\,
	combout => \alu_inst|Mux1~1_combout\);

-- Location: LCCOMB_X47_Y51_N12
\alu_inst|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~2_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Mux1~1_combout\ & ((\alu_inst|Add5~16_combout\))) # (!\alu_inst|Mux1~1_combout\ & (\alu_inst|Add4~16_combout\)))) # (!\rom_inst|Data_out\(3) & (((\alu_inst|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add4~16_combout\,
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mux1~1_combout\,
	datad => \alu_inst|Add5~16_combout\,
	combout => \alu_inst|Mux1~2_combout\);

-- Location: LCCOMB_X47_Y51_N4
\alu_inst|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~3_combout\ = (\rom_inst|Data_out\(1) & ((\rom_inst|Data_out\(2)) # ((\alu_inst|Mux1~2_combout\)))) # (!\rom_inst|Data_out\(1) & (!\rom_inst|Data_out\(2) & (\alu_inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Add0~26_combout\,
	datad => \alu_inst|Mux1~2_combout\,
	combout => \alu_inst|Mux1~3_combout\);

-- Location: LCCOMB_X47_Y51_N0
\alu_inst|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][8]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \register_file_inst|output[1][8]~_Duplicate_1_q\,
	datad => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	combout => \alu_inst|Mux1~4_combout\);

-- Location: LCCOMB_X47_Y51_N16
\alu_inst|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~5_combout\ = (\alu_inst|Mux1~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux1~4_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT8\,
	combout => \alu_inst|Mux1~5_combout\);

-- Location: LCCOMB_X47_Y51_N2
\alu_inst|Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~6_combout\ = (\rom_inst|Data_out\(2) & ((\alu_inst|Mux1~3_combout\ & ((\alu_inst|Mux1~5_combout\))) # (!\alu_inst|Mux1~3_combout\ & (\alu_inst|Mux1~0_combout\)))) # (!\rom_inst|Data_out\(2) & (((\alu_inst|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux1~0_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Mux1~3_combout\,
	datad => \alu_inst|Mux1~5_combout\,
	combout => \alu_inst|Mux1~6_combout\);

-- Location: LCCOMB_X47_Y51_N14
\alu_inst|Data_out[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[8]~12_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux1~6_combout\,
	combout => \alu_inst|Data_out[8]~12_combout\);

-- Location: LCCOMB_X49_Y51_N4
\alu_inst|Data_out[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~15_combout\ = ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT7\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\rom_inst|Data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT7\,
	combout => \alu_inst|Data_out[7]~15_combout\);

-- Location: LCCOMB_X51_Y51_N0
\alu_inst|Data_out[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~16_combout\ = (\rom_inst|Data_out\(3) & (((\alu_inst|Add4~14_combout\) # (\rom_inst|Data_out\(0))))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add1~14_combout\ & ((!\rom_inst|Data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add1~14_combout\,
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add4~14_combout\,
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Data_out[7]~16_combout\);

-- Location: LCCOMB_X51_Y51_N6
\alu_inst|Data_out[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~17_combout\ = (\rom_inst|Data_out\(0) & ((\alu_inst|Data_out[7]~16_combout\ & (\alu_inst|Add5~14_combout\)) # (!\alu_inst|Data_out[7]~16_combout\ & ((\Add0~14_combout\))))) # (!\rom_inst|Data_out\(0) & 
-- (\alu_inst|Data_out[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \alu_inst|Data_out[7]~16_combout\,
	datac => \alu_inst|Add5~14_combout\,
	datad => \Add0~14_combout\,
	combout => \alu_inst|Data_out[7]~17_combout\);

-- Location: LCCOMB_X49_Y51_N26
\alu_inst|Data_out[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~18_combout\ = (\rom_inst|Data_out\(3) & (\register_file_inst|output[0][7]~_Duplicate_2_q\)) # (!\rom_inst|Data_out\(3) & ((\register_file_inst|output[1][7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datab => \register_file_inst|output[1][7]~_Duplicate_1_q\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Data_out[7]~18_combout\);

-- Location: LCCOMB_X49_Y51_N24
\alu_inst|Data_out[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~19_combout\ = (\rom_inst|Data_out\(0) & ((\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT7\))) # (!\rom_inst|Data_out\(0) & (\alu_inst|Data_out[7]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Data_out[7]~18_combout\,
	datab => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT7\,
	combout => \alu_inst|Data_out[7]~19_combout\);

-- Location: LCCOMB_X49_Y51_N12
\alu_inst|Data_out[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~20_combout\ = (\rom_inst|Data_out\(2) & ((\alu_inst|Data_out[7]~19_combout\))) # (!\rom_inst|Data_out\(2) & (\alu_inst|Data_out[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datac => \alu_inst|Data_out[7]~17_combout\,
	datad => \alu_inst|Data_out[7]~19_combout\,
	combout => \alu_inst|Data_out[7]~20_combout\);

-- Location: LCCOMB_X49_Y51_N0
\alu_inst|Data_out[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[7]~21_combout\ = (\alu_inst|Data_out[7]~14_combout\ & ((\rom_inst|Data_out\(1) & ((\alu_inst|Data_out[7]~20_combout\))) # (!\rom_inst|Data_out\(1) & (\alu_inst|Data_out[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Data_out[7]~14_combout\,
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Data_out[7]~15_combout\,
	datad => \alu_inst|Data_out[7]~20_combout\,
	combout => \alu_inst|Data_out[7]~21_combout\);

-- Location: LCCOMB_X49_Y51_N14
\alu_inst|Data_out[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~22_combout\ = (\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT6\) # ((\rom_inst|Data_out\(1)) # (!\rom_inst|Data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \rom_inst|Data_out\(1),
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Data_out[6]~22_combout\);

-- Location: LCCOMB_X49_Y51_N8
\alu_inst|Data_out[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~28_combout\ = (\rom_inst|Data_out\(1)) # ((\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3)) # (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \rom_inst|Data_out\(3),
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \alu_inst|Data_out[6]~28_combout\);

-- Location: LCCOMB_X50_Y50_N28
\alu_inst|Data_out[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~24_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Add3~12_combout\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add0~16_combout\,
	datad => \alu_inst|Add3~12_combout\,
	combout => \alu_inst|Data_out[6]~24_combout\);

-- Location: LCCOMB_X50_Y50_N0
\alu_inst|Data_out[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~25_combout\ = (\rom_inst|Data_out\(0) & (((\alu_inst|Data_out[6]~24_combout\)))) # (!\rom_inst|Data_out\(0) & (\SW[6]~input_o\ & ((!\rom_inst|Data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \alu_inst|Data_out[6]~24_combout\,
	datac => \rom_inst|Data_out\(2),
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Data_out[6]~25_combout\);

-- Location: LCCOMB_X51_Y52_N28
\alu_inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~1_combout\ = (\rom_inst|Data_out\(0) & (((\Add0~12_combout\) # (\rom_inst|Data_out\(3))))) # (!\rom_inst|Data_out\(0) & (\alu_inst|Add1~12_combout\ & ((!\rom_inst|Data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add1~12_combout\,
	datab => \rom_inst|Data_out\(0),
	datac => \Add0~12_combout\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y52_N26
\alu_inst|Data_out[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~26_combout\ = (\rom_inst|Data_out\(3) & ((\alu_inst|Mux3~1_combout\ & ((\alu_inst|Add5~12_combout\))) # (!\alu_inst|Mux3~1_combout\ & (\alu_inst|Add4~12_combout\)))) # (!\rom_inst|Data_out\(3) & (((\alu_inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(3),
	datab => \alu_inst|Add4~12_combout\,
	datac => \alu_inst|Add5~12_combout\,
	datad => \alu_inst|Mux3~1_combout\,
	combout => \alu_inst|Data_out[6]~26_combout\);

-- Location: LCCOMB_X49_Y51_N6
\alu_inst|Data_out[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~27_combout\ = (\NOT_RESET~input_o\ & ((\rom_inst|Data_out\(1) & ((\alu_inst|Data_out[6]~26_combout\))) # (!\rom_inst|Data_out\(1) & (\alu_inst|Data_out[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Data_out[6]~25_combout\,
	datab => \NOT_RESET~input_o\,
	datac => \rom_inst|Data_out\(1),
	datad => \alu_inst|Data_out[6]~26_combout\,
	combout => \alu_inst|Data_out[6]~27_combout\);

-- Location: LCCOMB_X49_Y51_N22
\alu_inst|Data_out[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~29_combout\ = (\rom_inst|Data_out\(2) & (\NOT_RESET~input_o\ & (\alu_inst|Data_out[6]~28_combout\))) # (!\rom_inst|Data_out\(2) & (((\alu_inst|Data_out[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datab => \NOT_RESET~input_o\,
	datac => \alu_inst|Data_out[6]~28_combout\,
	datad => \alu_inst|Data_out[6]~27_combout\,
	combout => \alu_inst|Data_out[6]~29_combout\);

-- Location: LCCOMB_X50_Y51_N30
\alu_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~0_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][6]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][6]~_Duplicate_1_q\,
	datab => \rom_inst|Data_out\(0),
	datac => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y51_N20
\alu_inst|Data_out[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~23_combout\ = (\alu_inst|Mux3~0_combout\) # ((\rom_inst|Data_out\(0) & ((\alu_inst|Mult2|auto_generated|mac_out2~DATAOUT6\) # (!\rom_inst|Data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux3~0_combout\,
	datab => \rom_inst|Data_out\(0),
	datac => \rom_inst|Data_out\(1),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT6\,
	combout => \alu_inst|Data_out[6]~23_combout\);

-- Location: LCCOMB_X49_Y51_N16
\alu_inst|Data_out[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[6]~30_combout\ = (\alu_inst|Data_out[6]~29_combout\ & (((\alu_inst|Data_out[6]~22_combout\ & \alu_inst|Data_out[6]~23_combout\)) # (!\rom_inst|Data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datab => \alu_inst|Data_out[6]~22_combout\,
	datac => \alu_inst|Data_out[6]~29_combout\,
	datad => \alu_inst|Data_out[6]~23_combout\,
	combout => \alu_inst|Data_out[6]~30_combout\);

-- Location: LCCOMB_X49_Y50_N20
\alu_inst|Data_out[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~34_combout\ = ((\rom_inst|Data_out\(3) & (\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT5\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\)))) # (!\rom_inst|Data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => \rom_inst|Data_out\(3),
	datac => \rom_inst|Data_out\(2),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \alu_inst|Data_out[5]~34_combout\);

-- Location: LCCOMB_X50_Y51_N26
\alu_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~28_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Add3~10_combout\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add3~10_combout\,
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Add0~14_combout\,
	datad => \rom_inst|Data_out\(0),
	combout => \alu_inst|Add0~28_combout\);

-- Location: LCCOMB_X49_Y51_N2
\alu_inst|Data_out[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~36_combout\ = (\rom_inst|Data_out\(1)) # (\alu_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|Data_out\(1),
	datad => \alu_inst|Add0~28_combout\,
	combout => \alu_inst|Data_out[5]~36_combout\);

-- Location: LCCOMB_X49_Y51_N28
\alu_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~0_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][5]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[1][5]~_Duplicate_1_q\,
	datab => \rom_inst|Data_out\(0),
	datac => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y51_N10
\alu_inst|Data_out[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~35_combout\ = (\rom_inst|Data_out\(1) & ((\alu_inst|Mux4~0_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT5\)))) # (!\rom_inst|Data_out\(1) & (((\rom_inst|Data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \alu_inst|Mux4~0_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT5\,
	combout => \alu_inst|Data_out[5]~35_combout\);

-- Location: LCCOMB_X49_Y51_N18
\alu_inst|Data_out[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~37_combout\ = (\rom_inst|Data_out\(2) & (((\alu_inst|Data_out[5]~35_combout\)))) # (!\rom_inst|Data_out\(2) & ((\alu_inst|Data_out[5]~36_combout\) # ((\SW[5]~input_o\ & !\alu_inst|Data_out[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \alu_inst|Data_out[5]~36_combout\,
	datac => \rom_inst|Data_out\(2),
	datad => \alu_inst|Data_out[5]~35_combout\,
	combout => \alu_inst|Data_out[5]~37_combout\);

-- Location: LCCOMB_X49_Y51_N30
\alu_inst|Data_out[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[5]~38_combout\ = (\alu_inst|Data_out[5]~33_combout\ & (\alu_inst|Data_out[5]~37_combout\ & ((\rom_inst|Data_out\(1)) # (\alu_inst|Data_out[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \alu_inst|Data_out[5]~33_combout\,
	datac => \alu_inst|Data_out[5]~34_combout\,
	datad => \alu_inst|Data_out[5]~37_combout\,
	combout => \alu_inst|Data_out[5]~38_combout\);

-- Location: LCCOMB_X49_Y50_N8
\alu_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~0_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT4\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT4\,
	combout => \alu_inst|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y50_N22
\alu_inst|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\register_file_inst|output[0][4]~_Duplicate_2_q\)) # (!\rom_inst|Data_out\(3) & ((\register_file_inst|output[1][4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datac => \register_file_inst|output[1][4]~_Duplicate_1_q\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux5~4_combout\);

-- Location: LCCOMB_X49_Y50_N10
\alu_inst|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~5_combout\ = (\alu_inst|Mux5~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datac => \alu_inst|Mux5~4_combout\,
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT4\,
	combout => \alu_inst|Mux5~5_combout\);

-- Location: LCCOMB_X49_Y50_N16
\alu_inst|Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~6_combout\ = (\alu_inst|Mux5~3_combout\ & (((\alu_inst|Mux5~5_combout\)) # (!\rom_inst|Data_out\(2)))) # (!\alu_inst|Mux5~3_combout\ & (\rom_inst|Data_out\(2) & (\alu_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux5~3_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Mux5~0_combout\,
	datad => \alu_inst|Mux5~5_combout\,
	combout => \alu_inst|Mux5~6_combout\);

-- Location: LCCOMB_X49_Y50_N14
\alu_inst|Data_out[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[4]~39_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux5~6_combout\,
	combout => \alu_inst|Data_out[4]~39_combout\);

-- Location: LCCOMB_X47_Y50_N0
\alu_inst|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~2_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT3\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT3\,
	combout => \alu_inst|Mux6~2_combout\);

-- Location: LCCOMB_X46_Y51_N22
\alu_inst|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~3_combout\ = (\rom_inst|Data_out\(2) & ((\rom_inst|Data_out\(1)) # ((\alu_inst|Mux6~2_combout\)))) # (!\rom_inst|Data_out\(2) & (!\rom_inst|Data_out\(1) & (\alu_inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(2),
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Add0~32_combout\,
	datad => \alu_inst|Mux6~2_combout\,
	combout => \alu_inst|Mux6~3_combout\);

-- Location: LCCOMB_X47_Y51_N28
\alu_inst|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\register_file_inst|output[0][3]~_Duplicate_2_q\)) # (!\rom_inst|Data_out\(3) & ((\register_file_inst|output[1][3]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datac => \register_file_inst|output[1][3]~_Duplicate_1_q\,
	datad => \rom_inst|Data_out\(3),
	combout => \alu_inst|Mux6~4_combout\);

-- Location: LCCOMB_X46_Y51_N12
\alu_inst|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~5_combout\ = (\alu_inst|Mux6~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux6~4_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT3\,
	combout => \alu_inst|Mux6~5_combout\);

-- Location: LCCOMB_X46_Y51_N14
\alu_inst|Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~6_combout\ = (\rom_inst|Data_out\(1) & ((\alu_inst|Mux6~3_combout\ & ((\alu_inst|Mux6~5_combout\))) # (!\alu_inst|Mux6~3_combout\ & (\alu_inst|Mux6~1_combout\)))) # (!\rom_inst|Data_out\(1) & (((\alu_inst|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux6~1_combout\,
	datab => \rom_inst|Data_out\(1),
	datac => \alu_inst|Mux6~3_combout\,
	datad => \alu_inst|Mux6~5_combout\,
	combout => \alu_inst|Mux6~6_combout\);

-- Location: LCCOMB_X47_Y51_N26
\alu_inst|Data_out[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[3]~40_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux6~6_combout\,
	combout => \alu_inst|Data_out[3]~40_combout\);

-- Location: LCCOMB_X49_Y52_N8
\alu_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~0_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & (\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT2\)) # (!\rom_inst|Data_out\(3) & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \rom_inst|Data_out\(0),
	datac => \rom_inst|Data_out\(3),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \alu_inst|Mux7~0_combout\);

-- Location: LCCOMB_X49_Y52_N14
\alu_inst|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][2]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \register_file_inst|output[1][2]~_Duplicate_1_q\,
	datad => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	combout => \alu_inst|Mux7~4_combout\);

-- Location: LCCOMB_X49_Y52_N24
\alu_inst|Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~5_combout\ = (\alu_inst|Mux7~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux7~4_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT2\,
	combout => \alu_inst|Mux7~5_combout\);

-- Location: LCCOMB_X49_Y52_N2
\alu_inst|Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~6_combout\ = (\alu_inst|Mux7~3_combout\ & (((\alu_inst|Mux7~5_combout\)) # (!\rom_inst|Data_out\(2)))) # (!\alu_inst|Mux7~3_combout\ & (\rom_inst|Data_out\(2) & (\alu_inst|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux7~3_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Mux7~0_combout\,
	datad => \alu_inst|Mux7~5_combout\,
	combout => \alu_inst|Mux7~6_combout\);

-- Location: LCCOMB_X49_Y52_N4
\alu_inst|Data_out[2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[2]~41_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux7~6_combout\,
	combout => \alu_inst|Data_out[2]~41_combout\);

-- Location: LCCOMB_X49_Y52_N12
\alu_inst|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~2_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~DATAOUT1\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~DATAOUT1\,
	combout => \alu_inst|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y52_N26
\alu_inst|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~3_combout\ = (\rom_inst|Data_out\(2) & (((\rom_inst|Data_out\(1)) # (\alu_inst|Mux8~2_combout\)))) # (!\rom_inst|Data_out\(2) & (\alu_inst|Add0~7_combout\ & (!\rom_inst|Data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add0~7_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \rom_inst|Data_out\(1),
	datad => \alu_inst|Mux8~2_combout\,
	combout => \alu_inst|Mux8~3_combout\);

-- Location: LCCOMB_X49_Y52_N30
\alu_inst|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][1]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \register_file_inst|output[1][1]~_Duplicate_1_q\,
	datad => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	combout => \alu_inst|Mux8~4_combout\);

-- Location: LCCOMB_X49_Y52_N18
\alu_inst|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~5_combout\ = (\alu_inst|Mux8~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux8~4_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~DATAOUT1\,
	combout => \alu_inst|Mux8~5_combout\);

-- Location: LCCOMB_X49_Y52_N6
\alu_inst|Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~6_combout\ = (\rom_inst|Data_out\(1) & ((\alu_inst|Mux8~3_combout\ & ((\alu_inst|Mux8~5_combout\))) # (!\alu_inst|Mux8~3_combout\ & (\alu_inst|Mux8~1_combout\)))) # (!\rom_inst|Data_out\(1) & (((\alu_inst|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(1),
	datab => \alu_inst|Mux8~1_combout\,
	datac => \alu_inst|Mux8~3_combout\,
	datad => \alu_inst|Mux8~5_combout\,
	combout => \alu_inst|Mux8~6_combout\);

-- Location: LCCOMB_X49_Y52_N22
\alu_inst|Data_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[1]~1_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux8~6_combout\,
	combout => \alu_inst|Data_out[1]~1_combout\);

-- Location: LCCOMB_X47_Y51_N8
\alu_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~0_combout\ = (\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\alu_inst|Mult1|auto_generated|mac_out2~dataout\))) # (!\rom_inst|Data_out\(3) & (\alu_inst|Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \alu_inst|Mult0|auto_generated|mac_out2~dataout\,
	datad => \alu_inst|Mult1|auto_generated|mac_out2~dataout\,
	combout => \alu_inst|Mux9~0_combout\);

-- Location: LCCOMB_X47_Y51_N10
\alu_inst|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~4_combout\ = (!\rom_inst|Data_out\(0) & ((\rom_inst|Data_out\(3) & ((\register_file_inst|output[0][0]~_Duplicate_2_q\))) # (!\rom_inst|Data_out\(3) & (\register_file_inst|output[1][0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|Data_out\(0),
	datab => \rom_inst|Data_out\(3),
	datac => \register_file_inst|output[1][0]~_Duplicate_1_q\,
	datad => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	combout => \alu_inst|Mux9~4_combout\);

-- Location: LCCOMB_X47_Y51_N20
\alu_inst|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~5_combout\ = (\alu_inst|Mux9~4_combout\) # ((\rom_inst|Data_out\(0) & \alu_inst|Mult2|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux9~4_combout\,
	datac => \rom_inst|Data_out\(0),
	datad => \alu_inst|Mult2|auto_generated|mac_out2~dataout\,
	combout => \alu_inst|Mux9~5_combout\);

-- Location: LCCOMB_X47_Y51_N18
\alu_inst|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~6_combout\ = (\alu_inst|Mux9~3_combout\ & (((\alu_inst|Mux9~5_combout\)) # (!\rom_inst|Data_out\(2)))) # (!\alu_inst|Mux9~3_combout\ & (\rom_inst|Data_out\(2) & (\alu_inst|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux9~3_combout\,
	datab => \rom_inst|Data_out\(2),
	datac => \alu_inst|Mux9~0_combout\,
	datad => \alu_inst|Mux9~5_combout\,
	combout => \alu_inst|Mux9~6_combout\);

-- Location: LCCOMB_X47_Y51_N22
\alu_inst|Data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Data_out[0]~0_combout\ = (\NOT_RESET~input_o\ & \alu_inst|Mux9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NOT_RESET~input_o\,
	datad => \alu_inst|Mux9~6_combout\,
	combout => \alu_inst|Data_out[0]~0_combout\);

-- Location: FF_X50_Y51_N3
\register_file_inst|output[0][0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Data_out[0]~0_combout\,
	clrn => \NOT_RESET~input_o\,
	sload => VCC,
	ena => \register_file_inst|output[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file_inst|output[0][0]~_Duplicate_2_q\);

-- Location: LCCOMB_X52_Y51_N4
\affichage_res[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[8]~2_combout\ = (\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~16_combout\)) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][8]~_Duplicate_2_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \Add0~16_combout\,
	datad => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	combout => \affichage_res[8]~2_combout\);

-- Location: LCCOMB_X52_Y51_N30
\affichage_res[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[7]~3_combout\ = (\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~14_combout\))) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][7]~_Duplicate_2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~14_combout\,
	combout => \affichage_res[7]~3_combout\);

-- Location: LCCOMB_X57_Y49_N10
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \affichage_res[7]~3_combout\ $ (VCC)
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(\affichage_res[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \affichage_res[7]~3_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X57_Y49_N12
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\affichage_res[8]~2_combout\ & (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC)) # (!\affichage_res[8]~2_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\affichage_res[8]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \affichage_res[8]~2_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X57_Y50_N4
\affichage_res[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[9]~1_combout\ = (\Add0~18_combout\ & \register_file_inst|output[0][9]~_Duplicate_2_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	combout => \affichage_res[9]~1_combout\);

-- Location: LCCOMB_X57_Y49_N14
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\affichage_res[9]~1_combout\ & (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND))) # (!\affichage_res[9]~1_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((\affichage_res[9]~1_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \affichage_res[9]~1_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X57_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y49_N18
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X52_Y51_N6
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~16_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][8]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \register_file_inst|output[0][8]~_Duplicate_2_q\,
	datac => \Add0~16_combout\,
	datad => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\);

-- Location: LCCOMB_X57_Y50_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67_combout\ = (\Add0~18_combout\ & (\register_file_inst|output[0][9]~_Duplicate_2_q\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67_combout\);

-- Location: LCCOMB_X57_Y49_N24
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40_combout\);

-- Location: LCCOMB_X57_Y49_N22
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\);

-- Location: LCCOMB_X57_Y49_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\);

-- Location: LCCOMB_X52_Y51_N2
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~14_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][7]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datab => \register_file_inst|output[0][7]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Add0~14_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\);

-- Location: LCCOMB_X52_Y51_N8
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~12_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][6]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\);

-- Location: LCCOMB_X58_Y49_N18
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~12_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][6]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\);

-- Location: LCCOMB_X57_Y49_N0
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~43_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X57_Y49_N2
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~42_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X57_Y49_N4
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\)))))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~41_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X57_Y49_N6
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~67_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[48]~40_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y49_N8
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y49_N26
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70_combout\);

-- Location: LCCOMB_X58_Y49_N20
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45_combout\);

-- Location: LCCOMB_X58_Y49_N22
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\);

-- Location: LCCOMB_X57_Y49_N28
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\);

-- Location: LCCOMB_X58_Y49_N10
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\);

-- Location: LCCOMB_X58_Y49_N24
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~12_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][6]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \register_file_inst|output[0][6]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~12_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X58_Y50_N4
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~10_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][5]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datab => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datac => \Add0~10_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\);

-- Location: LCCOMB_X58_Y50_N8
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~10_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][5]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datab => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	datac => \Add0~10_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X58_Y49_N0
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~50_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X58_Y49_N2
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~48_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X58_Y49_N4
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\)))))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~46_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X58_Y49_N6
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~70_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[53]~45_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y49_N8
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y49_N12
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\);

-- Location: LCCOMB_X58_Y50_N10
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~10_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][5]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \register_file_inst|output[0][5]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\);

-- Location: LCCOMB_X58_Y50_N18
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~8_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][4]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datad => \Add0~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\);

-- Location: LCCOMB_X58_Y50_N24
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~8_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][4]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datad => \Add0~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\);

-- Location: LCCOMB_X59_Y49_N4
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~55_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[55]~56_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X59_Y49_N6
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~54_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X58_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51_combout\);

-- Location: LCCOMB_X58_Y49_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[52]~71_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72_combout\);

-- Location: LCCOMB_X58_Y49_N26
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\);

-- Location: LCCOMB_X58_Y49_N28
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\);

-- Location: LCCOMB_X59_Y49_N8
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\)))))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~52_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X59_Y49_N10
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y49_N12
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y49_N14
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74_combout\);

-- Location: LCCOMB_X59_Y49_N0
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57_combout\);

-- Location: LCCOMB_X59_Y49_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\) # 
-- ((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[56]~53_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\);

-- Location: LCCOMB_X59_Y49_N2
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\);

-- Location: LCCOMB_X58_Y50_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~8_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][4]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][4]~_Duplicate_2_q\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\);

-- Location: LCCOMB_X59_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\);

-- Location: LCCOMB_X60_Y49_N30
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~6_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][3]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~6_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\);

-- Location: LCCOMB_X60_Y49_N26
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~6_combout\))) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][3]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~6_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\);

-- Location: LCCOMB_X59_Y49_N20
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~77_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[60]~76_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X59_Y49_N22
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~60_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X59_Y49_N24
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\)))))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~58_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X59_Y49_N26
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~74_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y49_N28
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y49_N14
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[62]~75_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\);

-- Location: LCCOMB_X60_Y49_N18
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61_combout\);

-- Location: LCCOMB_X61_Y49_N10
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\);

-- Location: LCCOMB_X59_Y49_N18
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\);

-- Location: LCCOMB_X60_Y49_N14
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~6_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][3]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datab => \Add0~6_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\);

-- Location: LCCOMB_X61_Y49_N2
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\);

-- Location: LCCOMB_X60_Y49_N0
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~4_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][2]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\);

-- Location: LCCOMB_X60_Y49_N6
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~4_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][2]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\);

-- Location: LCCOMB_X61_Y49_N12
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~82_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X61_Y49_N14
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\)))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~63_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X61_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\)))))
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~62_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X61_Y49_N18
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[68]~61_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y49_N20
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y49_N28
\affichage_res[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[2]~5_combout\ = (\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~4_combout\))) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][2]~_Duplicate_2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datad => \Add0~4_combout\,
	combout => \affichage_res[2]~5_combout\);

-- Location: LCCOMB_X61_Y49_N6
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83_combout\);

-- Location: LCCOMB_X62_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64_combout\);

-- Location: LCCOMB_X61_Y49_N4
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65_combout\);

-- Location: LCCOMB_X61_Y49_N8
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\) # 
-- ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84_combout\);

-- Location: LCCOMB_X60_Y49_N2
\b2v_inst5|Add7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add7~7_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~4_combout\))) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & 
-- (\register_file_inst|output[0][2]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][2]~_Duplicate_2_q\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \Add0~4_combout\,
	combout => \b2v_inst5|Add7~7_combout\);

-- Location: LCCOMB_X61_Y49_N0
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66_combout\);

-- Location: LCCOMB_X60_Y49_N16
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~2_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][1]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86_combout\);

-- Location: LCCOMB_X60_Y49_N20
\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~2_combout\)) # 
-- (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][1]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\);

-- Location: LCCOMB_X61_Y49_N22
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~86_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\,
	datad => VCC,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\);

-- Location: LCCOMB_X61_Y49_N24
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ = CARRY((!\b2v_inst5|Add7~7_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add7~7_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[71]~66_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\);

-- Location: LCCOMB_X61_Y49_N26
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65_combout\) # 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~65_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[72]~84_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\);

-- Location: LCCOMB_X61_Y49_N28
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64_combout\ & 
-- !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~83_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|StageOut[73]~64_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\,
	cout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y49_N30
\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y49_N12
\affichage_res[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[1]~0_combout\ = (\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~2_combout\)) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\register_file_inst|output[0][1]~_Duplicate_2_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	combout => \affichage_res[1]~0_combout\);

-- Location: LCCOMB_X60_Y49_N10
\b2v_inst5|Add7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add7~5_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\affichage_res[2]~5_combout\) # ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\) # 
-- (\affichage_res[1]~0_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & (\affichage_res[2]~5_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\) # 
-- (\affichage_res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datab => \affichage_res[2]~5_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \affichage_res[1]~0_combout\,
	combout => \b2v_inst5|Add7~5_combout\);

-- Location: LCCOMB_X60_Y49_N24
\affichage_res[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \affichage_res[3]~4_combout\ = (\register_file_inst|output[0][9]~_Duplicate_2_q\ & ((\Add0~6_combout\))) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\register_file_inst|output[0][3]~_Duplicate_2_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file_inst|output[0][3]~_Duplicate_2_q\,
	datac => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datad => \Add0~6_combout\,
	combout => \affichage_res[3]~4_combout\);

-- Location: LCCOMB_X60_Y49_N22
\b2v_inst5|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add7~6_combout\ = \b2v_inst5|Add7~5_combout\ $ (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ $ (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ 
-- (\affichage_res[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add7~5_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \affichage_res[3]~4_combout\,
	combout => \b2v_inst5|Add7~6_combout\);

-- Location: LCCOMB_X60_Y49_N4
\b2v_inst5|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add7~4_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ $ (\affichage_res[2]~5_combout\ $ (((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\) # 
-- (\affichage_res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datab => \affichage_res[2]~5_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \affichage_res[1]~0_combout\,
	combout => \b2v_inst5|Add7~4_combout\);

-- Location: LCCOMB_X60_Y49_N8
\b2v_inst5|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add7~8_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ (((\register_file_inst|output[0][9]~_Duplicate_2_q\ & (\Add0~2_combout\)) # (!\register_file_inst|output[0][9]~_Duplicate_2_q\ & 
-- ((\register_file_inst|output[0][1]~_Duplicate_2_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \register_file_inst|output[0][9]~_Duplicate_2_q\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \register_file_inst|output[0][1]~_Duplicate_2_q\,
	combout => \b2v_inst5|Add7~8_combout\);

-- Location: LCCOMB_X63_Y53_N12
\b2v_inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux6~0_combout\ = (\b2v_inst5|Add7~6_combout\ & (\b2v_inst5|Add7~8_combout\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\ $ (\b2v_inst5|Add7~4_combout\)))) # (!\b2v_inst5|Add7~6_combout\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\ 
-- & (\b2v_inst5|Add7~4_combout\ $ (!\b2v_inst5|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y53_N4
\b2v_inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux5~0_combout\ = (\b2v_inst5|Add7~6_combout\ & (\b2v_inst5|Add7~4_combout\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\ $ (!\b2v_inst5|Add7~8_combout\)))) # (!\b2v_inst5|Add7~6_combout\ & 
-- ((\register_file_inst|output[0][0]~_Duplicate_2_q\ & ((!\b2v_inst5|Add7~8_combout\))) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & (\b2v_inst5|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y53_N2
\b2v_inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux4~0_combout\ = (\b2v_inst5|Add7~6_combout\ & (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & (!\b2v_inst5|Add7~4_combout\ & !\b2v_inst5|Add7~8_combout\))) # (!\b2v_inst5|Add7~6_combout\ & (\b2v_inst5|Add7~4_combout\ & 
-- ((!\b2v_inst5|Add7~8_combout\) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N22
\b2v_inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux3~0_combout\ = (\register_file_inst|output[0][0]~_Duplicate_2_q\ & ((\b2v_inst5|Add7~4_combout\ $ (\b2v_inst5|Add7~8_combout\)))) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & ((\b2v_inst5|Add7~6_combout\ & 
-- (\b2v_inst5|Add7~4_combout\ & \b2v_inst5|Add7~8_combout\)) # (!\b2v_inst5|Add7~6_combout\ & (!\b2v_inst5|Add7~4_combout\ & !\b2v_inst5|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\b2v_inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux2~0_combout\ = (\b2v_inst5|Add7~8_combout\ & ((\b2v_inst5|Add7~4_combout\ & ((\b2v_inst5|Add7~6_combout\))) # (!\b2v_inst5|Add7~4_combout\ & (\register_file_inst|output[0][0]~_Duplicate_2_q\)))) # (!\b2v_inst5|Add7~8_combout\ & 
-- (\register_file_inst|output[0][0]~_Duplicate_2_q\ & (\b2v_inst5|Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y53_N6
\b2v_inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux1~0_combout\ = (\register_file_inst|output[0][0]~_Duplicate_2_q\ & (\b2v_inst5|Add7~6_combout\ $ (((\b2v_inst5|Add7~4_combout\ & \b2v_inst5|Add7~8_combout\))))) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & 
-- (\b2v_inst5|Add7~6_combout\ & (!\b2v_inst5|Add7~4_combout\ & !\b2v_inst5|Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y53_N24
\b2v_inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~0_combout\ = (\register_file_inst|output[0][0]~_Duplicate_2_q\ & ((\b2v_inst5|Add7~4_combout\ $ (!\b2v_inst5|Add7~8_combout\)) # (!\b2v_inst5|Add7~6_combout\))) # (!\register_file_inst|output[0][0]~_Duplicate_2_q\ & 
-- ((\b2v_inst5|Add7~6_combout\ $ (!\b2v_inst5|Add7~4_combout\)) # (!\b2v_inst5|Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file_inst|output[0][0]~_Duplicate_2_q\,
	datab => \b2v_inst5|Add7~6_combout\,
	datac => \b2v_inst5|Add7~4_combout\,
	datad => \b2v_inst5|Add7~8_combout\,
	combout => \b2v_inst4|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y48_N20
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ $ (GND)
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X63_Y48_N22
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X63_Y48_N24
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC)) # 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND)))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X63_Y48_N26
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y48_N28
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y48_N0
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\);

-- Location: LCCOMB_X63_Y48_N8
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\);

-- Location: LCCOMB_X63_Y48_N6
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\);

-- Location: LCCOMB_X64_Y48_N0
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\);

-- Location: LCCOMB_X63_Y48_N30
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\);

-- Location: LCCOMB_X64_Y48_N28
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ = (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\);

-- Location: LCCOMB_X64_Y48_N2
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\);

-- Location: LCCOMB_X64_Y48_N10
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ = !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\);

-- Location: LCCOMB_X64_Y48_N12
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\ = (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\);

-- Location: LCCOMB_X63_Y48_N10
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\)))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X63_Y48_N12
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\)))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ & 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\)))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X63_Y48_N14
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\)))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\)))))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X63_Y48_N16
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y48_N18
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y48_N4
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\);

-- Location: LCCOMB_X63_Y48_N2
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X62_Y48_N2
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X62_Y48_N20
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X64_Y48_N26
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\);

-- Location: LCCOMB_X62_Y48_N24
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X62_Y48_N26
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\);

-- Location: LCCOMB_X62_Y48_N22
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ = !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\);

-- Location: LCCOMB_X62_Y48_N8
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X62_Y48_N10
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\)))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datad => VCC,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X62_Y48_N12
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\)))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ & 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\)))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X62_Y48_N14
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\)))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\)))))
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X62_Y48_N16
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y48_N18
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y48_N6
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\) # 
-- ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\);

-- Location: LCCOMB_X62_Y48_N28
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X62_Y48_N4
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\);

-- Location: LCCOMB_X62_Y48_N0
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\) # 
-- ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\);

-- Location: LCCOMB_X62_Y48_N30
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\);

-- Location: LCCOMB_X61_Y48_N0
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\);

-- Location: LCCOMB_X61_Y48_N10
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\ = (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\);

-- Location: LCCOMB_X61_Y48_N4
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ = !\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\);

-- Location: LCCOMB_X61_Y48_N8
\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ & !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\);

-- Location: LCCOMB_X61_Y48_N16
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ = CARRY((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\,
	datad => VCC,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\);

-- Location: LCCOMB_X61_Y48_N18
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\);

-- Location: LCCOMB_X61_Y48_N20
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\) # 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\);

-- Location: LCCOMB_X61_Y48_N22
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- !\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\,
	cout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y48_N24
\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y49_N12
\b2v_inst5|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add5~0_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add5~0_combout\);

-- Location: LCCOMB_X66_Y49_N26
\b2v_inst5|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add5~1_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ $ (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ $ 
-- (((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add5~1_combout\);

-- Location: LCCOMB_X66_Y49_N18
\b2v_inst5|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add5~2_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # 
-- ((!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)))) # 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & 
-- ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add5~2_combout\);

-- Location: LCCOMB_X66_Y49_N20
\b2v_inst5|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add5~3_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ $ (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (\b2v_inst5|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst5|Add5~2_combout\,
	combout => \b2v_inst5|Add5~3_combout\);

-- Location: LCCOMB_X66_Y49_N0
\b2v_inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux6~0_combout\ = (\b2v_inst5|Add5~1_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst5|Add5~0_combout\ $ (!\b2v_inst5|Add5~3_combout\)))) # (!\b2v_inst5|Add5~1_combout\ & 
-- (!\b2v_inst5|Add5~0_combout\ & (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ (\b2v_inst5|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y49_N8
\b2v_inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux5~0_combout\ = (\b2v_inst5|Add5~0_combout\ & ((\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (!\b2v_inst5|Add5~1_combout\)) # 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst5|Add5~3_combout\))))) # (!\b2v_inst5|Add5~0_combout\ & (!\b2v_inst5|Add5~1_combout\ & 
-- (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ (!\b2v_inst5|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y49_N24
\b2v_inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux4~0_combout\ = (\b2v_inst5|Add5~1_combout\ & (\b2v_inst5|Add5~0_combout\ & (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\b2v_inst5|Add5~3_combout\))) # (!\b2v_inst5|Add5~1_combout\ & 
-- (\b2v_inst5|Add5~3_combout\ & ((\b2v_inst5|Add5~0_combout\) # (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y49_N4
\b2v_inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux3~0_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst5|Add5~0_combout\ & (\b2v_inst5|Add5~1_combout\ & \b2v_inst5|Add5~3_combout\)) # (!\b2v_inst5|Add5~0_combout\ & 
-- (!\b2v_inst5|Add5~1_combout\ & !\b2v_inst5|Add5~3_combout\)))) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst5|Add5~0_combout\ $ ((\b2v_inst5|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y49_N22
\b2v_inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux2~0_combout\ = (\b2v_inst5|Add5~0_combout\ & (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((!\b2v_inst5|Add5~3_combout\)))) # (!\b2v_inst5|Add5~0_combout\ & ((\b2v_inst5|Add5~1_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)) # (!\b2v_inst5|Add5~1_combout\ & ((!\b2v_inst5|Add5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y49_N10
\b2v_inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux1~0_combout\ = (\b2v_inst5|Add5~0_combout\ & (!\b2v_inst5|Add5~3_combout\ & ((\b2v_inst5|Add5~1_combout\) # (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)))) # (!\b2v_inst5|Add5~0_combout\ & 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst5|Add5~1_combout\ $ (\b2v_inst5|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y49_N28
\b2v_inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux0~0_combout\ = (\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst5|Add5~0_combout\) # (\b2v_inst5|Add5~1_combout\ $ (!\b2v_inst5|Add5~3_combout\)))) # 
-- (!\b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst5|Add5~3_combout\) # (\b2v_inst5|Add5~0_combout\ $ (!\b2v_inst5|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add5~0_combout\,
	datab => \b2v_inst5|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add5~1_combout\,
	datad => \b2v_inst5|Add5~3_combout\,
	combout => \b2v_inst3|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y48_N16
\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY(!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => VCC,
	cout => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X64_Y48_N18
\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X64_Y48_N20
\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X64_Y48_N22
\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y48_N24
\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y48_N12
\b2v_inst5|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add3~0_combout\ = \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add3~0_combout\);

-- Location: LCCOMB_X64_Y48_N6
\b2v_inst5|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add3~2_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (((\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # 
-- ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add3~2_combout\);

-- Location: LCCOMB_X70_Y48_N18
\b2v_inst5|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add3~1_combout\ = \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ $ (((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- !\b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst5|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst5|Add3~1_combout\);

-- Location: LCCOMB_X70_Y48_N28
\b2v_inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux6~0_combout\ = (\b2v_inst5|Add3~2_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst5|Add3~0_combout\ $ (!\b2v_inst5|Add3~1_combout\)))) # (!\b2v_inst5|Add3~2_combout\ & 
-- (!\b2v_inst5|Add3~0_combout\ & (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (\b2v_inst5|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y48_N6
\b2v_inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux5~0_combout\ = (\b2v_inst5|Add3~0_combout\ & ((\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((!\b2v_inst5|Add3~1_combout\))) # 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst5|Add3~2_combout\)))) # (!\b2v_inst5|Add3~0_combout\ & (!\b2v_inst5|Add3~1_combout\ & 
-- (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (!\b2v_inst5|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y48_N22
\b2v_inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux4~0_combout\ = (\b2v_inst5|Add3~2_combout\ & (!\b2v_inst5|Add3~1_combout\ & ((\b2v_inst5|Add3~0_combout\) # (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)))) # (!\b2v_inst5|Add3~2_combout\ & 
-- (\b2v_inst5|Add3~0_combout\ & (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \b2v_inst5|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y48_N4
\b2v_inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux3~0_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst5|Add3~0_combout\ & (\b2v_inst5|Add3~2_combout\ & \b2v_inst5|Add3~1_combout\)) # (!\b2v_inst5|Add3~0_combout\ & 
-- (!\b2v_inst5|Add3~2_combout\ & !\b2v_inst5|Add3~1_combout\)))) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst5|Add3~0_combout\ $ (((\b2v_inst5|Add3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y48_N30
\b2v_inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux2~0_combout\ = (\b2v_inst5|Add3~0_combout\ & (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (!\b2v_inst5|Add3~2_combout\))) # (!\b2v_inst5|Add3~0_combout\ & ((\b2v_inst5|Add3~1_combout\ & 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)) # (!\b2v_inst5|Add3~1_combout\ & ((!\b2v_inst5|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y48_N10
\b2v_inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux1~0_combout\ = (\b2v_inst5|Add3~0_combout\ & (!\b2v_inst5|Add3~2_combout\ & ((\b2v_inst5|Add3~1_combout\) # (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)))) # (!\b2v_inst5|Add3~0_combout\ & 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst5|Add3~2_combout\ $ (\b2v_inst5|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y48_N0
\b2v_inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst2|Mux0~0_combout\ = (\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst5|Add3~0_combout\) # (\b2v_inst5|Add3~2_combout\ $ (!\b2v_inst5|Add3~1_combout\)))) # 
-- (!\b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst5|Add3~2_combout\) # (\b2v_inst5|Add3~0_combout\ $ (!\b2v_inst5|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add3~0_combout\,
	datab => \b2v_inst5|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst5|Add3~2_combout\,
	datad => \b2v_inst5|Add3~1_combout\,
	combout => \b2v_inst2|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;



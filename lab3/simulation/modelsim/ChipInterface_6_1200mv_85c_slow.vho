-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "02/26/2020 18:56:06"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ChipInterface IS
    PORT (
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0)
	);
END ChipInterface;

-- Design Ports Information
-- HEX7[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ChipInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL \asdsad|Add1~0_combout\ : std_logic;
SIGNAL \asdsad|Add1~2_combout\ : std_logic;
SIGNAL \asdsad|Add1~4_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan2~0_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan3~0_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin~6_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan2~1_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~4_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~5_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
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
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \asdsad|LessThan0~0_combout\ : std_logic;
SIGNAL \asdsad|Equal0~0_combout\ : std_logic;
SIGNAL \asdsad|LessThan0~2_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \asdsad|Add0~1\ : std_logic;
SIGNAL \asdsad|Add0~3\ : std_logic;
SIGNAL \asdsad|Add0~4_combout\ : std_logic;
SIGNAL \asdsad|Add0~5\ : std_logic;
SIGNAL \asdsad|Add0~6_combout\ : std_logic;
SIGNAL \asdsad|c2|LessThan5~2_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[0]~2_combout\ : std_logic;
SIGNAL \asdsad|Add0~0_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan4~1_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin~4_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[0]~3_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[0]~7_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \asdsad|Add0~2_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan4~0_combout\ : std_logic;
SIGNAL \asdsad|c1|LessThan0~0_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin~11_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[1]~5_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[1]~9_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \asdsad|LessThan0~1_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[1]~8_combout\ : std_logic;
SIGNAL \asdsad|c1|FirstCoin[1]~10_combout\ : std_logic;
SIGNAL \seg1|b2ss|WideOr6~2_combout\ : std_logic;
SIGNAL \seg1|b2ss|Decoder0~0_combout\ : std_logic;
SIGNAL \seg1|b2ss|WideOr1~0_combout\ : std_logic;
SIGNAL \seg1|b2ss|WideOr6~3_combout\ : std_logic;
SIGNAL \asdsad|c2|LessThan5~3_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \asdsad|c2|LessThan3~0_combout\ : std_logic;
SIGNAL \asdsad|Add2~1\ : std_logic;
SIGNAL \asdsad|Add2~3\ : std_logic;
SIGNAL \asdsad|Add2~4_combout\ : std_logic;
SIGNAL \asdsad|Add2~2_combout\ : std_logic;
SIGNAL \asdsad|Add2~0_combout\ : std_logic;
SIGNAL \asdsad|c2|LessThan0~0_combout\ : std_logic;
SIGNAL \asdsad|c2|LessThan1~0_combout\ : std_logic;
SIGNAL \asdsad|c2|LessThan2~0_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[1]~8_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[1]~9_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~0_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~1_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~2_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~3_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin[0]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \asdsad|Add1~1\ : std_logic;
SIGNAL \asdsad|Add1~3\ : std_logic;
SIGNAL \asdsad|Add1~5\ : std_logic;
SIGNAL \asdsad|Add1~6_combout\ : std_logic;
SIGNAL \asdsad|Add2~5\ : std_logic;
SIGNAL \asdsad|Add2~6_combout\ : std_logic;
SIGNAL \asdsad|c2|FirstCoin~7_combout\ : std_logic;
SIGNAL \seg2|b2ss|WideOr6~0_combout\ : std_logic;
SIGNAL \seg2|b2ss|Decoder0~2_combout\ : std_logic;
SIGNAL \seg2|b2ss|WideOr1~0_combout\ : std_logic;
SIGNAL \seg2|b2ss|WideOr6~1_combout\ : std_logic;
SIGNAL \asdsad|Add3~1\ : std_logic;
SIGNAL \asdsad|Add3~2_combout\ : std_logic;
SIGNAL \asdsad|Add3~3\ : std_logic;
SIGNAL \asdsad|Add3~5\ : std_logic;
SIGNAL \asdsad|Add3~6_combout\ : std_logic;
SIGNAL \asdsad|Add3~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \hex4val[2]~1_combout\ : std_logic;
SIGNAL \asdsad|Add3~0_combout\ : std_logic;
SIGNAL \asdsad|Remaining[0]~2_combout\ : std_logic;
SIGNAL \hex4val[3]~2_combout\ : std_logic;
SIGNAL \hex4val[1]~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr6~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr5~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr4~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr3~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr2~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr1~0_combout\ : std_logic;
SIGNAL \seg4|b2ss|WideOr0~0_combout\ : std_logic;
SIGNAL \hex4val[3]~3_combout\ : std_logic;
SIGNAL \asdsad|r1|NotEnoughChange~0_combout\ : std_logic;
SIGNAL \asdsad|Equal0~1_combout\ : std_logic;
SIGNAL \asdsad|Equal0~2_combout\ : std_logic;
SIGNAL \seg4|b2ss|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\seg4|b2ss|ALT_INV_WideOr0~0_combout\ <= NOT \seg4|b2ss|WideOr0~0_combout\;

-- Location: LCCOMB_X25_Y19_N2
\asdsad|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add1~0_combout\ = (\SW[0]~input_o\ & ((GND) # (!\SW[14]~input_o\))) # (!\SW[0]~input_o\ & (\SW[14]~input_o\ $ (GND)))
-- \asdsad|Add1~1\ = CARRY((\SW[0]~input_o\) # (!\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	combout => \asdsad|Add1~0_combout\,
	cout => \asdsad|Add1~1\);

-- Location: LCCOMB_X25_Y19_N4
\asdsad|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add1~2_combout\ = (\SW[15]~input_o\ & ((\SW[1]~input_o\ & (!\asdsad|Add1~1\)) # (!\SW[1]~input_o\ & ((\asdsad|Add1~1\) # (GND))))) # (!\SW[15]~input_o\ & ((\SW[1]~input_o\ & (\asdsad|Add1~1\ & VCC)) # (!\SW[1]~input_o\ & (!\asdsad|Add1~1\))))
-- \asdsad|Add1~3\ = CARRY((\SW[15]~input_o\ & ((!\asdsad|Add1~1\) # (!\SW[1]~input_o\))) # (!\SW[15]~input_o\ & (!\SW[1]~input_o\ & !\asdsad|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \asdsad|Add1~1\,
	combout => \asdsad|Add1~2_combout\,
	cout => \asdsad|Add1~3\);

-- Location: LCCOMB_X25_Y19_N6
\asdsad|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add1~4_combout\ = ((\SW[2]~input_o\ $ (\SW[16]~input_o\ $ (\asdsad|Add1~3\)))) # (GND)
-- \asdsad|Add1~5\ = CARRY((\SW[2]~input_o\ & ((!\asdsad|Add1~3\) # (!\SW[16]~input_o\))) # (!\SW[2]~input_o\ & (!\SW[16]~input_o\ & !\asdsad|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	cin => \asdsad|Add1~3\,
	combout => \asdsad|Add1~4_combout\,
	cout => \asdsad|Add1~5\);

-- Location: LCCOMB_X25_Y18_N26
\asdsad|c1|LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan2~0_combout\ = (\asdsad|Add0~0_combout\ & \asdsad|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asdsad|Add0~0_combout\,
	datad => \asdsad|Add0~2_combout\,
	combout => \asdsad|c1|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\asdsad|c1|LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan3~0_combout\ = (\SW[11]~input_o\) # (\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[11]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \asdsad|c1|LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\asdsad|c1|FirstCoin~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin~6_combout\ = (\asdsad|c1|LessThan0~0_combout\ & (\asdsad|c1|LessThan3~0_combout\ & ((!\asdsad|c2|LessThan5~2_combout\)))) # (!\asdsad|c1|LessThan0~0_combout\ & ((\asdsad|c1|LessThan3~0_combout\) # 
-- ((!\asdsad|c1|FirstCoin[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan0~0_combout\,
	datab => \asdsad|c1|LessThan3~0_combout\,
	datac => \asdsad|c1|FirstCoin[1]~5_combout\,
	datad => \asdsad|c2|LessThan5~2_combout\,
	combout => \asdsad|c1|FirstCoin~6_combout\);

-- Location: LCCOMB_X25_Y18_N2
\asdsad|c1|LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan2~1_combout\ = (!\asdsad|LessThan0~2_combout\ & ((\asdsad|Add0~4_combout\) # ((\asdsad|Add0~2_combout\ & \asdsad|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add0~2_combout\,
	datab => \asdsad|Add0~0_combout\,
	datac => \asdsad|Add0~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\asdsad|c2|FirstCoin[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~4_combout\ = (\asdsad|Add0~6_combout\) # ((\asdsad|LessThan0~2_combout\) # (\asdsad|Add0~4_combout\ $ (\asdsad|c1|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add0~6_combout\,
	datab => \asdsad|Add0~4_combout\,
	datac => \asdsad|c1|LessThan4~0_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c2|FirstCoin[0]~4_combout\);

-- Location: LCCOMB_X24_Y18_N22
\asdsad|c2|FirstCoin[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~5_combout\ = (\SW[8]~input_o\ & ((\asdsad|c2|LessThan5~3_combout\ & (\asdsad|c2|FirstCoin[0]~4_combout\)) # (!\asdsad|c2|LessThan5~3_combout\ & ((\asdsad|c1|LessThan3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[0]~4_combout\,
	datab => \asdsad|c1|LessThan3~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \asdsad|c2|LessThan5~3_combout\,
	combout => \asdsad|c2|FirstCoin[0]~5_combout\);

-- Location: IOIBUF_X25_Y41_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\SW[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOOBUF_X52_Y32_N23
\HEX7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|b2ss|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\HEX7[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|c1|FirstCoin~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\HEX7[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|b2ss|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\HEX7[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|b2ss|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\HEX7[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|c1|FirstCoin[0]~7_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\HEX7[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|b2ss|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\HEX7[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|b2ss|WideOr6~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\HEX6[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|b2ss|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\HEX6[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|c2|FirstCoin~7_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\HEX6[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|b2ss|Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\HEX6[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|b2ss|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\HEX6[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|c2|FirstCoin[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\HEX6[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|b2ss|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\HEX6[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|b2ss|WideOr6~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\HEX5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\HEX5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\HEX5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\HEX5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\HEX5[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\HEX5[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\HEX5[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\HEX4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\HEX4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\HEX4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\HEX4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\HEX4[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\HEX4[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\HEX4[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg4|b2ss|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\LEDR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\LEDR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X5_Y41_N9
\LEDR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\LEDR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\LEDR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\LEDR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\LEDR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\LEDR[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\LEDR[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\LEDR[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\LEDR[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\LEDR[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\LEDR[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\LEDR[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\LEDR[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\LEDR[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|r1|NotEnoughChange~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\LEDR[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \asdsad|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X25_Y41_N1
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\SW[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\SW[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X25_Y18_N18
\asdsad|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|LessThan0~0_combout\ = (\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\SW[16]~input_o\ & \SW[17]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[17]~input_o\) # ((!\SW[2]~input_o\ & \SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \asdsad|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y18_N14
\asdsad|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Equal0~0_combout\ = (\SW[2]~input_o\ & (\SW[16]~input_o\ & (\SW[3]~input_o\ $ (!\SW[17]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[16]~input_o\ & (\SW[3]~input_o\ $ (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \asdsad|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y18_N24
\asdsad|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|LessThan0~2_combout\ = (\asdsad|LessThan0~0_combout\) # ((\asdsad|LessThan0~1_combout\ & \asdsad|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~1_combout\,
	datab => \asdsad|LessThan0~0_combout\,
	datac => \asdsad|Equal0~0_combout\,
	combout => \asdsad|LessThan0~2_combout\);

-- Location: IOIBUF_X29_Y0_N1
\SW[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\SW[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X25_Y18_N4
\asdsad|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add0~0_combout\ = (\SW[0]~input_o\ & ((GND) # (!\SW[14]~input_o\))) # (!\SW[0]~input_o\ & (\SW[14]~input_o\ $ (GND)))
-- \asdsad|Add0~1\ = CARRY((\SW[0]~input_o\) # (!\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	combout => \asdsad|Add0~0_combout\,
	cout => \asdsad|Add0~1\);

-- Location: LCCOMB_X25_Y18_N6
\asdsad|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add0~2_combout\ = (\SW[1]~input_o\ & ((\SW[15]~input_o\ & (!\asdsad|Add0~1\)) # (!\SW[15]~input_o\ & (\asdsad|Add0~1\ & VCC)))) # (!\SW[1]~input_o\ & ((\SW[15]~input_o\ & ((\asdsad|Add0~1\) # (GND))) # (!\SW[15]~input_o\ & (!\asdsad|Add0~1\))))
-- \asdsad|Add0~3\ = CARRY((\SW[1]~input_o\ & (\SW[15]~input_o\ & !\asdsad|Add0~1\)) # (!\SW[1]~input_o\ & ((\SW[15]~input_o\) # (!\asdsad|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[15]~input_o\,
	datad => VCC,
	cin => \asdsad|Add0~1\,
	combout => \asdsad|Add0~2_combout\,
	cout => \asdsad|Add0~3\);

-- Location: LCCOMB_X25_Y18_N8
\asdsad|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add0~4_combout\ = ((\SW[2]~input_o\ $ (\SW[16]~input_o\ $ (\asdsad|Add0~3\)))) # (GND)
-- \asdsad|Add0~5\ = CARRY((\SW[2]~input_o\ & ((!\asdsad|Add0~3\) # (!\SW[16]~input_o\))) # (!\SW[2]~input_o\ & (!\SW[16]~input_o\ & !\asdsad|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	cin => \asdsad|Add0~3\,
	combout => \asdsad|Add0~4_combout\,
	cout => \asdsad|Add0~5\);

-- Location: LCCOMB_X25_Y18_N10
\asdsad|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add0~6_combout\ = \SW[3]~input_o\ $ (\asdsad|Add0~5\ $ (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \SW[17]~input_o\,
	cin => \asdsad|Add0~5\,
	combout => \asdsad|Add0~6_combout\);

-- Location: LCCOMB_X25_Y18_N28
\asdsad|c2|LessThan5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan5~2_combout\ = (\asdsad|LessThan0~2_combout\) # ((!\asdsad|c1|LessThan2~0_combout\ & (!\asdsad|Add0~4_combout\ & !\asdsad|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan2~0_combout\,
	datab => \asdsad|LessThan0~2_combout\,
	datac => \asdsad|Add0~4_combout\,
	datad => \asdsad|Add0~6_combout\,
	combout => \asdsad|c2|LessThan5~2_combout\);

-- Location: LCCOMB_X24_Y18_N0
\asdsad|c1|FirstCoin[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[0]~2_combout\ = (!\asdsad|LessThan0~2_combout\ & (((!\asdsad|c1|LessThan4~0_combout\ & \asdsad|Add0~4_combout\)) # (!\asdsad|c2|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan4~0_combout\,
	datab => \asdsad|c2|LessThan5~2_combout\,
	datac => \asdsad|Add0~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|FirstCoin[0]~2_combout\);

-- Location: LCCOMB_X25_Y18_N30
\asdsad|c1|LessThan4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan4~1_combout\ = (\asdsad|Add0~2_combout\) # ((\asdsad|Add0~0_combout\) # ((\asdsad|Add0~4_combout\) # (\asdsad|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add0~2_combout\,
	datab => \asdsad|Add0~0_combout\,
	datac => \asdsad|Add0~4_combout\,
	datad => \asdsad|Add0~6_combout\,
	combout => \asdsad|c1|LessThan4~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\asdsad|c1|FirstCoin~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin~4_combout\ = (\asdsad|c1|LessThan0~0_combout\ & (\asdsad|c2|LessThan5~2_combout\ & ((\asdsad|LessThan0~2_combout\) # (!\asdsad|c1|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan0~0_combout\,
	datab => \asdsad|c2|LessThan5~2_combout\,
	datac => \asdsad|c1|LessThan4~1_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|FirstCoin~4_combout\);

-- Location: IOIBUF_X23_Y0_N1
\SW[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\SW[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X24_Y18_N18
\asdsad|c1|FirstCoin[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[0]~3_combout\ = (!\asdsad|LessThan0~2_combout\ & ((\SW[9]~input_o\) # (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|FirstCoin[0]~3_combout\);

-- Location: LCCOMB_X24_Y18_N4
\asdsad|c1|FirstCoin[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[0]~7_combout\ = (\asdsad|c1|FirstCoin~6_combout\ & (\asdsad|c1|FirstCoin[0]~2_combout\)) # (!\asdsad|c1|FirstCoin~6_combout\ & ((\asdsad|c1|FirstCoin~4_combout\ & (\asdsad|c1|FirstCoin[0]~2_combout\)) # 
-- (!\asdsad|c1|FirstCoin~4_combout\ & ((\asdsad|c1|FirstCoin[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|FirstCoin~6_combout\,
	datab => \asdsad|c1|FirstCoin[0]~2_combout\,
	datac => \asdsad|c1|FirstCoin~4_combout\,
	datad => \asdsad|c1|FirstCoin[0]~3_combout\,
	combout => \asdsad|c1|FirstCoin[0]~7_combout\);

-- Location: IOIBUF_X23_Y41_N1
\SW[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X25_Y18_N0
\asdsad|c1|LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan4~0_combout\ = (!\asdsad|Add0~0_combout\ & !\asdsad|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \asdsad|Add0~0_combout\,
	datad => \asdsad|Add0~2_combout\,
	combout => \asdsad|c1|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\asdsad|c1|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|LessThan0~0_combout\ = (\asdsad|LessThan0~2_combout\) # ((!\asdsad|Add0~6_combout\ & ((\asdsad|c1|LessThan4~0_combout\) # (!\asdsad|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add0~6_combout\,
	datab => \asdsad|Add0~4_combout\,
	datac => \asdsad|c1|LessThan4~0_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\asdsad|c1|FirstCoin~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin~11_combout\ = (!\asdsad|c1|LessThan0~0_combout\ & ((\SW[12]~input_o\) # (\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \asdsad|c1|LessThan0~0_combout\,
	combout => \asdsad|c1|FirstCoin~11_combout\);

-- Location: IOIBUF_X25_Y0_N8
\SW[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X24_Y18_N24
\asdsad|c1|FirstCoin[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[1]~5_combout\ = (!\SW[13]~input_o\ & !\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \asdsad|c1|FirstCoin[1]~5_combout\);

-- Location: LCCOMB_X24_Y18_N14
\asdsad|c1|FirstCoin[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[1]~9_combout\ = (!\asdsad|Add0~6_combout\ & (((\asdsad|c1|LessThan4~0_combout\) # (\asdsad|LessThan0~2_combout\)) # (!\asdsad|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add0~6_combout\,
	datab => \asdsad|Add0~4_combout\,
	datac => \asdsad|c1|LessThan4~0_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c1|FirstCoin[1]~9_combout\);

-- Location: IOIBUF_X25_Y0_N1
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X25_Y18_N12
\asdsad|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|LessThan0~1_combout\ = (\SW[1]~input_o\ & (\SW[15]~input_o\ & (!\SW[0]~input_o\ & \SW[14]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[15]~input_o\) # ((!\SW[0]~input_o\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \asdsad|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y18_N16
\asdsad|c1|FirstCoin[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[1]~8_combout\ = (\asdsad|c1|LessThan3~0_combout\ & (!\asdsad|LessThan0~0_combout\ & ((!\asdsad|LessThan0~1_combout\) # (!\asdsad|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan3~0_combout\,
	datab => \asdsad|LessThan0~0_combout\,
	datac => \asdsad|Equal0~0_combout\,
	datad => \asdsad|LessThan0~1_combout\,
	combout => \asdsad|c1|FirstCoin[1]~8_combout\);

-- Location: LCCOMB_X24_Y18_N16
\asdsad|c1|FirstCoin[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c1|FirstCoin[1]~10_combout\ = (\asdsad|c1|FirstCoin[1]~8_combout\ & ((\asdsad|c1|FirstCoin[1]~9_combout\ & (\asdsad|c1|LessThan2~1_combout\)) # (!\asdsad|c1|FirstCoin[1]~9_combout\ & ((\asdsad|c1|FirstCoin[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|LessThan2~1_combout\,
	datab => \asdsad|c1|FirstCoin[1]~5_combout\,
	datac => \asdsad|c1|FirstCoin[1]~9_combout\,
	datad => \asdsad|c1|FirstCoin[1]~8_combout\,
	combout => \asdsad|c1|FirstCoin[1]~10_combout\);

-- Location: LCCOMB_X24_Y32_N24
\seg1|b2ss|WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg1|b2ss|WideOr6~2_combout\ = (\asdsad|c1|FirstCoin[0]~7_combout\ & (!\asdsad|c1|FirstCoin~11_combout\ & !\asdsad|c1|FirstCoin[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|FirstCoin[0]~7_combout\,
	datab => \asdsad|c1|FirstCoin~11_combout\,
	datad => \asdsad|c1|FirstCoin[1]~10_combout\,
	combout => \seg1|b2ss|WideOr6~2_combout\);

-- Location: LCCOMB_X24_Y32_N2
\seg1|b2ss|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg1|b2ss|Decoder0~0_combout\ = (!\asdsad|c1|FirstCoin[0]~7_combout\ & \asdsad|c1|FirstCoin[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|FirstCoin[0]~7_combout\,
	datad => \asdsad|c1|FirstCoin[1]~10_combout\,
	combout => \seg1|b2ss|Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y32_N28
\seg1|b2ss|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg1|b2ss|WideOr1~0_combout\ = (\asdsad|c1|FirstCoin[1]~10_combout\) # ((\asdsad|c1|FirstCoin[0]~7_combout\ & !\asdsad|c1|FirstCoin~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|FirstCoin[0]~7_combout\,
	datab => \asdsad|c1|FirstCoin~11_combout\,
	datad => \asdsad|c1|FirstCoin[1]~10_combout\,
	combout => \seg1|b2ss|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\seg1|b2ss|WideOr6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg1|b2ss|WideOr6~3_combout\ = (!\asdsad|c1|FirstCoin[1]~10_combout\ & ((\asdsad|c1|LessThan0~0_combout\) # ((!\SW[13]~input_o\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c1|FirstCoin[1]~10_combout\,
	datab => \asdsad|c1|LessThan0~0_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \seg1|b2ss|WideOr6~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\asdsad|c2|LessThan5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan5~3_combout\ = (\asdsad|c1|LessThan0~0_combout\ & (((\asdsad|c2|LessThan5~2_combout\)))) # (!\asdsad|c1|LessThan0~0_combout\ & ((\SW[12]~input_o\) # ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \asdsad|c1|LessThan0~0_combout\,
	datac => \SW[13]~input_o\,
	datad => \asdsad|c2|LessThan5~2_combout\,
	combout => \asdsad|c2|LessThan5~3_combout\);

-- Location: IOIBUF_X52_Y16_N8
\SW[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X24_Y17_N2
\asdsad|c2|LessThan3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan3~0_combout\ = (\SW[11]~input_o\) # ((\SW[10]~input_o\ & ((\asdsad|c2|LessThan5~3_combout\) # (\asdsad|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \asdsad|c2|LessThan5~3_combout\,
	datac => \SW[11]~input_o\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c2|LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\asdsad|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add2~0_combout\ = (\asdsad|Add1~0_combout\ & ((GND) # (!\asdsad|c1|FirstCoin[0]~7_combout\))) # (!\asdsad|Add1~0_combout\ & (\asdsad|c1|FirstCoin[0]~7_combout\ $ (GND)))
-- \asdsad|Add2~1\ = CARRY((\asdsad|Add1~0_combout\) # (!\asdsad|c1|FirstCoin[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add1~0_combout\,
	datab => \asdsad|c1|FirstCoin[0]~7_combout\,
	datad => VCC,
	combout => \asdsad|Add2~0_combout\,
	cout => \asdsad|Add2~1\);

-- Location: LCCOMB_X24_Y19_N26
\asdsad|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add2~2_combout\ = (\asdsad|Add1~2_combout\ & ((\asdsad|c1|FirstCoin[1]~10_combout\ & (!\asdsad|Add2~1\)) # (!\asdsad|c1|FirstCoin[1]~10_combout\ & (\asdsad|Add2~1\ & VCC)))) # (!\asdsad|Add1~2_combout\ & ((\asdsad|c1|FirstCoin[1]~10_combout\ & 
-- ((\asdsad|Add2~1\) # (GND))) # (!\asdsad|c1|FirstCoin[1]~10_combout\ & (!\asdsad|Add2~1\))))
-- \asdsad|Add2~3\ = CARRY((\asdsad|Add1~2_combout\ & (\asdsad|c1|FirstCoin[1]~10_combout\ & !\asdsad|Add2~1\)) # (!\asdsad|Add1~2_combout\ & ((\asdsad|c1|FirstCoin[1]~10_combout\) # (!\asdsad|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add1~2_combout\,
	datab => \asdsad|c1|FirstCoin[1]~10_combout\,
	datad => VCC,
	cin => \asdsad|Add2~1\,
	combout => \asdsad|Add2~2_combout\,
	cout => \asdsad|Add2~3\);

-- Location: LCCOMB_X24_Y19_N28
\asdsad|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add2~4_combout\ = ((\asdsad|Add1~4_combout\ $ (\asdsad|c1|FirstCoin~11_combout\ $ (\asdsad|Add2~3\)))) # (GND)
-- \asdsad|Add2~5\ = CARRY((\asdsad|Add1~4_combout\ & ((!\asdsad|Add2~3\) # (!\asdsad|c1|FirstCoin~11_combout\))) # (!\asdsad|Add1~4_combout\ & (!\asdsad|c1|FirstCoin~11_combout\ & !\asdsad|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add1~4_combout\,
	datab => \asdsad|c1|FirstCoin~11_combout\,
	datad => VCC,
	cin => \asdsad|Add2~3\,
	combout => \asdsad|Add2~4_combout\,
	cout => \asdsad|Add2~5\);

-- Location: LCCOMB_X24_Y19_N2
\asdsad|c2|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan0~0_combout\ = (\asdsad|LessThan0~2_combout\) # (((!\asdsad|Add2~2_combout\ & !\asdsad|Add2~0_combout\)) # (!\asdsad|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|Add2~4_combout\,
	datac => \asdsad|Add2~2_combout\,
	datad => \asdsad|Add2~0_combout\,
	combout => \asdsad|c2|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\asdsad|c2|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan1~0_combout\ = (\SW[13]~input_o\) # ((\SW[12]~input_o\ & ((\asdsad|c1|LessThan0~0_combout\) # (\asdsad|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \asdsad|c1|LessThan0~0_combout\,
	datac => \SW[13]~input_o\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c2|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\asdsad|c2|LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|LessThan2~0_combout\ = (!\asdsad|LessThan0~2_combout\ & ((\asdsad|Add2~4_combout\) # ((\asdsad|Add2~2_combout\ & \asdsad|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|Add2~4_combout\,
	datac => \asdsad|Add2~2_combout\,
	datad => \asdsad|Add2~0_combout\,
	combout => \asdsad|c2|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\asdsad|c2|FirstCoin[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[1]~8_combout\ = (\asdsad|Add2~6_combout\ & (((!\asdsad|c2|LessThan1~0_combout\)))) # (!\asdsad|Add2~6_combout\ & ((\asdsad|c2|LessThan0~0_combout\ & ((\asdsad|c2|LessThan2~0_combout\))) # (!\asdsad|c2|LessThan0~0_combout\ & 
-- (!\asdsad|c2|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add2~6_combout\,
	datab => \asdsad|c2|LessThan0~0_combout\,
	datac => \asdsad|c2|LessThan1~0_combout\,
	datad => \asdsad|c2|LessThan2~0_combout\,
	combout => \asdsad|c2|FirstCoin[1]~8_combout\);

-- Location: LCCOMB_X24_Y17_N12
\asdsad|c2|FirstCoin[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[1]~9_combout\ = (\asdsad|c2|LessThan3~0_combout\ & (\asdsad|c2|FirstCoin[1]~8_combout\ & !\asdsad|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asdsad|c2|LessThan3~0_combout\,
	datac => \asdsad|c2|FirstCoin[1]~8_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|c2|FirstCoin[1]~9_combout\);

-- Location: LCCOMB_X24_Y19_N4
\asdsad|c2|FirstCoin[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~0_combout\ = (\asdsad|c2|LessThan3~0_combout\ & (!\asdsad|Add2~6_combout\ & ((\asdsad|c2|LessThan0~0_combout\)))) # (!\asdsad|c2|LessThan3~0_combout\ & (\asdsad|c2|LessThan1~0_combout\ & ((\asdsad|Add2~6_combout\) # 
-- (!\asdsad|c2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add2~6_combout\,
	datab => \asdsad|c2|LessThan3~0_combout\,
	datac => \asdsad|c2|LessThan1~0_combout\,
	datad => \asdsad|c2|LessThan0~0_combout\,
	combout => \asdsad|c2|FirstCoin[0]~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\asdsad|c2|FirstCoin[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~1_combout\ = (!\asdsad|LessThan0~2_combout\ & ((\asdsad|c2|LessThan3~0_combout\ & ((\asdsad|c2|LessThan2~0_combout\) # (!\asdsad|c2|FirstCoin[0]~0_combout\))) # (!\asdsad|c2|LessThan3~0_combout\ & 
-- (\asdsad|c2|FirstCoin[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|c2|LessThan3~0_combout\,
	datac => \asdsad|c2|FirstCoin[0]~0_combout\,
	datad => \asdsad|c2|LessThan2~0_combout\,
	combout => \asdsad|c2|FirstCoin[0]~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\asdsad|c2|FirstCoin[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~2_combout\ = (\asdsad|Add2~2_combout\) # ((\asdsad|Add2~0_combout\) # ((!\asdsad|LessThan0~2_combout\ & \asdsad|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|Add2~4_combout\,
	datac => \asdsad|Add2~2_combout\,
	datad => \asdsad|Add2~0_combout\,
	combout => \asdsad|c2|FirstCoin[0]~2_combout\);

-- Location: LCCOMB_X24_Y19_N10
\asdsad|c2|FirstCoin[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~3_combout\ = (!\asdsad|LessThan0~2_combout\ & ((\asdsad|Add2~6_combout\) # ((\asdsad|c2|FirstCoin[0]~2_combout\) # (!\asdsad|c2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add2~6_combout\,
	datab => \asdsad|c2|FirstCoin[0]~2_combout\,
	datac => \asdsad|LessThan0~2_combout\,
	datad => \asdsad|c2|LessThan0~0_combout\,
	combout => \asdsad|c2|FirstCoin[0]~3_combout\);

-- Location: LCCOMB_X24_Y18_N8
\asdsad|c2|FirstCoin[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin[0]~6_combout\ = (\asdsad|c2|FirstCoin[0]~1_combout\) # ((\asdsad|c2|FirstCoin[0]~3_combout\ & ((\asdsad|c2|FirstCoin[0]~5_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[0]~5_combout\,
	datab => \SW[9]~input_o\,
	datac => \asdsad|c2|FirstCoin[0]~1_combout\,
	datad => \asdsad|c2|FirstCoin[0]~3_combout\,
	combout => \asdsad|c2|FirstCoin[0]~6_combout\);

-- Location: IOIBUF_X18_Y41_N8
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X25_Y19_N8
\asdsad|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add1~6_combout\ = \SW[3]~input_o\ $ (\asdsad|Add1~5\ $ (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \SW[17]~input_o\,
	cin => \asdsad|Add1~5\,
	combout => \asdsad|Add1~6_combout\);

-- Location: LCCOMB_X24_Y19_N30
\asdsad|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add2~6_combout\ = \asdsad|Add1~6_combout\ $ (!\asdsad|Add2~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \asdsad|Add1~6_combout\,
	cin => \asdsad|Add2~5\,
	combout => \asdsad|Add2~6_combout\);

-- Location: LCCOMB_X24_Y19_N12
\asdsad|c2|FirstCoin~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|c2|FirstCoin~7_combout\ = (\asdsad|c2|LessThan1~0_combout\ & (((!\asdsad|LessThan0~2_combout\ & \asdsad|Add2~6_combout\)) # (!\asdsad|c2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|c2|LessThan1~0_combout\,
	datac => \asdsad|Add2~6_combout\,
	datad => \asdsad|c2|LessThan0~0_combout\,
	combout => \asdsad|c2|FirstCoin~7_combout\);

-- Location: LCCOMB_X24_Y17_N14
\seg2|b2ss|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg2|b2ss|WideOr6~0_combout\ = (!\asdsad|c2|FirstCoin[1]~9_combout\ & (\asdsad|c2|FirstCoin[0]~6_combout\ & !\asdsad|c2|FirstCoin~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[1]~9_combout\,
	datac => \asdsad|c2|FirstCoin[0]~6_combout\,
	datad => \asdsad|c2|FirstCoin~7_combout\,
	combout => \seg2|b2ss|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\seg2|b2ss|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg2|b2ss|Decoder0~2_combout\ = (!\asdsad|c2|FirstCoin[0]~6_combout\ & (\asdsad|c2|LessThan3~0_combout\ & (\asdsad|c2|FirstCoin[1]~8_combout\ & !\asdsad|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[0]~6_combout\,
	datab => \asdsad|c2|LessThan3~0_combout\,
	datac => \asdsad|c2|FirstCoin[1]~8_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \seg2|b2ss|Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y17_N24
\seg2|b2ss|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg2|b2ss|WideOr1~0_combout\ = (\asdsad|c2|FirstCoin[1]~9_combout\) # ((\asdsad|c2|FirstCoin[0]~6_combout\ & !\asdsad|c2|FirstCoin~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[1]~9_combout\,
	datac => \asdsad|c2|FirstCoin[0]~6_combout\,
	datad => \asdsad|c2|FirstCoin~7_combout\,
	combout => \seg2|b2ss|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y17_N10
\seg2|b2ss|WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg2|b2ss|WideOr6~1_combout\ = (!\asdsad|c2|FirstCoin~7_combout\ & ((\asdsad|LessThan0~2_combout\) # ((!\asdsad|c2|FirstCoin[1]~8_combout\) # (!\asdsad|c2|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~2_combout\,
	datab => \asdsad|c2|LessThan3~0_combout\,
	datac => \asdsad|c2|FirstCoin[1]~8_combout\,
	datad => \asdsad|c2|FirstCoin~7_combout\,
	combout => \seg2|b2ss|WideOr6~1_combout\);

-- Location: LCCOMB_X24_Y19_N14
\asdsad|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add3~0_combout\ = (\asdsad|c2|FirstCoin[0]~6_combout\ & (\asdsad|Add2~0_combout\ $ (VCC))) # (!\asdsad|c2|FirstCoin[0]~6_combout\ & ((\asdsad|Add2~0_combout\) # (GND)))
-- \asdsad|Add3~1\ = CARRY((\asdsad|Add2~0_combout\) # (!\asdsad|c2|FirstCoin[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin[0]~6_combout\,
	datab => \asdsad|Add2~0_combout\,
	datad => VCC,
	combout => \asdsad|Add3~0_combout\,
	cout => \asdsad|Add3~1\);

-- Location: LCCOMB_X24_Y19_N16
\asdsad|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add3~2_combout\ = (\asdsad|Add2~2_combout\ & ((\asdsad|c2|FirstCoin[1]~9_combout\ & (!\asdsad|Add3~1\)) # (!\asdsad|c2|FirstCoin[1]~9_combout\ & (\asdsad|Add3~1\ & VCC)))) # (!\asdsad|Add2~2_combout\ & ((\asdsad|c2|FirstCoin[1]~9_combout\ & 
-- ((\asdsad|Add3~1\) # (GND))) # (!\asdsad|c2|FirstCoin[1]~9_combout\ & (!\asdsad|Add3~1\))))
-- \asdsad|Add3~3\ = CARRY((\asdsad|Add2~2_combout\ & (\asdsad|c2|FirstCoin[1]~9_combout\ & !\asdsad|Add3~1\)) # (!\asdsad|Add2~2_combout\ & ((\asdsad|c2|FirstCoin[1]~9_combout\) # (!\asdsad|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add2~2_combout\,
	datab => \asdsad|c2|FirstCoin[1]~9_combout\,
	datad => VCC,
	cin => \asdsad|Add3~1\,
	combout => \asdsad|Add3~2_combout\,
	cout => \asdsad|Add3~3\);

-- Location: LCCOMB_X24_Y19_N18
\asdsad|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add3~4_combout\ = ((\asdsad|c2|FirstCoin~7_combout\ $ (\asdsad|Add2~4_combout\ $ (\asdsad|Add3~3\)))) # (GND)
-- \asdsad|Add3~5\ = CARRY((\asdsad|c2|FirstCoin~7_combout\ & (\asdsad|Add2~4_combout\ & !\asdsad|Add3~3\)) # (!\asdsad|c2|FirstCoin~7_combout\ & ((\asdsad|Add2~4_combout\) # (!\asdsad|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|c2|FirstCoin~7_combout\,
	datab => \asdsad|Add2~4_combout\,
	datad => VCC,
	cin => \asdsad|Add3~3\,
	combout => \asdsad|Add3~4_combout\,
	cout => \asdsad|Add3~5\);

-- Location: LCCOMB_X24_Y19_N20
\asdsad|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Add3~6_combout\ = \asdsad|Add2~6_combout\ $ (!\asdsad|Add3~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add2~6_combout\,
	cin => \asdsad|Add3~5\,
	combout => \asdsad|Add3~6_combout\);

-- Location: LCCOMB_X39_Y15_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((\asdsad|LessThan0~2_combout\) # ((!\asdsad|Add3~2_combout\ & !\asdsad|Add3~4_combout\))) # (!\asdsad|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add3~2_combout\,
	datab => \asdsad|Add3~6_combout\,
	datac => \asdsad|Add3~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y15_N12
\hex4val[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hex4val[2]~1_combout\ = (\asdsad|Add3~4_combout\ & (!\asdsad|LessThan0~2_combout\ & ((\asdsad|Add3~2_combout\) # (!\asdsad|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add3~2_combout\,
	datab => \asdsad|Add3~6_combout\,
	datac => \asdsad|Add3~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \hex4val[2]~1_combout\);

-- Location: LCCOMB_X25_Y18_N22
\asdsad|Remaining[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Remaining[0]~2_combout\ = (\asdsad|Add3~0_combout\ & (!\asdsad|LessThan0~0_combout\ & ((!\asdsad|Equal0~0_combout\) # (!\asdsad|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|LessThan0~1_combout\,
	datab => \asdsad|Add3~0_combout\,
	datac => \asdsad|Equal0~0_combout\,
	datad => \asdsad|LessThan0~0_combout\,
	combout => \asdsad|Remaining[0]~2_combout\);

-- Location: LCCOMB_X39_Y15_N30
\hex4val[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hex4val[3]~2_combout\ = (!\asdsad|Add3~2_combout\ & (\asdsad|Add3~6_combout\ & (!\asdsad|Add3~4_combout\ & !\asdsad|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add3~2_combout\,
	datab => \asdsad|Add3~6_combout\,
	datac => \asdsad|Add3~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \hex4val[3]~2_combout\);

-- Location: LCCOMB_X39_Y15_N18
\hex4val[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hex4val[1]~0_combout\ = (\asdsad|LessThan0~2_combout\) # ((\asdsad|Add3~2_combout\ & (\asdsad|Add3~6_combout\)) # (!\asdsad|Add3~2_combout\ & ((!\asdsad|Add3~4_combout\) # (!\asdsad|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add3~2_combout\,
	datab => \asdsad|Add3~6_combout\,
	datac => \asdsad|Add3~4_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \hex4val[1]~0_combout\);

-- Location: LCCOMB_X39_Y15_N24
\seg4|b2ss|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr6~0_combout\ = (\hex4val[3]~2_combout\ & (!\hex4val[2]~1_combout\ & ((!\hex4val[1]~0_combout\)))) # (!\hex4val[3]~2_combout\ & (\hex4val[1]~0_combout\ & (\hex4val[2]~1_combout\ $ (\asdsad|Remaining[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr6~0_combout\);

-- Location: LCCOMB_X39_Y15_N2
\seg4|b2ss|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr5~0_combout\ = (\hex4val[2]~1_combout\ & (!\hex4val[3]~2_combout\ & (\asdsad|Remaining[0]~2_combout\ $ (!\hex4val[1]~0_combout\)))) # (!\hex4val[2]~1_combout\ & (((\hex4val[3]~2_combout\ & !\hex4val[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr5~0_combout\);

-- Location: LCCOMB_X39_Y15_N20
\seg4|b2ss|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr4~0_combout\ = (!\hex4val[2]~1_combout\ & (!\hex4val[1]~0_combout\ & ((\hex4val[3]~2_combout\) # (!\asdsad|Remaining[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr4~0_combout\);

-- Location: LCCOMB_X39_Y15_N22
\seg4|b2ss|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr3~0_combout\ = (\hex4val[2]~1_combout\ & (!\hex4val[3]~2_combout\ & (\asdsad|Remaining[0]~2_combout\ $ (\hex4val[1]~0_combout\)))) # (!\hex4val[2]~1_combout\ & ((\hex4val[1]~0_combout\ & (\asdsad|Remaining[0]~2_combout\)) # 
-- (!\hex4val[1]~0_combout\ & ((\hex4val[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr3~0_combout\);

-- Location: LCCOMB_X39_Y15_N16
\seg4|b2ss|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr2~0_combout\ = (\asdsad|Remaining[0]~2_combout\) # ((\hex4val[2]~1_combout\ & (!\hex4val[3]~2_combout\ & \hex4val[1]~0_combout\)) # (!\hex4val[2]~1_combout\ & (\hex4val[3]~2_combout\ & !\hex4val[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr2~0_combout\);

-- Location: LCCOMB_X39_Y15_N10
\seg4|b2ss|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr1~0_combout\ = (\hex4val[2]~1_combout\ & (\asdsad|Remaining[0]~2_combout\ & (!\hex4val[3]~2_combout\ & !\hex4val[1]~0_combout\))) # (!\hex4val[2]~1_combout\ & (((\asdsad|Remaining[0]~2_combout\ & !\hex4val[3]~2_combout\)) # 
-- (!\hex4val[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr1~0_combout\);

-- Location: LCCOMB_X39_Y15_N4
\seg4|b2ss|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg4|b2ss|WideOr0~0_combout\ = (\hex4val[2]~1_combout\ & (((\hex4val[3]~2_combout\) # (\hex4val[1]~0_combout\)) # (!\asdsad|Remaining[0]~2_combout\))) # (!\hex4val[2]~1_combout\ & ((\hex4val[3]~2_combout\ $ (!\hex4val[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[2]~1_combout\,
	datab => \asdsad|Remaining[0]~2_combout\,
	datac => \hex4val[3]~2_combout\,
	datad => \hex4val[1]~0_combout\,
	combout => \seg4|b2ss|WideOr0~0_combout\);

-- Location: LCCOMB_X39_Y15_N6
\hex4val[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hex4val[3]~3_combout\ = (!\asdsad|Add3~2_combout\ & !\asdsad|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asdsad|Add3~2_combout\,
	datac => \asdsad|Add3~4_combout\,
	combout => \hex4val[3]~3_combout\);

-- Location: LCCOMB_X39_Y15_N8
\asdsad|r1|NotEnoughChange~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|r1|NotEnoughChange~0_combout\ = (!\asdsad|LessThan0~2_combout\ & (((\asdsad|Add3~6_combout\) # (\asdsad|Add3~0_combout\)) # (!\hex4val[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex4val[3]~3_combout\,
	datab => \asdsad|Add3~6_combout\,
	datac => \asdsad|Add3~0_combout\,
	datad => \asdsad|LessThan0~2_combout\,
	combout => \asdsad|r1|NotEnoughChange~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\asdsad|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Equal0~1_combout\ = (\SW[1]~input_o\ & (\SW[15]~input_o\ & (\SW[0]~input_o\ $ (!\SW[14]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[15]~input_o\ & (\SW[0]~input_o\ $ (!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \asdsad|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\asdsad|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \asdsad|Equal0~2_combout\ = (\asdsad|Equal0~1_combout\ & \asdsad|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asdsad|Equal0~1_combout\,
	datad => \asdsad|Equal0~0_combout\,
	combout => \asdsad|Equal0~2_combout\);

-- Location: IOIBUF_X48_Y41_N1
\SW[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\SW[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\SW[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\SW[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

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

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;



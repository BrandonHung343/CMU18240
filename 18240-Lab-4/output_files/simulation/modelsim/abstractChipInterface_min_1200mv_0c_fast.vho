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

-- DATE "03/05/2020 14:07:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	abstractChipInterface IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END abstractChipInterface;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF abstractChipInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|currState~17_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \dut|currState~25_combout\ : std_logic;
SIGNAL \dut|currState~18_combout\ : std_logic;
SIGNAL \dut|currState~19_combout\ : std_logic;
SIGNAL \dut|currState.cred1Soda~q\ : std_logic;
SIGNAL \dut|currState~13_combout\ : std_logic;
SIGNAL \dut|currState~14_combout\ : std_logic;
SIGNAL \dut|currState.cred1~q\ : std_logic;
SIGNAL \dut|currState~24_combout\ : std_logic;
SIGNAL \dut|currState.cred2Soda~q\ : std_logic;
SIGNAL \dut|currState~22_combout\ : std_logic;
SIGNAL \dut|currState~23_combout\ : std_logic;
SIGNAL \dut|currState.cred2~q\ : std_logic;
SIGNAL \dut|currState~28_combout\ : std_logic;
SIGNAL \dut|currState.cred3Soda~q\ : std_logic;
SIGNAL \dut|currState~26_combout\ : std_logic;
SIGNAL \dut|currState~27_combout\ : std_logic;
SIGNAL \dut|currState.cred3~q\ : std_logic;
SIGNAL \dut|currState~15_combout\ : std_logic;
SIGNAL \dut|currState~16_combout\ : std_logic;
SIGNAL \dut|currState.cred0Soda~q\ : std_logic;
SIGNAL \dut|currState~20_combout\ : std_logic;
SIGNAL \dut|currState~21_combout\ : std_logic;
SIGNAL \dut|currState.init~q\ : std_logic;
SIGNAL \dut|WideOr6~0_combout\ : std_logic;
SIGNAL \dut|WideOr7~0_combout\ : std_logic;
SIGNAL \muah|Decoder0~0_combout\ : std_logic;
SIGNAL \muah|Decoder0~1_combout\ : std_logic;
SIGNAL \muah|Decoder0~2_combout\ : std_logic;
SIGNAL \dut|WideOr8~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \muah|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_WideOr7~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dut|ALT_INV_WideOr8~0_combout\ <= NOT \dut|WideOr8~0_combout\;
\muah|ALT_INV_Decoder0~2_combout\ <= NOT \muah|Decoder0~2_combout\;
\dut|ALT_INV_WideOr7~0_combout\ <= NOT \dut|WideOr7~0_combout\;

-- Location: LCCOMB_X114_Y40_N10
\dut|currState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~17_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \dut|currState~17_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muah|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muah|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muah|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muah|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y40_N26
\dut|currState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~25_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\dut|currState.init~q\)) # (!\SW[1]~input_o\ & ((\dut|currState.cred3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \dut|currState.init~q\,
	datad => \dut|currState.cred3~q\,
	combout => \dut|currState~25_combout\);

-- Location: LCCOMB_X114_Y40_N8
\dut|currState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~18_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \dut|currState~18_combout\);

-- Location: LCCOMB_X114_Y40_N24
\dut|currState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~19_combout\ = (\dut|currState~17_combout\ & ((\dut|currState.cred2~q\) # ((\dut|currState~18_combout\ & !\dut|currState.init~q\)))) # (!\dut|currState~17_combout\ & (\dut|currState~18_combout\ & (!\dut|currState.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|currState~17_combout\,
	datab => \dut|currState~18_combout\,
	datac => \dut|currState.init~q\,
	datad => \dut|currState.cred2~q\,
	combout => \dut|currState~19_combout\);

-- Location: FF_X114_Y40_N25
\dut|currState.cred1Soda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred1Soda~q\);

-- Location: LCCOMB_X114_Y40_N2
\dut|currState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~13_combout\ = (\SW[0]~input_o\ & (!\dut|currState.init~q\)) # (!\SW[0]~input_o\ & ((\dut|currState.cred1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \dut|currState.init~q\,
	datad => \dut|currState.cred1~q\,
	combout => \dut|currState~13_combout\);

-- Location: LCCOMB_X114_Y40_N16
\dut|currState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~14_combout\ = (\SW[5]~input_o\ & ((\dut|currState.cred1Soda~q\) # ((!\SW[1]~input_o\ & \dut|currState~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \dut|currState.cred1Soda~q\,
	datad => \dut|currState~13_combout\,
	combout => \dut|currState~14_combout\);

-- Location: FF_X114_Y40_N17
\dut|currState.cred1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred1~q\);

-- Location: LCCOMB_X114_Y40_N22
\dut|currState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~24_combout\ = (\dut|currState~17_combout\ & ((\dut|currState.cred3~q\) # ((\dut|currState~18_combout\ & \dut|currState.cred1~q\)))) # (!\dut|currState~17_combout\ & (\dut|currState~18_combout\ & (\dut|currState.cred1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|currState~17_combout\,
	datab => \dut|currState~18_combout\,
	datac => \dut|currState.cred1~q\,
	datad => \dut|currState.cred3~q\,
	combout => \dut|currState~24_combout\);

-- Location: FF_X114_Y40_N23
\dut|currState.cred2Soda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred2Soda~q\);

-- Location: LCCOMB_X114_Y40_N12
\dut|currState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~22_combout\ = (\SW[0]~input_o\ & (\dut|currState.cred1~q\)) # (!\SW[0]~input_o\ & ((\dut|currState.cred2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \dut|currState.cred1~q\,
	datad => \dut|currState.cred2~q\,
	combout => \dut|currState~22_combout\);

-- Location: LCCOMB_X114_Y40_N28
\dut|currState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~23_combout\ = (\SW[5]~input_o\ & ((\dut|currState.cred2Soda~q\) # ((!\SW[1]~input_o\ & \dut|currState~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \dut|currState.cred2Soda~q\,
	datad => \dut|currState~22_combout\,
	combout => \dut|currState~23_combout\);

-- Location: FF_X114_Y40_N29
\dut|currState.cred2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred2~q\);

-- Location: LCCOMB_X114_Y40_N0
\dut|currState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~28_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & (\SW[5]~input_o\ & \dut|currState.cred2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \dut|currState.cred2~q\,
	combout => \dut|currState~28_combout\);

-- Location: FF_X114_Y40_N1
\dut|currState.cred3Soda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred3Soda~q\);

-- Location: LCCOMB_X114_Y40_N18
\dut|currState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~26_combout\ = (\dut|currState.cred3Soda~q\) # ((\SW[0]~input_o\ & (\dut|currState.cred2~q\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \dut|currState.cred2~q\,
	datac => \SW[1]~input_o\,
	datad => \dut|currState.cred3Soda~q\,
	combout => \dut|currState~26_combout\);

-- Location: LCCOMB_X114_Y40_N4
\dut|currState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~27_combout\ = (\SW[5]~input_o\ & ((\dut|currState~25_combout\) # (\dut|currState~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \dut|currState~25_combout\,
	datad => \dut|currState~26_combout\,
	combout => \dut|currState~27_combout\);

-- Location: FF_X114_Y40_N5
\dut|currState.cred3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred3~q\);

-- Location: LCCOMB_X114_Y40_N20
\dut|currState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~15_combout\ = (\SW[0]~input_o\ & (((\dut|currState.cred3~q\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\dut|currState.cred1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \dut|currState.cred3~q\,
	datad => \dut|currState.cred1~q\,
	combout => \dut|currState~15_combout\);

-- Location: LCCOMB_X114_Y40_N14
\dut|currState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~16_combout\ = (\SW[5]~input_o\ & \dut|currState~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \dut|currState~15_combout\,
	combout => \dut|currState~16_combout\);

-- Location: FF_X114_Y40_N15
\dut|currState.cred0Soda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.cred0Soda~q\);

-- Location: LCCOMB_X114_Y40_N6
\dut|currState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~20_combout\ = ((!\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\dut|currState.init~q\))) # (!\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \dut|currState.init~q\,
	datad => \SW[5]~input_o\,
	combout => \dut|currState~20_combout\);

-- Location: LCCOMB_X114_Y40_N30
\dut|currState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|currState~21_combout\ = (!\dut|currState.cred0Soda~q\ & !\dut|currState~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|currState.cred0Soda~q\,
	datad => \dut|currState~20_combout\,
	combout => \dut|currState~21_combout\);

-- Location: FF_X114_Y40_N31
\dut|currState.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|currState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|currState.init~q\);

-- Location: LCCOMB_X113_Y40_N16
\dut|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|WideOr6~0_combout\ = (\dut|currState.cred1Soda~q\) # (((\dut|currState.cred0Soda~q\) # (\dut|currState.cred1~q\)) # (!\dut|currState.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|currState.cred1Soda~q\,
	datab => \dut|currState.init~q\,
	datac => \dut|currState.cred0Soda~q\,
	datad => \dut|currState.cred1~q\,
	combout => \dut|WideOr6~0_combout\);

-- Location: LCCOMB_X113_Y40_N18
\dut|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|WideOr7~0_combout\ = (\dut|currState.cred2Soda~q\) # ((\dut|currState.cred0Soda~q\) # ((\dut|currState.cred2~q\) # (!\dut|currState.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|currState.cred2Soda~q\,
	datab => \dut|currState.cred0Soda~q\,
	datac => \dut|currState.init~q\,
	datad => \dut|currState.cred2~q\,
	combout => \dut|WideOr7~0_combout\);

-- Location: LCCOMB_X114_Y67_N8
\muah|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muah|Decoder0~0_combout\ = (\dut|WideOr6~0_combout\ & !\dut|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|WideOr6~0_combout\,
	datac => \dut|WideOr7~0_combout\,
	combout => \muah|Decoder0~0_combout\);

-- Location: LCCOMB_X114_Y67_N18
\muah|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muah|Decoder0~1_combout\ = (!\dut|WideOr6~0_combout\ & \dut|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|WideOr6~0_combout\,
	datac => \dut|WideOr7~0_combout\,
	combout => \muah|Decoder0~1_combout\);

-- Location: LCCOMB_X114_Y67_N4
\muah|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muah|Decoder0~2_combout\ = (\dut|WideOr6~0_combout\ & \dut|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|WideOr6~0_combout\,
	datac => \dut|WideOr7~0_combout\,
	combout => \muah|Decoder0~2_combout\);

-- Location: LCCOMB_X113_Y40_N4
\dut|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|WideOr8~0_combout\ = (\dut|currState.cred3~q\) # ((\dut|currState.cred2~q\) # ((\dut|currState.cred1~q\) # (!\dut|currState.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|currState.cred3~q\,
	datab => \dut|currState.cred2~q\,
	datac => \dut|currState.init~q\,
	datad => \dut|currState.cred1~q\,
	combout => \dut|WideOr8~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;



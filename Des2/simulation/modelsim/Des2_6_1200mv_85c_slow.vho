-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/15/2025 09:30:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Des2 IS
    PORT (
	entrada : IN std_logic_vector(3 DOWNTO 0);
	unidades : OUT std_logic_vector(3 DOWNTO 0);
	decenas : OUT std_logic_vector(3 DOWNTO 0)
	);
END Des2;

-- Design Ports Information
-- unidades[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decenas[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Des2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_unidades : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_decenas : std_logic_vector(3 DOWNTO 0);
SIGNAL \unidades[0]~output_o\ : std_logic;
SIGNAL \unidades[1]~output_o\ : std_logic;
SIGNAL \unidades[2]~output_o\ : std_logic;
SIGNAL \unidades[3]~output_o\ : std_logic;
SIGNAL \decenas[0]~output_o\ : std_logic;
SIGNAL \decenas[1]~output_o\ : std_logic;
SIGNAL \decenas[2]~output_o\ : std_logic;
SIGNAL \decenas[3]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
unidades <= ww_unidades;
decenas <= ww_decenas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;

-- Location: IOOBUF_X0_Y10_N23
\unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[0]~input_o\,
	devoe => ww_devoe,
	o => \unidades[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\unidades[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	devoe => ww_devoe,
	o => \unidades[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\unidades[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	devoe => ww_devoe,
	o => \unidades[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\unidades[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	devoe => ww_devoe,
	o => \unidades[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\decenas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \decenas[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\decenas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decenas[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\decenas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decenas[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\decenas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decenas[3]~output_o\);

-- Location: IOIBUF_X0_Y9_N22
\entrada[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\entrada[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\entrada[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\entrada[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \entrada[1]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[1]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X1_Y12_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\entrada[2]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\entrada[2]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\entrada[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X1_Y12_N4
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\entrada[3]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\entrada[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\entrada[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X1_Y12_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X1_Y12_N24
\Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\entrada[1]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \entrada[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X1_Y12_N26
\Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\entrada[2]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \entrada[2]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X1_Y12_N20
\Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\entrada[3]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X1_Y12_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[1]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X1_Y12_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\entrada[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X1_Y12_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\entrada[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X1_Y12_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

ww_unidades(0) <= \unidades[0]~output_o\;

ww_unidades(1) <= \unidades[1]~output_o\;

ww_unidades(2) <= \unidades[2]~output_o\;

ww_unidades(3) <= \unidades[3]~output_o\;

ww_decenas(0) <= \decenas[0]~output_o\;

ww_decenas(1) <= \decenas[1]~output_o\;

ww_decenas(2) <= \decenas[2]~output_o\;

ww_decenas(3) <= \decenas[3]~output_o\;
END structure;



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

-- DATE "03/15/2025 20:43:05"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorPersonas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entrar_persona : IN std_logic;
	salir_persona : IN std_logic;
	num_personas : OUT std_logic_vector(3 DOWNTO 0);
	luces : OUT std_logic
	);
END ContadorPersonas;

-- Design Ports Information
-- num_personas[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luces	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salir_persona	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrar_persona	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorPersonas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrar_persona : std_logic;
SIGNAL ww_salir_persona : std_logic;
SIGNAL ww_num_personas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_luces : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \num_personas[0]~output_o\ : std_logic;
SIGNAL \num_personas[1]~output_o\ : std_logic;
SIGNAL \num_personas[2]~output_o\ : std_logic;
SIGNAL \num_personas[3]~output_o\ : std_logic;
SIGNAL \luces~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entrar_persona~input_o\ : std_logic;
SIGNAL \salir_persona~input_o\ : std_logic;
SIGNAL \contador_personas_next[0]~2_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \REG_PERSONAS|reg[1]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \REG_PERSONAS|reg[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \REG_PERSONAS|reg[3]~feeder_combout\ : std_logic;
SIGNAL \contador_personas_next[0]~0_combout\ : std_logic;
SIGNAL \contador_personas_next[0]~1_combout\ : std_logic;
SIGNAL \REG_PERSONAS|reg[0]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \REG_PERSONAS|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_LUCES|reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entrar_persona <= entrar_persona;
ww_salir_persona <= salir_persona;
num_personas <= ww_num_personas;
luces <= ww_luces;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N16
\num_personas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PERSONAS|reg\(0),
	devoe => ww_devoe,
	o => \num_personas[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\num_personas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PERSONAS|reg\(1),
	devoe => ww_devoe,
	o => \num_personas[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\num_personas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PERSONAS|reg\(2),
	devoe => ww_devoe,
	o => \num_personas[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\num_personas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PERSONAS|reg\(3),
	devoe => ww_devoe,
	o => \num_personas[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\luces~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LUCES|reg\(0),
	devoe => ww_devoe,
	o => \luces~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N15
\entrar_persona~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrar_persona,
	o => \entrar_persona~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\salir_persona~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_salir_persona,
	o => \salir_persona~input_o\);

-- Location: LCCOMB_X1_Y2_N26
\contador_personas_next[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas_next[0]~2_combout\ = (\entrar_persona~input_o\) # ((\salir_persona~input_o\ & \contador_personas_next[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datac => \salir_persona~input_o\,
	datad => \contador_personas_next[0]~0_combout\,
	combout => \contador_personas_next[0]~2_combout\);

-- Location: LCCOMB_X1_Y2_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\REG_PERSONAS|reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PERSONAS|reg\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X1_Y2_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\entrar_persona~input_o\ & ((\REG_PERSONAS|reg\(1) & (!\Add0~1_cout\)) # (!\REG_PERSONAS|reg\(1) & ((\Add0~1_cout\) # (GND))))) # (!\entrar_persona~input_o\ & ((\REG_PERSONAS|reg\(1) & (\Add0~1_cout\ & VCC)) # (!\REG_PERSONAS|reg\(1) & 
-- (!\Add0~1_cout\))))
-- \Add0~3\ = CARRY((\entrar_persona~input_o\ & ((!\Add0~1_cout\) # (!\REG_PERSONAS|reg\(1)))) # (!\entrar_persona~input_o\ & (!\REG_PERSONAS|reg\(1) & !\Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datab => \REG_PERSONAS|reg\(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y2_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\contador_personas_next[0]~2_combout\ & ((\Add0~2_combout\))) # (!\contador_personas_next[0]~2_combout\ & (\REG_PERSONAS|reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PERSONAS|reg\(1),
	datac => \contador_personas_next[0]~2_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X1_Y2_N14
\REG_PERSONAS|reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REG_PERSONAS|reg[1]~feeder_combout\ = \Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	combout => \REG_PERSONAS|reg[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y2_N15
\REG_PERSONAS|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REG_PERSONAS|reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PERSONAS|reg\(1));

-- Location: LCCOMB_X1_Y2_N20
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = ((\entrar_persona~input_o\ $ (\REG_PERSONAS|reg\(2) $ (\Add0~3\)))) # (GND)
-- \Add0~6\ = CARRY((\entrar_persona~input_o\ & (\REG_PERSONAS|reg\(2) & !\Add0~3\)) # (!\entrar_persona~input_o\ & ((\REG_PERSONAS|reg\(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datab => \REG_PERSONAS|reg\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X1_Y2_N30
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\contador_personas_next[0]~2_combout\ & ((\Add0~5_combout\))) # (!\contador_personas_next[0]~2_combout\ & (\REG_PERSONAS|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PERSONAS|reg\(2),
	datac => \contador_personas_next[0]~2_combout\,
	datad => \Add0~5_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X1_Y2_N4
\REG_PERSONAS|reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REG_PERSONAS|reg[2]~feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	combout => \REG_PERSONAS|reg[2]~feeder_combout\);

-- Location: FF_X1_Y2_N5
\REG_PERSONAS|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REG_PERSONAS|reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PERSONAS|reg\(2));

-- Location: LCCOMB_X1_Y2_N22
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \entrar_persona~input_o\ $ (\Add0~6\ $ (!\REG_PERSONAS|reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datad => \REG_PERSONAS|reg\(3),
	cin => \Add0~6\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X1_Y2_N28
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\contador_personas_next[0]~2_combout\ & (\Add0~8_combout\)) # (!\contador_personas_next[0]~2_combout\ & ((\REG_PERSONAS|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas_next[0]~2_combout\,
	datac => \Add0~8_combout\,
	datad => \REG_PERSONAS|reg\(3),
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X1_Y2_N2
\REG_PERSONAS|reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REG_PERSONAS|reg[3]~feeder_combout\ = \Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~10_combout\,
	combout => \REG_PERSONAS|reg[3]~feeder_combout\);

-- Location: FF_X1_Y2_N3
\REG_PERSONAS|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REG_PERSONAS|reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PERSONAS|reg\(3));

-- Location: LCCOMB_X1_Y2_N6
\contador_personas_next[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas_next[0]~0_combout\ = (\REG_PERSONAS|reg\(0)) # ((\REG_PERSONAS|reg\(2)) # ((\REG_PERSONAS|reg\(1)) # (\REG_PERSONAS|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PERSONAS|reg\(0),
	datab => \REG_PERSONAS|reg\(2),
	datac => \REG_PERSONAS|reg\(1),
	datad => \REG_PERSONAS|reg\(3),
	combout => \contador_personas_next[0]~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\contador_personas_next[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas_next[0]~1_combout\ = \REG_PERSONAS|reg\(0) $ (((\entrar_persona~input_o\) # ((\salir_persona~input_o\ & \contador_personas_next[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datab => \REG_PERSONAS|reg\(0),
	datac => \salir_persona~input_o\,
	datad => \contador_personas_next[0]~0_combout\,
	combout => \contador_personas_next[0]~1_combout\);

-- Location: LCCOMB_X1_Y2_N12
\REG_PERSONAS|reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REG_PERSONAS|reg[0]~feeder_combout\ = \contador_personas_next[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_personas_next[0]~1_combout\,
	combout => \REG_PERSONAS|reg[0]~feeder_combout\);

-- Location: FF_X1_Y2_N13
\REG_PERSONAS|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REG_PERSONAS|reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PERSONAS|reg\(0));

-- Location: LCCOMB_X1_Y2_N24
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\contador_personas_next[0]~1_combout\) # ((\Add0~4_combout\) # ((\Add0~7_combout\) # (\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas_next[0]~1_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~10_combout\,
	combout => \LessThan1~0_combout\);

-- Location: FF_X1_Y2_N25
\REG_LUCES|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LUCES|reg\(0));

ww_num_personas(0) <= \num_personas[0]~output_o\;

ww_num_personas(1) <= \num_personas[1]~output_o\;

ww_num_personas(2) <= \num_personas[2]~output_o\;

ww_num_personas(3) <= \num_personas[3]~output_o\;

ww_luces <= \luces~output_o\;
END structure;



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

-- DATE "03/15/2025 20:38:53"

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

ENTITY 	ControladorPuertas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	llegada_piso : IN std_logic;
	abrir_manual : IN std_logic;
	cerrar_manual : IN std_logic;
	puerta_abierta : OUT std_logic;
	abrir_puerta : OUT std_logic;
	cerrar_puerta : OUT std_logic
	);
END ControladorPuertas;

-- Design Ports Information
-- puerta_abierta	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_puerta	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegada_piso	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_manual	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_manual	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControladorPuertas IS
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
SIGNAL ww_llegada_piso : std_logic;
SIGNAL ww_abrir_manual : std_logic;
SIGNAL ww_cerrar_manual : std_logic;
SIGNAL ww_puerta_abierta : std_logic;
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_cerrar_puerta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \puerta_abierta~output_o\ : std_logic;
SIGNAL \abrir_puerta~output_o\ : std_logic;
SIGNAL \cerrar_puerta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \llegada_piso~input_o\ : std_logic;
SIGNAL \abrir_manual~input_o\ : std_logic;
SIGNAL \cerrar_manual~input_o\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_cierre|cnt_enable~0_combout\ : std_logic;
SIGNAL \timer_cierre|cnt_enable~q\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~1\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~2_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|cnt_value~3_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~3\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~4_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|cnt_value~1_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~5\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~6_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|cnt_value~2_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~7\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~8_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Equal0~0_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~9\ : std_logic;
SIGNAL \timer_cierre|CounterInst|Add0~10_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|cnt_value~0_combout\ : std_logic;
SIGNAL \timer_cierre|Equal0~0_combout\ : std_logic;
SIGNAL \timer_cierre|done~q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \iniciar_timer_cierre~0_combout\ : std_logic;
SIGNAL \iniciar_timer_cierre~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \timer_cierre|CounterInst|cnt_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_llegada_piso <= llegada_piso;
ww_abrir_manual <= abrir_manual;
ww_cerrar_manual <= cerrar_manual;
puerta_abierta <= ww_puerta_abierta;
abrir_puerta <= ww_abrir_puerta;
cerrar_puerta <= ww_cerrar_puerta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y4_N16
\puerta_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iniciar_timer_cierre~q\,
	devoe => ww_devoe,
	o => \puerta_abierta~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\abrir_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \abrir_puerta~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\cerrar_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~1_combout\,
	devoe => ww_devoe,
	o => \cerrar_puerta~output_o\);

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

-- Location: IOIBUF_X0_Y5_N1
\llegada_piso~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llegada_piso,
	o => \llegada_piso~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\abrir_manual~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir_manual,
	o => \abrir_manual~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\cerrar_manual~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_manual,
	o => \cerrar_manual~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\timer_cierre|CounterInst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~0_combout\ = \timer_cierre|CounterInst|cnt_value\(0) $ (VCC)
-- \timer_cierre|CounterInst|Add0~1\ = CARRY(\timer_cierre|CounterInst|cnt_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre|CounterInst|cnt_value\(0),
	datad => VCC,
	combout => \timer_cierre|CounterInst|Add0~0_combout\,
	cout => \timer_cierre|CounterInst|Add0~1\);

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

-- Location: LCCOMB_X1_Y4_N30
\timer_cierre|cnt_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|cnt_enable~0_combout\ = (\timer_cierre|cnt_enable~q\ & ((!\timer_cierre|Equal0~0_combout\))) # (!\timer_cierre|cnt_enable~q\ & (\iniciar_timer_cierre~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar_timer_cierre~q\,
	datac => \timer_cierre|cnt_enable~q\,
	datad => \timer_cierre|Equal0~0_combout\,
	combout => \timer_cierre|cnt_enable~0_combout\);

-- Location: FF_X1_Y4_N31
\timer_cierre|cnt_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|cnt_enable~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|cnt_enable~q\);

-- Location: FF_X1_Y4_N15
\timer_cierre|CounterInst|cnt_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(0));

-- Location: LCCOMB_X1_Y4_N16
\timer_cierre|CounterInst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~2_combout\ = (\timer_cierre|CounterInst|cnt_value\(1) & (!\timer_cierre|CounterInst|Add0~1\)) # (!\timer_cierre|CounterInst|cnt_value\(1) & ((\timer_cierre|CounterInst|Add0~1\) # (GND)))
-- \timer_cierre|CounterInst|Add0~3\ = CARRY((!\timer_cierre|CounterInst|Add0~1\) # (!\timer_cierre|CounterInst|cnt_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(1),
	datad => VCC,
	cin => \timer_cierre|CounterInst|Add0~1\,
	combout => \timer_cierre|CounterInst|Add0~2_combout\,
	cout => \timer_cierre|CounterInst|Add0~3\);

-- Location: LCCOMB_X1_Y4_N6
\timer_cierre|CounterInst|cnt_value~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|cnt_value~3_combout\ = (\timer_cierre|CounterInst|Add0~2_combout\ & (((!\timer_cierre|CounterInst|Equal0~0_combout\) # (!\timer_cierre|CounterInst|cnt_value\(5))) # (!\timer_cierre|CounterInst|cnt_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(0),
	datab => \timer_cierre|CounterInst|cnt_value\(5),
	datac => \timer_cierre|CounterInst|Equal0~0_combout\,
	datad => \timer_cierre|CounterInst|Add0~2_combout\,
	combout => \timer_cierre|CounterInst|cnt_value~3_combout\);

-- Location: FF_X1_Y4_N7
\timer_cierre|CounterInst|cnt_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|cnt_value~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(1));

-- Location: LCCOMB_X1_Y4_N18
\timer_cierre|CounterInst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~4_combout\ = (\timer_cierre|CounterInst|cnt_value\(2) & (\timer_cierre|CounterInst|Add0~3\ $ (GND))) # (!\timer_cierre|CounterInst|cnt_value\(2) & (!\timer_cierre|CounterInst|Add0~3\ & VCC))
-- \timer_cierre|CounterInst|Add0~5\ = CARRY((\timer_cierre|CounterInst|cnt_value\(2) & !\timer_cierre|CounterInst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(2),
	datad => VCC,
	cin => \timer_cierre|CounterInst|Add0~3\,
	combout => \timer_cierre|CounterInst|Add0~4_combout\,
	cout => \timer_cierre|CounterInst|Add0~5\);

-- Location: LCCOMB_X1_Y4_N10
\timer_cierre|CounterInst|cnt_value~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|cnt_value~1_combout\ = (\timer_cierre|CounterInst|Add0~4_combout\ & (((!\timer_cierre|CounterInst|Equal0~0_combout\) # (!\timer_cierre|CounterInst|cnt_value\(5))) # (!\timer_cierre|CounterInst|cnt_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(0),
	datab => \timer_cierre|CounterInst|cnt_value\(5),
	datac => \timer_cierre|CounterInst|Equal0~0_combout\,
	datad => \timer_cierre|CounterInst|Add0~4_combout\,
	combout => \timer_cierre|CounterInst|cnt_value~1_combout\);

-- Location: FF_X1_Y4_N11
\timer_cierre|CounterInst|cnt_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|cnt_value~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(2));

-- Location: LCCOMB_X1_Y4_N20
\timer_cierre|CounterInst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~6_combout\ = (\timer_cierre|CounterInst|cnt_value\(3) & (!\timer_cierre|CounterInst|Add0~5\)) # (!\timer_cierre|CounterInst|cnt_value\(3) & ((\timer_cierre|CounterInst|Add0~5\) # (GND)))
-- \timer_cierre|CounterInst|Add0~7\ = CARRY((!\timer_cierre|CounterInst|Add0~5\) # (!\timer_cierre|CounterInst|cnt_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre|CounterInst|cnt_value\(3),
	datad => VCC,
	cin => \timer_cierre|CounterInst|Add0~5\,
	combout => \timer_cierre|CounterInst|Add0~6_combout\,
	cout => \timer_cierre|CounterInst|Add0~7\);

-- Location: LCCOMB_X1_Y4_N4
\timer_cierre|CounterInst|cnt_value~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|cnt_value~2_combout\ = (\timer_cierre|CounterInst|Add0~6_combout\ & (((!\timer_cierre|CounterInst|Equal0~0_combout\) # (!\timer_cierre|CounterInst|cnt_value\(5))) # (!\timer_cierre|CounterInst|cnt_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(0),
	datab => \timer_cierre|CounterInst|cnt_value\(5),
	datac => \timer_cierre|CounterInst|Equal0~0_combout\,
	datad => \timer_cierre|CounterInst|Add0~6_combout\,
	combout => \timer_cierre|CounterInst|cnt_value~2_combout\);

-- Location: FF_X1_Y4_N5
\timer_cierre|CounterInst|cnt_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|cnt_value~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(3));

-- Location: LCCOMB_X1_Y4_N22
\timer_cierre|CounterInst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~8_combout\ = (\timer_cierre|CounterInst|cnt_value\(4) & (\timer_cierre|CounterInst|Add0~7\ $ (GND))) # (!\timer_cierre|CounterInst|cnt_value\(4) & (!\timer_cierre|CounterInst|Add0~7\ & VCC))
-- \timer_cierre|CounterInst|Add0~9\ = CARRY((\timer_cierre|CounterInst|cnt_value\(4) & !\timer_cierre|CounterInst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(4),
	datad => VCC,
	cin => \timer_cierre|CounterInst|Add0~7\,
	combout => \timer_cierre|CounterInst|Add0~8_combout\,
	cout => \timer_cierre|CounterInst|Add0~9\);

-- Location: FF_X1_Y4_N23
\timer_cierre|CounterInst|cnt_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(4));

-- Location: LCCOMB_X1_Y4_N12
\timer_cierre|CounterInst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Equal0~0_combout\ = (!\timer_cierre|CounterInst|cnt_value\(4) & (\timer_cierre|CounterInst|cnt_value\(3) & (!\timer_cierre|CounterInst|cnt_value\(1) & \timer_cierre|CounterInst|cnt_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(4),
	datab => \timer_cierre|CounterInst|cnt_value\(3),
	datac => \timer_cierre|CounterInst|cnt_value\(1),
	datad => \timer_cierre|CounterInst|cnt_value\(2),
	combout => \timer_cierre|CounterInst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\timer_cierre|CounterInst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|Add0~10_combout\ = \timer_cierre|CounterInst|Add0~9\ $ (\timer_cierre|CounterInst|cnt_value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_cierre|CounterInst|cnt_value\(5),
	cin => \timer_cierre|CounterInst|Add0~9\,
	combout => \timer_cierre|CounterInst|Add0~10_combout\);

-- Location: LCCOMB_X1_Y4_N0
\timer_cierre|CounterInst|cnt_value~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|CounterInst|cnt_value~0_combout\ = (\timer_cierre|CounterInst|Add0~10_combout\ & (((!\timer_cierre|CounterInst|cnt_value\(5)) # (!\timer_cierre|CounterInst|Equal0~0_combout\)) # (!\timer_cierre|CounterInst|cnt_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(0),
	datab => \timer_cierre|CounterInst|Equal0~0_combout\,
	datac => \timer_cierre|CounterInst|cnt_value\(5),
	datad => \timer_cierre|CounterInst|Add0~10_combout\,
	combout => \timer_cierre|CounterInst|cnt_value~0_combout\);

-- Location: FF_X1_Y4_N1
\timer_cierre|CounterInst|cnt_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|CounterInst|cnt_value~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|CounterInst|cnt_value\(5));

-- Location: LCCOMB_X1_Y4_N28
\timer_cierre|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre|Equal0~0_combout\ = (!\timer_cierre|CounterInst|cnt_value\(0) & (\timer_cierre|CounterInst|cnt_value\(5) & \timer_cierre|CounterInst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre|CounterInst|cnt_value\(0),
	datab => \timer_cierre|CounterInst|cnt_value\(5),
	datad => \timer_cierre|CounterInst|Equal0~0_combout\,
	combout => \timer_cierre|Equal0~0_combout\);

-- Location: FF_X1_Y4_N29
\timer_cierre|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre|Equal0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \timer_cierre|cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre|done~q\);

-- Location: LCCOMB_X1_Y4_N2
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\cerrar_manual~input_o\) # (\timer_cierre|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cerrar_manual~input_o\,
	datad => \timer_cierre|done~q\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X1_Y4_N8
\iniciar_timer_cierre~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iniciar_timer_cierre~0_combout\ = (!\process_0~1_combout\ & ((\llegada_piso~input_o\) # ((\abrir_manual~input_o\) # (\iniciar_timer_cierre~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llegada_piso~input_o\,
	datab => \abrir_manual~input_o\,
	datac => \iniciar_timer_cierre~q\,
	datad => \process_0~1_combout\,
	combout => \iniciar_timer_cierre~0_combout\);

-- Location: FF_X1_Y4_N9
iniciar_timer_cierre : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \iniciar_timer_cierre~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iniciar_timer_cierre~q\);

-- Location: LCCOMB_X1_Y4_N26
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\llegada_piso~input_o\) # (\abrir_manual~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llegada_piso~input_o\,
	datad => \abrir_manual~input_o\,
	combout => \process_0~0_combout\);

ww_puerta_abierta <= \puerta_abierta~output_o\;

ww_abrir_puerta <= \abrir_puerta~output_o\;

ww_cerrar_puerta <= \cerrar_puerta~output_o\;
END structure;



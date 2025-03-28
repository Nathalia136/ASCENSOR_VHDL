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

-- DATE "03/21/2025 07:10:28"

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

ENTITY 	Alarmas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	abrir_puerta : IN std_logic;
	cerrar_puerta : IN std_logic;
	fallo_energia : IN std_logic;
	notificacion : IN std_logic;
	sobrecarga : IN std_logic;
	led_puerta_abi : OUT std_logic;
	led_puerta_cie : OUT std_logic;
	led_fallo_en : OUT std_logic;
	led_notif : OUT std_logic;
	led_sobrecarga : OUT std_logic
	);
END Alarmas;

-- Design Ports Information
-- led_puerta_abi	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_puerta_cie	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_fallo_en	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_notif	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sobrecarga	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_puerta	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notificacion	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Alarmas IS
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
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_cerrar_puerta : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL ww_led_puerta_abi : std_logic;
SIGNAL ww_led_puerta_cie : std_logic;
SIGNAL ww_led_fallo_en : std_logic;
SIGNAL ww_led_notif : std_logic;
SIGNAL ww_led_sobrecarga : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_puerta_abi~output_o\ : std_logic;
SIGNAL \led_puerta_cie~output_o\ : std_logic;
SIGNAL \led_fallo_en~output_o\ : std_logic;
SIGNAL \led_notif~output_o\ : std_logic;
SIGNAL \led_sobrecarga~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \abrir_puerta~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cerrar_puerta~input_o\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \reg_alarmas_proc|reg[2]~feeder_combout\ : std_logic;
SIGNAL \notificacion~input_o\ : std_logic;
SIGNAL \reg_alarmas_proc|reg[3]~feeder_combout\ : std_logic;
SIGNAL \sobrecarga~input_o\ : std_logic;
SIGNAL \reg_alarmas_proc|reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_abrir_puerta <= abrir_puerta;
ww_cerrar_puerta <= cerrar_puerta;
ww_fallo_energia <= fallo_energia;
ww_notificacion <= notificacion;
ww_sobrecarga <= sobrecarga;
led_puerta_abi <= ww_led_puerta_abi;
led_puerta_cie <= ww_led_puerta_cie;
led_fallo_en <= ww_led_fallo_en;
led_notif <= ww_led_notif;
led_sobrecarga <= ww_led_sobrecarga;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y7_N16
\led_puerta_abi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_alarmas_proc|reg\(0),
	devoe => ww_devoe,
	o => \led_puerta_abi~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\led_puerta_cie~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_alarmas_proc|reg\(1),
	devoe => ww_devoe,
	o => \led_puerta_cie~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\led_fallo_en~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_alarmas_proc|reg\(2),
	devoe => ww_devoe,
	o => \led_fallo_en~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\led_notif~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_alarmas_proc|reg\(3),
	devoe => ww_devoe,
	o => \led_notif~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\led_sobrecarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_alarmas_proc|reg\(4),
	devoe => ww_devoe,
	o => \led_sobrecarga~output_o\);

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

-- Location: IOIBUF_X0_Y9_N1
\abrir_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir_puerta,
	o => \abrir_puerta~input_o\);

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

-- Location: FF_X1_Y7_N17
\reg_alarmas_proc|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \abrir_puerta~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_alarmas_proc|reg\(0));

-- Location: IOIBUF_X41_Y2_N1
\cerrar_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_puerta,
	o => \cerrar_puerta~input_o\);

-- Location: FF_X37_Y27_N17
\reg_alarmas_proc|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cerrar_puerta~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_alarmas_proc|reg\(1));

-- Location: IOIBUF_X11_Y29_N15
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: LCCOMB_X11_Y28_N24
\reg_alarmas_proc|reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_alarmas_proc|reg[2]~feeder_combout\ = \fallo_energia~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fallo_energia~input_o\,
	combout => \reg_alarmas_proc|reg[2]~feeder_combout\);

-- Location: FF_X11_Y28_N25
\reg_alarmas_proc|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_alarmas_proc|reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_alarmas_proc|reg\(2));

-- Location: IOIBUF_X5_Y29_N22
\notificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notificacion,
	o => \notificacion~input_o\);

-- Location: LCCOMB_X6_Y28_N0
\reg_alarmas_proc|reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_alarmas_proc|reg[3]~feeder_combout\ = \notificacion~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \notificacion~input_o\,
	combout => \reg_alarmas_proc|reg[3]~feeder_combout\);

-- Location: FF_X6_Y28_N1
\reg_alarmas_proc|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_alarmas_proc|reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_alarmas_proc|reg\(3));

-- Location: IOIBUF_X41_Y18_N15
\sobrecarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobrecarga,
	o => \sobrecarga~input_o\);

-- Location: FF_X40_Y15_N17
\reg_alarmas_proc|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sobrecarga~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_alarmas_proc|reg\(4));

ww_led_puerta_abi <= \led_puerta_abi~output_o\;

ww_led_puerta_cie <= \led_puerta_cie~output_o\;

ww_led_fallo_en <= \led_fallo_en~output_o\;

ww_led_notif <= \led_notif~output_o\;

ww_led_sobrecarga <= \led_sobrecarga~output_o\;
END structure;



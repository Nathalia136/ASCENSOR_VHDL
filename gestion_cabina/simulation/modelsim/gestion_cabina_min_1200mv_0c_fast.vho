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

-- DATE "03/21/2025 07:30:13"

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

ENTITY 	gestion_cabina IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botones_cabina : IN std_logic_vector(4 DOWNTO 0);
	solicitudes_internas : OUT std_logic_vector(4 DOWNTO 0)
	);
END gestion_cabina;

-- Design Ports Information
-- solicitudes_internas[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[4]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[4]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion_cabina IS
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
SIGNAL ww_botones_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_solicitudes_internas : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \solicitudes_internas[0]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[1]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[2]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[3]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones_cabina[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones_cabina[1]~input_o\ : std_logic;
SIGNAL \botones_cabina[2]~input_o\ : std_logic;
SIGNAL \reg_solicitudes_proc|reg[2]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[3]~input_o\ : std_logic;
SIGNAL \reg_solicitudes_proc|reg[3]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[4]~input_o\ : std_logic;
SIGNAL \reg_solicitudes_proc|reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botones_cabina <= botones_cabina;
solicitudes_internas <= ww_solicitudes_internas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y7_N16
\solicitudes_internas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_solicitudes_proc|reg\(0),
	devoe => ww_devoe,
	o => \solicitudes_internas[0]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\solicitudes_internas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_solicitudes_proc|reg\(1),
	devoe => ww_devoe,
	o => \solicitudes_internas[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\solicitudes_internas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_solicitudes_proc|reg\(2),
	devoe => ww_devoe,
	o => \solicitudes_internas[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\solicitudes_internas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_solicitudes_proc|reg\(3),
	devoe => ww_devoe,
	o => \solicitudes_internas[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\solicitudes_internas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_solicitudes_proc|reg\(4),
	devoe => ww_devoe,
	o => \solicitudes_internas[4]~output_o\);

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
\botones_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(0),
	o => \botones_cabina[0]~input_o\);

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
\reg_solicitudes_proc|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_cabina[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_solicitudes_proc|reg\(0));

-- Location: IOIBUF_X41_Y2_N1
\botones_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(1),
	o => \botones_cabina[1]~input_o\);

-- Location: FF_X37_Y27_N17
\reg_solicitudes_proc|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_cabina[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_solicitudes_proc|reg\(1));

-- Location: IOIBUF_X11_Y29_N15
\botones_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(2),
	o => \botones_cabina[2]~input_o\);

-- Location: LCCOMB_X11_Y28_N24
\reg_solicitudes_proc|reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_solicitudes_proc|reg[2]~feeder_combout\ = \botones_cabina[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[2]~input_o\,
	combout => \reg_solicitudes_proc|reg[2]~feeder_combout\);

-- Location: FF_X11_Y28_N25
\reg_solicitudes_proc|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_solicitudes_proc|reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_solicitudes_proc|reg\(2));

-- Location: IOIBUF_X5_Y29_N22
\botones_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(3),
	o => \botones_cabina[3]~input_o\);

-- Location: LCCOMB_X6_Y28_N0
\reg_solicitudes_proc|reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_solicitudes_proc|reg[3]~feeder_combout\ = \botones_cabina[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[3]~input_o\,
	combout => \reg_solicitudes_proc|reg[3]~feeder_combout\);

-- Location: FF_X6_Y28_N1
\reg_solicitudes_proc|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_solicitudes_proc|reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_solicitudes_proc|reg\(3));

-- Location: IOIBUF_X41_Y18_N15
\botones_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(4),
	o => \botones_cabina[4]~input_o\);

-- Location: FF_X40_Y15_N17
\reg_solicitudes_proc|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_cabina[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_solicitudes_proc|reg\(4));

ww_solicitudes_internas(0) <= \solicitudes_internas[0]~output_o\;

ww_solicitudes_internas(1) <= \solicitudes_internas[1]~output_o\;

ww_solicitudes_internas(2) <= \solicitudes_internas[2]~output_o\;

ww_solicitudes_internas(3) <= \solicitudes_internas[3]~output_o\;

ww_solicitudes_internas(4) <= \solicitudes_internas[4]~output_o\;
END structure;



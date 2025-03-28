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

-- DATE "03/21/2025 22:25:44"

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

ENTITY 	gestion_externas IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	BOTON_SUBIR : IN std_logic_vector(3 DOWNTO 0);
	BOTON_BAJAR : IN std_logic_vector(3 DOWNTO 0);
	clear_request_subir : IN std_logic_vector(3 DOWNTO 0);
	clear_request_bajar : IN std_logic_vector(3 DOWNTO 0);
	solicitudes_subir : OUT std_logic_vector(3 DOWNTO 0);
	solicitudes_bajar : OUT std_logic_vector(3 DOWNTO 0)
	);
END gestion_externas;

-- Design Ports Information
-- solicitudes_subir[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion_externas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1Hz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_BOTON_SUBIR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BOTON_BAJAR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear_request_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear_request_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \solicitudes_subir[0]~output_o\ : std_logic;
SIGNAL \solicitudes_subir[1]~output_o\ : std_logic;
SIGNAL \solicitudes_subir[2]~output_o\ : std_logic;
SIGNAL \solicitudes_subir[3]~output_o\ : std_logic;
SIGNAL \solicitudes_bajar[0]~output_o\ : std_logic;
SIGNAL \solicitudes_bajar[1]~output_o\ : std_logic;
SIGNAL \solicitudes_bajar[2]~output_o\ : std_logic;
SIGNAL \solicitudes_bajar[3]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear_request_subir[0]~input_o\ : std_logic;
SIGNAL \BOTON_SUBIR[0]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear_request_subir[1]~input_o\ : std_logic;
SIGNAL \BOTON_SUBIR[1]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \BOTON_SUBIR[2]~input_o\ : std_logic;
SIGNAL \clear_request_subir[2]~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \clear_request_subir[3]~input_o\ : std_logic;
SIGNAL \BOTON_SUBIR[3]~input_o\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \clear_request_bajar[0]~input_o\ : std_logic;
SIGNAL \BOTON_BAJAR[0]~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \clear_request_bajar[1]~input_o\ : std_logic;
SIGNAL \BOTON_BAJAR[1]~input_o\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \clear_request_bajar[2]~input_o\ : std_logic;
SIGNAL \BOTON_BAJAR[2]~input_o\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \BOTON_BAJAR[3]~input_o\ : std_logic;
SIGNAL \clear_request_bajar[3]~input_o\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \RegistroBajar|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistroSubir|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_BOTON_SUBIR <= BOTON_SUBIR;
ww_BOTON_BAJAR <= BOTON_BAJAR;
ww_clear_request_subir <= clear_request_subir;
ww_clear_request_bajar <= clear_request_bajar;
solicitudes_subir <= ww_solicitudes_subir;
solicitudes_bajar <= ww_solicitudes_bajar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X1_Y0_N16
\solicitudes_subir[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroSubir|reg\(0),
	devoe => ww_devoe,
	o => \solicitudes_subir[0]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\solicitudes_subir[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroSubir|reg\(1),
	devoe => ww_devoe,
	o => \solicitudes_subir[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\solicitudes_subir[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroSubir|reg\(2),
	devoe => ww_devoe,
	o => \solicitudes_subir[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\solicitudes_subir[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroSubir|reg\(3),
	devoe => ww_devoe,
	o => \solicitudes_subir[3]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\solicitudes_bajar[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroBajar|reg\(0),
	devoe => ww_devoe,
	o => \solicitudes_bajar[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\solicitudes_bajar[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroBajar|reg\(1),
	devoe => ww_devoe,
	o => \solicitudes_bajar[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\solicitudes_bajar[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroBajar|reg\(2),
	devoe => ww_devoe,
	o => \solicitudes_bajar[2]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\solicitudes_bajar[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroBajar|reg\(3),
	devoe => ww_devoe,
	o => \solicitudes_bajar[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk_1Hz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1Hz,
	o => \clk_1Hz~input_o\);

-- Location: CLKCTRL_G4
\clk_1Hz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1Hz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1Hz~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N15
\clear_request_subir[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_subir(0),
	o => \clear_request_subir[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\BOTON_SUBIR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(0),
	o => \BOTON_SUBIR[0]~input_o\);

-- Location: LCCOMB_X3_Y1_N28
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\clear_request_subir[0]~input_o\ & ((\RegistroSubir|reg\(0)) # (\BOTON_SUBIR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear_request_subir[0]~input_o\,
	datac => \RegistroSubir|reg\(0),
	datad => \BOTON_SUBIR[0]~input_o\,
	combout => \comb~0_combout\);

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

-- Location: FF_X3_Y1_N29
\RegistroSubir|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroSubir|reg\(0));

-- Location: IOIBUF_X41_Y25_N1
\clear_request_subir[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_subir(1),
	o => \clear_request_subir[1]~input_o\);

-- Location: IOIBUF_X41_Y25_N15
\BOTON_SUBIR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(1),
	o => \BOTON_SUBIR[1]~input_o\);

-- Location: LCCOMB_X40_Y26_N4
\comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\clear_request_subir[1]~input_o\ & ((\RegistroSubir|reg\(1)) # (\BOTON_SUBIR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear_request_subir[1]~input_o\,
	datac => \RegistroSubir|reg\(1),
	datad => \BOTON_SUBIR[1]~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X40_Y26_N5
\RegistroSubir|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroSubir|reg\(1));

-- Location: IOIBUF_X26_Y29_N8
\BOTON_SUBIR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(2),
	o => \BOTON_SUBIR[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\clear_request_subir[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_subir(2),
	o => \clear_request_subir[2]~input_o\);

-- Location: LCCOMB_X26_Y28_N0
\comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\clear_request_subir[2]~input_o\ & ((\BOTON_SUBIR[2]~input_o\) # (\RegistroSubir|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_SUBIR[2]~input_o\,
	datac => \RegistroSubir|reg\(2),
	datad => \clear_request_subir[2]~input_o\,
	combout => \comb~2_combout\);

-- Location: FF_X26_Y28_N1
\RegistroSubir|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroSubir|reg\(2));

-- Location: IOIBUF_X21_Y29_N8
\clear_request_subir[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_subir(3),
	o => \clear_request_subir[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\BOTON_SUBIR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(3),
	o => \BOTON_SUBIR[3]~input_o\);

-- Location: LCCOMB_X21_Y28_N0
\comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\clear_request_subir[3]~input_o\ & ((\RegistroSubir|reg\(3)) # (\BOTON_SUBIR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear_request_subir[3]~input_o\,
	datac => \RegistroSubir|reg\(3),
	datad => \BOTON_SUBIR[3]~input_o\,
	combout => \comb~3_combout\);

-- Location: FF_X21_Y28_N1
\RegistroSubir|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroSubir|reg\(3));

-- Location: IOIBUF_X41_Y26_N15
\clear_request_bajar[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_bajar(0),
	o => \clear_request_bajar[0]~input_o\);

-- Location: IOIBUF_X41_Y27_N8
\BOTON_BAJAR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(0),
	o => \BOTON_BAJAR[0]~input_o\);

-- Location: LCCOMB_X40_Y26_N2
\comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\clear_request_bajar[0]~input_o\ & ((\RegistroBajar|reg\(0)) # (\BOTON_BAJAR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear_request_bajar[0]~input_o\,
	datac => \RegistroBajar|reg\(0),
	datad => \BOTON_BAJAR[0]~input_o\,
	combout => \comb~4_combout\);

-- Location: FF_X40_Y26_N3
\RegistroBajar|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroBajar|reg\(0));

-- Location: IOIBUF_X28_Y29_N1
\clear_request_bajar[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_bajar(1),
	o => \clear_request_bajar[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\BOTON_BAJAR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(1),
	o => \BOTON_BAJAR[1]~input_o\);

-- Location: LCCOMB_X28_Y28_N0
\comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\clear_request_bajar[1]~input_o\ & ((\RegistroBajar|reg\(1)) # (\BOTON_BAJAR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear_request_bajar[1]~input_o\,
	datac => \RegistroBajar|reg\(1),
	datad => \BOTON_BAJAR[1]~input_o\,
	combout => \comb~5_combout\);

-- Location: FF_X28_Y28_N1
\RegistroBajar|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroBajar|reg\(1));

-- Location: IOIBUF_X0_Y23_N1
\clear_request_bajar[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_bajar(2),
	o => \clear_request_bajar[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\BOTON_BAJAR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(2),
	o => \BOTON_BAJAR[2]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\comb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\clear_request_bajar[2]~input_o\ & ((\RegistroBajar|reg\(2)) # (\BOTON_BAJAR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear_request_bajar[2]~input_o\,
	datac => \RegistroBajar|reg\(2),
	datad => \BOTON_BAJAR[2]~input_o\,
	combout => \comb~6_combout\);

-- Location: FF_X1_Y23_N17
\RegistroBajar|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroBajar|reg\(2));

-- Location: IOIBUF_X41_Y26_N1
\BOTON_BAJAR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(3),
	o => \BOTON_BAJAR[3]~input_o\);

-- Location: IOIBUF_X41_Y27_N1
\clear_request_bajar[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request_bajar(3),
	o => \clear_request_bajar[3]~input_o\);

-- Location: LCCOMB_X40_Y26_N16
\comb~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\clear_request_bajar[3]~input_o\ & ((\BOTON_BAJAR[3]~input_o\) # (\RegistroBajar|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_BAJAR[3]~input_o\,
	datac => \RegistroBajar|reg\(3),
	datad => \clear_request_bajar[3]~input_o\,
	combout => \comb~7_combout\);

-- Location: FF_X40_Y26_N17
\RegistroBajar|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \comb~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroBajar|reg\(3));

ww_solicitudes_subir(0) <= \solicitudes_subir[0]~output_o\;

ww_solicitudes_subir(1) <= \solicitudes_subir[1]~output_o\;

ww_solicitudes_subir(2) <= \solicitudes_subir[2]~output_o\;

ww_solicitudes_subir(3) <= \solicitudes_subir[3]~output_o\;

ww_solicitudes_bajar(0) <= \solicitudes_bajar[0]~output_o\;

ww_solicitudes_bajar(1) <= \solicitudes_bajar[1]~output_o\;

ww_solicitudes_bajar(2) <= \solicitudes_bajar[2]~output_o\;

ww_solicitudes_bajar(3) <= \solicitudes_bajar[3]~output_o\;
END structure;



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

-- DATE "03/15/2025 10:44:26"

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

ENTITY 	GenericRegister IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	data_in : IN std_logic_vector(5 DOWNTO 0);
	data_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END GenericRegister;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GenericRegister IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_data_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \reg[1]~feeder_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \reg[2]~feeder_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \reg[3]~feeder_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \reg[4]~feeder_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_enable <= enable;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y10_N23
\data_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\data_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\data_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\data_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\data_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\data_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

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

-- Location: IOIBUF_X0_Y12_N8
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

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

-- Location: IOIBUF_X0_Y23_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X1_Y11_N25
\reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(0));

-- Location: IOIBUF_X5_Y29_N15
\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N10
\reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \reg[1]~feeder_combout\);

-- Location: FF_X1_Y11_N11
\reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(1));

-- Location: IOIBUF_X41_Y10_N15
\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N4
\reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \reg[2]~feeder_combout\);

-- Location: FF_X1_Y11_N5
\reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(2));

-- Location: IOIBUF_X0_Y11_N22
\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \reg[3]~feeder_combout\);

-- Location: FF_X1_Y11_N7
\reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(3));

-- Location: IOIBUF_X0_Y21_N22
\data_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[4]~feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \reg[4]~feeder_combout\);

-- Location: FF_X1_Y11_N17
\reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(4));

-- Location: IOIBUF_X11_Y0_N8
\data_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X1_Y11_N3
\reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(5));

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;
END structure;



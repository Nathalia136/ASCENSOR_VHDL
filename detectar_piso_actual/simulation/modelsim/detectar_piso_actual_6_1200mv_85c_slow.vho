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

-- DATE "03/21/2025 19:19:14"

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

ENTITY 	detectar_piso_actual IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	motor_subir : IN std_logic;
	motor_bajar : IN std_logic;
	piso_destino : IN std_logic_vector(2 DOWNTO 0);
	piso_actual : OUT std_logic_vector(2 DOWNTO 0);
	llegada_piso : OUT std_logic
	);
END detectar_piso_actual;

-- Design Ports Information
-- motor_bajar	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegada_piso	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_subir	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectar_piso_actual IS
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
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_llegada_piso : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_bajar~input_o\ : std_logic;
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;
SIGNAL \llegada_piso~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \motor_subir~input_o\ : std_logic;
SIGNAL \contador_pisos|cnt_value~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador_pisos|cnt_value~2_combout\ : std_logic;
SIGNAL \contador_pisos|cnt_value~1_combout\ : std_logic;
SIGNAL \registro_piso|reg[0]~feeder_combout\ : std_logic;
SIGNAL \registro_piso|reg[1]~feeder_combout\ : std_logic;
SIGNAL \registro_piso|reg[2]~feeder_combout\ : std_logic;
SIGNAL \piso_destino[2]~input_o\ : std_logic;
SIGNAL \piso_destino[1]~input_o\ : std_logic;
SIGNAL \piso_destino[0]~input_o\ : std_logic;
SIGNAL \comparador|Equal0~0_combout\ : std_logic;
SIGNAL \comparador|Equal0~1_combout\ : std_logic;
SIGNAL \contador_pisos|cnt_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \registro_piso|reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_motor_subir <= motor_subir;
ww_motor_bajar <= motor_bajar;
ww_piso_destino <= piso_destino;
piso_actual <= ww_piso_actual;
llegada_piso <= ww_llegada_piso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y4_N16
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro_piso|reg\(0),
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro_piso|reg\(1),
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro_piso|reg\(2),
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\llegada_piso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparador|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \llegada_piso~output_o\);

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

-- Location: IOIBUF_X0_Y4_N22
\motor_subir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_motor_subir,
	o => \motor_subir~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\contador_pisos|cnt_value~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_pisos|cnt_value~0_combout\ = (\motor_subir~input_o\ & ((\contador_pisos|cnt_value\(1) $ (\contador_pisos|cnt_value\(0))))) # (!\motor_subir~input_o\ & ((\contador_pisos|cnt_value\(1) & ((\contador_pisos|cnt_value\(0)))) # 
-- (!\contador_pisos|cnt_value\(1) & (\contador_pisos|cnt_value\(2) & !\contador_pisos|cnt_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_subir~input_o\,
	datab => \contador_pisos|cnt_value\(2),
	datac => \contador_pisos|cnt_value\(1),
	datad => \contador_pisos|cnt_value\(0),
	combout => \contador_pisos|cnt_value~0_combout\);

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

-- Location: FF_X1_Y4_N19
\contador_pisos|cnt_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \contador_pisos|cnt_value~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_pisos|cnt_value\(1));

-- Location: LCCOMB_X1_Y4_N28
\contador_pisos|cnt_value~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_pisos|cnt_value~2_combout\ = (\contador_pisos|cnt_value\(0) & (\contador_pisos|cnt_value\(2) $ (((\motor_subir~input_o\ & \contador_pisos|cnt_value\(1)))))) # (!\contador_pisos|cnt_value\(0) & ((\contador_pisos|cnt_value\(2) & 
-- ((\contador_pisos|cnt_value\(1)))) # (!\contador_pisos|cnt_value\(2) & (!\motor_subir~input_o\ & !\contador_pisos|cnt_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_subir~input_o\,
	datab => \contador_pisos|cnt_value\(0),
	datac => \contador_pisos|cnt_value\(2),
	datad => \contador_pisos|cnt_value\(1),
	combout => \contador_pisos|cnt_value~2_combout\);

-- Location: FF_X1_Y4_N29
\contador_pisos|cnt_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \contador_pisos|cnt_value~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_pisos|cnt_value\(2));

-- Location: LCCOMB_X1_Y4_N24
\contador_pisos|cnt_value~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_pisos|cnt_value~1_combout\ = (!\contador_pisos|cnt_value\(0) & ((\contador_pisos|cnt_value\(1)) # (\motor_subir~input_o\ $ (\contador_pisos|cnt_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_subir~input_o\,
	datab => \contador_pisos|cnt_value\(2),
	datac => \contador_pisos|cnt_value\(0),
	datad => \contador_pisos|cnt_value\(1),
	combout => \contador_pisos|cnt_value~1_combout\);

-- Location: FF_X1_Y4_N25
\contador_pisos|cnt_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \contador_pisos|cnt_value~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_pisos|cnt_value\(0));

-- Location: LCCOMB_X1_Y4_N16
\registro_piso|reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro_piso|reg[0]~feeder_combout\ = \contador_pisos|cnt_value\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_pisos|cnt_value\(0),
	combout => \registro_piso|reg[0]~feeder_combout\);

-- Location: FF_X1_Y4_N17
\registro_piso|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \registro_piso|reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro_piso|reg\(0));

-- Location: LCCOMB_X1_Y4_N30
\registro_piso|reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro_piso|reg[1]~feeder_combout\ = \contador_pisos|cnt_value\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_pisos|cnt_value\(1),
	combout => \registro_piso|reg[1]~feeder_combout\);

-- Location: FF_X1_Y4_N31
\registro_piso|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \registro_piso|reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro_piso|reg\(1));

-- Location: LCCOMB_X1_Y4_N20
\registro_piso|reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro_piso|reg[2]~feeder_combout\ = \contador_pisos|cnt_value\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_pisos|cnt_value\(2),
	combout => \registro_piso|reg[2]~feeder_combout\);

-- Location: FF_X1_Y4_N21
\registro_piso|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \registro_piso|reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro_piso|reg\(2));

-- Location: IOIBUF_X0_Y5_N22
\piso_destino[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(2),
	o => \piso_destino[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\piso_destino[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(1),
	o => \piso_destino[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\piso_destino[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(0),
	o => \piso_destino[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\comparador|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comparador|Equal0~0_combout\ = (\piso_destino[1]~input_o\ & (\contador_pisos|cnt_value\(1) & (\piso_destino[0]~input_o\ $ (!\contador_pisos|cnt_value\(0))))) # (!\piso_destino[1]~input_o\ & (!\contador_pisos|cnt_value\(1) & (\piso_destino[0]~input_o\ $ 
-- (!\contador_pisos|cnt_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \contador_pisos|cnt_value\(0),
	datad => \contador_pisos|cnt_value\(1),
	combout => \comparador|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y5_N16
\comparador|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comparador|Equal0~1_combout\ = (\comparador|Equal0~0_combout\ & (\contador_pisos|cnt_value\(2) $ (!\piso_destino[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_pisos|cnt_value\(2),
	datac => \piso_destino[2]~input_o\,
	datad => \comparador|Equal0~0_combout\,
	combout => \comparador|Equal0~1_combout\);

-- Location: IOIBUF_X7_Y29_N8
\motor_bajar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_motor_bajar,
	o => \motor_bajar~input_o\);

ww_piso_actual(0) <= \piso_actual[0]~output_o\;

ww_piso_actual(1) <= \piso_actual[1]~output_o\;

ww_piso_actual(2) <= \piso_actual[2]~output_o\;

ww_llegada_piso <= \llegada_piso~output_o\;
END structure;



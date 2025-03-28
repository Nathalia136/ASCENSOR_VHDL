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

-- DATE "03/22/2025 09:33:30"

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

ENTITY 	ControlAscensor IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	piso_actual : IN std_logic_vector(2 DOWNTO 0);
	piso_destino : IN std_logic_vector(2 DOWNTO 0);
	fallo_energia : IN std_logic;
	notificacion : IN std_logic;
	sobrecarga : IN std_logic;
	motor_subir : OUT std_logic;
	motor_bajar : OUT std_logic;
	llegada_piso : OUT std_logic;
	clear_request : OUT std_logic_vector(4 DOWNTO 0);
	clear_request_subir : OUT std_logic_vector(3 DOWNTO 0);
	clear_request_bajar : OUT std_logic_vector(3 DOWNTO 0)
	);
END ControlAscensor;

-- Design Ports Information
-- motor_subir	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_bajar	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegada_piso	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notificacion	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlAscensor IS
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
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_llegada_piso : std_logic;
SIGNAL ww_clear_request : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clear_request_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear_request_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_subir~output_o\ : std_logic;
SIGNAL \motor_bajar~output_o\ : std_logic;
SIGNAL \llegada_piso~output_o\ : std_logic;
SIGNAL \clear_request[0]~output_o\ : std_logic;
SIGNAL \clear_request[1]~output_o\ : std_logic;
SIGNAL \clear_request[2]~output_o\ : std_logic;
SIGNAL \clear_request[3]~output_o\ : std_logic;
SIGNAL \clear_request[4]~output_o\ : std_logic;
SIGNAL \clear_request_subir[0]~output_o\ : std_logic;
SIGNAL \clear_request_subir[1]~output_o\ : std_logic;
SIGNAL \clear_request_subir[2]~output_o\ : std_logic;
SIGNAL \clear_request_subir[3]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[0]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[1]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[2]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[3]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \piso_destino[2]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \piso_destino[1]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \Comparator|LessThan1~0_combout\ : std_logic;
SIGNAL \piso_destino[0]~input_o\ : std_logic;
SIGNAL \llegada_piso~0_combout\ : std_logic;
SIGNAL \Comparator|LessThan1~1_combout\ : std_logic;
SIGNAL \notificacion~input_o\ : std_logic;
SIGNAL \sobrecarga~input_o\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \motor_in[1]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \llegada_piso~1_combout\ : std_logic;
SIGNAL \motor_in[0]~2_combout\ : std_logic;
SIGNAL \motor_in[0]~3_combout\ : std_logic;
SIGNAL \motor_in[0]~4_combout\ : std_logic;
SIGNAL \llegada_piso~2_combout\ : std_logic;
SIGNAL \clear_request~0_combout\ : std_logic;
SIGNAL \clear_request~1_combout\ : std_logic;
SIGNAL \clear_request~2_combout\ : std_logic;
SIGNAL \clear_request~3_combout\ : std_logic;
SIGNAL \clear_request~4_combout\ : std_logic;
SIGNAL \clear_request_subir~0_combout\ : std_logic;
SIGNAL \clear_request_subir~1_combout\ : std_logic;
SIGNAL \clear_request_bajar~0_combout\ : std_logic;
SIGNAL \MotorRegister|reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_piso_actual <= piso_actual;
ww_piso_destino <= piso_destino;
ww_fallo_energia <= fallo_energia;
ww_notificacion <= notificacion;
ww_sobrecarga <= sobrecarga;
motor_subir <= ww_motor_subir;
motor_bajar <= ww_motor_bajar;
llegada_piso <= ww_llegada_piso;
clear_request <= ww_clear_request;
clear_request_subir <= ww_clear_request_subir;
clear_request_bajar <= ww_clear_request_bajar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y6_N2
\motor_subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MotorRegister|reg\(1),
	devoe => ww_devoe,
	o => \motor_subir~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\motor_bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MotorRegister|reg\(0),
	devoe => ww_devoe,
	o => \motor_bajar~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\llegada_piso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llegada_piso~2_combout\,
	devoe => ww_devoe,
	o => \llegada_piso~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\clear_request[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~0_combout\,
	devoe => ww_devoe,
	o => \clear_request[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\clear_request[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~1_combout\,
	devoe => ww_devoe,
	o => \clear_request[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\clear_request[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~2_combout\,
	devoe => ww_devoe,
	o => \clear_request[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\clear_request[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~3_combout\,
	devoe => ww_devoe,
	o => \clear_request[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\clear_request[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~4_combout\,
	devoe => ww_devoe,
	o => \clear_request[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\clear_request_subir[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir~0_combout\,
	devoe => ww_devoe,
	o => \clear_request_subir[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\clear_request_subir[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir~1_combout\,
	devoe => ww_devoe,
	o => \clear_request_subir[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\clear_request_subir[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~3_combout\,
	devoe => ww_devoe,
	o => \clear_request_subir[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\clear_request_subir[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~4_combout\,
	devoe => ww_devoe,
	o => \clear_request_subir[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\clear_request_bajar[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~0_combout\,
	devoe => ww_devoe,
	o => \clear_request_bajar[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\clear_request_bajar[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~1_combout\,
	devoe => ww_devoe,
	o => \clear_request_bajar[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\clear_request_bajar[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request~2_combout\,
	devoe => ww_devoe,
	o => \clear_request_bajar[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\clear_request_bajar[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_bajar~0_combout\,
	devoe => ww_devoe,
	o => \clear_request_bajar[3]~output_o\);

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

-- Location: IOIBUF_X0_Y5_N15
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(0),
	o => \piso_actual[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\piso_destino[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(2),
	o => \piso_destino[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\piso_destino[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(1),
	o => \piso_destino[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(2),
	o => \piso_actual[2]~input_o\);

-- Location: LCCOMB_X1_Y5_N16
\Comparator|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Comparator|LessThan1~0_combout\ = (\piso_destino[2]~input_o\ & (((!\piso_actual[1]~input_o\ & \piso_destino[1]~input_o\)) # (!\piso_actual[2]~input_o\))) # (!\piso_destino[2]~input_o\ & (!\piso_actual[1]~input_o\ & (\piso_destino[1]~input_o\ & 
-- !\piso_actual[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \piso_actual[2]~input_o\,
	combout => \Comparator|LessThan1~0_combout\);

-- Location: IOIBUF_X0_Y3_N8
\piso_destino[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(0),
	o => \piso_destino[0]~input_o\);

-- Location: LCCOMB_X1_Y5_N2
\llegada_piso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~0_combout\ = (\piso_destino[2]~input_o\ & (\piso_actual[2]~input_o\ & (\piso_actual[1]~input_o\ $ (!\piso_destino[1]~input_o\)))) # (!\piso_destino[2]~input_o\ & (!\piso_actual[2]~input_o\ & (\piso_actual[1]~input_o\ $ 
-- (!\piso_destino[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \piso_actual[2]~input_o\,
	combout => \llegada_piso~0_combout\);

-- Location: LCCOMB_X1_Y5_N10
\Comparator|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Comparator|LessThan1~1_combout\ = (\Comparator|LessThan1~0_combout\) # ((!\piso_actual[0]~input_o\ & (\piso_destino[0]~input_o\ & \llegada_piso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[0]~input_o\,
	datab => \Comparator|LessThan1~0_combout\,
	datac => \piso_destino[0]~input_o\,
	datad => \llegada_piso~0_combout\,
	combout => \Comparator|LessThan1~1_combout\);

-- Location: IOIBUF_X0_Y4_N1
\notificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notificacion,
	o => \notificacion~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\sobrecarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobrecarga,
	o => \sobrecarga~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\motor_in[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in[1]~5_combout\ = (\Comparator|LessThan1~1_combout\ & (!\notificacion~input_o\ & (!\sobrecarga~input_o\ & !\fallo_energia~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator|LessThan1~1_combout\,
	datab => \notificacion~input_o\,
	datac => \sobrecarga~input_o\,
	datad => \fallo_energia~input_o\,
	combout => \motor_in[1]~5_combout\);

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

-- Location: FF_X1_Y5_N1
\MotorRegister|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \motor_in[1]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MotorRegister|reg\(1));

-- Location: LCCOMB_X1_Y5_N28
\llegada_piso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~1_combout\ = (!\notificacion~input_o\ & (!\sobrecarga~input_o\ & !\fallo_energia~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \notificacion~input_o\,
	datac => \sobrecarga~input_o\,
	datad => \fallo_energia~input_o\,
	combout => \llegada_piso~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
\motor_in[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in[0]~2_combout\ = (\piso_destino[1]~input_o\ & (\piso_actual[0]~input_o\ & (!\piso_destino[0]~input_o\ & \piso_actual[1]~input_o\))) # (!\piso_destino[1]~input_o\ & ((\piso_actual[1]~input_o\) # ((\piso_actual[0]~input_o\ & 
-- !\piso_destino[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[0]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \piso_actual[1]~input_o\,
	combout => \motor_in[0]~2_combout\);

-- Location: LCCOMB_X1_Y5_N22
\motor_in[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in[0]~3_combout\ = (\llegada_piso~1_combout\ & ((\piso_actual[2]~input_o\ & ((\motor_in[0]~2_combout\) # (!\piso_destino[2]~input_o\))) # (!\piso_actual[2]~input_o\ & (!\piso_destino[2]~input_o\ & \motor_in[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[2]~input_o\,
	datab => \llegada_piso~1_combout\,
	datac => \piso_destino[2]~input_o\,
	datad => \motor_in[0]~2_combout\,
	combout => \motor_in[0]~3_combout\);

-- Location: LCCOMB_X1_Y6_N0
\motor_in[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_in[0]~4_combout\ = (\motor_in[0]~3_combout\ & !\Comparator|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \motor_in[0]~3_combout\,
	datad => \Comparator|LessThan1~1_combout\,
	combout => \motor_in[0]~4_combout\);

-- Location: FF_X1_Y6_N1
\MotorRegister|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \motor_in[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MotorRegister|reg\(0));

-- Location: LCCOMB_X1_Y5_N30
\llegada_piso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~2_combout\ = (\llegada_piso~1_combout\ & (\llegada_piso~0_combout\ & (\piso_actual[0]~input_o\ $ (!\piso_destino[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[0]~input_o\,
	datab => \llegada_piso~1_combout\,
	datac => \piso_destino[0]~input_o\,
	datad => \llegada_piso~0_combout\,
	combout => \llegada_piso~2_combout\);

-- Location: LCCOMB_X1_Y5_N24
\clear_request~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request~0_combout\ = (!\piso_destino[2]~input_o\ & (\piso_destino[0]~input_o\ & (!\piso_destino[1]~input_o\ & \llegada_piso~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\clear_request~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request~1_combout\ = (!\piso_destino[2]~input_o\ & (!\piso_destino[0]~input_o\ & (\piso_destino[1]~input_o\ & \llegada_piso~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request~1_combout\);

-- Location: LCCOMB_X1_Y5_N20
\clear_request~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request~2_combout\ = (!\piso_destino[2]~input_o\ & (\piso_destino[0]~input_o\ & (\piso_destino[1]~input_o\ & \llegada_piso~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request~2_combout\);

-- Location: LCCOMB_X1_Y5_N14
\clear_request~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request~3_combout\ = (\piso_destino[2]~input_o\ & (!\piso_destino[0]~input_o\ & (!\piso_destino[1]~input_o\ & \llegada_piso~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request~3_combout\);

-- Location: LCCOMB_X1_Y5_N8
\clear_request~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request~4_combout\ = (\piso_destino[2]~input_o\ & (\piso_destino[0]~input_o\ & (!\piso_destino[1]~input_o\ & \llegada_piso~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request~4_combout\);

-- Location: LCCOMB_X1_Y5_N18
\clear_request_subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir~0_combout\ = (!\piso_destino[0]~input_o\ & (\piso_destino[1]~input_o\ & \llegada_piso~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request_subir~0_combout\);

-- Location: LCCOMB_X1_Y5_N4
\clear_request_subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir~1_combout\ = (\piso_destino[0]~input_o\ & (\piso_destino[1]~input_o\ & \llegada_piso~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request_subir~1_combout\);

-- Location: LCCOMB_X1_Y5_N6
\clear_request_bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_bajar~0_combout\ = (!\piso_destino[0]~input_o\ & (!\piso_destino[1]~input_o\ & \llegada_piso~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_destino[0]~input_o\,
	datac => \piso_destino[1]~input_o\,
	datad => \llegada_piso~2_combout\,
	combout => \clear_request_bajar~0_combout\);

ww_motor_subir <= \motor_subir~output_o\;

ww_motor_bajar <= \motor_bajar~output_o\;

ww_llegada_piso <= \llegada_piso~output_o\;

ww_clear_request(0) <= \clear_request[0]~output_o\;

ww_clear_request(1) <= \clear_request[1]~output_o\;

ww_clear_request(2) <= \clear_request[2]~output_o\;

ww_clear_request(3) <= \clear_request[3]~output_o\;

ww_clear_request(4) <= \clear_request[4]~output_o\;

ww_clear_request_subir(0) <= \clear_request_subir[0]~output_o\;

ww_clear_request_subir(1) <= \clear_request_subir[1]~output_o\;

ww_clear_request_subir(2) <= \clear_request_subir[2]~output_o\;

ww_clear_request_subir(3) <= \clear_request_subir[3]~output_o\;

ww_clear_request_bajar(0) <= \clear_request_bajar[0]~output_o\;

ww_clear_request_bajar(1) <= \clear_request_bajar[1]~output_o\;

ww_clear_request_bajar(2) <= \clear_request_bajar[2]~output_o\;

ww_clear_request_bajar(3) <= \clear_request_bajar[3]~output_o\;
END structure;



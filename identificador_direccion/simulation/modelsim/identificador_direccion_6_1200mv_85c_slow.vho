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

-- DATE "03/21/2025 23:19:23"

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

ENTITY 	identificador_direccion IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	piso_actual : IN std_logic_vector(2 DOWNTO 0);
	motor_subir : IN std_logic;
	motor_bajar : IN std_logic;
	solicitudes_subir : IN std_logic_vector(3 DOWNTO 0);
	solicitudes_bajar : IN std_logic_vector(3 DOWNTO 0);
	solicitudes_cabina : IN std_logic_vector(4 DOWNTO 0);
	piso_destino : OUT std_logic_vector(2 DOWNTO 0)
	);
END identificador_direccion;

-- Design Ports Information
-- piso_destino[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_subir	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_bajar	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF identificador_direccion IS
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
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_solicitudes_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \piso_destino[0]~output_o\ : std_logic;
SIGNAL \piso_destino[1]~output_o\ : std_logic;
SIGNAL \piso_destino[2]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \motor_subir~input_o\ : std_logic;
SIGNAL \motor_bajar~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \solicitudes_subir[2]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[1]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[2]~input_o\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \solicitudes_cabina[3]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[2]~input_o\ : std_logic;
SIGNAL \solicitudes_subir[3]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~28_combout\ : std_logic;
SIGNAL \solicitudes_cabina[4]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[3]~input_o\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \solicitudes_subir[1]~input_o\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \solicitudes_cabina[1]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[0]~input_o\ : std_logic;
SIGNAL \process_0~25_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \solicitudes_combinadas[1]~0_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \solicitudes_subir[0]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[0]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \process_0~27_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \solicitudes_combinadas[3]~1_combout\ : std_logic;
SIGNAL \solicitudes_combinadas[2]~2_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \process_0~26_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \destino_int[0]~1_combout\ : std_logic;
SIGNAL \destino_int[0]~3_combout\ : std_logic;
SIGNAL \destino_int[0]~_emulated_q\ : std_logic;
SIGNAL \destino_int[0]~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \destino_int[1]~5_combout\ : std_logic;
SIGNAL \destino_int[1]~7_combout\ : std_logic;
SIGNAL \destino_int[1]~_emulated_q\ : std_logic;
SIGNAL \destino_int[1]~6_combout\ : std_logic;
SIGNAL \destino_int[2]~9_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \destino_int[2]~11_combout\ : std_logic;
SIGNAL \destino_int[2]~_emulated_q\ : std_logic;
SIGNAL \destino_int[2]~10_combout\ : std_logic;
SIGNAL \RegistroDestino|reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_piso_actual <= piso_actual;
ww_motor_subir <= motor_subir;
ww_motor_bajar <= motor_bajar;
ww_solicitudes_subir <= solicitudes_subir;
ww_solicitudes_bajar <= solicitudes_bajar;
ww_solicitudes_cabina <= solicitudes_cabina;
piso_destino <= ww_piso_destino;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y10_N23
\piso_destino[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg\(0),
	devoe => ww_devoe,
	o => \piso_destino[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\piso_destino[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg\(1),
	devoe => ww_devoe,
	o => \piso_destino[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\piso_destino[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg\(2),
	devoe => ww_devoe,
	o => \piso_destino[2]~output_o\);

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

-- Location: IOIBUF_X0_Y13_N8
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(0),
	o => \piso_actual[0]~input_o\);

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

-- Location: IOIBUF_X0_Y13_N15
\motor_subir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_motor_subir,
	o => \motor_subir~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\motor_bajar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_motor_bajar,
	o => \motor_bajar~input_o\);

-- Location: LCCOMB_X1_Y13_N6
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\motor_subir~input_o\ & \motor_bajar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \motor_subir~input_o\,
	datad => \motor_bajar~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X0_Y10_N15
\solicitudes_subir[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(2),
	o => \solicitudes_subir[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\solicitudes_bajar[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(1),
	o => \solicitudes_bajar[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(2),
	o => \piso_actual[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\solicitudes_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(2),
	o => \solicitudes_cabina[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N26
\process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\piso_actual[2]~input_o\ & ((\solicitudes_subir[2]~input_o\) # ((\solicitudes_bajar[1]~input_o\) # (\solicitudes_cabina[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[2]~input_o\,
	datab => \solicitudes_bajar[1]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \solicitudes_cabina[2]~input_o\,
	combout => \process_0~15_combout\);

-- Location: IOIBUF_X0_Y11_N1
\solicitudes_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(3),
	o => \solicitudes_cabina[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\solicitudes_bajar[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(2),
	o => \solicitudes_bajar[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\solicitudes_subir[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(3),
	o => \solicitudes_subir[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: LCCOMB_X2_Y14_N2
\process_0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (\piso_actual[2]~input_o\ & ((\piso_actual[1]~input_o\) # (\piso_actual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[2]~input_o\,
	datac => \piso_actual[1]~input_o\,
	datad => \piso_actual[0]~input_o\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X1_Y11_N14
\process_0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~28_combout\ = (\process_0~17_combout\ & ((\solicitudes_cabina[3]~input_o\) # ((\solicitudes_bajar[2]~input_o\) # (\solicitudes_subir[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[3]~input_o\,
	datab => \solicitudes_bajar[2]~input_o\,
	datac => \solicitudes_subir[3]~input_o\,
	datad => \process_0~17_combout\,
	combout => \process_0~28_combout\);

-- Location: IOIBUF_X0_Y12_N15
\solicitudes_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(4),
	o => \solicitudes_cabina[4]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\solicitudes_bajar[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(3),
	o => \solicitudes_bajar[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N8
\process_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\piso_actual[2]~input_o\ & (\piso_actual[1]~input_o\ & ((\solicitudes_cabina[4]~input_o\) # (\solicitudes_bajar[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[4]~input_o\,
	datab => \solicitudes_bajar[3]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \piso_actual[1]~input_o\,
	combout => \process_0~18_combout\);

-- Location: IOIBUF_X0_Y10_N1
\solicitudes_subir[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(1),
	o => \solicitudes_subir[1]~input_o\);

-- Location: LCCOMB_X2_Y14_N16
\process_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (!\piso_actual[2]~input_o\ & ((!\piso_actual[0]~input_o\) # (!\piso_actual[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[2]~input_o\,
	datac => \piso_actual[1]~input_o\,
	datad => \piso_actual[0]~input_o\,
	combout => \process_0~16_combout\);

-- Location: IOIBUF_X0_Y9_N1
\solicitudes_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(1),
	o => \solicitudes_cabina[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\solicitudes_bajar[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(0),
	o => \solicitudes_bajar[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\process_0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~25_combout\ = (!\process_0~16_combout\ & ((\solicitudes_subir[1]~input_o\) # ((\solicitudes_cabina[1]~input_o\) # (\solicitudes_bajar[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[1]~input_o\,
	datab => \process_0~16_combout\,
	datac => \solicitudes_cabina[1]~input_o\,
	datad => \solicitudes_bajar[0]~input_o\,
	combout => \process_0~25_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\process_0~18_combout\) # ((!\process_0~28_combout\ & ((\process_0~15_combout\) # (!\process_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~28_combout\,
	datac => \process_0~18_combout\,
	datad => \process_0~25_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X1_Y11_N24
\solicitudes_combinadas[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_combinadas[1]~0_combout\ = (\solicitudes_subir[1]~input_o\) # ((\solicitudes_cabina[1]~input_o\) # (\solicitudes_bajar[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[1]~input_o\,
	datac => \solicitudes_cabina[1]~input_o\,
	datad => \solicitudes_bajar[0]~input_o\,
	combout => \solicitudes_combinadas[1]~0_combout\);

-- Location: LCCOMB_X2_Y14_N24
\process_0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (!\piso_actual[2]~input_o\ & !\piso_actual[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[2]~input_o\,
	datac => \piso_actual[1]~input_o\,
	combout => \process_0~20_combout\);

-- Location: IOIBUF_X0_Y9_N22
\solicitudes_subir[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(0),
	o => \solicitudes_subir[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\solicitudes_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(0),
	o => \solicitudes_cabina[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N12
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\solicitudes_subir[0]~input_o\ & !\solicitudes_cabina[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[0]~input_o\,
	datad => \solicitudes_cabina[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X2_Y14_N28
\process_0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~27_combout\ = (!\piso_actual[1]~input_o\ & (!\piso_actual[2]~input_o\ & (!\Mux1~1_combout\ & !\piso_actual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[1]~input_o\,
	datab => \piso_actual[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \piso_actual[0]~input_o\,
	combout => \process_0~27_combout\);

-- Location: LCCOMB_X2_Y14_N12
\Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\motor_subir~input_o\ & (((\process_0~27_combout\) # (!\process_0~20_combout\)) # (!\solicitudes_combinadas[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_combinadas[1]~0_combout\,
	datab => \process_0~20_combout\,
	datac => \motor_subir~input_o\,
	datad => \process_0~27_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X1_Y11_N2
\solicitudes_combinadas[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_combinadas[3]~1_combout\ = (\solicitudes_cabina[3]~input_o\) # ((\solicitudes_subir[3]~input_o\) # (\solicitudes_bajar[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[3]~input_o\,
	datac => \solicitudes_subir[3]~input_o\,
	datad => \solicitudes_bajar[2]~input_o\,
	combout => \solicitudes_combinadas[3]~1_combout\);

-- Location: LCCOMB_X1_Y11_N22
\solicitudes_combinadas[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_combinadas[2]~2_combout\ = (\solicitudes_subir[2]~input_o\) # ((\solicitudes_bajar[1]~input_o\) # (\solicitudes_cabina[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[2]~input_o\,
	datac => \solicitudes_bajar[1]~input_o\,
	datad => \solicitudes_cabina[2]~input_o\,
	combout => \solicitudes_combinadas[2]~2_combout\);

-- Location: LCCOMB_X2_Y14_N10
\Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ((!\solicitudes_combinadas[1]~0_combout\ & ((\solicitudes_combinadas[2]~2_combout\) # (!\solicitudes_combinadas[3]~1_combout\)))) # (!\Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_combinadas[3]~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \solicitudes_combinadas[1]~0_combout\,
	datad => \solicitudes_combinadas[2]~2_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X1_Y13_N0
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\motor_subir~input_o\ & !\motor_bajar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \motor_subir~input_o\,
	datad => \motor_bajar~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X2_Y14_N6
\process_0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\process_0~16_combout\ & (!\solicitudes_combinadas[2]~2_combout\ & ((!\solicitudes_combinadas[1]~0_combout\) # (!\process_0~20_combout\)))) # (!\process_0~16_combout\ & (((!\solicitudes_combinadas[1]~0_combout\)) # 
-- (!\process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~20_combout\,
	datac => \solicitudes_combinadas[1]~0_combout\,
	datad => \solicitudes_combinadas[2]~2_combout\,
	combout => \process_0~21_combout\);

-- Location: LCCOMB_X2_Y14_N20
\process_0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (\process_0~27_combout\) # (!\process_0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~27_combout\,
	datad => \process_0~21_combout\,
	combout => \process_0~22_combout\);

-- Location: LCCOMB_X2_Y14_N26
\Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & ((\process_0~22_combout\) # ((\Mux2~6_combout\ & \Mux2~1_combout\)))) # (!\Mux2~7_combout\ & (\Mux2~6_combout\ & (\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Mux2~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \process_0~22_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X1_Y11_N10
\process_0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = (!\piso_actual[2]~input_o\ & ((\solicitudes_cabina[3]~input_o\) # ((\solicitudes_subir[3]~input_o\) # (\solicitudes_bajar[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[3]~input_o\,
	datab => \solicitudes_subir[3]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \solicitudes_bajar[2]~input_o\,
	combout => \process_0~23_combout\);

-- Location: LCCOMB_X1_Y14_N6
\Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\process_0~21_combout\ & (!\process_0~27_combout\ & (!\process_0~23_combout\ & \motor_subir~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~21_combout\,
	datab => \process_0~27_combout\,
	datac => \process_0~23_combout\,
	datad => \motor_subir~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X2_Y14_N4
\Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux2~8_combout\) # ((\Mux2~5_combout\) # ((\Mux2~2_combout\ & \Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~9_combout\,
	datac => \Mux2~8_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X1_Y11_N0
\process_0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~26_combout\ = (\solicitudes_cabina[0]~input_o\) # ((\solicitudes_combinadas[1]~0_combout\) # ((\solicitudes_combinadas[2]~2_combout\) # (\solicitudes_subir[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[0]~input_o\,
	datab => \solicitudes_combinadas[1]~0_combout\,
	datac => \solicitudes_combinadas[2]~2_combout\,
	datad => \solicitudes_subir[0]~input_o\,
	combout => \process_0~26_combout\);

-- Location: LCCOMB_X1_Y14_N18
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\solicitudes_bajar[3]~input_o\) # ((\process_0~26_combout\) # ((\solicitudes_cabina[4]~input_o\) # (\solicitudes_combinadas[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_bajar[3]~input_o\,
	datab => \process_0~26_combout\,
	datac => \solicitudes_cabina[4]~input_o\,
	datad => \solicitudes_combinadas[3]~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\solicitudes_subir[0]~input_o\ & ((\piso_actual[1]~input_o\) # ((\piso_actual[2]~input_o\)))) # (!\solicitudes_subir[0]~input_o\ & (\solicitudes_cabina[0]~input_o\ & ((\piso_actual[1]~input_o\) # (\piso_actual[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[0]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \solicitudes_cabina[0]~input_o\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X1_Y11_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\process_0~18_combout\ & ((!\process_0~17_combout\) # (!\solicitudes_combinadas[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \solicitudes_combinadas[3]~1_combout\,
	datac => \process_0~18_combout\,
	datad => \process_0~17_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\process_0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\process_0~25_combout\) # ((\process_0~14_combout\) # ((\process_0~15_combout\) # (!\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~25_combout\,
	datab => \process_0~14_combout\,
	datac => \process_0~15_combout\,
	datad => \Mux1~0_combout\,
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X1_Y14_N4
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~0_combout\ & ((\Mux2~1_combout\) # ((\process_0~19_combout\ & \Mux2~2_combout\)))) # (!\Mux2~0_combout\ & (((\process_0~19_combout\ & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \process_0~19_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X1_Y14_N26
\process_0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (\process_0~23_combout\) # ((!\process_0~17_combout\ & ((\solicitudes_bajar[3]~input_o\) # (\solicitudes_cabina[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_bajar[3]~input_o\,
	datab => \solicitudes_cabina[4]~input_o\,
	datac => \process_0~23_combout\,
	datad => \process_0~17_combout\,
	combout => \process_0~24_combout\);

-- Location: LCCOMB_X1_Y14_N28
\Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\) # ((\motor_subir~input_o\ & ((\process_0~22_combout\) # (\process_0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \Mux2~3_combout\,
	datac => \process_0~24_combout\,
	datad => \motor_subir~input_o\,
	combout => \Mux2~4_combout\);

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

-- Location: LCCOMB_X1_Y14_N16
\destino_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[0]~1_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & (\piso_actual[0]~input_o\)) # (!GLOBAL(\reset~inputclkctrl_outclk\) & ((\destino_int[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[0]~input_o\,
	datac => \destino_int[0]~1_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \destino_int[0]~1_combout\);

-- Location: LCCOMB_X1_Y14_N8
\destino_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[0]~3_combout\ = \destino_int[0]~1_combout\ $ (((\Mux2~4_combout\ & (\Mux2~10_combout\)) # (!\Mux2~4_combout\ & ((\piso_actual[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~10_combout\,
	datab => \piso_actual[0]~input_o\,
	datac => \Mux2~4_combout\,
	datad => \destino_int[0]~1_combout\,
	combout => \destino_int[0]~3_combout\);

-- Location: FF_X1_Y14_N9
\destino_int[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destino_int[0]~_emulated_q\);

-- Location: LCCOMB_X1_Y14_N20
\destino_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[0]~2_combout\ = (\reset~input_o\ & (\piso_actual[0]~input_o\)) # (!\reset~input_o\ & ((\destino_int[0]~_emulated_q\ $ (\destino_int[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[0]~input_o\,
	datab => \reset~input_o\,
	datac => \destino_int[0]~_emulated_q\,
	datad => \destino_int[0]~1_combout\,
	combout => \destino_int[0]~2_combout\);

-- Location: FF_X1_Y14_N21
\RegistroDestino|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[0]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg\(0));

-- Location: LCCOMB_X2_Y14_N22
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~1_combout\ & (\Mux2~1_combout\ & ((\solicitudes_combinadas[1]~0_combout\) # (\solicitudes_combinadas[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_combinadas[1]~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \solicitudes_combinadas[2]~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X1_Y11_N30
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~0_combout\ & (\Mux2~2_combout\ & ((\process_0~15_combout\) # (\process_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~2_combout\,
	datad => \process_0~25_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X2_Y14_N8
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\motor_subir~input_o\ & ((\Mux1~1_combout\) # ((\piso_actual[0]~input_o\) # (!\process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_subir~input_o\,
	datab => \Mux1~1_combout\,
	datac => \piso_actual[0]~input_o\,
	datad => \process_0~20_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X2_Y14_N30
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~3_combout\) # ((\Mux1~2_combout\) # ((\Mux1~4_combout\ & !\process_0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~4_combout\,
	datad => \process_0~21_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X2_Y14_N18
\destino_int[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[1]~5_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & (\piso_actual[1]~input_o\)) # (!GLOBAL(\reset~inputclkctrl_outclk\) & ((\destino_int[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[1]~input_o\,
	datac => \destino_int[1]~5_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \destino_int[1]~5_combout\);

-- Location: LCCOMB_X2_Y14_N14
\destino_int[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[1]~7_combout\ = \destino_int[1]~5_combout\ $ (((\Mux2~4_combout\ & (\Mux1~5_combout\)) # (!\Mux2~4_combout\ & ((\piso_actual[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux2~4_combout\,
	datac => \piso_actual[1]~input_o\,
	datad => \destino_int[1]~5_combout\,
	combout => \destino_int[1]~7_combout\);

-- Location: FF_X2_Y14_N15
\destino_int[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destino_int[1]~_emulated_q\);

-- Location: LCCOMB_X2_Y14_N0
\destino_int[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[1]~6_combout\ = (\reset~input_o\ & (\piso_actual[1]~input_o\)) # (!\reset~input_o\ & ((\destino_int[1]~_emulated_q\ $ (\destino_int[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[1]~input_o\,
	datab => \reset~input_o\,
	datac => \destino_int[1]~_emulated_q\,
	datad => \destino_int[1]~5_combout\,
	combout => \destino_int[1]~6_combout\);

-- Location: FF_X2_Y14_N1
\RegistroDestino|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg\(1));

-- Location: LCCOMB_X1_Y14_N14
\destino_int[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[2]~9_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & (\piso_actual[2]~input_o\)) # (!GLOBAL(\reset~inputclkctrl_outclk\) & ((\destino_int[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual[2]~input_o\,
	datac => \destino_int[2]~9_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \destino_int[2]~9_combout\);

-- Location: LCCOMB_X1_Y14_N22
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\motor_subir~input_o\ & (!\process_0~22_combout\ & ((\process_0~24_combout\) # (\destino_int[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~24_combout\,
	datab => \motor_subir~input_o\,
	datac => \process_0~22_combout\,
	datad => \destino_int[2]~10_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y11_N4
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux2~2_combout\ & ((\process_0~18_combout\) # ((\solicitudes_combinadas[3]~1_combout\ & \process_0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \solicitudes_combinadas[3]~1_combout\,
	datac => \process_0~18_combout\,
	datad => \process_0~17_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X1_Y14_N30
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!\motor_subir~input_o\ & (\motor_bajar~input_o\ & (!\process_0~19_combout\ & \destino_int[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_subir~input_o\,
	datab => \motor_bajar~input_o\,
	datac => \process_0~19_combout\,
	datad => \destino_int[2]~10_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X1_Y14_N24
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\solicitudes_bajar[3]~input_o\) # ((\solicitudes_cabina[4]~input_o\) # (\solicitudes_combinadas[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_bajar[3]~input_o\,
	datac => \solicitudes_cabina[4]~input_o\,
	datad => \solicitudes_combinadas[3]~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X1_Y14_N2
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux2~1_combout\ & (!\process_0~26_combout\ & ((\Mux0~3_combout\) # (\destino_int[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~1_combout\,
	datac => \process_0~26_combout\,
	datad => \destino_int[2]~10_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X1_Y14_N12
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~2_combout\) # ((\Mux0~5_combout\) # ((\Mux0~7_combout\) # (\Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux0~7_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X1_Y14_N0
\destino_int[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[2]~11_combout\ = \destino_int[2]~9_combout\ $ (((\Mux2~4_combout\ & ((\Mux0~6_combout\))) # (!\Mux2~4_combout\ & (\piso_actual[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \piso_actual[2]~input_o\,
	datac => \destino_int[2]~9_combout\,
	datad => \Mux0~6_combout\,
	combout => \destino_int[2]~11_combout\);

-- Location: FF_X1_Y14_N1
\destino_int[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \destino_int[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y14_N10
\destino_int[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[2]~10_combout\ = (\reset~input_o\ & (\piso_actual[2]~input_o\)) # (!\reset~input_o\ & ((\destino_int[2]~9_combout\ $ (\destino_int[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \piso_actual[2]~input_o\,
	datac => \destino_int[2]~9_combout\,
	datad => \destino_int[2]~_emulated_q\,
	combout => \destino_int[2]~10_combout\);

-- Location: FF_X1_Y14_N11
\RegistroDestino|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg\(2));

ww_piso_destino(0) <= \piso_destino[0]~output_o\;

ww_piso_destino(1) <= \piso_destino[1]~output_o\;

ww_piso_destino(2) <= \piso_destino[2]~output_o\;
END structure;



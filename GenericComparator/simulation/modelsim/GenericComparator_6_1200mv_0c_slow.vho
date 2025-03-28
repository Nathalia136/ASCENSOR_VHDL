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

-- DATE "03/15/2025 10:46:02"

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

ENTITY 	GenericComparator IS
    PORT (
	A : IN std_logic_vector(5 DOWNTO 0);
	B : IN std_logic_vector(5 DOWNTO 0);
	equal : OUT std_logic;
	greater : OUT std_logic;
	less : OUT std_logic
	);
END GenericComparator;

-- Design Ports Information
-- equal	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- greater	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- less	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GenericComparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_equal : std_logic;
SIGNAL ww_greater : std_logic;
SIGNAL ww_less : std_logic;
SIGNAL \equal~output_o\ : std_logic;
SIGNAL \greater~output_o\ : std_logic;
SIGNAL \less~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
equal <= ww_equal;
greater <= ww_greater;
less <= ww_less;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y8_N16
\equal~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => \equal~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\greater~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~10_combout\,
	devoe => ww_devoe,
	o => \greater~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\less~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~10_combout\,
	devoe => ww_devoe,
	o => \less~output_o\);

-- Location: IOIBUF_X1_Y0_N29
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X2_Y3_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (!\A[0]~input_o\ & (!\B[0]~input_o\ & (\B[1]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X2_Y3_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\A[2]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X2_Y3_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\A[5]~input_o\ & (\B[5]~input_o\ & (\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & (\A[4]~input_o\ $ (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y3_N30
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y3_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\A[0]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X2_Y3_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\LessThan0~1_cout\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X2_Y3_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X2_Y3_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X2_Y3_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X2_Y3_N10
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\A[5]~input_o\ & ((\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (\LessThan0~9_cout\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	cin => \LessThan0~9_cout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X2_Y3_N12
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X2_Y3_N14
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\A[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X2_Y3_N16
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan1~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X2_Y3_N18
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan1~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X2_Y3_N20
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\LessThan1~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X2_Y3_N22
\LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (\A[5]~input_o\ & (\LessThan1~9_cout\ & \B[5]~input_o\)) # (!\A[5]~input_o\ & ((\LessThan1~9_cout\) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	cin => \LessThan1~9_cout\,
	combout => \LessThan1~10_combout\);

ww_equal <= \equal~output_o\;

ww_greater <= \greater~output_o\;

ww_less <= \less~output_o\;
END structure;



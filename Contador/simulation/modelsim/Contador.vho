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

-- DATE "03/22/2025 16:28:51"

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

ENTITY 	Contador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	stop : IN std_logic;
	up_down : IN std_logic;
	count : OUT std_logic_vector(5 DOWNTO 0)
	);
END Contador;

-- Design Ports Information
-- count[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
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
SIGNAL ww_stop : std_logic;
SIGNAL ww_up_down : std_logic;
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \up_down~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt_value~7_combout\ : std_logic;
SIGNAL \cnt_value[0]~0_combout\ : std_logic;
SIGNAL \cnt_value~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cnt_value~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cnt_value~6_combout\ : std_logic;
SIGNAL \cnt_value~2_combout\ : std_logic;
SIGNAL \cnt_value~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cnt_value~4_combout\ : std_logic;
SIGNAL cnt_value : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_stop <= stop;
ww_up_down <= up_down;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;

-- Location: IOOBUF_X26_Y29_N30
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_value(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

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

-- Location: IOIBUF_X28_Y29_N22
\up_down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down,
	o => \up_down~input_o\);

-- Location: LCCOMB_X27_Y28_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = cnt_value(0) $ (VCC)
-- \Add1~1\ = CARRY(cnt_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X27_Y28_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt_value(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y28_N28
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\up_down~input_o\ & ((\Add0~0_combout\))) # (!\up_down~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_down~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~2_combout\);

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

-- Location: IOIBUF_X28_Y29_N1
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: FF_X27_Y28_N29
\cnt_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(0));

-- Location: LCCOMB_X27_Y28_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (cnt_value(1) & (\Add1~1\ & VCC)) # (!cnt_value(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!cnt_value(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X27_Y28_N18
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (cnt_value(1) & (!\Add0~1\)) # (!cnt_value(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!cnt_value(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X27_Y28_N30
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\up_down~input_o\ & ((\Add0~3_combout\))) # (!\up_down~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \up_down~input_o\,
	datad => \Add0~3_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X27_Y28_N31
\cnt_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(1));

-- Location: LCCOMB_X27_Y28_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (cnt_value(4) & ((GND) # (!\Add1~7\))) # (!cnt_value(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((cnt_value(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X27_Y28_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (!cnt_value(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_value(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X27_Y28_N20
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt_value(2) & (\Add0~4\ $ (GND))) # (!cnt_value(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((cnt_value(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y28_N22
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt_value(3) & (!\Add0~7\)) # (!cnt_value(3) & ((\Add0~7\) # (GND)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!cnt_value(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y28_N24
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt_value(4) & (\Add0~9\ $ (GND))) # (!cnt_value(4) & (!\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((cnt_value(4) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(4),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y28_N26
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\ $ (cnt_value(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_value(5),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X26_Y28_N14
\cnt_value~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~7_combout\ = (\up_down~input_o\ & (\cnt_value~1_combout\ & ((\Add0~12_combout\)))) # (!\up_down~input_o\ & ((\Add1~10_combout\) # ((\cnt_value~1_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down~input_o\,
	datab => \cnt_value~1_combout\,
	datac => \Add1~10_combout\,
	datad => \Add0~12_combout\,
	combout => \cnt_value~7_combout\);

-- Location: FF_X26_Y28_N15
\cnt_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_value~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(5));

-- Location: LCCOMB_X26_Y28_N24
\cnt_value[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value[0]~0_combout\ = (cnt_value(1) & (cnt_value(3) & (!cnt_value(2) & cnt_value(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(1),
	datab => cnt_value(3),
	datac => cnt_value(2),
	datad => cnt_value(0),
	combout => \cnt_value[0]~0_combout\);

-- Location: LCCOMB_X26_Y28_N18
\cnt_value~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~1_combout\ = (\up_down~input_o\ & (((!\cnt_value[0]~0_combout\) # (!cnt_value(5))) # (!cnt_value(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(4),
	datab => cnt_value(5),
	datac => \up_down~input_o\,
	datad => \cnt_value[0]~0_combout\,
	combout => \cnt_value~1_combout\);

-- Location: LCCOMB_X27_Y28_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (cnt_value(2) & ((GND) # (!\Add1~3\))) # (!cnt_value(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((cnt_value(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_value(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y28_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (cnt_value(3) & (\Add1~5\ & VCC)) # (!cnt_value(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!cnt_value(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X26_Y28_N16
\cnt_value~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~5_combout\ = (\up_down~input_o\ & (\cnt_value~1_combout\ & ((\Add0~8_combout\)))) # (!\up_down~input_o\ & ((\Add1~6_combout\) # ((\cnt_value~1_combout\ & \Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down~input_o\,
	datab => \cnt_value~1_combout\,
	datac => \Add1~6_combout\,
	datad => \Add0~8_combout\,
	combout => \cnt_value~5_combout\);

-- Location: FF_X26_Y28_N17
\cnt_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_value~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(3));

-- Location: LCCOMB_X27_Y28_N2
\cnt_value~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~6_combout\ = (\Add1~8_combout\ & (((\cnt_value~1_combout\ & \Add0~10_combout\)) # (!\up_down~input_o\))) # (!\Add1~8_combout\ & (((\cnt_value~1_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \up_down~input_o\,
	datac => \cnt_value~1_combout\,
	datad => \Add0~10_combout\,
	combout => \cnt_value~6_combout\);

-- Location: FF_X27_Y28_N3
\cnt_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_value~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(4));

-- Location: LCCOMB_X26_Y28_N12
\cnt_value~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~2_combout\ = (cnt_value(1)) # ((cnt_value(3)) # ((cnt_value(2)) # (cnt_value(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(1),
	datab => cnt_value(3),
	datac => cnt_value(2),
	datad => cnt_value(0),
	combout => \cnt_value~2_combout\);

-- Location: LCCOMB_X26_Y28_N10
\cnt_value~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~3_combout\ = (!\up_down~input_o\ & ((cnt_value(4)) # ((cnt_value(5)) # (\cnt_value~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_value(4),
	datab => cnt_value(5),
	datac => \up_down~input_o\,
	datad => \cnt_value~2_combout\,
	combout => \cnt_value~3_combout\);

-- Location: LCCOMB_X27_Y28_N0
\cnt_value~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_value~4_combout\ = (\cnt_value~3_combout\ & ((\Add1~4_combout\) # ((\cnt_value~1_combout\ & \Add0~6_combout\)))) # (!\cnt_value~3_combout\ & (\cnt_value~1_combout\ & ((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_value~3_combout\,
	datab => \cnt_value~1_combout\,
	datac => \Add1~4_combout\,
	datad => \Add0~6_combout\,
	combout => \cnt_value~4_combout\);

-- Location: FF_X27_Y28_N1
\cnt_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_value~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_value(2));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;
END structure;



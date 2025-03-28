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

-- DATE "03/15/2025 10:16:30"

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

ENTITY 	GenericTimer IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	done : OUT std_logic
	);
END GenericTimer;

-- Design Ports Information
-- done	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GenericTimer IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \cnt_enable~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_enable~q\ : std_logic;
SIGNAL \CounterInst|cnt~1_combout\ : std_logic;
SIGNAL \CounterInst|cnt~2_combout\ : std_logic;
SIGNAL \CounterInst|cnt~3_combout\ : std_logic;
SIGNAL \CounterInst|cnt[2]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL \CounterInst|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_start <= start;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y22_N23
\done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

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

-- Location: IOIBUF_X0_Y22_N8
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X1_Y22_N22
\cnt_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_enable~0_combout\ = (\cnt_enable~q\ & ((!\Equal0~0_combout\))) # (!\cnt_enable~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \cnt_enable~q\,
	datad => \Equal0~0_combout\,
	combout => \cnt_enable~0_combout\);

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

-- Location: FF_X1_Y22_N23
cnt_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \cnt_enable~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_enable~q\);

-- Location: LCCOMB_X1_Y22_N4
\CounterInst|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CounterInst|cnt~1_combout\ = (\CounterInst|cnt\(1) & (!\CounterInst|cnt\(0) & ((\CounterInst|cnt\(2)) # (!\CounterInst|cnt\(3))))) # (!\CounterInst|cnt\(1) & (((\CounterInst|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CounterInst|cnt\(2),
	datab => \CounterInst|cnt\(3),
	datac => \CounterInst|cnt\(1),
	datad => \CounterInst|cnt\(0),
	combout => \CounterInst|cnt~1_combout\);

-- Location: FF_X1_Y22_N5
\CounterInst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \CounterInst|cnt~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterInst|cnt\(1));

-- Location: LCCOMB_X1_Y22_N6
\CounterInst|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CounterInst|cnt~2_combout\ = (\CounterInst|cnt\(0) & (\CounterInst|cnt\(3) $ (((\CounterInst|cnt\(2) & \CounterInst|cnt\(1)))))) # (!\CounterInst|cnt\(0) & (\CounterInst|cnt\(3) & ((\CounterInst|cnt\(2)) # (!\CounterInst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CounterInst|cnt\(0),
	datab => \CounterInst|cnt\(2),
	datac => \CounterInst|cnt\(3),
	datad => \CounterInst|cnt\(1),
	combout => \CounterInst|cnt~2_combout\);

-- Location: FF_X1_Y22_N7
\CounterInst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \CounterInst|cnt~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterInst|cnt\(3));

-- Location: LCCOMB_X1_Y22_N8
\CounterInst|cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CounterInst|cnt~3_combout\ = (!\CounterInst|cnt\(0) & ((\CounterInst|cnt\(2)) # ((!\CounterInst|cnt\(1)) # (!\CounterInst|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CounterInst|cnt\(2),
	datab => \CounterInst|cnt\(3),
	datac => \CounterInst|cnt\(0),
	datad => \CounterInst|cnt\(1),
	combout => \CounterInst|cnt~3_combout\);

-- Location: FF_X1_Y22_N9
\CounterInst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \CounterInst|cnt~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterInst|cnt\(0));

-- Location: LCCOMB_X1_Y22_N26
\CounterInst|cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CounterInst|cnt[2]~0_combout\ = \CounterInst|cnt\(2) $ (((\cnt_enable~q\ & (\CounterInst|cnt\(0) & \CounterInst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_enable~q\,
	datab => \CounterInst|cnt\(0),
	datac => \CounterInst|cnt\(2),
	datad => \CounterInst|cnt\(1),
	combout => \CounterInst|cnt[2]~0_combout\);

-- Location: FF_X1_Y22_N27
\CounterInst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \CounterInst|cnt[2]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterInst|cnt\(2));

-- Location: LCCOMB_X1_Y22_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\CounterInst|cnt\(2) & (!\CounterInst|cnt\(1) & (\CounterInst|cnt\(0) & \CounterInst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CounterInst|cnt\(2),
	datab => \CounterInst|cnt\(1),
	datac => \CounterInst|cnt\(0),
	datad => \CounterInst|cnt\(3),
	combout => \Equal0~0_combout\);

-- Location: FF_X1_Y22_N29
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cnt_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_done <= \done~output_o\;
END structure;



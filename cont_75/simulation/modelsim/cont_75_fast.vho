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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/05/2026 22:29:42"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont_75 IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rst : IN std_logic;
	clr : IN std_logic;
	output : OUT std_logic_vector(6 DOWNTO 0)
	);
END cont_75;

-- Design Ports Information
-- output[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cont_75 IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bit_3_downto_0|counter[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[3]~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[0]~4_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \counter_bit_8_downto_4|counter[0]~2_combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[1]~0_combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[2]~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter_bit_8_downto_4|counter[1]~0_combout\ : std_logic;
SIGNAL \counter_bit_8_downto_4|counter[2]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|count~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[3]~2_combout\ : std_logic;
SIGNAL \counter_bit_3_downto_0|counter[3]~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter_bit_8_downto_4|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bit_3_downto_0|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_bit_3_downto_0|ALT_INV_counter[3]~clkctrl_outclk\ : std_logic;
SIGNAL \counter_bit_3_downto_0|ALT_INV_counter\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rst <= rst;
ww_clr <= clr;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\counter_bit_3_downto_0|counter[3]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \counter_bit_3_downto_0|counter\(3));
\counter_bit_3_downto_0|ALT_INV_counter[3]~clkctrl_outclk\ <= NOT \counter_bit_3_downto_0|counter[3]~clkctrl_outclk\;
\counter_bit_3_downto_0|ALT_INV_counter\(0) <= NOT \counter_bit_3_downto_0|counter\(0);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G11
\counter_bit_3_downto_0|counter[3]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_bit_3_downto_0|counter[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_bit_3_downto_0|counter[3]~clkctrl_outclk\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y35_N20
\counter_bit_3_downto_0|counter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|counter[0]~4_combout\ = !\counter_bit_3_downto_0|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bit_3_downto_0|counter\(0),
	combout => \counter_bit_3_downto_0|counter[0]~4_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: LCCOMB_X23_Y35_N28
\counter_bit_8_downto_4|counter[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_8_downto_4|counter[0]~2_combout\ = !\counter_bit_8_downto_4|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bit_8_downto_4|counter\(0),
	combout => \counter_bit_8_downto_4|counter[0]~2_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: LCFF_X23_Y35_N29
\counter_bit_8_downto_4|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_bit_3_downto_0|ALT_INV_counter[3]~clkctrl_outclk\,
	datain => \counter_bit_8_downto_4|counter[0]~2_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_8_downto_4|counter\(0));

-- Location: LCCOMB_X24_Y35_N2
\counter_bit_3_downto_0|counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|counter[1]~0_combout\ = \counter_bit_3_downto_0|counter\(1) $ (((\en~combout\ & \counter_bit_3_downto_0|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datac => \counter_bit_3_downto_0|counter\(1),
	datad => \counter_bit_3_downto_0|counter\(0),
	combout => \counter_bit_3_downto_0|counter[1]~0_combout\);

-- Location: LCFF_X24_Y35_N3
\counter_bit_3_downto_0|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_bit_3_downto_0|counter[1]~0_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_3_downto_0|counter\(1));

-- Location: LCCOMB_X24_Y35_N26
\counter_bit_3_downto_0|counter[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|counter[2]~1_combout\ = \counter_bit_3_downto_0|counter\(2) $ (((\en~combout\ & (\counter_bit_3_downto_0|counter\(1) & \counter_bit_3_downto_0|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \counter_bit_3_downto_0|counter\(1),
	datac => \counter_bit_3_downto_0|counter\(2),
	datad => \counter_bit_3_downto_0|counter\(0),
	combout => \counter_bit_3_downto_0|counter[2]~1_combout\);

-- Location: LCFF_X24_Y35_N27
\counter_bit_3_downto_0|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_bit_3_downto_0|counter[2]~1_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_3_downto_0|counter\(2));

-- Location: LCCOMB_X24_Y35_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\counter_bit_3_downto_0|counter\(3) & (!\counter_bit_8_downto_4|counter\(0) & !\counter_bit_3_downto_0|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bit_3_downto_0|counter\(3),
	datab => \counter_bit_8_downto_4|counter\(0),
	datad => \counter_bit_3_downto_0|counter\(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y35_N30
\counter_bit_8_downto_4|counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_8_downto_4|counter[1]~0_combout\ = \counter_bit_8_downto_4|counter\(1) $ (((\en~combout\ & \counter_bit_8_downto_4|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~combout\,
	datac => \counter_bit_8_downto_4|counter\(1),
	datad => \counter_bit_8_downto_4|counter\(0),
	combout => \counter_bit_8_downto_4|counter[1]~0_combout\);

-- Location: LCFF_X23_Y35_N31
\counter_bit_8_downto_4|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_bit_3_downto_0|ALT_INV_counter[3]~clkctrl_outclk\,
	datain => \counter_bit_8_downto_4|counter[1]~0_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_8_downto_4|counter\(1));

-- Location: LCCOMB_X23_Y35_N24
\counter_bit_8_downto_4|counter[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_8_downto_4|counter[2]~1_combout\ = \counter_bit_8_downto_4|counter\(2) $ (((\en~combout\ & (\counter_bit_8_downto_4|counter\(1) & \counter_bit_8_downto_4|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \counter_bit_8_downto_4|counter\(1),
	datac => \counter_bit_8_downto_4|counter\(2),
	datad => \counter_bit_8_downto_4|counter\(0),
	combout => \counter_bit_8_downto_4|counter[2]~1_combout\);

-- Location: LCFF_X23_Y35_N25
\counter_bit_8_downto_4|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_bit_3_downto_0|ALT_INV_counter[3]~clkctrl_outclk\,
	datain => \counter_bit_8_downto_4|counter[2]~1_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_8_downto_4|counter\(2));

-- Location: LCCOMB_X24_Y35_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\counter_bit_3_downto_0|counter\(0) & (\counter_bit_8_downto_4|counter\(2) & (!\counter_bit_8_downto_4|counter\(1) & \counter_bit_3_downto_0|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bit_3_downto_0|counter\(0),
	datab => \counter_bit_8_downto_4|counter\(2),
	datac => \counter_bit_8_downto_4|counter\(1),
	datad => \counter_bit_3_downto_0|counter\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y35_N30
\counter_bit_3_downto_0|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|count~0_combout\ = (\rst~combout\) # ((\clr~combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \clr~combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter_bit_3_downto_0|count~0_combout\);

-- Location: LCFF_X24_Y35_N21
\counter_bit_3_downto_0|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_bit_3_downto_0|counter[0]~4_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_3_downto_0|counter\(0));

-- Location: LCCOMB_X24_Y35_N6
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\counter_bit_3_downto_0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_bit_3_downto_0|counter\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X24_Y35_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\counter_bit_3_downto_0|counter\(1) & (\Add0~1_cout\ & VCC)) # (!\counter_bit_3_downto_0|counter\(1) & (!\Add0~1_cout\))
-- \Add0~3\ = CARRY((!\counter_bit_3_downto_0|counter\(1) & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bit_3_downto_0|counter\(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X24_Y35_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\counter_bit_3_downto_0|counter\(2) & ((GND) # (!\Add0~3\))) # (!\counter_bit_3_downto_0|counter\(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\counter_bit_3_downto_0|counter\(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_bit_3_downto_0|counter\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y35_N28
\counter_bit_3_downto_0|counter[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|counter[3]~2_combout\ = (\en~combout\ & (\counter_bit_3_downto_0|counter\(2) & (\counter_bit_3_downto_0|counter\(0) & \counter_bit_3_downto_0|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \counter_bit_3_downto_0|counter\(2),
	datac => \counter_bit_3_downto_0|counter\(0),
	datad => \counter_bit_3_downto_0|counter\(1),
	combout => \counter_bit_3_downto_0|counter[3]~2_combout\);

-- Location: LCCOMB_X24_Y35_N4
\counter_bit_3_downto_0|counter[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_bit_3_downto_0|counter[3]~3_combout\ = \counter_bit_3_downto_0|counter\(3) $ (\counter_bit_3_downto_0|counter[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_bit_3_downto_0|counter\(3),
	datad => \counter_bit_3_downto_0|counter[3]~2_combout\,
	combout => \counter_bit_3_downto_0|counter[3]~3_combout\);

-- Location: LCFF_X24_Y35_N5
\counter_bit_3_downto_0|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_bit_3_downto_0|counter[3]~3_combout\,
	aclr => \counter_bit_3_downto_0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_bit_3_downto_0|counter\(3));

-- Location: LCCOMB_X24_Y35_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\counter_bit_3_downto_0|counter\(3) & (\Add0~5\ & VCC)) # (!\counter_bit_3_downto_0|counter\(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\counter_bit_3_downto_0|counter\(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bit_3_downto_0|counter\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y35_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\counter_bit_8_downto_4|counter\(0) & (\Add0~7\ $ (GND))) # (!\counter_bit_8_downto_4|counter\(0) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\counter_bit_8_downto_4|counter\(0) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_bit_8_downto_4|counter\(0),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y35_N16
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\counter_bit_8_downto_4|counter\(1) & (!\Add0~9\)) # (!\counter_bit_8_downto_4|counter\(1) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\counter_bit_8_downto_4|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_bit_8_downto_4|counter\(1),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y35_N18
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \counter_bit_8_downto_4|counter\(2) $ (!\Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_bit_8_downto_4|counter\(2),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \counter_bit_3_downto_0|ALT_INV_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));
END structure;



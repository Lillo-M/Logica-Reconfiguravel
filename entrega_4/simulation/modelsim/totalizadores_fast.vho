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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/21/2026 19:49:26"

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

ENTITY 	totalizadores_B IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rst : IN std_logic;
	clr : IN std_logic;
	input : IN std_logic_vector(4 DOWNTO 0);
	tot1 : OUT std_logic_vector(2 DOWNTO 0);
	tot2 : OUT std_logic_vector(2 DOWNTO 0);
	tot3 : OUT std_logic_vector(2 DOWNTO 0);
	tot4 : OUT std_logic_vector(2 DOWNTO 0);
	tot5 : OUT std_logic_vector(2 DOWNTO 0);
	tot6 : OUT std_logic_vector(2 DOWNTO 0);
	tot7 : OUT std_logic_vector(2 DOWNTO 0)
	);
END totalizadores_B;

-- Design Ports Information
-- en	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tot1[0]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot1[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot1[2]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot2[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot2[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot2[2]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot3[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot3[1]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot3[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot4[0]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot4[1]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot4[2]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot5[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot5[1]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot5[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot6[0]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot6[1]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot7[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot7[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot7[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF totalizadores_B IS
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
SIGNAL ww_input : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_tot1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot4 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot5 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot6 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot7 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tot_2~7_combout\ : std_logic;
SIGNAL \tot_1~6_combout\ : std_logic;
SIGNAL \tot_1~20_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \totalizador_1:tot1_sum[0]~regout\ : std_logic;
SIGNAL \tot_1~7_combout\ : std_logic;
SIGNAL \tot_1~3_combout\ : std_logic;
SIGNAL \tot_1~30_combout\ : std_logic;
SIGNAL \totalizador_1:tot1_sum[2]~regout\ : std_logic;
SIGNAL \tot_1~21_combout\ : std_logic;
SIGNAL \tot_1~17_combout\ : std_logic;
SIGNAL \tot_1~31_combout\ : std_logic;
SIGNAL \totalizador_1:tot1_sum[1]~regout\ : std_logic;
SIGNAL \tot1_sum~0_combout\ : std_logic;
SIGNAL \tot_1~28_combout\ : std_logic;
SIGNAL \tot_1~29_combout\ : std_logic;
SIGNAL \totalizador_2:tot2_sum[0]~regout\ : std_logic;
SIGNAL \tot_2~6_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \tot3_int~2_combout\ : std_logic;
SIGNAL \tot_2~17_combout\ : std_logic;
SIGNAL \tot_2~31_combout\ : std_logic;
SIGNAL \totalizador_2:tot2_sum[1]~feeder_combout\ : std_logic;
SIGNAL \totalizador_2:tot2_sum[1]~regout\ : std_logic;
SIGNAL \tot_2~3_combout\ : std_logic;
SIGNAL \tot_2~30_combout\ : std_logic;
SIGNAL \totalizador_2:tot2_sum[2]~regout\ : std_logic;
SIGNAL \tot2_sum~0_combout\ : std_logic;
SIGNAL \tot_2~28_combout\ : std_logic;
SIGNAL \tot_2~29_combout\ : std_logic;
SIGNAL \tot3_int~0_combout\ : std_logic;
SIGNAL \tot3_int~1_combout\ : std_logic;
SIGNAL \totalizador_3:tot3_int[0]~regout\ : std_logic;
SIGNAL \tot3_int~3_combout\ : std_logic;
SIGNAL \totalizador_3:tot3_int[1]~regout\ : std_logic;
SIGNAL \tot3_int~4_combout\ : std_logic;
SIGNAL \tot3_int~5_combout\ : std_logic;
SIGNAL \tot3_int~6_combout\ : std_logic;
SIGNAL \totalizador_3:tot3_int[2]~regout\ : std_logic;
SIGNAL \tot_4~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tot_4~1_combout\ : std_logic;
SIGNAL tot_4 : std_logic_vector(2 DOWNTO 0);
SIGNAL tot_2 : std_logic_vector(2 DOWNTO 0);
SIGNAL tot_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rst <= rst;
ww_clr <= clr;
ww_input <= input;
tot1 <= ww_tot1;
tot2 <= ww_tot2;
tot3 <= ww_tot3;
tot4 <= ww_tot4;
tot5 <= ww_tot5;
tot6 <= ww_tot6;
tot7 <= ww_tot7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCCOMB_X64_Y27_N6
\tot_2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~7_combout\ = (\input~combout\(4) & ((\input~combout\(0) & ((\input~combout\(1)) # (\input~combout\(2)))) # (!\input~combout\(0) & (\input~combout\(1) & \input~combout\(2))))) # (!\input~combout\(4) & (\input~combout\(0) & (\input~combout\(1) & 
-- \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(0),
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \tot_2~7_combout\);

-- Location: LCCOMB_X64_Y27_N20
\tot_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~6_combout\ = (\input~combout\(3) & (\input~combout\(0) & (\input~combout\(4) & \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(0),
	datac => \input~combout\(4),
	datad => \input~combout\(2),
	combout => \tot_1~6_combout\);

-- Location: LCCOMB_X64_Y27_N16
\tot_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~20_combout\ = (\input~combout\(3) & ((\input~combout\(0) & ((!\input~combout\(2)) # (!\input~combout\(4)))) # (!\input~combout\(0) & ((\input~combout\(4)) # (\input~combout\(2)))))) # (!\input~combout\(3) & ((\input~combout\(0) & 
-- ((\input~combout\(4)) # (\input~combout\(2)))) # (!\input~combout\(0) & (\input~combout\(4) & \input~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(0),
	datac => \input~combout\(4),
	datad => \input~combout\(2),
	combout => \tot_1~20_combout\);

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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X64_Y27_N29
\totalizador_1:tot1_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot_1~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_1:tot1_sum[0]~regout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
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
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
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
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
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
	padio => ww_input(4),
	combout => \input~combout\(4));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
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
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LCCOMB_X64_Y27_N26
\tot_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~7_combout\ = (\input~combout\(3) & ((\input~combout\(0) & ((\input~combout\(4)) # (\input~combout\(2)))) # (!\input~combout\(0) & (\input~combout\(4) & \input~combout\(2))))) # (!\input~combout\(3) & (\input~combout\(0) & (\input~combout\(4) & 
-- \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(0),
	datac => \input~combout\(4),
	datad => \input~combout\(2),
	combout => \tot_1~7_combout\);

-- Location: LCCOMB_X64_Y27_N2
\tot_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~3_combout\ = (!\totalizador_1:tot1_sum[1]~regout\ & ((\input~combout\(1) & ((\tot_1~7_combout\))) # (!\input~combout\(1) & (\tot_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_1~6_combout\,
	datab => \input~combout\(1),
	datac => \totalizador_1:tot1_sum[1]~regout\,
	datad => \tot_1~7_combout\,
	combout => \tot_1~3_combout\);

-- Location: LCCOMB_X64_Y27_N4
\tot_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~30_combout\ = (!\clr~combout\ & ((\totalizador_1:tot1_sum[2]~regout\) # ((!\totalizador_1:tot1_sum[0]~regout\ & \tot_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \totalizador_1:tot1_sum[2]~regout\,
	datac => \totalizador_1:tot1_sum[0]~regout\,
	datad => \tot_1~3_combout\,
	combout => \tot_1~30_combout\);

-- Location: LCFF_X64_Y27_N9
\totalizador_1:tot1_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot_1~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_1:tot1_sum[2]~regout\);

-- Location: LCCOMB_X64_Y27_N10
\tot_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~21_combout\ = (\input~combout\(3) & ((\input~combout\(0) & (!\input~combout\(4) & !\input~combout\(2))) # (!\input~combout\(0) & ((!\input~combout\(2)) # (!\input~combout\(4)))))) # (!\input~combout\(3) & ((\input~combout\(0) & 
-- ((!\input~combout\(2)) # (!\input~combout\(4)))) # (!\input~combout\(0) & ((\input~combout\(4)) # (\input~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(0),
	datac => \input~combout\(4),
	datad => \input~combout\(2),
	combout => \tot_1~21_combout\);

-- Location: LCCOMB_X64_Y27_N8
\tot_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~17_combout\ = (!\totalizador_1:tot1_sum[2]~regout\ & ((\input~combout\(1) & ((\tot_1~21_combout\))) # (!\input~combout\(1) & (\tot_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_1~20_combout\,
	datab => \input~combout\(1),
	datac => \totalizador_1:tot1_sum[2]~regout\,
	datad => \tot_1~21_combout\,
	combout => \tot_1~17_combout\);

-- Location: LCCOMB_X64_Y27_N14
\tot_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~31_combout\ = (!\clr~combout\ & ((\totalizador_1:tot1_sum[1]~regout\) # ((!\totalizador_1:tot1_sum[0]~regout\ & \tot_1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \totalizador_1:tot1_sum[1]~regout\,
	datac => \totalizador_1:tot1_sum[0]~regout\,
	datad => \tot_1~17_combout\,
	combout => \tot_1~31_combout\);

-- Location: LCFF_X64_Y27_N3
\totalizador_1:tot1_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot_1~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_1:tot1_sum[1]~regout\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
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
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LCCOMB_X64_Y27_N28
\tot1_sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot1_sum~0_combout\ = \input~combout\(4) $ (\input~combout\(2) $ (\totalizador_1:tot1_sum[0]~regout\ $ (\input~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(2),
	datac => \totalizador_1:tot1_sum[0]~regout\,
	datad => \input~combout\(3),
	combout => \tot1_sum~0_combout\);

-- Location: LCCOMB_X64_Y27_N22
\tot_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~28_combout\ = (!\totalizador_1:tot1_sum[2]~regout\ & (\input~combout\(1) $ (\input~combout\(0) $ (\tot1_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \input~combout\(0),
	datac => \totalizador_1:tot1_sum[2]~regout\,
	datad => \tot1_sum~0_combout\,
	combout => \tot_1~28_combout\);

-- Location: LCCOMB_X64_Y27_N24
\tot_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_1~29_combout\ = (!\clr~combout\ & ((\totalizador_1:tot1_sum[0]~regout\) # ((!\totalizador_1:tot1_sum[1]~regout\ & \tot_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \totalizador_1:tot1_sum[1]~regout\,
	datac => \totalizador_1:tot1_sum[0]~regout\,
	datad => \tot_1~28_combout\,
	combout => \tot_1~29_combout\);

-- Location: LCFF_X64_Y27_N25
\tot_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_1~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_1(0));

-- Location: LCFF_X64_Y27_N15
\tot_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_1~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_1(1));

-- Location: LCFF_X64_Y27_N5
\tot_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_1~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_1(2));

-- Location: LCFF_X64_Y26_N7
\totalizador_2:tot2_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot_2~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_2:tot2_sum[0]~regout\);

-- Location: LCCOMB_X64_Y26_N24
\tot_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~6_combout\ = (\input~combout\(4) & (\input~combout\(0) & (\input~combout\(1) & \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(0),
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \tot_2~6_combout\);

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

-- Location: LCCOMB_X64_Y27_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\input~combout\(3) & ((\input~combout\(1) & (!\input~combout\(0) & !\input~combout\(2))) # (!\input~combout\(1) & ((!\input~combout\(2)) # (!\input~combout\(0)))))) # (!\input~combout\(3) & ((\input~combout\(1) & ((!\input~combout\(2)) 
-- # (!\input~combout\(0)))) # (!\input~combout\(1) & ((\input~combout\(0)) # (\input~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(1),
	datac => \input~combout\(0),
	datad => \input~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X64_Y26_N12
\tot3_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~2_combout\ = (\input~combout\(0) & ((\input~combout\(3) & ((!\input~combout\(2)) # (!\input~combout\(1)))) # (!\input~combout\(3) & ((\input~combout\(1)) # (\input~combout\(2)))))) # (!\input~combout\(0) & ((\input~combout\(3) & 
-- ((\input~combout\(1)) # (\input~combout\(2)))) # (!\input~combout\(3) & (\input~combout\(1) & \input~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \tot3_int~2_combout\);

-- Location: LCCOMB_X64_Y26_N8
\tot_2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~17_combout\ = (!\totalizador_2:tot2_sum[2]~regout\ & ((\input~combout\(4) & (\Mux1~0_combout\)) # (!\input~combout\(4) & ((\tot3_int~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \Mux1~0_combout\,
	datac => \totalizador_2:tot2_sum[2]~regout\,
	datad => \tot3_int~2_combout\,
	combout => \tot_2~17_combout\);

-- Location: LCCOMB_X64_Y26_N2
\tot_2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~31_combout\ = (!\clr~combout\ & ((\totalizador_2:tot2_sum[1]~regout\) # ((!\totalizador_2:tot2_sum[0]~regout\ & \tot_2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \totalizador_2:tot2_sum[1]~regout\,
	datab => \clr~combout\,
	datac => \totalizador_2:tot2_sum[0]~regout\,
	datad => \tot_2~17_combout\,
	combout => \tot_2~31_combout\);

-- Location: LCCOMB_X64_Y26_N22
\totalizador_2:tot2_sum[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \totalizador_2:tot2_sum[1]~feeder_combout\ = \tot_2~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tot_2~31_combout\,
	combout => \totalizador_2:tot2_sum[1]~feeder_combout\);

-- Location: LCFF_X64_Y26_N23
\totalizador_2:tot2_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \totalizador_2:tot2_sum[1]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_2:tot2_sum[1]~regout\);

-- Location: LCCOMB_X64_Y26_N18
\tot_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~3_combout\ = (!\totalizador_2:tot2_sum[1]~regout\ & ((\input~combout\(3) & (\tot_2~7_combout\)) # (!\input~combout\(3) & ((\tot_2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_2~7_combout\,
	datab => \tot_2~6_combout\,
	datac => \input~combout\(3),
	datad => \totalizador_2:tot2_sum[1]~regout\,
	combout => \tot_2~3_combout\);

-- Location: LCCOMB_X64_Y26_N20
\tot_2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~30_combout\ = (!\clr~combout\ & ((\totalizador_2:tot2_sum[2]~regout\) # ((!\totalizador_2:tot2_sum[0]~regout\ & \tot_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \totalizador_2:tot2_sum[0]~regout\,
	datac => \totalizador_2:tot2_sum[2]~regout\,
	datad => \tot_2~3_combout\,
	combout => \tot_2~30_combout\);

-- Location: LCFF_X64_Y26_N9
\totalizador_2:tot2_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot_2~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_2:tot2_sum[2]~regout\);

-- Location: LCCOMB_X64_Y26_N6
\tot2_sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot2_sum~0_combout\ = \input~combout\(0) $ (\input~combout\(1) $ (\totalizador_2:tot2_sum[0]~regout\ $ (\input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(1),
	datac => \totalizador_2:tot2_sum[0]~regout\,
	datad => \input~combout\(2),
	combout => \tot2_sum~0_combout\);

-- Location: LCCOMB_X64_Y26_N28
\tot_2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~28_combout\ = (!\totalizador_2:tot2_sum[1]~regout\ & (\input~combout\(4) $ (\input~combout\(3) $ (\tot2_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \totalizador_2:tot2_sum[1]~regout\,
	datac => \input~combout\(3),
	datad => \tot2_sum~0_combout\,
	combout => \tot_2~28_combout\);

-- Location: LCCOMB_X64_Y26_N4
\tot_2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_2~29_combout\ = (!\clr~combout\ & ((\totalizador_2:tot2_sum[0]~regout\) # ((!\totalizador_2:tot2_sum[2]~regout\ & \tot_2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \totalizador_2:tot2_sum[0]~regout\,
	datac => \totalizador_2:tot2_sum[2]~regout\,
	datad => \tot_2~28_combout\,
	combout => \tot_2~29_combout\);

-- Location: LCFF_X64_Y26_N5
\tot_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_2~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_2(0));

-- Location: LCFF_X64_Y26_N3
\tot_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_2~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_2(1));

-- Location: LCFF_X64_Y26_N21
\tot_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_2~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_2(2));

-- Location: LCCOMB_X64_Y26_N26
\tot3_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~0_combout\ = \input~combout\(0) $ (\input~combout\(3) $ (\input~combout\(1) $ (\input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \tot3_int~0_combout\);

-- Location: LCCOMB_X64_Y26_N14
\tot3_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~1_combout\ = (!\clr~combout\ & (\input~combout\(4) $ (\tot3_int~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~combout\,
	datac => \input~combout\(4),
	datad => \tot3_int~0_combout\,
	combout => \tot3_int~1_combout\);

-- Location: LCFF_X64_Y26_N15
\totalizador_3:tot3_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot3_int~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_3:tot3_int[0]~regout\);

-- Location: LCCOMB_X64_Y26_N0
\tot3_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~3_combout\ = (!\clr~combout\ & (\tot3_int~2_combout\ $ (((\input~combout\(4) & \tot3_int~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot3_int~2_combout\,
	datab => \clr~combout\,
	datac => \input~combout\(4),
	datad => \tot3_int~0_combout\,
	combout => \tot3_int~3_combout\);

-- Location: LCFF_X64_Y26_N1
\totalizador_3:tot3_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot3_int~3_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_3:tot3_int[1]~regout\);

-- Location: LCCOMB_X64_Y27_N0
\tot3_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~4_combout\ = (\input~combout\(3) & (\input~combout\(1) & (\input~combout\(0) & \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(1),
	datac => \input~combout\(0),
	datad => \input~combout\(2),
	combout => \tot3_int~4_combout\);

-- Location: LCCOMB_X64_Y26_N10
\tot3_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~5_combout\ = (\tot3_int~4_combout\) # ((\tot3_int~2_combout\ & (\tot3_int~0_combout\ & \input~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot3_int~2_combout\,
	datab => \tot3_int~0_combout\,
	datac => \input~combout\(4),
	datad => \tot3_int~4_combout\,
	combout => \tot3_int~5_combout\);

-- Location: LCCOMB_X64_Y26_N30
\tot3_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot3_int~6_combout\ = (\tot3_int~5_combout\ & !\clr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tot3_int~5_combout\,
	datac => \clr~combout\,
	combout => \tot3_int~6_combout\);

-- Location: LCFF_X64_Y26_N31
\totalizador_3:tot3_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot3_int~6_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \totalizador_3:tot3_int[2]~regout\);

-- Location: LCFF_X63_Y26_N17
\tot_4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tot3_int~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_4(0));

-- Location: LCCOMB_X64_Y26_N16
\tot_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_4~0_combout\ = (!\clr~combout\ & ((\input~combout\(4) & ((\Mux1~0_combout\))) # (!\input~combout\(4) & (\tot3_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot3_int~2_combout\,
	datab => \clr~combout\,
	datac => \input~combout\(4),
	datad => \Mux1~0_combout\,
	combout => \tot_4~0_combout\);

-- Location: LCFF_X64_Y26_N17
\tot_4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_4(1));

-- Location: LCCOMB_X64_Y27_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\input~combout\(3) & ((\input~combout\(1) & ((\input~combout\(0)) # (\input~combout\(2)))) # (!\input~combout\(1) & (\input~combout\(0) & \input~combout\(2))))) # (!\input~combout\(3) & (\input~combout\(1) & (\input~combout\(0) & 
-- \input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(1),
	datac => \input~combout\(0),
	datad => \input~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X64_Y27_N30
\tot_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tot_4~1_combout\ = (!\clr~combout\ & ((\input~combout\(4) & ((\Mux0~0_combout\))) # (!\input~combout\(4) & (\tot3_int~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \tot3_int~4_combout\,
	datac => \input~combout\(4),
	datad => \Mux0~0_combout\,
	combout => \tot_4~1_combout\);

-- Location: LCFF_X64_Y27_N31
\tot_4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tot_4~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tot_4(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_en);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot1[0]~I\ : cycloneii_io
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
	datain => tot_1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot1(0));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot1[1]~I\ : cycloneii_io
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
	datain => tot_1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot1(1));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot1[2]~I\ : cycloneii_io
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
	datain => tot_1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot1(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot2[0]~I\ : cycloneii_io
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
	datain => tot_2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot2(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot2[1]~I\ : cycloneii_io
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
	datain => tot_2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot2(1));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot2[2]~I\ : cycloneii_io
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
	datain => tot_2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot2(2));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot3[0]~I\ : cycloneii_io
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
	datain => \totalizador_3:tot3_int[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot3(0));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot3[1]~I\ : cycloneii_io
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
	datain => \totalizador_3:tot3_int[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot3(1));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot3[2]~I\ : cycloneii_io
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
	datain => \totalizador_3:tot3_int[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot3(2));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot4[0]~I\ : cycloneii_io
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
	datain => tot_4(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot4(0));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot4[1]~I\ : cycloneii_io
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
	datain => tot_4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot4(1));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot4[2]~I\ : cycloneii_io
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
	datain => tot_4(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot4(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot5[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot5(0));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot5[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot5(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot5[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot5(2));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot6[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot6(0));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot6[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot6[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot6(2));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot7[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot7(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot7[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot7(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot7[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot7(2));
END structure;



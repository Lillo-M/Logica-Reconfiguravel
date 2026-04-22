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

-- DATE "04/22/2026 15:12:03"

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

ENTITY 	totalizadores IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rst : IN std_logic;
	clr : IN std_logic;
	input : IN std_logic_vector(4 DOWNTO 0);
	tot_a : OUT std_logic_vector(2 DOWNTO 0);
	tot_b1 : OUT std_logic_vector(2 DOWNTO 0);
	tot_b2 : OUT std_logic_vector(2 DOWNTO 0);
	tot_b3 : OUT std_logic_vector(2 DOWNTO 0);
	tot_b4 : OUT std_logic_vector(2 DOWNTO 0);
	tot_b5 : OUT std_logic_vector(2 DOWNTO 0);
	tot_b6 : OUT std_logic_vector(2 DOWNTO 0)
	);
END totalizadores;

-- Design Ports Information
-- en	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tot_a[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_a[1]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_a[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b1[0]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b1[1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b1[2]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b2[0]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b2[1]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b2[2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b3[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b3[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b3[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b4[0]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b4[1]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b4[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b5[0]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b5[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b5[2]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b6[0]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b6[1]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tot_b6[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- input[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF totalizadores IS
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
SIGNAL ww_tot_a : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b4 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b5 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tot_b6 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tots_B|Mux1~0_combout\ : std_logic;
SIGNAL \tots_B|Add15~0_combout\ : std_logic;
SIGNAL \tots_B|Add17~0_combout\ : std_logic;
SIGNAL \tots_B|tot_5~2_combout\ : std_logic;
SIGNAL \tots_B|tot_2~7_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \tots_A|output_count[0]~4_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \tots_A|output_intern[1]~2_combout\ : std_logic;
SIGNAL \tots_A|output_count~1_combout\ : std_logic;
SIGNAL \tots_A|output_count~2_combout\ : std_logic;
SIGNAL \tots_A|output_count~3_combout\ : std_logic;
SIGNAL \tots_A|output_intern[1]~1_combout\ : std_logic;
SIGNAL \tots_A|output_count~0_combout\ : std_logic;
SIGNAL \tots_A|output_intern[1]~0_combout\ : std_logic;
SIGNAL \tots_A|output_intern[1]~3_combout\ : std_logic;
SIGNAL \tots_A|output_intern[0]~4_combout\ : std_logic;
SIGNAL \tots_A|Add0~0_combout\ : std_logic;
SIGNAL \tots_A|Add0~1_combout\ : std_logic;
SIGNAL \tots_B|totalizador_1:tot1_sum[0]~feeder_combout\ : std_logic;
SIGNAL \tots_B|totalizador_1:tot1_sum[0]~regout\ : std_logic;
SIGNAL \tots_B|tot_1~20_combout\ : std_logic;
SIGNAL \tots_B|tot_1~21_combout\ : std_logic;
SIGNAL \tots_B|tot_1~7_combout\ : std_logic;
SIGNAL \tots_B|tot_1~6_combout\ : std_logic;
SIGNAL \tots_B|tot_1~3_combout\ : std_logic;
SIGNAL \tots_B|tot_1~30_combout\ : std_logic;
SIGNAL \tots_B|totalizador_1:tot1_sum[2]~regout\ : std_logic;
SIGNAL \tots_B|tot_1~17_combout\ : std_logic;
SIGNAL \tots_B|tot_1~31_combout\ : std_logic;
SIGNAL \tots_B|totalizador_1:tot1_sum[1]~regout\ : std_logic;
SIGNAL \tots_B|tot1_sum~0_combout\ : std_logic;
SIGNAL \tots_B|tot_1~28_combout\ : std_logic;
SIGNAL \tots_B|tot_1~29_combout\ : std_logic;
SIGNAL \tots_B|tot_2~20_combout\ : std_logic;
SIGNAL \tots_B|tot_2~6_combout\ : std_logic;
SIGNAL \tots_B|tot_2~3_combout\ : std_logic;
SIGNAL \tots_B|tot_2~30_combout\ : std_logic;
SIGNAL \tots_B|totalizador_2:tot2_sum[2]~regout\ : std_logic;
SIGNAL \tots_B|tot_2~21_combout\ : std_logic;
SIGNAL \tots_B|tot_2~17_combout\ : std_logic;
SIGNAL \tots_B|tot_2~31_combout\ : std_logic;
SIGNAL \tots_B|totalizador_2:tot2_sum[1]~regout\ : std_logic;
SIGNAL \tots_B|totalizador_2:tot2_sum[0]~regout\ : std_logic;
SIGNAL \tots_B|tot2_sum~0_combout\ : std_logic;
SIGNAL \tots_B|tot_2~28_combout\ : std_logic;
SIGNAL \tots_B|tot_2~29_combout\ : std_logic;
SIGNAL \tots_B|tot3_int~0_combout\ : std_logic;
SIGNAL \tots_B|tot3_int~1_combout\ : std_logic;
SIGNAL \tots_B|totalizador_3:tot3_int[0]~regout\ : std_logic;
SIGNAL \tots_B|tot3_int~2_combout\ : std_logic;
SIGNAL \tots_B|tot3_int~3_combout\ : std_logic;
SIGNAL \tots_B|totalizador_3:tot3_int[1]~regout\ : std_logic;
SIGNAL \tots_B|tot3_int~4_combout\ : std_logic;
SIGNAL \tots_B|Mux0~0_combout\ : std_logic;
SIGNAL \tots_B|tot3_int~5_combout\ : std_logic;
SIGNAL \tots_B|totalizador_3:tot3_int[2]~regout\ : std_logic;
SIGNAL \tots_B|Mux2~0_combout\ : std_logic;
SIGNAL \tots_B|Mux2~1_combout\ : std_logic;
SIGNAL \tots_B|Mux1~1_combout\ : std_logic;
SIGNAL \tots_B|Mux1~2_combout\ : std_logic;
SIGNAL \tots_B|Mux0~1_combout\ : std_logic;
SIGNAL \tots_B|Mux0~2_combout\ : std_logic;
SIGNAL \tots_B|tot_5~0_combout\ : std_logic;
SIGNAL \tots_B|tot_5~1_combout\ : std_logic;
SIGNAL \tots_B|tot_5~3_combout\ : std_logic;
SIGNAL \tots_A|output_intern\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tots_A|output_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tots_B|tot_6\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tots_B|tot_5\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tots_B|tot_4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tots_B|tot_2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tots_B|tot_1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rst <= rst;
ww_clr <= clr;
ww_input <= input;
tot_a <= ww_tot_a;
tot_b1 <= ww_tot_b1;
tot_b2 <= ww_tot_b2;
tot_b3 <= ww_tot_b3;
tot_b4 <= ww_tot_b4;
tot_b5 <= ww_tot_b5;
tot_b6 <= ww_tot_b6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCCOMB_X2_Y24_N16
\tots_B|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux1~0_combout\ = (\input~combout\(2) & ((\input~combout\(3) & (!\input~combout\(1) & !\input~combout\(0))) # (!\input~combout\(3) & ((!\input~combout\(0)) # (!\input~combout\(1)))))) # (!\input~combout\(2) & ((\input~combout\(3) & 
-- ((!\input~combout\(0)) # (!\input~combout\(1)))) # (!\input~combout\(3) & ((\input~combout\(1)) # (\input~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\tots_B|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Add15~0_combout\ = (\input~combout\(2) & ((\input~combout\(0)) # (\input~combout\(1)))) # (!\input~combout\(2) & (\input~combout\(0) & \input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(0),
	datad => \input~combout\(1),
	combout => \tots_B|Add15~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\tots_B|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Add17~0_combout\ = \tots_B|Add15~0_combout\ $ (((\input~combout\(3) & ((\input~combout\(4)) # (\tots_B|tot3_int~0_combout\))) # (!\input~combout\(3) & (\input~combout\(4) & \tots_B|tot3_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \input~combout\(4),
	datac => \tots_B|Add15~0_combout\,
	datad => \tots_B|tot3_int~0_combout\,
	combout => \tots_B|Add17~0_combout\);

-- Location: LCCOMB_X3_Y24_N12
\tots_B|tot_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_5~2_combout\ = (!\clr~combout\ & ((\input~combout\(0) & ((\input~combout\(2)) # (\input~combout\(1)))) # (!\input~combout\(0) & (\input~combout\(2) & \input~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \clr~combout\,
	datac => \input~combout\(2),
	datad => \input~combout\(1),
	combout => \tots_B|tot_5~2_combout\);

-- Location: LCCOMB_X2_Y24_N24
\tots_B|tot_2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~7_combout\ = (\input~combout\(4) & ((\input~combout\(0) & ((\input~combout\(1)) # (\input~combout\(2)))) # (!\input~combout\(0) & (\input~combout\(1) & \input~combout\(2))))) # (!\input~combout\(4) & (\input~combout\(0) & (\input~combout\(1) 
-- & \input~combout\(2))))

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
	combout => \tots_B|tot_2~7_combout\);

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

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y24_N10
\tots_A|output_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_count[0]~4_combout\ = !\clr~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~combout\,
	combout => \tots_A|output_count[0]~4_combout\);

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

-- Location: LCFF_X3_Y24_N11
\tots_A|output_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_count[0]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_count\(0));

-- Location: LCCOMB_X3_Y24_N14
\tots_A|output_intern[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_intern[1]~2_combout\ = (!\clr~combout\ & ((\tots_A|output_count\(0)) # (!\input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \clr~combout\,
	datad => \tots_A|output_count\(0),
	combout => \tots_A|output_intern[1]~2_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y24_N16
\tots_A|output_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_count~1_combout\ = (\tots_A|output_count\(1) & !\clr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_A|output_count\(1),
	datac => \clr~combout\,
	combout => \tots_A|output_count~1_combout\);

-- Location: LCFF_X3_Y24_N17
\tots_A|output_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_count~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_count\(2));

-- Location: LCCOMB_X3_Y24_N4
\tots_A|output_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_count~2_combout\ = (!\clr~combout\ & \tots_A|output_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~combout\,
	datad => \tots_A|output_count\(2),
	combout => \tots_A|output_count~2_combout\);

-- Location: LCFF_X3_Y24_N5
\tots_A|output_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_count~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_count\(3));

-- Location: LCCOMB_X3_Y24_N18
\tots_A|output_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_count~3_combout\ = (!\clr~combout\ & \tots_A|output_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~combout\,
	datac => \tots_A|output_count\(3),
	combout => \tots_A|output_count~3_combout\);

-- Location: LCFF_X3_Y24_N19
\tots_A|output_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_count~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_count\(4));

-- Location: LCCOMB_X3_Y24_N20
\tots_A|output_intern[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_intern[1]~1_combout\ = (\input~combout\(4) & (!\tots_A|output_count\(4) & ((!\tots_A|output_count\(3)) # (!\input~combout\(3))))) # (!\input~combout\(4) & (((!\tots_A|output_count\(3))) # (!\input~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datac => \tots_A|output_count\(3),
	datad => \tots_A|output_count\(4),
	combout => \tots_A|output_intern[1]~1_combout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X3_Y24_N30
\tots_A|output_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_count~0_combout\ = (!\clr~combout\ & !\tots_A|output_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~combout\,
	datad => \tots_A|output_count\(0),
	combout => \tots_A|output_count~0_combout\);

-- Location: LCFF_X3_Y24_N31
\tots_A|output_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_count~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_count\(1));

-- Location: LCCOMB_X3_Y24_N26
\tots_A|output_intern[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_intern[1]~0_combout\ = (\input~combout\(1) & (!\tots_A|output_count\(1) & ((!\tots_A|output_count\(2)) # (!\input~combout\(2))))) # (!\input~combout\(1) & (((!\tots_A|output_count\(2))) # (!\input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \input~combout\(2),
	datac => \tots_A|output_count\(2),
	datad => \tots_A|output_count\(1),
	combout => \tots_A|output_intern[1]~0_combout\);

-- Location: LCCOMB_X3_Y24_N0
\tots_A|output_intern[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_intern[1]~3_combout\ = ((!\tots_A|output_intern[1]~0_combout\) # (!\tots_A|output_intern[1]~1_combout\)) # (!\tots_A|output_intern[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tots_A|output_intern[1]~2_combout\,
	datac => \tots_A|output_intern[1]~1_combout\,
	datad => \tots_A|output_intern[1]~0_combout\,
	combout => \tots_A|output_intern[1]~3_combout\);

-- Location: LCCOMB_X3_Y24_N8
\tots_A|output_intern[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|output_intern[0]~4_combout\ = (\tots_A|output_intern\(0) & ((!\tots_A|output_intern[1]~3_combout\))) # (!\tots_A|output_intern\(0) & (!\clr~combout\ & \tots_A|output_intern[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~combout\,
	datac => \tots_A|output_intern\(0),
	datad => \tots_A|output_intern[1]~3_combout\,
	combout => \tots_A|output_intern[0]~4_combout\);

-- Location: LCFF_X3_Y24_N9
\tots_A|output_intern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|output_intern[0]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_intern\(0));

-- Location: LCCOMB_X4_Y24_N28
\tots_A|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|Add0~0_combout\ = \tots_A|output_intern\(1) $ (\tots_A|output_intern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tots_A|output_intern\(1),
	datad => \tots_A|output_intern\(0),
	combout => \tots_A|Add0~0_combout\);

-- Location: LCFF_X4_Y24_N29
\tots_A|output_intern[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|Add0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \clr~combout\,
	ena => \tots_A|output_intern[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_intern\(1));

-- Location: LCCOMB_X4_Y24_N10
\tots_A|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_A|Add0~1_combout\ = \tots_A|output_intern\(2) $ (((\tots_A|output_intern\(1) & \tots_A|output_intern\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tots_A|output_intern\(1),
	datac => \tots_A|output_intern\(2),
	datad => \tots_A|output_intern\(0),
	combout => \tots_A|Add0~1_combout\);

-- Location: LCFF_X4_Y24_N11
\tots_A|output_intern[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_A|Add0~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \clr~combout\,
	ena => \tots_A|output_intern[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_A|output_intern\(2));

-- Location: LCCOMB_X1_Y25_N22
\tots_B|totalizador_1:tot1_sum[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|totalizador_1:tot1_sum[0]~feeder_combout\ = \tots_B|tot_1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tots_B|tot_1~29_combout\,
	combout => \tots_B|totalizador_1:tot1_sum[0]~feeder_combout\);

-- Location: LCFF_X1_Y25_N23
\tots_B|totalizador_1:tot1_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|totalizador_1:tot1_sum[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_1:tot1_sum[0]~regout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y25_N30
\tots_B|tot_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~20_combout\ = (\input~combout\(3) & ((\input~combout\(0) & ((!\input~combout\(2)) # (!\input~combout\(4)))) # (!\input~combout\(0) & ((\input~combout\(4)) # (\input~combout\(2)))))) # (!\input~combout\(3) & ((\input~combout\(0) & 
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
	combout => \tots_B|tot_1~20_combout\);

-- Location: LCCOMB_X1_Y25_N8
\tots_B|tot_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~21_combout\ = (\input~combout\(3) & ((\input~combout\(0) & (!\input~combout\(4) & !\input~combout\(2))) # (!\input~combout\(0) & ((!\input~combout\(2)) # (!\input~combout\(4)))))) # (!\input~combout\(3) & ((\input~combout\(0) & 
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
	combout => \tots_B|tot_1~21_combout\);

-- Location: LCCOMB_X2_Y25_N24
\tots_B|tot_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~7_combout\ = (\input~combout\(0) & ((\input~combout\(4) & ((\input~combout\(2)) # (\input~combout\(3)))) # (!\input~combout\(4) & (\input~combout\(2) & \input~combout\(3))))) # (!\input~combout\(0) & (\input~combout\(4) & (\input~combout\(2) 
-- & \input~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(4),
	datac => \input~combout\(2),
	datad => \input~combout\(3),
	combout => \tots_B|tot_1~7_combout\);

-- Location: LCCOMB_X1_Y25_N18
\tots_B|tot_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~6_combout\ = (\input~combout\(3) & (\input~combout\(0) & (\input~combout\(4) & \input~combout\(2))))

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
	combout => \tots_B|tot_1~6_combout\);

-- Location: LCCOMB_X1_Y25_N4
\tots_B|tot_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~3_combout\ = (!\tots_B|totalizador_1:tot1_sum[1]~regout\ & ((\input~combout\(1) & (\tots_B|tot_1~7_combout\)) # (!\input~combout\(1) & ((\tots_B|tot_1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \tots_B|tot_1~7_combout\,
	datac => \tots_B|tot_1~6_combout\,
	datad => \tots_B|totalizador_1:tot1_sum[1]~regout\,
	combout => \tots_B|tot_1~3_combout\);

-- Location: LCCOMB_X1_Y25_N24
\tots_B|tot_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~30_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_1:tot1_sum[2]~regout\) # ((!\tots_B|totalizador_1:tot1_sum[0]~regout\ & \tots_B|tot_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \tots_B|totalizador_1:tot1_sum[0]~regout\,
	datac => \tots_B|tot_1~3_combout\,
	datad => \tots_B|totalizador_1:tot1_sum[2]~regout\,
	combout => \tots_B|tot_1~30_combout\);

-- Location: LCFF_X1_Y25_N27
\tots_B|totalizador_1:tot1_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_1~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_1:tot1_sum[2]~regout\);

-- Location: LCCOMB_X1_Y25_N10
\tots_B|tot_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~17_combout\ = (!\tots_B|totalizador_1:tot1_sum[2]~regout\ & ((\input~combout\(1) & ((\tots_B|tot_1~21_combout\))) # (!\input~combout\(1) & (\tots_B|tot_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \tots_B|tot_1~20_combout\,
	datac => \tots_B|tot_1~21_combout\,
	datad => \tots_B|totalizador_1:tot1_sum[2]~regout\,
	combout => \tots_B|tot_1~17_combout\);

-- Location: LCCOMB_X1_Y25_N14
\tots_B|tot_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~31_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_1:tot1_sum[1]~regout\) # ((!\tots_B|totalizador_1:tot1_sum[0]~regout\ & \tots_B|tot_1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \tots_B|totalizador_1:tot1_sum[1]~regout\,
	datac => \tots_B|totalizador_1:tot1_sum[0]~regout\,
	datad => \tots_B|tot_1~17_combout\,
	combout => \tots_B|tot_1~31_combout\);

-- Location: LCFF_X1_Y25_N1
\tots_B|totalizador_1:tot1_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_1~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_1:tot1_sum[1]~regout\);

-- Location: LCCOMB_X1_Y25_N28
\tots_B|tot1_sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot1_sum~0_combout\ = \input~combout\(2) $ (\input~combout\(4) $ (\input~combout\(3) $ (\tots_B|totalizador_1:tot1_sum[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(4),
	datac => \input~combout\(3),
	datad => \tots_B|totalizador_1:tot1_sum[0]~regout\,
	combout => \tots_B|tot1_sum~0_combout\);

-- Location: LCCOMB_X1_Y25_N6
\tots_B|tot_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~28_combout\ = (!\tots_B|totalizador_1:tot1_sum[2]~regout\ & (\input~combout\(1) $ (\input~combout\(0) $ (\tots_B|tot1_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \tots_B|totalizador_1:tot1_sum[2]~regout\,
	datac => \input~combout\(0),
	datad => \tots_B|tot1_sum~0_combout\,
	combout => \tots_B|tot_1~28_combout\);

-- Location: LCCOMB_X1_Y25_N12
\tots_B|tot_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_1~29_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_1:tot1_sum[0]~regout\) # ((!\tots_B|totalizador_1:tot1_sum[1]~regout\ & \tots_B|tot_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datab => \tots_B|totalizador_1:tot1_sum[1]~regout\,
	datac => \tots_B|totalizador_1:tot1_sum[0]~regout\,
	datad => \tots_B|tot_1~28_combout\,
	combout => \tots_B|tot_1~29_combout\);

-- Location: LCFF_X1_Y25_N13
\tots_B|tot_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_1~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_1\(0));

-- Location: LCFF_X1_Y25_N15
\tots_B|tot_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_1~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_1\(1));

-- Location: LCFF_X1_Y25_N25
\tots_B|tot_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_1~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_1\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y24_N22
\tots_B|tot_2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~20_combout\ = (\input~combout\(4) & ((\input~combout\(3) & ((!\input~combout\(2)) # (!\input~combout\(1)))) # (!\input~combout\(3) & ((\input~combout\(1)) # (\input~combout\(2)))))) # (!\input~combout\(4) & ((\input~combout\(3) & 
-- ((\input~combout\(1)) # (\input~combout\(2)))) # (!\input~combout\(3) & (\input~combout\(1) & \input~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(2),
	combout => \tots_B|tot_2~20_combout\);

-- Location: LCCOMB_X2_Y24_N18
\tots_B|tot_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~6_combout\ = (\input~combout\(4) & (\input~combout\(0) & (\input~combout\(1) & \input~combout\(2))))

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
	combout => \tots_B|tot_2~6_combout\);

-- Location: LCCOMB_X2_Y24_N12
\tots_B|tot_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~3_combout\ = (!\tots_B|totalizador_2:tot2_sum[1]~regout\ & ((\input~combout\(3) & (\tots_B|tot_2~7_combout\)) # (!\input~combout\(3) & ((\tots_B|tot_2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|tot_2~7_combout\,
	datab => \input~combout\(3),
	datac => \tots_B|totalizador_2:tot2_sum[1]~regout\,
	datad => \tots_B|tot_2~6_combout\,
	combout => \tots_B|tot_2~3_combout\);

-- Location: LCCOMB_X2_Y24_N4
\tots_B|tot_2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~30_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_2:tot2_sum[2]~regout\) # ((!\tots_B|totalizador_2:tot2_sum[0]~regout\ & \tots_B|tot_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|totalizador_2:tot2_sum[0]~regout\,
	datab => \clr~combout\,
	datac => \tots_B|totalizador_2:tot2_sum[2]~regout\,
	datad => \tots_B|tot_2~3_combout\,
	combout => \tots_B|tot_2~30_combout\);

-- Location: LCFF_X2_Y24_N15
\tots_B|totalizador_2:tot2_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_2~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_2:tot2_sum[2]~regout\);

-- Location: LCCOMB_X3_Y24_N22
\tots_B|tot_2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~21_combout\ = (\input~combout\(4) & ((\input~combout\(3) & (!\input~combout\(2) & !\input~combout\(1))) # (!\input~combout\(3) & ((!\input~combout\(1)) # (!\input~combout\(2)))))) # (!\input~combout\(4) & ((\input~combout\(3) & 
-- ((!\input~combout\(1)) # (!\input~combout\(2)))) # (!\input~combout\(3) & ((\input~combout\(2)) # (\input~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datac => \input~combout\(2),
	datad => \input~combout\(1),
	combout => \tots_B|tot_2~21_combout\);

-- Location: LCCOMB_X2_Y24_N14
\tots_B|tot_2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~17_combout\ = (!\tots_B|totalizador_2:tot2_sum[2]~regout\ & ((\input~combout\(0) & ((\tots_B|tot_2~21_combout\))) # (!\input~combout\(0) & (\tots_B|tot_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \tots_B|tot_2~20_combout\,
	datac => \tots_B|totalizador_2:tot2_sum[2]~regout\,
	datad => \tots_B|tot_2~21_combout\,
	combout => \tots_B|tot_2~17_combout\);

-- Location: LCCOMB_X2_Y24_N26
\tots_B|tot_2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~31_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_2:tot2_sum[1]~regout\) # ((!\tots_B|totalizador_2:tot2_sum[0]~regout\ & \tots_B|tot_2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|totalizador_2:tot2_sum[0]~regout\,
	datab => \clr~combout\,
	datac => \tots_B|totalizador_2:tot2_sum[1]~regout\,
	datad => \tots_B|tot_2~17_combout\,
	combout => \tots_B|tot_2~31_combout\);

-- Location: LCFF_X2_Y24_N13
\tots_B|totalizador_2:tot2_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_2~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_2:tot2_sum[1]~regout\);

-- Location: LCFF_X2_Y24_N3
\tots_B|totalizador_2:tot2_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_2~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_2:tot2_sum[0]~regout\);

-- Location: LCCOMB_X2_Y24_N2
\tots_B|tot2_sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot2_sum~0_combout\ = \input~combout\(2) $ (\input~combout\(1) $ (\tots_B|totalizador_2:tot2_sum[0]~regout\ $ (\input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(1),
	datac => \tots_B|totalizador_2:tot2_sum[0]~regout\,
	datad => \input~combout\(0),
	combout => \tots_B|tot2_sum~0_combout\);

-- Location: LCCOMB_X2_Y24_N28
\tots_B|tot_2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~28_combout\ = (!\tots_B|totalizador_2:tot2_sum[2]~regout\ & (\input~combout\(4) $ (\input~combout\(3) $ (\tots_B|tot2_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datac => \tots_B|totalizador_2:tot2_sum[2]~regout\,
	datad => \tots_B|tot2_sum~0_combout\,
	combout => \tots_B|tot_2~28_combout\);

-- Location: LCCOMB_X2_Y24_N20
\tots_B|tot_2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_2~29_combout\ = (!\clr~combout\ & ((\tots_B|totalizador_2:tot2_sum[0]~regout\) # ((!\tots_B|totalizador_2:tot2_sum[1]~regout\ & \tots_B|tot_2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|totalizador_2:tot2_sum[0]~regout\,
	datab => \clr~combout\,
	datac => \tots_B|totalizador_2:tot2_sum[1]~regout\,
	datad => \tots_B|tot_2~28_combout\,
	combout => \tots_B|tot_2~29_combout\);

-- Location: LCFF_X2_Y24_N21
\tots_B|tot_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_2~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_2\(0));

-- Location: LCFF_X2_Y24_N27
\tots_B|tot_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_2~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_2\(1));

-- Location: LCFF_X2_Y24_N5
\tots_B|tot_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_2~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_2\(2));

-- Location: LCCOMB_X3_Y24_N24
\tots_B|tot3_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~0_combout\ = \input~combout\(0) $ (\input~combout\(2) $ (\input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(2),
	datad => \input~combout\(1),
	combout => \tots_B|tot3_int~0_combout\);

-- Location: LCCOMB_X4_Y24_N16
\tots_B|tot3_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~1_combout\ = \input~combout\(4) $ (\input~combout\(3) $ (\tots_B|tot3_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datad => \tots_B|tot3_int~0_combout\,
	combout => \tots_B|tot3_int~1_combout\);

-- Location: LCFF_X4_Y24_N17
\tots_B|totalizador_3:tot3_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot3_int~1_combout\,
	sclr => \clr~combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_3:tot3_int[0]~regout\);

-- Location: LCCOMB_X3_Y24_N2
\tots_B|tot3_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~2_combout\ = (\input~combout\(0) & ((\input~combout\(3) & ((!\input~combout\(1)) # (!\input~combout\(2)))) # (!\input~combout\(3) & ((\input~combout\(2)) # (\input~combout\(1)))))) # (!\input~combout\(0) & ((\input~combout\(3) & 
-- ((\input~combout\(2)) # (\input~combout\(1)))) # (!\input~combout\(3) & (\input~combout\(2) & \input~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(0),
	datab => \input~combout\(3),
	datac => \input~combout\(2),
	datad => \input~combout\(1),
	combout => \tots_B|tot3_int~2_combout\);

-- Location: LCCOMB_X4_Y24_N22
\tots_B|tot3_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~3_combout\ = \tots_B|tot3_int~2_combout\ $ (((\input~combout\(4) & (\tots_B|tot3_int~0_combout\ $ (\input~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|tot3_int~0_combout\,
	datab => \input~combout\(3),
	datac => \input~combout\(4),
	datad => \tots_B|tot3_int~2_combout\,
	combout => \tots_B|tot3_int~3_combout\);

-- Location: LCFF_X4_Y24_N23
\tots_B|totalizador_3:tot3_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot3_int~3_combout\,
	sclr => \clr~combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_3:tot3_int[1]~regout\);

-- Location: LCCOMB_X2_Y24_N8
\tots_B|tot3_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~4_combout\ = (\input~combout\(2) & ((\input~combout\(3) & (\input~combout\(1) $ (\input~combout\(0)))) # (!\input~combout\(3) & (\input~combout\(1) & \input~combout\(0))))) # (!\input~combout\(2) & (\input~combout\(3) & 
-- (\input~combout\(1) & \input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|tot3_int~4_combout\);

-- Location: LCCOMB_X2_Y24_N6
\tots_B|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux0~0_combout\ = (\input~combout\(2) & (\input~combout\(3) & (\input~combout\(1) & \input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\tots_B|tot3_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot3_int~5_combout\ = (\tots_B|Mux0~0_combout\) # ((\tots_B|tot3_int~4_combout\ & \input~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tots_B|tot3_int~4_combout\,
	datac => \input~combout\(4),
	datad => \tots_B|Mux0~0_combout\,
	combout => \tots_B|tot3_int~5_combout\);

-- Location: LCFF_X1_Y24_N29
\tots_B|totalizador_3:tot3_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot3_int~5_combout\,
	sclr => \clr~combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|totalizador_3:tot3_int[2]~regout\);

-- Location: LCCOMB_X2_Y24_N10
\tots_B|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux2~0_combout\ = \input~combout\(2) $ (\input~combout\(3) $ (\input~combout\(1) $ (\input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\tots_B|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux2~1_combout\ = \tots_B|Mux2~0_combout\ $ (\input~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tots_B|Mux2~0_combout\,
	datac => \input~combout\(4),
	combout => \tots_B|Mux2~1_combout\);

-- Location: LCFF_X1_Y24_N15
\tots_B|tot_4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|Mux2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_4\(0));

-- Location: LCCOMB_X2_Y24_N30
\tots_B|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux1~1_combout\ = (\input~combout\(2) & ((\input~combout\(3) & ((!\input~combout\(0)) # (!\input~combout\(1)))) # (!\input~combout\(3) & ((\input~combout\(1)) # (\input~combout\(0)))))) # (!\input~combout\(2) & ((\input~combout\(3) & 
-- ((\input~combout\(1)) # (\input~combout\(0)))) # (!\input~combout\(3) & (\input~combout\(1) & \input~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y24_N20
\tots_B|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux1~2_combout\ = (\input~combout\(4) & (\tots_B|Mux1~0_combout\)) # (!\input~combout\(4) & ((\tots_B|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|Mux1~0_combout\,
	datac => \input~combout\(4),
	datad => \tots_B|Mux1~1_combout\,
	combout => \tots_B|Mux1~2_combout\);

-- Location: LCFF_X1_Y24_N21
\tots_B|tot_4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|Mux1~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_4\(1));

-- Location: LCCOMB_X2_Y24_N0
\tots_B|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux0~1_combout\ = (\input~combout\(2) & ((\input~combout\(3) & ((\input~combout\(1)) # (\input~combout\(0)))) # (!\input~combout\(3) & (\input~combout\(1) & \input~combout\(0))))) # (!\input~combout\(2) & (\input~combout\(3) & (\input~combout\(1) 
-- & \input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \input~combout\(3),
	datac => \input~combout\(1),
	datad => \input~combout\(0),
	combout => \tots_B|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y24_N30
\tots_B|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|Mux0~2_combout\ = (\input~combout\(4) & (\tots_B|Mux0~1_combout\)) # (!\input~combout\(4) & ((\tots_B|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tots_B|Mux0~1_combout\,
	datac => \input~combout\(4),
	datad => \tots_B|Mux0~0_combout\,
	combout => \tots_B|Mux0~2_combout\);

-- Location: LCFF_X1_Y24_N31
\tots_B|tot_4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|Mux0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_4\(2));

-- Location: LCCOMB_X3_Y24_N6
\tots_B|tot_5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_5~0_combout\ = (!\clr~combout\ & (\input~combout\(4) $ (\input~combout\(3) $ (\tots_B|tot3_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \input~combout\(3),
	datac => \clr~combout\,
	datad => \tots_B|tot3_int~0_combout\,
	combout => \tots_B|tot_5~0_combout\);

-- Location: LCFF_X3_Y24_N7
\tots_B|tot_5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_5\(0));

-- Location: LCCOMB_X1_Y25_N26
\tots_B|tot_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_5~1_combout\ = (\tots_B|Add17~0_combout\ & !\clr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|Add17~0_combout\,
	datad => \clr~combout\,
	combout => \tots_B|tot_5~1_combout\);

-- Location: LCFF_X1_Y25_N3
\tots_B|tot_5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_5~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_5\(1));

-- Location: LCCOMB_X3_Y24_N28
\tots_B|tot_5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tots_B|tot_5~3_combout\ = (\tots_B|tot_5~2_combout\ & ((\input~combout\(3) & ((\input~combout\(4)) # (\tots_B|tot3_int~0_combout\))) # (!\input~combout\(3) & (\input~combout\(4) & \tots_B|tot3_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tots_B|tot_5~2_combout\,
	datab => \input~combout\(3),
	datac => \input~combout\(4),
	datad => \tots_B|tot3_int~0_combout\,
	combout => \tots_B|tot_5~3_combout\);

-- Location: LCFF_X3_Y24_N25
\tots_B|tot_5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_5~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_5\(2));

-- Location: LCFF_X3_Y24_N15
\tots_B|tot_6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_6\(0));

-- Location: LCFF_X1_Y25_N21
\tots_B|tot_6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tots_B|tot_5~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_6\(1));

-- Location: LCFF_X3_Y24_N29
\tots_B|tot_6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tots_B|tot_5~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tots_B|tot_6\(2));

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

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_a[0]~I\ : cycloneii_io
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
	datain => \tots_A|output_intern\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_a(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_a[1]~I\ : cycloneii_io
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
	datain => \tots_A|output_intern\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_a(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_a[2]~I\ : cycloneii_io
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
	datain => \tots_A|output_intern\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_a(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b1[0]~I\ : cycloneii_io
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
	datain => \tots_B|tot_1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b1(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b1[1]~I\ : cycloneii_io
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
	datain => \tots_B|tot_1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b1(1));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b1[2]~I\ : cycloneii_io
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
	datain => \tots_B|tot_1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b1(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b2[0]~I\ : cycloneii_io
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
	datain => \tots_B|tot_2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b2(0));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b2[1]~I\ : cycloneii_io
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
	datain => \tots_B|tot_2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b2(1));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b2[2]~I\ : cycloneii_io
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
	datain => \tots_B|tot_2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b2(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b3[0]~I\ : cycloneii_io
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
	datain => \tots_B|totalizador_3:tot3_int[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b3(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b3[1]~I\ : cycloneii_io
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
	datain => \tots_B|totalizador_3:tot3_int[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b3(1));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b3[2]~I\ : cycloneii_io
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
	datain => \tots_B|totalizador_3:tot3_int[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b3(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b4[0]~I\ : cycloneii_io
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
	datain => \tots_B|tot_4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b4(0));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b4[1]~I\ : cycloneii_io
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
	datain => \tots_B|tot_4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b4(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b4[2]~I\ : cycloneii_io
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
	datain => \tots_B|tot_4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b4(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b5[0]~I\ : cycloneii_io
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
	datain => \tots_B|tot_5\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b5(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b5[1]~I\ : cycloneii_io
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
	datain => \tots_B|tot_5\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b5(1));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b5[2]~I\ : cycloneii_io
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
	datain => \tots_B|tot_5\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b5(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b6[0]~I\ : cycloneii_io
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
	datain => \tots_B|tot_6\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b6(0));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b6[1]~I\ : cycloneii_io
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
	datain => \tots_B|tot_6\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b6(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tot_b6[2]~I\ : cycloneii_io
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
	datain => \tots_B|tot_6\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tot_b6(2));
END structure;



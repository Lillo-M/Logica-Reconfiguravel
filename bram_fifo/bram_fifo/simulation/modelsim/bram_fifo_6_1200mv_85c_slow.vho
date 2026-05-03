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

-- DATE "05/02/2026 22:58:52"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bram_fifo IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	rst : IN std_logic;
	loaded : IN std_logic;
	load_wr_en : IN std_logic;
	load_data : IN std_logic_vector(7 DOWNTO 0);
	load_address : IN std_logic_vector(10 DOWNTO 0);
	load_en : OUT std_logic
	);
END bram_fifo;

-- Design Ports Information
-- load_wr_en	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[9]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_en	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loaded	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bram_fifo IS
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
SIGNAL ww_clr : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_loaded : std_logic;
SIGNAL ww_load_wr_en : std_logic;
SIGNAL ww_load_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_load_address : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_load_en : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \queue|count[0]~11_combout\ : std_logic;
SIGNAL \queue|count[0]~12\ : std_logic;
SIGNAL \queue|count[1]~13_combout\ : std_logic;
SIGNAL \queue|count[1]~14\ : std_logic;
SIGNAL \queue|count[2]~15_combout\ : std_logic;
SIGNAL \queue|count[2]~16\ : std_logic;
SIGNAL \queue|count[3]~17_combout\ : std_logic;
SIGNAL \queue|count[3]~18\ : std_logic;
SIGNAL \queue|count[4]~19_combout\ : std_logic;
SIGNAL \queue|count[4]~20\ : std_logic;
SIGNAL \queue|count[5]~21_combout\ : std_logic;
SIGNAL \queue|count[5]~22\ : std_logic;
SIGNAL \queue|count[6]~23_combout\ : std_logic;
SIGNAL \queue|count[6]~24\ : std_logic;
SIGNAL \queue|count[7]~25_combout\ : std_logic;
SIGNAL \queue|count[7]~26\ : std_logic;
SIGNAL \queue|count[8]~27_combout\ : std_logic;
SIGNAL \queue|count[8]~28\ : std_logic;
SIGNAL \queue|count[9]~29_combout\ : std_logic;
SIGNAL \queue|count[9]~30\ : std_logic;
SIGNAL \queue|count[10]~31_combout\ : std_logic;
SIGNAL \WriteState.LOAD_BRAM~q\ : std_logic;
SIGNAL \WriteState.WR_WAIT~q\ : std_logic;
SIGNAL \WriteState.RESET~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \queue|Equal0~0_combout\ : std_logic;
SIGNAL \queue|Equal0~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \WriteState.WR_FIFO~q\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \fifo_rd_en~q\ : std_logic;
SIGNAL \rec_clk_en~q\ : std_logic;
SIGNAL \queue|process_0~0_combout\ : std_logic;
SIGNAL \queue|process_0~1_combout\ : std_logic;
SIGNAL \fifo_wr_en~q\ : std_logic;
SIGNAL \queue|count[10]~33_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \queue|Equal0~2_combout\ : std_logic;
SIGNAL \ReadState.RESET~q\ : std_logic;
SIGNAL \fifo_rd_en~2_combout\ : std_logic;
SIGNAL \ReadState.RD_WAIT~q\ : std_logic;
SIGNAL \fifo_rd_en~3_combout\ : std_logic;
SIGNAL \fifo_rd_en~4_combout\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[2]~q\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[1]~q\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[0]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \ReadState.RESET~0_combout\ : std_logic;
SIGNAL \ReadState.RD_WAIT~0_combout\ : std_logic;
SIGNAL \ReadState.RD_FIFO~q\ : std_logic;
SIGNAL \ReadState~10_combout\ : std_logic;
SIGNAL \ReadState.RD_WAIT~1_combout\ : std_logic;
SIGNAL \clock_counter~0_combout\ : std_logic;
SIGNAL \clock_counter~1_combout\ : std_logic;
SIGNAL \clock_counter~2_combout\ : std_logic;
SIGNAL \ReadState.RD_FIFO~0_combout\ : std_logic;
SIGNAL \ReadState.RD_FIFO~1_combout\ : std_logic;
SIGNAL \fifo_rd_en~5_combout\ : std_logic;
SIGNAL \load_wr_en~input_o\ : std_logic;
SIGNAL \load_data[0]~input_o\ : std_logic;
SIGNAL \load_data[1]~input_o\ : std_logic;
SIGNAL \load_data[2]~input_o\ : std_logic;
SIGNAL \load_data[3]~input_o\ : std_logic;
SIGNAL \load_data[4]~input_o\ : std_logic;
SIGNAL \load_data[5]~input_o\ : std_logic;
SIGNAL \load_data[6]~input_o\ : std_logic;
SIGNAL \load_data[7]~input_o\ : std_logic;
SIGNAL \load_address[0]~input_o\ : std_logic;
SIGNAL \load_address[1]~input_o\ : std_logic;
SIGNAL \load_address[2]~input_o\ : std_logic;
SIGNAL \load_address[3]~input_o\ : std_logic;
SIGNAL \load_address[4]~input_o\ : std_logic;
SIGNAL \load_address[5]~input_o\ : std_logic;
SIGNAL \load_address[6]~input_o\ : std_logic;
SIGNAL \load_address[7]~input_o\ : std_logic;
SIGNAL \load_address[8]~input_o\ : std_logic;
SIGNAL \load_address[9]~input_o\ : std_logic;
SIGNAL \load_address[10]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \WriteState.RESET~feeder_combout\ : std_logic;
SIGNAL \load_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \loaded~input_o\ : std_logic;
SIGNAL \load_en~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \load_en~reg0_q\ : std_logic;
SIGNAL \queue|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
ww_rst <= rst;
ww_loaded <= loaded;
ww_load_wr_en <= load_wr_en;
ww_load_data <= load_data;
ww_load_address <= load_address;
load_en <= ww_load_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: FF_X24_Y33_N25
\queue|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[10]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(10));

-- Location: FF_X24_Y33_N23
\queue|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[9]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(9));

-- Location: FF_X24_Y33_N5
\queue|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[0]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(0));

-- Location: FF_X24_Y33_N7
\queue|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[1]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(1));

-- Location: FF_X24_Y33_N9
\queue|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[2]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(2));

-- Location: FF_X24_Y33_N11
\queue|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[3]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(3));

-- Location: FF_X24_Y33_N13
\queue|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(4));

-- Location: FF_X24_Y33_N21
\queue|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[8]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(8));

-- Location: FF_X24_Y33_N15
\queue|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[5]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(5));

-- Location: FF_X24_Y33_N17
\queue|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[6]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(6));

-- Location: FF_X24_Y33_N19
\queue|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|count[7]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clr~input_o\,
	ena => \queue|count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|count\(7));

-- Location: LCCOMB_X24_Y33_N4
\queue|count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[0]~11_combout\ = \queue|count\(0) $ (VCC)
-- \queue|count[0]~12\ = CARRY(\queue|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \queue|count\(0),
	datad => VCC,
	combout => \queue|count[0]~11_combout\,
	cout => \queue|count[0]~12\);

-- Location: LCCOMB_X24_Y33_N6
\queue|count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[1]~13_combout\ = (\queue|count\(1) & ((\queue|process_0~1_combout\ & (\queue|count[0]~12\ & VCC)) # (!\queue|process_0~1_combout\ & (!\queue|count[0]~12\)))) # (!\queue|count\(1) & ((\queue|process_0~1_combout\ & (!\queue|count[0]~12\)) # 
-- (!\queue|process_0~1_combout\ & ((\queue|count[0]~12\) # (GND)))))
-- \queue|count[1]~14\ = CARRY((\queue|count\(1) & (!\queue|process_0~1_combout\ & !\queue|count[0]~12\)) # (!\queue|count\(1) & ((!\queue|count[0]~12\) # (!\queue|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(1),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[0]~12\,
	combout => \queue|count[1]~13_combout\,
	cout => \queue|count[1]~14\);

-- Location: LCCOMB_X24_Y33_N8
\queue|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[2]~15_combout\ = ((\queue|count\(2) $ (\queue|process_0~1_combout\ $ (!\queue|count[1]~14\)))) # (GND)
-- \queue|count[2]~16\ = CARRY((\queue|count\(2) & ((\queue|process_0~1_combout\) # (!\queue|count[1]~14\))) # (!\queue|count\(2) & (\queue|process_0~1_combout\ & !\queue|count[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(2),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[1]~14\,
	combout => \queue|count[2]~15_combout\,
	cout => \queue|count[2]~16\);

-- Location: LCCOMB_X24_Y33_N10
\queue|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[3]~17_combout\ = (\queue|count\(3) & ((\queue|process_0~1_combout\ & (\queue|count[2]~16\ & VCC)) # (!\queue|process_0~1_combout\ & (!\queue|count[2]~16\)))) # (!\queue|count\(3) & ((\queue|process_0~1_combout\ & (!\queue|count[2]~16\)) # 
-- (!\queue|process_0~1_combout\ & ((\queue|count[2]~16\) # (GND)))))
-- \queue|count[3]~18\ = CARRY((\queue|count\(3) & (!\queue|process_0~1_combout\ & !\queue|count[2]~16\)) # (!\queue|count\(3) & ((!\queue|count[2]~16\) # (!\queue|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(3),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[2]~16\,
	combout => \queue|count[3]~17_combout\,
	cout => \queue|count[3]~18\);

-- Location: LCCOMB_X24_Y33_N12
\queue|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[4]~19_combout\ = ((\queue|count\(4) $ (\queue|process_0~1_combout\ $ (!\queue|count[3]~18\)))) # (GND)
-- \queue|count[4]~20\ = CARRY((\queue|count\(4) & ((\queue|process_0~1_combout\) # (!\queue|count[3]~18\))) # (!\queue|count\(4) & (\queue|process_0~1_combout\ & !\queue|count[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(4),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[3]~18\,
	combout => \queue|count[4]~19_combout\,
	cout => \queue|count[4]~20\);

-- Location: LCCOMB_X24_Y33_N14
\queue|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[5]~21_combout\ = (\queue|count\(5) & ((\queue|process_0~1_combout\ & (\queue|count[4]~20\ & VCC)) # (!\queue|process_0~1_combout\ & (!\queue|count[4]~20\)))) # (!\queue|count\(5) & ((\queue|process_0~1_combout\ & (!\queue|count[4]~20\)) # 
-- (!\queue|process_0~1_combout\ & ((\queue|count[4]~20\) # (GND)))))
-- \queue|count[5]~22\ = CARRY((\queue|count\(5) & (!\queue|process_0~1_combout\ & !\queue|count[4]~20\)) # (!\queue|count\(5) & ((!\queue|count[4]~20\) # (!\queue|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(5),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[4]~20\,
	combout => \queue|count[5]~21_combout\,
	cout => \queue|count[5]~22\);

-- Location: LCCOMB_X24_Y33_N16
\queue|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[6]~23_combout\ = ((\queue|count\(6) $ (\queue|process_0~1_combout\ $ (!\queue|count[5]~22\)))) # (GND)
-- \queue|count[6]~24\ = CARRY((\queue|count\(6) & ((\queue|process_0~1_combout\) # (!\queue|count[5]~22\))) # (!\queue|count\(6) & (\queue|process_0~1_combout\ & !\queue|count[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(6),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[5]~22\,
	combout => \queue|count[6]~23_combout\,
	cout => \queue|count[6]~24\);

-- Location: LCCOMB_X24_Y33_N18
\queue|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[7]~25_combout\ = (\queue|count\(7) & ((\queue|process_0~1_combout\ & (\queue|count[6]~24\ & VCC)) # (!\queue|process_0~1_combout\ & (!\queue|count[6]~24\)))) # (!\queue|count\(7) & ((\queue|process_0~1_combout\ & (!\queue|count[6]~24\)) # 
-- (!\queue|process_0~1_combout\ & ((\queue|count[6]~24\) # (GND)))))
-- \queue|count[7]~26\ = CARRY((\queue|count\(7) & (!\queue|process_0~1_combout\ & !\queue|count[6]~24\)) # (!\queue|count\(7) & ((!\queue|count[6]~24\) # (!\queue|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(7),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[6]~24\,
	combout => \queue|count[7]~25_combout\,
	cout => \queue|count[7]~26\);

-- Location: LCCOMB_X24_Y33_N20
\queue|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[8]~27_combout\ = ((\queue|count\(8) $ (\queue|process_0~1_combout\ $ (!\queue|count[7]~26\)))) # (GND)
-- \queue|count[8]~28\ = CARRY((\queue|count\(8) & ((\queue|process_0~1_combout\) # (!\queue|count[7]~26\))) # (!\queue|count\(8) & (\queue|process_0~1_combout\ & !\queue|count[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(8),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[7]~26\,
	combout => \queue|count[8]~27_combout\,
	cout => \queue|count[8]~28\);

-- Location: LCCOMB_X24_Y33_N22
\queue|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[9]~29_combout\ = (\queue|count\(9) & ((\queue|process_0~1_combout\ & (\queue|count[8]~28\ & VCC)) # (!\queue|process_0~1_combout\ & (!\queue|count[8]~28\)))) # (!\queue|count\(9) & ((\queue|process_0~1_combout\ & (!\queue|count[8]~28\)) # 
-- (!\queue|process_0~1_combout\ & ((\queue|count[8]~28\) # (GND)))))
-- \queue|count[9]~30\ = CARRY((\queue|count\(9) & (!\queue|process_0~1_combout\ & !\queue|count[8]~28\)) # (!\queue|count\(9) & ((!\queue|count[8]~28\) # (!\queue|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(9),
	datab => \queue|process_0~1_combout\,
	datad => VCC,
	cin => \queue|count[8]~28\,
	combout => \queue|count[9]~29_combout\,
	cout => \queue|count[9]~30\);

-- Location: LCCOMB_X24_Y33_N24
\queue|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[10]~31_combout\ = \queue|process_0~1_combout\ $ (\queue|count\(10) $ (!\queue|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|process_0~1_combout\,
	datab => \queue|count\(10),
	cin => \queue|count[9]~30\,
	combout => \queue|count[10]~31_combout\);

-- Location: FF_X23_Y33_N23
\WriteState.LOAD_BRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.LOAD_BRAM~q\);

-- Location: FF_X23_Y33_N1
\WriteState.WR_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.WR_WAIT~q\);

-- Location: FF_X23_Y33_N27
\WriteState.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WriteState.RESET~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.RESET~q\);

-- Location: LCCOMB_X23_Y33_N12
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ((\WriteState.LOAD_BRAM~q\ & (\loaded~input_o\ & !\WriteState.WR_WAIT~q\))) # (!\WriteState.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.LOAD_BRAM~q\,
	datab => \loaded~input_o\,
	datac => \WriteState.RESET~q\,
	datad => \WriteState.WR_WAIT~q\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X24_Y33_N28
\queue|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|Equal0~0_combout\ = (!\queue|count\(3) & (!\queue|count\(2) & (!\queue|count\(1) & !\queue|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(3),
	datab => \queue|count\(2),
	datac => \queue|count\(1),
	datad => \queue|count\(4),
	combout => \queue|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y33_N2
\queue|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|Equal0~1_combout\ = (!\queue|count\(8) & (!\queue|count\(6) & (!\queue|count\(5) & !\queue|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(8),
	datab => \queue|count\(6),
	datac => \queue|count\(5),
	datad => \queue|count\(7),
	combout => \queue|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y33_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\queue|count\(9) & ((\queue|count\(0)) # ((!\queue|Equal0~0_combout\) # (!\queue|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(0),
	datab => \queue|count\(9),
	datac => \queue|Equal0~1_combout\,
	datad => \queue|Equal0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y33_N20
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~1_combout\) # ((\WriteState.WR_WAIT~q\ & (!\queue|count\(10) & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \WriteState.WR_WAIT~q\,
	datac => \queue|count\(10),
	datad => \LessThan1~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: FF_X23_Y33_N11
\WriteState.WR_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.WR_FIFO~q\);

-- Location: LCCOMB_X23_Y33_N28
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\WriteState.WR_FIFO~q\ & ((\queue|count\(10)) # ((\queue|count\(9) & \queue|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datab => \queue|count\(9),
	datac => \queue|count\(8),
	datad => \queue|count\(10),
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X23_Y33_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\Selector11~3_combout\ & (((\WriteState.LOAD_BRAM~q\ & !\Selector11~2_combout\)) # (!\WriteState.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.RESET~q\,
	datab => \Selector11~3_combout\,
	datac => \WriteState.LOAD_BRAM~q\,
	datad => \Selector11~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X23_Y33_N0
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector11~3_combout\) # ((\WriteState.WR_WAIT~q\ & ((\queue|count\(10)) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(10),
	datab => \Selector11~3_combout\,
	datac => \WriteState.WR_WAIT~q\,
	datad => \LessThan1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X25_Y33_N5
fifo_rd_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_rd_en~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rd_en~q\);

-- Location: FF_X25_Y33_N7
rec_clk_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_clk_en~q\);

-- Location: LCCOMB_X24_Y33_N26
\queue|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|process_0~0_combout\ = (\queue|count\(9)) # ((\queue|count\(10)) # ((\queue|count\(0)) # (!\queue|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(9),
	datab => \queue|count\(10),
	datac => \queue|count\(0),
	datad => \queue|Equal0~1_combout\,
	combout => \queue|process_0~0_combout\);

-- Location: LCCOMB_X24_Y33_N0
\queue|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|process_0~1_combout\ = (\rec_clk_en~q\ & (\fifo_rd_en~q\ & ((\queue|process_0~0_combout\) # (!\queue|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_clk_en~q\,
	datab => \queue|Equal0~0_combout\,
	datac => \queue|process_0~0_combout\,
	datad => \fifo_rd_en~q\,
	combout => \queue|process_0~1_combout\);

-- Location: FF_X23_Y33_N15
fifo_wr_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_wr_en~q\);

-- Location: LCCOMB_X24_Y33_N30
\queue|count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|count[10]~33_combout\ = (\clr~input_o\) # ((\queue|process_0~1_combout\) # ((\fifo_wr_en~q\ & !\queue|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|count\(10),
	datac => \clr~input_o\,
	datad => \queue|process_0~1_combout\,
	combout => \queue|count[10]~33_combout\);

-- Location: LCCOMB_X23_Y33_N10
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\Selector11~3_combout\ & ((\Selector11~2_combout\ & (\WriteState.RESET~q\)) # (!\Selector11~2_combout\ & ((\WriteState.WR_FIFO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.RESET~q\,
	datab => \Selector11~3_combout\,
	datac => \WriteState.WR_FIFO~q\,
	datad => \Selector11~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X25_Y33_N0
\queue|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|Equal0~2_combout\ = (\queue|Equal0~1_combout\ & (\queue|Equal0~0_combout\ & (!\queue|count\(9) & !\queue|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|Equal0~1_combout\,
	datab => \queue|Equal0~0_combout\,
	datac => \queue|count\(9),
	datad => \queue|count\(10),
	combout => \queue|Equal0~2_combout\);

-- Location: FF_X25_Y33_N15
\ReadState.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RESET~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RESET~q\);

-- Location: LCCOMB_X25_Y33_N12
\fifo_rd_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rd_en~2_combout\ = (!\rst~input_o\ & \rec_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \rec_clk_en~q\,
	combout => \fifo_rd_en~2_combout\);

-- Location: FF_X25_Y33_N23
\ReadState.RD_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RD_WAIT~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RD_WAIT~q\);

-- Location: LCCOMB_X25_Y33_N20
\fifo_rd_en~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rd_en~3_combout\ = (\fifo_rd_en~2_combout\ & ((\ReadState.RD_WAIT~q\ $ (\fifo_rd_en~q\)) # (!\ReadState.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~q\,
	datab => \ReadState.RESET~q\,
	datac => \fifo_rd_en~q\,
	datad => \fifo_rd_en~2_combout\,
	combout => \fifo_rd_en~3_combout\);

-- Location: LCCOMB_X25_Y33_N4
\fifo_rd_en~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rd_en~4_combout\ = (\fifo_rd_en~3_combout\ & ((\queue|count\(0) $ (\fifo_rd_en~5_combout\)) # (!\queue|Equal0~2_combout\))) # (!\fifo_rd_en~3_combout\ & (((\fifo_rd_en~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rd_en~3_combout\,
	datab => \queue|count\(0),
	datac => \fifo_rd_en~5_combout\,
	datad => \queue|Equal0~2_combout\,
	combout => \fifo_rd_en~4_combout\);

-- Location: FF_X25_Y33_N3
\clock_enable_divider:clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_counter~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_enable_divider:clock_counter[2]~q\);

-- Location: FF_X25_Y33_N17
\clock_enable_divider:clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_counter~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_enable_divider:clock_counter[1]~q\);

-- Location: FF_X25_Y33_N27
\clock_enable_divider:clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_counter~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_enable_divider:clock_counter[0]~q\);

-- Location: LCCOMB_X25_Y33_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\clock_enable_divider:clock_counter[1]~q\ & (!\clock_enable_divider:clock_counter[0]~q\ & \clock_enable_divider:clock_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_enable_divider:clock_counter[1]~q\,
	datac => \clock_enable_divider:clock_counter[0]~q\,
	datad => \clock_enable_divider:clock_counter[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y33_N16
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\WriteState.WR_FIFO~q\ & (!\queue|count\(10) & ((!\queue|count\(8)) # (!\queue|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datab => \queue|count\(9),
	datac => \queue|count\(8),
	datad => \queue|count\(10),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X23_Y33_N2
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\WriteState.LOAD_BRAM~q\) # ((\WriteState.WR_WAIT~q\) # ((\Selector15~0_combout\) # (!\WriteState.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.LOAD_BRAM~q\,
	datab => \WriteState.WR_WAIT~q\,
	datac => \WriteState.RESET~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X23_Y33_N4
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\WriteState.LOAD_BRAM~q\ & ((\loaded~input_o\) # ((\fifo_wr_en~q\ & \Selector15~1_combout\)))) # (!\WriteState.LOAD_BRAM~q\ & (((\fifo_wr_en~q\ & \Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.LOAD_BRAM~q\,
	datab => \loaded~input_o\,
	datac => \fifo_wr_en~q\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X23_Y33_N14
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~2_combout\) # ((!\queue|count\(10) & (\WriteState.WR_WAIT~q\ & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|count\(10),
	datab => \WriteState.WR_WAIT~q\,
	datac => \Selector15~2_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X25_Y33_N14
\ReadState.RESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RESET~0_combout\ = (\ReadState.RESET~q\) # (\rec_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadState.RESET~q\,
	datad => \rec_clk_en~q\,
	combout => \ReadState.RESET~0_combout\);

-- Location: LCCOMB_X25_Y33_N28
\ReadState.RD_WAIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_WAIT~0_combout\ = (\ReadState.RESET~q\ & (!\ReadState.RD_WAIT~q\)) # (!\ReadState.RESET~q\ & (((!\queue|count\(0) & \queue|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~q\,
	datab => \ReadState.RESET~q\,
	datac => \queue|count\(0),
	datad => \queue|Equal0~2_combout\,
	combout => \ReadState.RD_WAIT~0_combout\);

-- Location: FF_X25_Y33_N19
\ReadState.RD_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RD_FIFO~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RD_FIFO~q\);

-- Location: LCCOMB_X25_Y33_N24
\ReadState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState~10_combout\ = (\queue|Equal0~2_combout\ & (!\queue|count\(0) & ((\ReadState.RD_WAIT~q\) # (\ReadState.RD_FIFO~q\)))) # (!\queue|Equal0~2_combout\ & (((\ReadState.RD_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~q\,
	datab => \ReadState.RD_FIFO~q\,
	datac => \queue|count\(0),
	datad => \queue|Equal0~2_combout\,
	combout => \ReadState~10_combout\);

-- Location: LCCOMB_X25_Y33_N22
\ReadState.RD_WAIT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_WAIT~1_combout\ = (\rec_clk_en~q\ & ((\ReadState~10_combout\ & (\ReadState.RD_WAIT~q\)) # (!\ReadState~10_combout\ & ((\ReadState.RD_WAIT~0_combout\))))) # (!\rec_clk_en~q\ & (((\ReadState.RD_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_clk_en~q\,
	datab => \ReadState~10_combout\,
	datac => \ReadState.RD_WAIT~q\,
	datad => \ReadState.RD_WAIT~0_combout\,
	combout => \ReadState.RD_WAIT~1_combout\);

-- Location: LCCOMB_X25_Y33_N2
\clock_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_counter~0_combout\ = (\clock_enable_divider:clock_counter[1]~q\ & (\clock_enable_divider:clock_counter[0]~q\ & !\clock_enable_divider:clock_counter[2]~q\)) # (!\clock_enable_divider:clock_counter[1]~q\ & 
-- ((\clock_enable_divider:clock_counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_enable_divider:clock_counter[0]~q\,
	datab => \clock_enable_divider:clock_counter[1]~q\,
	datac => \clock_enable_divider:clock_counter[2]~q\,
	combout => \clock_counter~0_combout\);

-- Location: LCCOMB_X25_Y33_N16
\clock_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_counter~1_combout\ = (\clock_enable_divider:clock_counter[0]~q\ & (!\clock_enable_divider:clock_counter[1]~q\)) # (!\clock_enable_divider:clock_counter[0]~q\ & (\clock_enable_divider:clock_counter[1]~q\ & 
-- !\clock_enable_divider:clock_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_enable_divider:clock_counter[0]~q\,
	datac => \clock_enable_divider:clock_counter[1]~q\,
	datad => \clock_enable_divider:clock_counter[2]~q\,
	combout => \clock_counter~1_combout\);

-- Location: LCCOMB_X25_Y33_N26
\clock_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_counter~2_combout\ = (!\clock_enable_divider:clock_counter[0]~q\ & ((!\clock_enable_divider:clock_counter[2]~q\) # (!\clock_enable_divider:clock_counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_enable_divider:clock_counter[1]~q\,
	datac => \clock_enable_divider:clock_counter[0]~q\,
	datad => \clock_enable_divider:clock_counter[2]~q\,
	combout => \clock_counter~2_combout\);

-- Location: LCCOMB_X25_Y33_N10
\ReadState.RD_FIFO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_FIFO~0_combout\ = (\ReadState.RESET~q\ & (\ReadState.RD_WAIT~q\)) # (!\ReadState.RESET~q\ & (((\queue|count\(0)) # (!\queue|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~q\,
	datab => \ReadState.RESET~q\,
	datac => \queue|count\(0),
	datad => \queue|Equal0~2_combout\,
	combout => \ReadState.RD_FIFO~0_combout\);

-- Location: LCCOMB_X25_Y33_N18
\ReadState.RD_FIFO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_FIFO~1_combout\ = (\rec_clk_en~q\ & ((\ReadState~10_combout\ & (\ReadState.RD_FIFO~q\)) # (!\ReadState~10_combout\ & ((\ReadState.RD_FIFO~0_combout\))))) # (!\rec_clk_en~q\ & (((\ReadState.RD_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_clk_en~q\,
	datab => \ReadState~10_combout\,
	datac => \ReadState.RD_FIFO~q\,
	datad => \ReadState.RD_FIFO~0_combout\,
	combout => \ReadState.RD_FIFO~1_combout\);

-- Location: LCCOMB_X25_Y33_N8
\fifo_rd_en~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rd_en~5_combout\ = (\fifo_rd_en~q\ & (((\ReadState.RESET~q\) # (\rst~input_o\)) # (!\rec_clk_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_clk_en~q\,
	datab => \ReadState.RESET~q\,
	datac => \fifo_rd_en~q\,
	datad => \rst~input_o\,
	combout => \fifo_rd_en~5_combout\);

-- Location: IOIBUF_X25_Y34_N1
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X23_Y33_N26
\WriteState.RESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WriteState.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \WriteState.RESET~feeder_combout\);

-- Location: IOOBUF_X23_Y34_N23
\load_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_en~reg0_q\,
	devoe => ww_devoe,
	o => \load_en~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X23_Y34_N15
\loaded~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loaded,
	o => \loaded~input_o\);

-- Location: LCCOMB_X23_Y33_N24
\load_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \load_en~0_combout\ = (\WriteState.LOAD_BRAM~q\ & ((!\loaded~input_o\))) # (!\WriteState.LOAD_BRAM~q\ & (\load_en~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.LOAD_BRAM~q\,
	datac => \load_en~reg0_q\,
	datad => \loaded~input_o\,
	combout => \load_en~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X23_Y33_N25
\load_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_en~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_en~reg0_q\);

-- Location: IOIBUF_X11_Y0_N15
\load_wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_wr_en,
	o => \load_wr_en~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\load_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(0),
	o => \load_data[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\load_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(1),
	o => \load_data[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\load_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(2),
	o => \load_data[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\load_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(3),
	o => \load_data[3]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\load_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(4),
	o => \load_data[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\load_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(5),
	o => \load_data[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\load_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(6),
	o => \load_data[6]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\load_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(7),
	o => \load_data[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\load_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(0),
	o => \load_address[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\load_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(1),
	o => \load_address[1]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\load_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(2),
	o => \load_address[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\load_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(3),
	o => \load_address[3]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\load_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(4),
	o => \load_address[4]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\load_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(5),
	o => \load_address[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\load_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(6),
	o => \load_address[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\load_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(7),
	o => \load_address[7]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\load_address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(8),
	o => \load_address[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\load_address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(9),
	o => \load_address[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\load_address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(10),
	o => \load_address[10]~input_o\);

ww_load_en <= \load_en~output_o\;
END structure;



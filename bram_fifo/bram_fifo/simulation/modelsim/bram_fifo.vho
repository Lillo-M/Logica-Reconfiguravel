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

-- DATE "05/09/2026 10:24:05"

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
-- clr	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_wr_en	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_data[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_address[10]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_en	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loaded	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\ : std_logic;
SIGNAL \WriteState.LOAD_BRAM~q\ : std_logic;
SIGNAL \write_machine:sent_values[11]~q\ : std_logic;
SIGNAL \WriteState.WR_FIFO~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \WriteState.RESET~q\ : std_logic;
SIGNAL \WriteState.WR_UPDATE_BRAM~q\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \WriteState.WR_WAIT~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \write_machine:sent_values[10]~q\ : std_logic;
SIGNAL \write_machine:sent_values[9]~q\ : std_logic;
SIGNAL \write_machine:sent_values[8]~q\ : std_logic;
SIGNAL \write_machine:sent_values[7]~q\ : std_logic;
SIGNAL \write_machine:sent_values[6]~q\ : std_logic;
SIGNAL \write_machine:sent_values[5]~q\ : std_logic;
SIGNAL \write_machine:sent_values[4]~q\ : std_logic;
SIGNAL \write_machine:sent_values[3]~q\ : std_logic;
SIGNAL \write_machine:sent_values[2]~q\ : std_logic;
SIGNAL \write_machine:sent_values[1]~q\ : std_logic;
SIGNAL \write_machine:sent_values[0]~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \WriteState.WR_FIFO~2_combout\ : std_logic;
SIGNAL \WriteState.WR_FIFO~3_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \write_machine:sent_values[10]~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \fifo_wr_en~q\ : std_logic;
SIGNAL \rec_clk_en~q\ : std_logic;
SIGNAL \fifo_rd_en~q\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[2]~q\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[1]~q\ : std_logic;
SIGNAL \clock_enable_divider:clock_counter[0]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ : std_logic;
SIGNAL \ReadState.RD_WAIT~q\ : std_logic;
SIGNAL \ReadState.RESET~q\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \ReadState.RD_FIFO~q\ : std_logic;
SIGNAL \ReadState.RD_UPDATE_FIFO~q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \clock_counter~0_combout\ : std_logic;
SIGNAL \clock_counter~1_combout\ : std_logic;
SIGNAL \clock_counter~2_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \ReadState.RD_WAIT~0_combout\ : std_logic;
SIGNAL \ReadState~12_combout\ : std_logic;
SIGNAL \ReadState.RD_WAIT~1_combout\ : std_logic;
SIGNAL \ReadState.RD_UPDATE_FIFO~0_combout\ : std_logic;
SIGNAL \ReadState.RD_UPDATE_FIFO~1_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\ : std_logic;
SIGNAL \WriteState.WR_FIFO~4_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
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
SIGNAL \ReadState.RD_FIFO~feeder_combout\ : std_logic;
SIGNAL \WriteState.RESET~feeder_combout\ : std_logic;
SIGNAL \ReadState.RESET~feeder_combout\ : std_logic;
SIGNAL \load_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \loaded~input_o\ : std_logic;
SIGNAL \load_en~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \load_en~reg0_q\ : std_logic;
SIGNAL \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\ : std_logic_vector(9 DOWNTO 0);
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

-- Location: LCCOMB_X36_Y33_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \write_machine:sent_values[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\write_machine:sent_values[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_machine:sent_values[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X36_Y33_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\write_machine:sent_values[1]~q\ & (!\Add1~1\)) # (!\write_machine:sent_values[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\write_machine:sent_values[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X36_Y33_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\write_machine:sent_values[2]~q\ & (\Add1~3\ $ (GND))) # (!\write_machine:sent_values[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\write_machine:sent_values[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X36_Y33_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\write_machine:sent_values[3]~q\ & (!\Add1~5\)) # (!\write_machine:sent_values[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\write_machine:sent_values[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \write_machine:sent_values[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X36_Y33_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\write_machine:sent_values[4]~q\ & (\Add1~7\ $ (GND))) # (!\write_machine:sent_values[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\write_machine:sent_values[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \write_machine:sent_values[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X36_Y33_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\write_machine:sent_values[5]~q\ & (!\Add1~9\)) # (!\write_machine:sent_values[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\write_machine:sent_values[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X36_Y33_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\write_machine:sent_values[6]~q\ & (\Add1~11\ $ (GND))) # (!\write_machine:sent_values[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\write_machine:sent_values[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \write_machine:sent_values[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X36_Y33_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\write_machine:sent_values[7]~q\ & (!\Add1~13\)) # (!\write_machine:sent_values[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\write_machine:sent_values[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \write_machine:sent_values[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X36_Y33_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\write_machine:sent_values[8]~q\ & (\Add1~15\ $ (GND))) # (!\write_machine:sent_values[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\write_machine:sent_values[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X36_Y33_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\write_machine:sent_values[9]~q\ & (!\Add1~17\)) # (!\write_machine:sent_values[9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\write_machine:sent_values[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X36_Y33_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\write_machine:sent_values[10]~q\ & (\Add1~19\ $ (GND))) # (!\write_machine:sent_values[10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\write_machine:sent_values[10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \write_machine:sent_values[10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X36_Y33_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\ $ (\write_machine:sent_values[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \write_machine:sent_values[11]~q\,
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X34_Y33_N4
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) $ (((VCC) # (!\fifo_wr_en~q\)))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\fifo_wr_en~q\ $ (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	datad => VCC,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X34_Y33_N6
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) $ (((\fifo_wr_en~q\) # (VCC))))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1)) # ((GND))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) $ (\fifo_wr_en~q\)) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datab => \fifo_wr_en~q\,
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X34_Y33_N8
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & VCC)))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) $ (((VCC) # (!\fifo_wr_en~q\)))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\fifo_wr_en~q\ $ 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X34_Y33_N10
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) $ (((\fifo_wr_en~q\) # (VCC))))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & 
-- ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3)) # ((GND))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ = CARRY((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) $ (\fifo_wr_en~q\)) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	datab => \fifo_wr_en~q\,
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X34_Y33_N12
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) & ((VCC)))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) $ (((VCC) # (!\fifo_wr_en~q\)))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ = CARRY((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) $ (!\fifo_wr_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	datab => \fifo_wr_en~q\,
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X34_Y33_N14
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) $ (((\fifo_wr_en~q\) # (VCC))))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & 
-- (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5)) # (GND))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ = CARRY((\fifo_wr_en~q\ $ (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5))) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X34_Y33_N16
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & VCC)))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) $ (((VCC) # (!\fifo_wr_en~q\)))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ = CARRY((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & (\fifo_wr_en~q\ $ 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X34_Y33_N18
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) $ (((\fifo_wr_en~q\) # (VCC))))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & 
-- (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7)) # (GND))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ = CARRY((\fifo_wr_en~q\ $ (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7))) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X34_Y33_N20
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & 
-- (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & VCC)))) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) $ (((VCC) # (!\fifo_wr_en~q\)))))
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ = CARRY((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & (\fifo_wr_en~q\ $ 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datad => VCC,
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\,
	cout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X34_Y33_N22
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\ = \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) $ 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	cin => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\);

-- Location: FF_X35_Y33_N31
\WriteState.LOAD_BRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.LOAD_BRAM~q\);

-- Location: FF_X36_Y33_N1
\write_machine:sent_values[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[11]~q\);

-- Location: FF_X35_Y33_N13
\WriteState.WR_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WriteState.WR_FIFO~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.WR_FIFO~q\);

-- Location: LCCOMB_X35_Y33_N22
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\loaded~input_o\ & (\write_machine:sent_values[11]~q\ & ((\WriteState.WR_FIFO~q\)))) # (!\loaded~input_o\ & ((\WriteState.LOAD_BRAM~q\) # ((\write_machine:sent_values[11]~q\ & \WriteState.WR_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loaded~input_o\,
	datab => \write_machine:sent_values[11]~q\,
	datac => \WriteState.LOAD_BRAM~q\,
	datad => \WriteState.WR_FIFO~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X37_Y33_N9
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

-- Location: FF_X35_Y33_N9
\WriteState.WR_UPDATE_BRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.WR_UPDATE_BRAM~q\);

-- Location: LCCOMB_X35_Y33_N30
\Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (!\WriteState.WR_UPDATE_BRAM~q\ & ((\Selector25~0_combout\) # (!\WriteState.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datac => \WriteState.WR_UPDATE_BRAM~q\,
	datad => \WriteState.RESET~q\,
	combout => \Selector25~1_combout\);

-- Location: FF_X35_Y33_N7
\WriteState.WR_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteState.WR_WAIT~q\);

-- Location: LCCOMB_X35_Y33_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\write_machine:sent_values[11]~q\ & ((\WriteState.WR_FIFO~q\) # (\WriteState.WR_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datac => \write_machine:sent_values[11]~q\,
	datad => \WriteState.WR_WAIT~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X37_Y33_N3
\write_machine:sent_values[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[10]~q\);

-- Location: FF_X37_Y33_N5
\write_machine:sent_values[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[9]~q\);

-- Location: FF_X37_Y33_N7
\write_machine:sent_values[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[8]~q\);

-- Location: FF_X37_Y33_N13
\write_machine:sent_values[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[7]~q\);

-- Location: FF_X37_Y33_N23
\write_machine:sent_values[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[6]~q\);

-- Location: FF_X36_Y33_N31
\write_machine:sent_values[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[5]~q\);

-- Location: FF_X37_Y33_N25
\write_machine:sent_values[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[4]~q\);

-- Location: FF_X36_Y33_N29
\write_machine:sent_values[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[3]~q\);

-- Location: FF_X36_Y33_N27
\write_machine:sent_values[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[2]~q\);

-- Location: FF_X36_Y33_N23
\write_machine:sent_values[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector11~0_combout\,
	sload => VCC,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[1]~q\);

-- Location: FF_X36_Y33_N19
\write_machine:sent_values[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector12~0_combout\,
	sload => VCC,
	ena => \write_machine:sent_values[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_machine:sent_values[0]~q\);

-- Location: FF_X34_Y33_N23
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9));

-- Location: FF_X34_Y33_N21
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8));

-- Location: LCCOMB_X35_Y33_N14
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\WriteState.WR_UPDATE_BRAM~q\) # ((\WriteState.WR_FIFO~q\ & ((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \WriteState.WR_UPDATE_BRAM~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X36_Y33_N0
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\ & \Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector1~0_combout\,
	datad => \Add1~22_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X34_Y33_N5
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0));

-- Location: FF_X34_Y33_N19
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7));

-- Location: FF_X34_Y33_N17
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6));

-- Location: FF_X34_Y33_N15
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5));

-- Location: LCCOMB_X34_Y33_N28
\Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & !\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	combout => \Selector25~2_combout\);

-- Location: FF_X34_Y33_N13
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4));

-- Location: FF_X34_Y33_N11
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3));

-- Location: FF_X34_Y33_N9
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2));

-- Location: FF_X34_Y33_N7
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1));

-- Location: LCCOMB_X34_Y33_N2
\Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & !\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	combout => \Selector25~3_combout\);

-- Location: LCCOMB_X34_Y33_N24
\Selector25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (\Selector25~3_combout\ & (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) & \Selector25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector25~3_combout\,
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	datad => \Selector25~2_combout\,
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X35_Y33_N28
\WriteState.WR_FIFO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WriteState.WR_FIFO~2_combout\ = (\WriteState.WR_FIFO~q\ & ((\WriteState.LOAD_BRAM~q\ & (!\loaded~input_o\)) # (!\WriteState.LOAD_BRAM~q\ & ((!\WriteState.WR_FIFO~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datab => \loaded~input_o\,
	datac => \WriteState.LOAD_BRAM~q\,
	datad => \WriteState.WR_FIFO~4_combout\,
	combout => \WriteState.WR_FIFO~2_combout\);

-- Location: LCCOMB_X35_Y33_N12
\WriteState.WR_FIFO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WriteState.WR_FIFO~3_combout\ = (\WriteState.WR_UPDATE_BRAM~q\) # ((\WriteState.RESET~q\ & (!\write_machine:sent_values[11]~q\ & \WriteState.WR_FIFO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.RESET~q\,
	datab => \write_machine:sent_values[11]~q\,
	datac => \WriteState.WR_UPDATE_BRAM~q\,
	datad => \WriteState.WR_FIFO~2_combout\,
	combout => \WriteState.WR_FIFO~3_combout\);

-- Location: LCCOMB_X35_Y33_N18
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\WriteState.WR_FIFO~q\ & ((\write_machine:sent_values[11]~q\) # ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) & 
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_FIFO~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \write_machine:sent_values[11]~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X35_Y33_N16
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (!\WriteState.WR_UPDATE_BRAM~q\ & \WriteState.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WriteState.WR_UPDATE_BRAM~q\,
	datad => \WriteState.RESET~q\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X35_Y33_N6
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Selector24~0_combout\ & (!\write_machine:sent_values[11]~q\)) # (!\Selector24~0_combout\ & (((\WriteState.WR_WAIT~q\ & !\Selector24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \write_machine:sent_values[11]~q\,
	datac => \WriteState.WR_WAIT~q\,
	datad => \Selector24~3_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X37_Y33_N2
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~20_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X35_Y33_N26
\write_machine:sent_values[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_machine:sent_values[10]~0_combout\ = (!\WriteState.WR_WAIT~q\ & (!\rst~input_o\ & !\Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_WAIT~q\,
	datab => \rst~input_o\,
	datad => \Selector24~0_combout\,
	combout => \write_machine:sent_values[10]~0_combout\);

-- Location: LCCOMB_X37_Y33_N4
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~18_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X37_Y33_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~16_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X37_Y33_N12
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\WriteState.RESET~q\ & (\Add1~14_combout\ & !\WriteState.LOAD_BRAM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.RESET~q\,
	datac => \Add1~14_combout\,
	datad => \WriteState.LOAD_BRAM~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X37_Y33_N22
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~12_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X36_Y33_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~10_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X37_Y33_N24
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~8_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X36_Y33_N28
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\WriteState.RESET~q\ & (\Add1~6_combout\ & !\WriteState.LOAD_BRAM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.RESET~q\,
	datac => \Add1~6_combout\,
	datad => \WriteState.LOAD_BRAM~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X36_Y33_N26
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~4_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X37_Y33_N30
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\WriteState.RESET~q\ & (\Add1~2_combout\ & !\WriteState.LOAD_BRAM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.RESET~q\,
	datac => \Add1~2_combout\,
	datad => \WriteState.LOAD_BRAM~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X37_Y33_N0
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\WriteState.LOAD_BRAM~q\ & (\WriteState.RESET~q\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteState.LOAD_BRAM~q\,
	datac => \WriteState.RESET~q\,
	datad => \Add1~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X34_Y33_N27
fifo_wr_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_wr_en~q\);

-- Location: FF_X30_Y33_N13
rec_clk_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_clk_en~q\);

-- Location: FF_X32_Y33_N25
fifo_rd_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rec_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rd_en~q\);

-- Location: LCCOMB_X34_Y33_N0
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = \fifo_wr_en~q\ $ (((\rec_clk_en~q\ & \fifo_rd_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datac => \rec_clk_en~q\,
	datad => \fifo_rd_en~q\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCCOMB_X35_Y33_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\WriteState.WR_UPDATE_BRAM~q\) # ((\fifo_wr_en~q\ & ((\WriteState.LOAD_BRAM~q\) # (\WriteState.WR_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.LOAD_BRAM~q\,
	datab => \WriteState.WR_UPDATE_BRAM~q\,
	datac => \fifo_wr_en~q\,
	datad => \WriteState.WR_WAIT~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X35_Y33_N2
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\fifo_wr_en~q\ & (!\write_machine:sent_values[11]~q\ & ((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)) # 
-- (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \write_machine:sent_values[11]~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X34_Y33_N26
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~0_combout\) # ((\Selector0~1_combout\ & \WriteState.WR_FIFO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \WriteState.WR_FIFO~q\,
	datac => \Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X30_Y33_N3
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

-- Location: FF_X30_Y33_N1
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

-- Location: FF_X30_Y33_N7
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

-- Location: LCCOMB_X30_Y33_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\clock_enable_divider:clock_counter[0]~q\ & (\clock_enable_divider:clock_counter[1]~q\ & \clock_enable_divider:clock_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_enable_divider:clock_counter[0]~q\,
	datab => \clock_enable_divider:clock_counter[1]~q\,
	datad => \clock_enable_divider:clock_counter[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X32_Y33_N7
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\);

-- Location: FF_X32_Y33_N5
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

-- Location: FF_X30_Y33_N17
\ReadState.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RESET~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rec_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RESET~q\);

-- Location: LCCOMB_X31_Y33_N16
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ((\ReadState.RD_WAIT~q\) # (!\ReadState.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~q\,
	datac => \ReadState.RESET~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	combout => \Selector41~0_combout\);

-- Location: FF_X32_Y33_N15
\ReadState.RD_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RD_FIFO~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rec_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RD_FIFO~q\);

-- Location: FF_X32_Y33_N29
\ReadState.RD_UPDATE_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ReadState.RD_UPDATE_FIFO~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadState.RD_UPDATE_FIFO~q\);

-- Location: LCCOMB_X32_Y33_N18
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\ReadState.RD_UPDATE_FIFO~q\) # ((\ReadState.RD_FIFO~q\ & \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ReadState.RD_UPDATE_FIFO~q\,
	datac => \ReadState.RD_FIFO~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X32_Y33_N24
\Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\Selector41~0_combout\) # ((\fifo_rd_en~q\ & ((\ReadState.RD_WAIT~q\) # (\Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~0_combout\,
	datab => \ReadState.RD_WAIT~q\,
	datac => \fifo_rd_en~q\,
	datad => \Selector43~0_combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X30_Y33_N2
\clock_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_counter~0_combout\ = (\clock_enable_divider:clock_counter[2]~q\ & ((!\clock_enable_divider:clock_counter[1]~q\))) # (!\clock_enable_divider:clock_counter[2]~q\ & (\clock_enable_divider:clock_counter[0]~q\ & 
-- \clock_enable_divider:clock_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_enable_divider:clock_counter[0]~q\,
	datac => \clock_enable_divider:clock_counter[2]~q\,
	datad => \clock_enable_divider:clock_counter[1]~q\,
	combout => \clock_counter~0_combout\);

-- Location: LCCOMB_X30_Y33_N0
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

-- Location: LCCOMB_X30_Y33_N6
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

-- Location: LCCOMB_X32_Y33_N8
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)) # 
-- (((!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)) # (!\rec_clk_en~q\)) # (!\fifo_rd_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datab => \fifo_rd_en~q\,
	datac => \rec_clk_en~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X32_Y33_N22
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- (!\Selector25~3_combout\)) # (!\Selector25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datab => \Selector25~2_combout\,
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datad => \Selector25~3_combout\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: FF_X32_Y33_N21
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\);

-- Location: LCCOMB_X32_Y33_N6
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\fifo_wr_en~q\) # ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_wr_en~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCCOMB_X32_Y33_N26
\ReadState.RD_WAIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_WAIT~0_combout\ = (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\rec_clk_en~q\ & (!\ReadState.RD_WAIT~q\ & !\ReadState.RD_UPDATE_FIFO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datab => \rec_clk_en~q\,
	datac => \ReadState.RD_WAIT~q\,
	datad => \ReadState.RD_UPDATE_FIFO~q\,
	combout => \ReadState.RD_WAIT~0_combout\);

-- Location: LCCOMB_X32_Y33_N0
\ReadState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState~12_combout\ = ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\ReadState.RD_FIFO~q\)) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ((\ReadState.RD_WAIT~q\)))) # (!\rec_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datab => \ReadState.RD_FIFO~q\,
	datac => \ReadState.RD_WAIT~q\,
	datad => \rec_clk_en~q\,
	combout => \ReadState~12_combout\);

-- Location: LCCOMB_X32_Y33_N4
\ReadState.RD_WAIT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_WAIT~1_combout\ = (\ReadState.RD_WAIT~0_combout\) # ((\ReadState.RD_WAIT~q\ & \ReadState~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_WAIT~0_combout\,
	datac => \ReadState.RD_WAIT~q\,
	datad => \ReadState~12_combout\,
	combout => \ReadState.RD_WAIT~1_combout\);

-- Location: LCCOMB_X32_Y33_N30
\ReadState.RD_UPDATE_FIFO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_UPDATE_FIFO~0_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\rec_clk_en~q\ & ((\ReadState.RD_WAIT~q\) # (!\ReadState.RD_UPDATE_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datab => \rec_clk_en~q\,
	datac => \ReadState.RD_WAIT~q\,
	datad => \ReadState.RD_UPDATE_FIFO~q\,
	combout => \ReadState.RD_UPDATE_FIFO~0_combout\);

-- Location: LCCOMB_X32_Y33_N28
\ReadState.RD_UPDATE_FIFO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_UPDATE_FIFO~1_combout\ = (\ReadState.RD_UPDATE_FIFO~0_combout\ & (((\ReadState.RD_UPDATE_FIFO~q\ & \ReadState~12_combout\)) # (!\ReadState.RD_FIFO~q\))) # (!\ReadState.RD_UPDATE_FIFO~0_combout\ & (((\ReadState.RD_UPDATE_FIFO~q\ & 
-- \ReadState~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadState.RD_UPDATE_FIFO~0_combout\,
	datab => \ReadState.RD_FIFO~q\,
	datac => \ReadState.RD_UPDATE_FIFO~q\,
	datad => \ReadState~12_combout\,
	combout => \ReadState.RD_UPDATE_FIFO~1_combout\);

-- Location: LCCOMB_X32_Y33_N12
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & 
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X32_Y33_N10
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & 
-- (\fifo_wr_en~q\ & \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	datac => \fifo_wr_en~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X32_Y33_N16
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCCOMB_X32_Y33_N2
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ = (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\);

-- Location: LCCOMB_X32_Y33_N20
\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\ = (\rec_clk_en~q\ & (!\fifo_rd_en~q\ & ((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\)))) # (!\rec_clk_en~q\ & (((\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_clk_en~q\,
	datab => \fifo_rd_en~q\,
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	datad => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\,
	combout => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\);

-- Location: LCCOMB_X34_Y33_N30
\WriteState.WR_FIFO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WriteState.WR_FIFO~4_combout\ = (\WriteState.WR_WAIT~q\ & (((\Selector25~4_combout\) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9))))) # (!\WriteState.WR_WAIT~q\ & 
-- (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & (\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_WAIT~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datac => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datad => \Selector25~4_combout\,
	combout => \WriteState.WR_FIFO~4_combout\);

-- Location: LCCOMB_X35_Y33_N8
\Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\WriteState.RESET~q\ & (!\Selector24~0_combout\ & (!\WriteState.WR_UPDATE_BRAM~q\ & \Selector24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.RESET~q\,
	datab => \Selector24~0_combout\,
	datac => \WriteState.WR_UPDATE_BRAM~q\,
	datad => \Selector24~3_combout\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X35_Y33_N4
\Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = ((!\WriteState.WR_WAIT~q\ & (\loaded~input_o\ & \WriteState.LOAD_BRAM~q\))) # (!\Selector24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_WAIT~q\,
	datab => \loaded~input_o\,
	datac => \WriteState.LOAD_BRAM~q\,
	datad => \Selector24~1_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X35_Y33_N10
\Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\Selector24~2_combout\) # ((\WriteState.WR_WAIT~q\ & ((\Selector25~4_combout\) # (!\queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WriteState.WR_WAIT~q\,
	datab => \queue|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \Selector24~2_combout\,
	datad => \Selector25~4_combout\,
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X32_Y33_N14
\ReadState.RD_FIFO~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RD_FIFO~feeder_combout\ = \Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector43~0_combout\,
	combout => \ReadState.RD_FIFO~feeder_combout\);

-- Location: LCCOMB_X37_Y33_N8
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

-- Location: LCCOMB_X30_Y33_N16
\ReadState.RESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ReadState.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ReadState.RESET~feeder_combout\);

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOIBUF_X25_Y34_N1
\loaded~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loaded,
	o => \loaded~input_o\);

-- Location: LCCOMB_X35_Y33_N0
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

-- Location: FF_X35_Y33_N1
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

-- Location: IOIBUF_X53_Y11_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\load_wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_wr_en,
	o => \load_wr_en~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\load_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(0),
	o => \load_data[0]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\load_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(1),
	o => \load_data[1]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\load_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(2),
	o => \load_data[2]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\load_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(3),
	o => \load_data[3]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\load_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(4),
	o => \load_data[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\load_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(5),
	o => \load_data[5]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\load_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(6),
	o => \load_data[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\load_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(7),
	o => \load_data[7]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\load_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(0),
	o => \load_address[0]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\load_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(1),
	o => \load_address[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\load_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(2),
	o => \load_address[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\load_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(3),
	o => \load_address[3]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\load_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(4),
	o => \load_address[4]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\load_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(5),
	o => \load_address[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\load_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(6),
	o => \load_address[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\load_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(7),
	o => \load_address[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\load_address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(8),
	o => \load_address[8]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\load_address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_address(9),
	o => \load_address[9]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
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



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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/30/2017 23:12:56"

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

ENTITY 	stopwatch IS
    PORT (
	clk : IN std_logic;
	key_reset : IN std_logic;
	key_start_pause : IN std_logic;
	key_display_stop : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic
	);
END stopwatch;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led0	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- key_display_stop	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_start_pause	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_reset	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch IS
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
SIGNAL ww_key_reset : std_logic;
SIGNAL ww_key_start_pause : std_logic;
SIGNAL ww_key_display_stop : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \Add11~48_combout\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Add11~61\ : std_logic;
SIGNAL \Add11~62_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \counter_display~1_combout\ : std_logic;
SIGNAL \counter_display~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \key_start_pause~combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \counter_display~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \counter_display~3_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \counter_display~5_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \counter_display~6_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \counter_display~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \start_1_time~regout\ : std_logic;
SIGNAL \start_2_time~feeder_combout\ : std_logic;
SIGNAL \start_2_time~regout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~regout\ : std_logic;
SIGNAL \counter_work~regout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \counter_50M~0_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \counter_50M~1_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \counter_50M~2_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \counter_50M~3_combout\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \counter_50M~5_combout\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add11~41\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~53\ : std_logic;
SIGNAL \Add11~54_combout\ : std_logic;
SIGNAL \Add11~55\ : std_logic;
SIGNAL \Add11~57\ : std_logic;
SIGNAL \Add11~58_combout\ : std_logic;
SIGNAL \Add11~59\ : std_logic;
SIGNAL \Add11~60_combout\ : std_logic;
SIGNAL \Add11~56_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add11~36_combout\ : std_logic;
SIGNAL \counter_50M~6_combout\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \counter_50M~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add11~42_combout\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \msecond_counter_low~0_combout\ : std_logic;
SIGNAL \key_reset~combout\ : std_logic;
SIGNAL \reset_1_time~regout\ : std_logic;
SIGNAL \reset_2_time~feeder_combout\ : std_logic;
SIGNAL \reset_2_time~regout\ : std_logic;
SIGNAL \reset_time_1~0_combout\ : std_logic;
SIGNAL \reset_time_1~regout\ : std_logic;
SIGNAL \reset_time_2~regout\ : std_logic;
SIGNAL \always9~0_combout\ : std_logic;
SIGNAL \msecond_counter_low[0]~1_combout\ : std_logic;
SIGNAL \key_display_stop~combout\ : std_logic;
SIGNAL \display_1_time~regout\ : std_logic;
SIGNAL \display_2_time~regout\ : std_logic;
SIGNAL \display~0_combout\ : std_logic;
SIGNAL \display~regout\ : std_logic;
SIGNAL \display_work~feeder_combout\ : std_logic;
SIGNAL \display_work~regout\ : std_logic;
SIGNAL \msecond_counter_low[0]~2_combout\ : std_logic;
SIGNAL \msecond_counter_low~3_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \msecond_counter_low~4_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \msecond_counter_low~5_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \msecond_counter_high[0]~5_combout\ : std_logic;
SIGNAL \msecond_counter_high~6_combout\ : std_logic;
SIGNAL \msecond_counter_high[0]~8_combout\ : std_logic;
SIGNAL \msecond_counter_high~9_combout\ : std_logic;
SIGNAL \msecond_counter_high~7_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \msecond_counter_high~4_combout\ : std_logic;
SIGNAL \msecond_display_high[2]~feeder_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \second_counter_low[0]~2_combout\ : std_logic;
SIGNAL \second_counter_low~3_combout\ : std_logic;
SIGNAL \second_counter_low[0]~4_combout\ : std_logic;
SIGNAL \second_counter_low~5_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \second_counter_low~6_combout\ : std_logic;
SIGNAL \second_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \second_display_low[1]~feeder_combout\ : std_logic;
SIGNAL \second_counter_low~7_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \hour_counter_high[0]~2_combout\ : std_logic;
SIGNAL \hour_counter_high[0]~3_combout\ : std_logic;
SIGNAL \second_counter_high~4_combout\ : std_logic;
SIGNAL \second_counter_high[0]~6_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \second_counter_high~2_combout\ : std_logic;
SIGNAL \second_counter_high~3_combout\ : std_logic;
SIGNAL \second_display_high[1]~feeder_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \second_counter_high~5_combout\ : std_logic;
SIGNAL \second_display_high[3]~feeder_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \minute_counter_low~2_combout\ : std_logic;
SIGNAL \minute_counter_low[0]~7_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \minute_counter_low[0]~3_combout\ : std_logic;
SIGNAL \minute_counter_low~4_combout\ : std_logic;
SIGNAL \minute_counter_low~5_combout\ : std_logic;
SIGNAL \minute_display_low[1]~feeder_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \minute_counter_low~6_combout\ : std_logic;
SIGNAL \minute_display_low[0]~feeder_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \minute_counter_high~7_combout\ : std_logic;
SIGNAL \minute_counter_high[0]~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \minute_counter_high[0]~2_combout\ : std_logic;
SIGNAL \minute_counter_high~3_combout\ : std_logic;
SIGNAL \minute_counter_high~5_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \minute_counter_high~6_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \hour_counter_high[0]~4_combout\ : std_logic;
SIGNAL \hour_counter_low~2_combout\ : std_logic;
SIGNAL \hour_counter_low[0]~6_combout\ : std_logic;
SIGNAL \hour_counter_low~3_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \hour_counter_low~4_combout\ : std_logic;
SIGNAL \hour_display_low[2]~feeder_combout\ : std_logic;
SIGNAL \hour_display_low[1]~feeder_combout\ : std_logic;
SIGNAL \hour_display_low[0]~feeder_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \hour_counter_low~5_combout\ : std_logic;
SIGNAL \hour_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \hour_counter_high~6_combout\ : std_logic;
SIGNAL \hour_counter_high[0]~9_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \hour_counter_high~7_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \hour_counter_high~8_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \hour_counter_high~5_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL second_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_display : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_50M : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_key_reset~combout\ : std_logic;
SIGNAL \ALT_INV_key_start_pause~combout\ : std_logic;
SIGNAL \ALT_INV_key_display_stop~combout\ : std_logic;
SIGNAL \ALT_INV_display_work~regout\ : std_logic;
SIGNAL \LED8_hour_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_key_reset <= key_reset;
ww_key_start_pause <= key_start_pause;
ww_key_display_stop <= key_display_stop;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_key_reset~combout\ <= NOT \key_reset~combout\;
\ALT_INV_key_start_pause~combout\ <= NOT \key_start_pause~combout\;
\ALT_INV_key_display_stop~combout\ <= NOT \key_display_stop~combout\;
\ALT_INV_display_work~regout\ <= NOT \display_work~regout\;
\LED8_hour_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_hour_display_high|WideOr0~0_combout\;
\LED8_hour_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_hour_display_low|WideOr0~0_combout\;
\LED8_minute_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_minute_display_high|WideOr0~0_combout\;
\LED8_minute_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_minute_display_low|WideOr0~0_combout\;
\LED8_second_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_second_display_high|WideOr0~0_combout\;
\LED8_second_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_second_display_low|WideOr0~0_combout\;
\LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_msecond_display_high|WideOr0~0_combout\;
\LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_msecond_display_low|WideOr0~0_combout\;

-- Location: LCCOMB_X28_Y13_N10
\Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (counter_50M(5) & (!\Add11~9\)) # (!counter_50M(5) & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!counter_50M(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X28_Y13_N20
\Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (counter_50M(10) & (\Add11~19\ $ (GND))) # (!counter_50M(10) & (!\Add11~19\ & VCC))
-- \Add11~21\ = CARRY((counter_50M(10) & !\Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(10),
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X28_Y13_N30
\Add11~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (counter_50M(15) & (!\Add11~29\)) # (!counter_50M(15) & ((\Add11~29\) # (GND)))
-- \Add11~31\ = CARRY((!\Add11~29\) # (!counter_50M(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(15),
	datad => VCC,
	cin => \Add11~29\,
	combout => \Add11~30_combout\,
	cout => \Add11~31\);

-- Location: LCCOMB_X28_Y12_N6
\Add11~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (counter_50M(19) & (!\Add11~37\)) # (!counter_50M(19) & ((\Add11~37\) # (GND)))
-- \Add11~39\ = CARRY((!\Add11~37\) # (!counter_50M(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(19),
	datad => VCC,
	cin => \Add11~37\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X28_Y12_N16
\Add11~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~48_combout\ = (counter_50M(24) & (\Add11~47\ $ (GND))) # (!counter_50M(24) & (!\Add11~47\ & VCC))
-- \Add11~49\ = CARRY((counter_50M(24) & !\Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(24),
	datad => VCC,
	cin => \Add11~47\,
	combout => \Add11~48_combout\,
	cout => \Add11~49\);

-- Location: LCCOMB_X28_Y12_N20
\Add11~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = (counter_50M(26) & (\Add11~51\ $ (GND))) # (!counter_50M(26) & (!\Add11~51\ & VCC))
-- \Add11~53\ = CARRY((counter_50M(26) & !\Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(26),
	datad => VCC,
	cin => \Add11~51\,
	combout => \Add11~52_combout\,
	cout => \Add11~53\);

-- Location: LCCOMB_X28_Y12_N28
\Add11~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~60_combout\ = (counter_50M(30) & (\Add11~59\ $ (GND))) # (!counter_50M(30) & (!\Add11~59\ & VCC))
-- \Add11~61\ = CARRY((counter_50M(30) & !\Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(30),
	datad => VCC,
	cin => \Add11~59\,
	combout => \Add11~60_combout\,
	cout => \Add11~61\);

-- Location: LCCOMB_X28_Y12_N30
\Add11~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~62_combout\ = \Add11~61\ $ (counter_50M(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_50M(31),
	cin => \Add11~61\,
	combout => \Add11~62_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter_display(3) & (!\Add1~5\)) # (!counter_display(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y18_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter_display(5) & (!\Add1~9\)) # (!counter_display(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y18_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter_display(8) & (\Add1~15\ $ (GND))) # (!counter_display(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter_display(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X24_Y18_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter_display(9) & (!\Add1~17\)) # (!counter_display(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X24_Y18_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter_display(10) & (\Add1~19\ $ (GND))) # (!counter_display(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter_display(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y18_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter_display(12) & (\Add1~23\ $ (GND))) # (!counter_display(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter_display(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X24_Y18_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter_display(14) & (\Add1~27\ $ (GND))) # (!counter_display(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter_display(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y17_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter_display(22) & (\Add1~43\ $ (GND))) # (!counter_display(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter_display(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X24_Y17_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter_display(24) & (\Add1~47\ $ (GND))) # (!counter_display(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter_display(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCFF_X28_Y13_N21
\counter_50M[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~20_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(10));

-- Location: LCCOMB_X29_Y13_N8
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ((counter_50M(11)) # ((counter_50M(10)) # (counter_50M(9)))) # (!counter_50M(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(8),
	datab => counter_50M(11),
	datac => counter_50M(10),
	datad => counter_50M(9),
	combout => \Equal3~2_combout\);

-- Location: LCFF_X27_Y12_N21
\counter_50M[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add11~38_combout\,
	sload => VCC,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(19));

-- Location: LCFF_X28_Y12_N17
\counter_50M[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~48_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(24));

-- Location: LCFF_X28_Y12_N21
\counter_50M[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~52_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(26));

-- Location: LCCOMB_X29_Y12_N30
\Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (counter_50M(26)) # ((counter_50M(24)) # ((counter_50M(27)) # (counter_50M(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(26),
	datab => counter_50M(24),
	datac => counter_50M(27),
	datad => counter_50M(25),
	combout => \Equal3~7_combout\);

-- Location: LCFF_X28_Y12_N31
\counter_50M[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~62_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(31));

-- Location: LCCOMB_X27_Y12_N20
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (msecond_counter_high(0) & msecond_counter_high(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datad => msecond_counter_high(1),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X27_Y12_N24
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = hour_counter_low(3) $ (((hour_counter_low(2) & (hour_counter_low(0) & hour_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(3),
	datab => hour_counter_low(2),
	datac => hour_counter_low(0),
	datad => hour_counter_low(1),
	combout => \Add4~1_combout\);

-- Location: LCFF_X24_Y18_N7
\counter_display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(3));

-- Location: LCCOMB_X23_Y18_N12
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter_display(2) & (!counter_display(0) & (!counter_display(1) & !counter_display(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(2),
	datab => counter_display(0),
	datac => counter_display(1),
	datad => counter_display(3),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X24_Y18_N11
\counter_display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(5));

-- Location: LCCOMB_X23_Y18_N0
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (counter_display(6) & (!counter_display(5) & (!counter_display(7) & !counter_display(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(6),
	datab => counter_display(5),
	datac => counter_display(7),
	datad => counter_display(4),
	combout => \Equal2~1_combout\);

-- Location: LCFF_X23_Y18_N15
\counter_display[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(9));

-- Location: LCFF_X24_Y18_N17
\counter_display[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(8));

-- Location: LCFF_X24_Y18_N21
\counter_display[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(10));

-- Location: LCCOMB_X23_Y18_N24
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!counter_display(8) & (counter_display(9) & (!counter_display(10) & !counter_display(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(8),
	datab => counter_display(9),
	datac => counter_display(10),
	datad => counter_display(11),
	combout => \Equal2~2_combout\);

-- Location: LCFF_X23_Y18_N31
\counter_display[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(14));

-- Location: LCFF_X24_Y18_N25
\counter_display[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(12));

-- Location: LCCOMB_X23_Y18_N20
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (counter_display(14) & (!counter_display(15) & (!counter_display(13) & !counter_display(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(14),
	datab => counter_display(15),
	datac => counter_display(13),
	datad => counter_display(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCFF_X24_Y17_N13
\counter_display[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(22));

-- Location: LCFF_X24_Y17_N17
\counter_display[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(24));

-- Location: LCCOMB_X23_Y18_N14
\counter_display~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~1_combout\ = (!\Equal2~10_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add1~18_combout\,
	combout => \counter_display~1_combout\);

-- Location: LCCOMB_X23_Y18_N30
\counter_display~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~2_combout\ = (!\Equal2~10_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add1~28_combout\,
	combout => \counter_display~2_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X28_Y13_N0
\Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = counter_50M(0) $ (VCC)
-- \Add11~1\ = CARRY(counter_50M(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_start_pause~I\ : cycloneii_io
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
	padio => ww_key_start_pause,
	combout => \key_start_pause~combout\);

-- Location: LCCOMB_X24_Y18_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter_display(0) $ (VCC)
-- \Add1~1\ = CARRY(counter_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_display(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCFF_X24_Y18_N1
\counter_display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(0));

-- Location: LCCOMB_X24_Y18_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter_display(1) & (!\Add1~1\)) # (!counter_display(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCFF_X24_Y18_N3
\counter_display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(1));

-- Location: LCCOMB_X24_Y18_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter_display(2) & (\Add1~3\ $ (GND))) # (!counter_display(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter_display(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X24_Y18_N5
\counter_display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(2));

-- Location: LCCOMB_X24_Y18_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter_display(4) & (\Add1~7\ $ (GND))) # (!counter_display(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter_display(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCFF_X24_Y18_N9
\counter_display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(4));

-- Location: LCCOMB_X24_Y18_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter_display(6) & (\Add1~11\ $ (GND))) # (!counter_display(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter_display(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y18_N6
\counter_display~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~0_combout\ = (!\Equal2~10_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \Add1~12_combout\,
	combout => \counter_display~0_combout\);

-- Location: LCFF_X23_Y18_N7
\counter_display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(6));

-- Location: LCCOMB_X24_Y18_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter_display(7) & (!\Add1~13\)) # (!counter_display(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCFF_X24_Y18_N15
\counter_display[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(7));

-- Location: LCCOMB_X24_Y18_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter_display(11) & (!\Add1~21\)) # (!counter_display(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCFF_X24_Y18_N23
\counter_display[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(11));

-- Location: LCCOMB_X24_Y18_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter_display(13) & (!\Add1~25\)) # (!counter_display(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCFF_X24_Y18_N27
\counter_display[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(13));

-- Location: LCCOMB_X24_Y18_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter_display(15) & (!\Add1~29\)) # (!counter_display(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCFF_X24_Y18_N31
\counter_display[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(15));

-- Location: LCCOMB_X24_Y17_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter_display(16) & (\Add1~31\ $ (GND))) # (!counter_display(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter_display(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X25_Y17_N20
\counter_display~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~3_combout\ = (!\Equal2~10_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add1~32_combout\,
	combout => \counter_display~3_combout\);

-- Location: LCFF_X25_Y17_N21
\counter_display[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(16));

-- Location: LCCOMB_X24_Y17_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter_display(17) & (!\Add1~33\)) # (!counter_display(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter_display(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X24_Y17_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter_display(18) & (\Add1~35\ $ (GND))) # (!counter_display(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter_display(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X25_Y17_N12
\counter_display~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~5_combout\ = (!\Equal2~10_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add1~36_combout\,
	combout => \counter_display~5_combout\);

-- Location: LCFF_X25_Y17_N13
\counter_display[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(18));

-- Location: LCCOMB_X24_Y17_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter_display(19) & (!\Add1~37\)) # (!counter_display(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter_display(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X25_Y17_N14
\counter_display~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~6_combout\ = (!\Equal2~10_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~10_combout\,
	datac => \Add1~38_combout\,
	combout => \counter_display~6_combout\);

-- Location: LCFF_X25_Y17_N15
\counter_display[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(19));

-- Location: LCCOMB_X24_Y17_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter_display(20) & (\Add1~39\ $ (GND))) # (!counter_display(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter_display(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCFF_X24_Y17_N9
\counter_display[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(20));

-- Location: LCCOMB_X24_Y17_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter_display(21) & (!\Add1~41\)) # (!counter_display(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter_display(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X24_Y17_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter_display(23) & (!\Add1~45\)) # (!counter_display(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter_display(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCFF_X24_Y17_N15
\counter_display[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(23));

-- Location: LCFF_X24_Y17_N11
\counter_display[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(21));

-- Location: LCCOMB_X23_Y17_N0
\Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!counter_display(22) & (!counter_display(23) & (!counter_display(21) & !counter_display(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(22),
	datab => counter_display(23),
	datac => counter_display(21),
	datad => counter_display(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X25_Y17_N6
\counter_display~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display~4_combout\ = (!\Equal2~10_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add1~34_combout\,
	combout => \counter_display~4_combout\);

-- Location: LCFF_X25_Y17_N7
\counter_display[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(17));

-- Location: LCCOMB_X25_Y17_N0
\Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (counter_display(18) & (counter_display(19) & (counter_display(16) & counter_display(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(18),
	datab => counter_display(19),
	datac => counter_display(16),
	datad => counter_display(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counter_display(25) & (!\Add1~49\)) # (!counter_display(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counter_display(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCFF_X24_Y17_N19
\counter_display[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(25));

-- Location: LCCOMB_X24_Y17_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counter_display(26) & (\Add1~51\ $ (GND))) # (!counter_display(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counter_display(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X24_Y17_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counter_display(27) & (!\Add1~53\)) # (!counter_display(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counter_display(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCFF_X24_Y17_N23
\counter_display[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(27));

-- Location: LCFF_X24_Y17_N21
\counter_display[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(26));

-- Location: LCCOMB_X23_Y17_N14
\Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!counter_display(24) & (!counter_display(25) & (!counter_display(27) & !counter_display(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(24),
	datab => counter_display(25),
	datac => counter_display(27),
	datad => counter_display(26),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counter_display(28) & (\Add1~55\ $ (GND))) # (!counter_display(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counter_display(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCFF_X24_Y17_N25
\counter_display[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(28));

-- Location: LCCOMB_X24_Y17_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counter_display(29) & (!\Add1~57\)) # (!counter_display(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counter_display(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCFF_X24_Y17_N27
\counter_display[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(29));

-- Location: LCCOMB_X24_Y17_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counter_display(30) & (\Add1~59\ $ (GND))) # (!counter_display(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counter_display(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCFF_X24_Y17_N29
\counter_display[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(30));

-- Location: LCCOMB_X24_Y17_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (counter_display(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_display(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCFF_X24_Y17_N31
\counter_display[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(31));

-- Location: LCCOMB_X23_Y17_N12
\Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!counter_display(29) & (!counter_display(28) & (!counter_display(31) & !counter_display(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(29),
	datab => counter_display(28),
	datac => counter_display(31),
	datad => counter_display(30),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X23_Y17_N10
\Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~7_combout\ & \Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & (\Equal2~6_combout\ & (\Equal2~5_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCFF_X24_Y17_N5
start_1_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \key_start_pause~combout\,
	sload => VCC,
	ena => \Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_1_time~regout\);

-- Location: LCCOMB_X23_Y17_N2
\start_2_time~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_2_time~feeder_combout\ = \start_1_time~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start_1_time~regout\,
	combout => \start_2_time~feeder_combout\);

-- Location: LCFF_X23_Y17_N3
start_2_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start_2_time~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_2_time~regout\);

-- Location: LCCOMB_X23_Y17_N18
\start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = \start~regout\ $ (((\start_2_time~regout\ & !\start_1_time~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_2_time~regout\,
	datac => \start~regout\,
	datad => \start_1_time~regout\,
	combout => \start~0_combout\);

-- Location: LCFF_X23_Y17_N19
start : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start~regout\);

-- Location: LCFF_X30_Y12_N21
counter_work : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \start~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_work~regout\);

-- Location: LCFF_X28_Y13_N1
\counter_50M[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~0_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(0));

-- Location: LCCOMB_X28_Y13_N2
\Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (counter_50M(1) & (!\Add11~1\)) # (!counter_50M(1) & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!counter_50M(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCFF_X28_Y13_N3
\counter_50M[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~2_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(1));

-- Location: LCCOMB_X28_Y13_N4
\Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (counter_50M(2) & (\Add11~3\ $ (GND))) # (!counter_50M(2) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((counter_50M(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCFF_X28_Y13_N5
\counter_50M[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~4_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(2));

-- Location: LCCOMB_X28_Y13_N6
\Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (counter_50M(3) & (!\Add11~5\)) # (!counter_50M(3) & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!counter_50M(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCFF_X28_Y13_N7
\counter_50M[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~6_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(3));

-- Location: LCCOMB_X29_Y13_N16
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (((!counter_50M(2)) # (!counter_50M(0))) # (!counter_50M(3))) # (!counter_50M(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(1),
	datab => counter_50M(3),
	datac => counter_50M(0),
	datad => counter_50M(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X29_Y13_N18
\counter_50M~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~0_combout\ = (\Add11~10_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~0_combout\);

-- Location: LCFF_X29_Y13_N19
\counter_50M[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~0_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(5));

-- Location: LCCOMB_X28_Y13_N8
\Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (counter_50M(4) & (\Add11~7\ $ (GND))) # (!counter_50M(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((counter_50M(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCFF_X28_Y13_N9
\counter_50M[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~8_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(4));

-- Location: LCCOMB_X28_Y13_N12
\Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (counter_50M(6) & (\Add11~11\ $ (GND))) # (!counter_50M(6) & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((counter_50M(6) & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X28_Y13_N14
\Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (counter_50M(7) & (!\Add11~13\)) # (!counter_50M(7) & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!counter_50M(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCFF_X28_Y13_N15
\counter_50M[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~14_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(7));

-- Location: LCCOMB_X28_Y13_N16
\Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (counter_50M(8) & (\Add11~15\ $ (GND))) # (!counter_50M(8) & (!\Add11~15\ & VCC))
-- \Add11~17\ = CARRY((counter_50M(8) & !\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X29_Y13_N10
\counter_50M~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~1_combout\ = (\Add11~16_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Add11~16_combout\,
	combout => \counter_50M~1_combout\);

-- Location: LCFF_X29_Y13_N11
\counter_50M[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~1_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(8));

-- Location: LCCOMB_X28_Y13_N18
\Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (counter_50M(9) & (!\Add11~17\)) # (!counter_50M(9) & ((\Add11~17\) # (GND)))
-- \Add11~19\ = CARRY((!\Add11~17\) # (!counter_50M(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCFF_X28_Y13_N19
\counter_50M[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~18_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(9));

-- Location: LCCOMB_X28_Y13_N22
\Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (counter_50M(11) & (!\Add11~21\)) # (!counter_50M(11) & ((\Add11~21\) # (GND)))
-- \Add11~23\ = CARRY((!\Add11~21\) # (!counter_50M(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(11),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCFF_X28_Y13_N23
\counter_50M[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~22_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(11));

-- Location: LCCOMB_X28_Y13_N24
\Add11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (counter_50M(12) & (\Add11~23\ $ (GND))) # (!counter_50M(12) & (!\Add11~23\ & VCC))
-- \Add11~25\ = CARRY((counter_50M(12) & !\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(12),
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCFF_X28_Y13_N25
\counter_50M[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~24_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(12));

-- Location: LCCOMB_X28_Y13_N26
\Add11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (counter_50M(13) & (!\Add11~25\)) # (!counter_50M(13) & ((\Add11~25\) # (GND)))
-- \Add11~27\ = CARRY((!\Add11~25\) # (!counter_50M(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(13),
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X29_Y13_N14
\counter_50M~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~2_combout\ = (\Add11~26_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Add11~26_combout\,
	combout => \counter_50M~2_combout\);

-- Location: LCFF_X29_Y13_N15
\counter_50M[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~2_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(13));

-- Location: LCCOMB_X28_Y13_N28
\Add11~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (counter_50M(14) & (\Add11~27\ $ (GND))) # (!counter_50M(14) & (!\Add11~27\ & VCC))
-- \Add11~29\ = CARRY((counter_50M(14) & !\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(14),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCFF_X28_Y13_N29
\counter_50M[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~28_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(14));

-- Location: LCCOMB_X29_Y13_N26
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ((counter_50M(12)) # ((counter_50M(14)) # (!counter_50M(13)))) # (!counter_50M(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(15),
	datab => counter_50M(12),
	datac => counter_50M(13),
	datad => counter_50M(14),
	combout => \Equal3~3_combout\);

-- Location: LCFF_X28_Y13_N13
\counter_50M[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~12_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(6));

-- Location: LCCOMB_X29_Y13_N12
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (counter_50M(7)) # ((counter_50M(5)) # ((counter_50M(6)) # (!counter_50M(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(7),
	datab => counter_50M(5),
	datac => counter_50M(4),
	datad => counter_50M(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X30_Y12_N28
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~2_combout\) # ((\Equal3~0_combout\) # ((\Equal3~3_combout\) # (\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X29_Y13_N20
\counter_50M~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~3_combout\ = (\Add11~30_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~30_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~3_combout\);

-- Location: LCFF_X29_Y13_N21
\counter_50M[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~3_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(15));

-- Location: LCCOMB_X28_Y12_N0
\Add11~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = (counter_50M(16) & (\Add11~31\ $ (GND))) # (!counter_50M(16) & (!\Add11~31\ & VCC))
-- \Add11~33\ = CARRY((counter_50M(16) & !\Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(16),
	datad => VCC,
	cin => \Add11~31\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X28_Y12_N2
\Add11~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (counter_50M(17) & (!\Add11~33\)) # (!counter_50M(17) & ((\Add11~33\) # (GND)))
-- \Add11~35\ = CARRY((!\Add11~33\) # (!counter_50M(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(17),
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~34_combout\,
	cout => \Add11~35\);

-- Location: LCCOMB_X27_Y12_N28
\counter_50M~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~5_combout\ = (\Add11~34_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add11~34_combout\,
	combout => \counter_50M~5_combout\);

-- Location: LCFF_X27_Y12_N29
\counter_50M[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~5_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(17));

-- Location: LCCOMB_X28_Y12_N4
\Add11~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~36_combout\ = (counter_50M(18) & (\Add11~35\ $ (GND))) # (!counter_50M(18) & (!\Add11~35\ & VCC))
-- \Add11~37\ = CARRY((counter_50M(18) & !\Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(18),
	datad => VCC,
	cin => \Add11~35\,
	combout => \Add11~36_combout\,
	cout => \Add11~37\);

-- Location: LCCOMB_X28_Y12_N8
\Add11~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (counter_50M(20) & (\Add11~39\ $ (GND))) # (!counter_50M(20) & (!\Add11~39\ & VCC))
-- \Add11~41\ = CARRY((counter_50M(20) & !\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(20),
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~40_combout\,
	cout => \Add11~41\);

-- Location: LCFF_X28_Y12_N9
\counter_50M[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~40_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(20));

-- Location: LCCOMB_X28_Y12_N10
\Add11~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~42_combout\ = (counter_50M(21) & (!\Add11~41\)) # (!counter_50M(21) & ((\Add11~41\) # (GND)))
-- \Add11~43\ = CARRY((!\Add11~41\) # (!counter_50M(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(21),
	datad => VCC,
	cin => \Add11~41\,
	combout => \Add11~42_combout\,
	cout => \Add11~43\);

-- Location: LCCOMB_X28_Y12_N12
\Add11~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (counter_50M(22) & (\Add11~43\ $ (GND))) # (!counter_50M(22) & (!\Add11~43\ & VCC))
-- \Add11~45\ = CARRY((counter_50M(22) & !\Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(22),
	datad => VCC,
	cin => \Add11~43\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X28_Y12_N14
\Add11~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (counter_50M(23) & (!\Add11~45\)) # (!counter_50M(23) & ((\Add11~45\) # (GND)))
-- \Add11~47\ = CARRY((!\Add11~45\) # (!counter_50M(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(23),
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~46_combout\,
	cout => \Add11~47\);

-- Location: LCFF_X28_Y12_N15
\counter_50M[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~46_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(23));

-- Location: LCCOMB_X28_Y12_N18
\Add11~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (counter_50M(25) & (!\Add11~49\)) # (!counter_50M(25) & ((\Add11~49\) # (GND)))
-- \Add11~51\ = CARRY((!\Add11~49\) # (!counter_50M(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(25),
	datad => VCC,
	cin => \Add11~49\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCFF_X28_Y12_N19
\counter_50M[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~50_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(25));

-- Location: LCCOMB_X28_Y12_N22
\Add11~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~54_combout\ = (counter_50M(27) & (!\Add11~53\)) # (!counter_50M(27) & ((\Add11~53\) # (GND)))
-- \Add11~55\ = CARRY((!\Add11~53\) # (!counter_50M(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(27),
	datad => VCC,
	cin => \Add11~53\,
	combout => \Add11~54_combout\,
	cout => \Add11~55\);

-- Location: LCFF_X28_Y12_N23
\counter_50M[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~54_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(27));

-- Location: LCCOMB_X28_Y12_N24
\Add11~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~56_combout\ = (counter_50M(28) & (\Add11~55\ $ (GND))) # (!counter_50M(28) & (!\Add11~55\ & VCC))
-- \Add11~57\ = CARRY((counter_50M(28) & !\Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(28),
	datad => VCC,
	cin => \Add11~55\,
	combout => \Add11~56_combout\,
	cout => \Add11~57\);

-- Location: LCCOMB_X28_Y12_N26
\Add11~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~58_combout\ = (counter_50M(29) & (!\Add11~57\)) # (!counter_50M(29) & ((\Add11~57\) # (GND)))
-- \Add11~59\ = CARRY((!\Add11~57\) # (!counter_50M(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(29),
	datad => VCC,
	cin => \Add11~57\,
	combout => \Add11~58_combout\,
	cout => \Add11~59\);

-- Location: LCFF_X28_Y12_N27
\counter_50M[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~58_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(29));

-- Location: LCFF_X28_Y12_N29
\counter_50M[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~60_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(30));

-- Location: LCFF_X28_Y12_N25
\counter_50M[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~56_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(28));

-- Location: LCCOMB_X29_Y12_N28
\Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (counter_50M(31)) # ((counter_50M(29)) # ((counter_50M(30)) # (counter_50M(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(31),
	datab => counter_50M(29),
	datac => counter_50M(30),
	datad => counter_50M(28),
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X27_Y12_N14
\counter_50M~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~6_combout\ = (\Add11~36_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add11~36_combout\,
	combout => \counter_50M~6_combout\);

-- Location: LCFF_X27_Y12_N15
\counter_50M[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~6_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(18));

-- Location: LCCOMB_X27_Y12_N30
\counter_50M~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~4_combout\ = (\Add11~32_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datac => \Add11~32_combout\,
	datad => \Equal3~9_combout\,
	combout => \counter_50M~4_combout\);

-- Location: LCFF_X27_Y12_N31
\counter_50M[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~4_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(16));

-- Location: LCCOMB_X27_Y12_N8
\Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (counter_50M(19)) # (((!counter_50M(16)) # (!counter_50M(18))) # (!counter_50M(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(19),
	datab => counter_50M(17),
	datac => counter_50M(18),
	datad => counter_50M(16),
	combout => \Equal3~5_combout\);

-- Location: LCFF_X28_Y12_N11
\counter_50M[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~42_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(21));

-- Location: LCFF_X28_Y12_N13
\counter_50M[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add11~44_combout\,
	ena => \counter_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(22));

-- Location: LCCOMB_X29_Y12_N16
\Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (counter_50M(23)) # ((counter_50M(21)) # ((counter_50M(22)) # (counter_50M(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(23),
	datab => counter_50M(21),
	datac => counter_50M(22),
	datad => counter_50M(20),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X30_Y12_N14
\Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (\Equal3~7_combout\) # ((\Equal3~8_combout\) # ((\Equal3~5_combout\) # (\Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~8_combout\,
	datac => \Equal3~5_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X29_Y13_N0
\msecond_counter_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~0_combout\ = (\counter_work~regout\ & (!\Equal3~9_combout\ & (!msecond_counter_low(0) & !\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_work~regout\,
	datab => \Equal3~9_combout\,
	datac => msecond_counter_low(0),
	datad => \Equal3~4_combout\,
	combout => \msecond_counter_low~0_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_reset~I\ : cycloneii_io
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
	padio => ww_key_reset,
	combout => \key_reset~combout\);

-- Location: LCFF_X24_Y17_N3
reset_1_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \key_reset~combout\,
	sload => VCC,
	ena => \Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_1_time~regout\);

-- Location: LCCOMB_X30_Y13_N2
\reset_2_time~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_2_time~feeder_combout\ = \reset_1_time~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_1_time~regout\,
	combout => \reset_2_time~feeder_combout\);

-- Location: LCFF_X30_Y13_N3
reset_2_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_2_time~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_2_time~regout\);

-- Location: LCCOMB_X30_Y13_N16
\reset_time_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_time_1~0_combout\ = \reset_time_1~regout\ $ (((!\reset_1_time~regout\ & (!\counter_work~regout\ & \reset_2_time~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_1_time~regout\,
	datab => \counter_work~regout\,
	datac => \reset_time_1~regout\,
	datad => \reset_2_time~regout\,
	combout => \reset_time_1~0_combout\);

-- Location: LCFF_X30_Y13_N17
reset_time_1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_time_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_time_1~regout\);

-- Location: LCFF_X30_Y12_N3
reset_time_2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \reset_time_1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_time_2~regout\);

-- Location: LCCOMB_X30_Y12_N20
\always9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always9~0_combout\ = \reset_time_1~regout\ $ (\reset_time_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_time_1~regout\,
	datad => \reset_time_2~regout\,
	combout => \always9~0_combout\);

-- Location: LCCOMB_X30_Y12_N12
\msecond_counter_low[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low[0]~1_combout\ = (\always9~0_combout\) # ((\counter_work~regout\ & (!\Equal3~9_combout\ & !\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_work~regout\,
	datab => \always9~0_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \msecond_counter_low[0]~1_combout\);

-- Location: LCFF_X29_Y13_N1
\msecond_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~0_combout\,
	ena => \msecond_counter_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(0));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_display_stop~I\ : cycloneii_io
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
	padio => ww_key_display_stop,
	combout => \key_display_stop~combout\);

-- Location: LCFF_X24_Y17_N1
display_1_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \key_display_stop~combout\,
	sload => VCC,
	ena => \Equal2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_1_time~regout\);

-- Location: LCFF_X23_Y17_N29
display_2_time : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \display_1_time~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_2_time~regout\);

-- Location: LCCOMB_X23_Y17_N8
\display~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~0_combout\ = \display~regout\ $ (((!\display_1_time~regout\ & \display_2_time~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_1_time~regout\,
	datac => \display~regout\,
	datad => \display_2_time~regout\,
	combout => \display~0_combout\);

-- Location: LCFF_X23_Y17_N9
display : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display~regout\);

-- Location: LCCOMB_X23_Y13_N16
\display_work~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_work~feeder_combout\ = \display~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display~regout\,
	combout => \display_work~feeder_combout\);

-- Location: LCFF_X23_Y13_N17
display_work : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display_work~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_work~regout\);

-- Location: LCFF_X28_Y13_N17
\msecond_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(0));

-- Location: LCCOMB_X30_Y12_N26
\msecond_counter_low[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low[0]~2_combout\ = (\counter_work~regout\ & (!\Equal3~9_combout\ & !\Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_work~regout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \msecond_counter_low[0]~2_combout\);

-- Location: LCCOMB_X29_Y13_N22
\msecond_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~3_combout\ = (\Equal4~0_combout\ & (\msecond_counter_low[0]~2_combout\ & (msecond_counter_low(0) $ (msecond_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => msecond_counter_low(0),
	datac => msecond_counter_low(1),
	datad => \msecond_counter_low[0]~2_combout\,
	combout => \msecond_counter_low~3_combout\);

-- Location: LCFF_X29_Y13_N23
\msecond_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~3_combout\,
	ena => \msecond_counter_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(1));

-- Location: LCFF_X28_Y12_N1
\msecond_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(1),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(1));

-- Location: LCCOMB_X29_Y13_N30
\Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = msecond_counter_low(2) $ (((msecond_counter_low(1) & msecond_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_low(1),
	datac => msecond_counter_low(2),
	datad => msecond_counter_low(0),
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X29_Y13_N4
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((msecond_counter_low(1)) # ((msecond_counter_low(2)) # (!msecond_counter_low(0)))) # (!msecond_counter_low(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(3),
	datab => msecond_counter_low(1),
	datac => msecond_counter_low(2),
	datad => msecond_counter_low(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X29_Y13_N24
\msecond_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~4_combout\ = (\Add10~0_combout\ & (\Equal4~0_combout\ & \msecond_counter_low[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \msecond_counter_low[0]~2_combout\,
	combout => \msecond_counter_low~4_combout\);

-- Location: LCFF_X29_Y13_N25
\msecond_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~4_combout\,
	ena => \msecond_counter_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(2));

-- Location: LCCOMB_X29_Y13_N28
\Add10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = msecond_counter_low(3) $ (((msecond_counter_low(1) & (msecond_counter_low(2) & msecond_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(3),
	datab => msecond_counter_low(1),
	datac => msecond_counter_low(2),
	datad => msecond_counter_low(0),
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X29_Y13_N6
\msecond_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~5_combout\ = (\Add10~1_combout\ & (\Equal4~0_combout\ & \msecond_counter_low[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \msecond_counter_low[0]~2_combout\,
	combout => \msecond_counter_low~5_combout\);

-- Location: LCFF_X29_Y13_N7
\msecond_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~5_combout\,
	ena => \msecond_counter_low[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(3));

-- Location: LCFF_X28_Y13_N31
\msecond_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(3),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(3));

-- Location: LCFF_X28_Y13_N11
\msecond_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(2));

-- Location: LCCOMB_X28_Y8_N0
\LED8_msecond_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr6~0_combout\ = (msecond_display_low(1) & (((msecond_display_low(3))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((msecond_display_low(0) & !msecond_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\LED8_msecond_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr5~0_combout\ = (msecond_display_low(3) & (((msecond_display_low(1)) # (msecond_display_low(2))))) # (!msecond_display_low(3) & (msecond_display_low(2) & (msecond_display_low(0) $ (msecond_display_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y8_N24
\LED8_msecond_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr4~0_combout\ = (msecond_display_low(2) & (((msecond_display_low(3))))) # (!msecond_display_low(2) & (msecond_display_low(1) & ((msecond_display_low(3)) # (!msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y8_N22
\LED8_msecond_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr3~0_combout\ = (msecond_display_low(1) & ((msecond_display_low(3)) # ((msecond_display_low(0) & msecond_display_low(2))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((msecond_display_low(0) & 
-- !msecond_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y8_N20
\LED8_msecond_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr2~0_combout\ = (msecond_display_low(0)) # ((msecond_display_low(1) & (msecond_display_low(3))) # (!msecond_display_low(1) & ((msecond_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y8_N10
\LED8_msecond_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr1~0_combout\ = (msecond_display_low(0) & ((msecond_display_low(1)) # (msecond_display_low(3) $ (!msecond_display_low(2))))) # (!msecond_display_low(0) & ((msecond_display_low(2) & ((msecond_display_low(3)))) # 
-- (!msecond_display_low(2) & (msecond_display_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y8_N12
\LED8_msecond_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr0~0_combout\ = (msecond_display_low(1) & (!msecond_display_low(3) & ((!msecond_display_low(2)) # (!msecond_display_low(0))))) # (!msecond_display_low(1) & ((msecond_display_low(3) $ (msecond_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(0),
	datab => msecond_display_low(1),
	datac => msecond_display_low(3),
	datad => msecond_display_low(2),
	combout => \LED8_msecond_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y12_N20
\msecond_counter_high[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[0]~5_combout\ = (\Equal5~0_combout\ & (\msecond_counter_low[0]~2_combout\ & !\Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \msecond_counter_low[0]~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \msecond_counter_high[0]~5_combout\);

-- Location: LCCOMB_X29_Y12_N26
\msecond_counter_high~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~6_combout\ = (\msecond_counter_high[0]~5_combout\ & (msecond_counter_high(0) $ (msecond_counter_high(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datac => msecond_counter_high(1),
	datad => \msecond_counter_high[0]~5_combout\,
	combout => \msecond_counter_high~6_combout\);

-- Location: LCCOMB_X29_Y12_N14
\msecond_counter_high[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[0]~8_combout\ = (\Equal4~0_combout\ & (\reset_time_1~regout\ $ (((\reset_time_2~regout\))))) # (!\Equal4~0_combout\ & ((\msecond_counter_low[0]~2_combout\) # (\reset_time_1~regout\ $ (\reset_time_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_time_1~regout\,
	datab => \Equal4~0_combout\,
	datac => \msecond_counter_low[0]~2_combout\,
	datad => \reset_time_2~regout\,
	combout => \msecond_counter_high[0]~8_combout\);

-- Location: LCFF_X29_Y12_N27
\msecond_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high~6_combout\,
	ena => \msecond_counter_high[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(1));

-- Location: LCFF_X28_Y12_N5
\msecond_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_high(1),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(1));

-- Location: LCCOMB_X29_Y12_N8
\msecond_counter_high~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~9_combout\ = (\msecond_counter_high[0]~5_combout\ & (msecond_counter_high(2) $ (((msecond_counter_high(0) & msecond_counter_high(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => \msecond_counter_high[0]~5_combout\,
	combout => \msecond_counter_high~9_combout\);

-- Location: LCFF_X29_Y12_N9
\msecond_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high~9_combout\,
	ena => \msecond_counter_high[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(2));

-- Location: LCCOMB_X29_Y12_N22
\msecond_counter_high~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~7_combout\ = (\msecond_counter_high[0]~5_combout\ & (msecond_counter_high(3) $ (((\Add9~0_combout\ & msecond_counter_high(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => msecond_counter_high(2),
	datac => msecond_counter_high(3),
	datad => \msecond_counter_high[0]~5_combout\,
	combout => \msecond_counter_high~7_combout\);

-- Location: LCFF_X29_Y12_N23
\msecond_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high~7_combout\,
	ena => \msecond_counter_high[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(3));

-- Location: LCCOMB_X29_Y12_N10
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ((msecond_counter_high(1)) # ((msecond_counter_high(2)) # (!msecond_counter_high(3)))) # (!msecond_counter_high(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => msecond_counter_high(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X29_Y12_N12
\msecond_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high~4_combout\ = (\msecond_counter_low[0]~2_combout\ & (!\Equal4~0_combout\ & (!msecond_counter_high(0) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_low[0]~2_combout\,
	datab => \Equal4~0_combout\,
	datac => msecond_counter_high(0),
	datad => \Equal5~0_combout\,
	combout => \msecond_counter_high~4_combout\);

-- Location: LCFF_X29_Y12_N13
\msecond_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high~4_combout\,
	ena => \msecond_counter_high[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(0));

-- Location: LCFF_X31_Y12_N29
\msecond_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(0));

-- Location: LCCOMB_X33_Y12_N14
\msecond_display_high[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high[2]~feeder_combout\ = msecond_counter_high(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => msecond_counter_high(2),
	combout => \msecond_display_high[2]~feeder_combout\);

-- Location: LCFF_X33_Y12_N15
\msecond_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high[2]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(2));

-- Location: LCFF_X33_Y12_N13
\msecond_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(3));

-- Location: LCCOMB_X61_Y8_N12
\LED8_msecond_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr6~0_combout\ = (msecond_display_high(1) & (((msecond_display_high(3))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(0) & !msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X61_Y8_N30
\LED8_msecond_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr5~0_combout\ = (msecond_display_high(2) & ((msecond_display_high(3)) # (msecond_display_high(1) $ (msecond_display_high(0))))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X61_Y8_N28
\LED8_msecond_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr4~0_combout\ = (msecond_display_high(2) & (((msecond_display_high(3))))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)) # (!msecond_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X61_Y8_N6
\LED8_msecond_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr3~0_combout\ = (msecond_display_high(1) & ((msecond_display_high(3)) # ((msecond_display_high(0) & msecond_display_high(2))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(0) & 
-- !msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X61_Y8_N20
\LED8_msecond_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr2~0_combout\ = (msecond_display_high(0)) # ((msecond_display_high(1) & ((msecond_display_high(3)))) # (!msecond_display_high(1) & (msecond_display_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X61_Y8_N18
\LED8_msecond_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr1~0_combout\ = (msecond_display_high(0) & ((msecond_display_high(1)) # (msecond_display_high(2) $ (!msecond_display_high(3))))) # (!msecond_display_high(0) & ((msecond_display_high(2) & ((msecond_display_high(3)))) # 
-- (!msecond_display_high(2) & (msecond_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X61_Y8_N24
\LED8_msecond_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr0~0_combout\ = (msecond_display_high(1) & (!msecond_display_high(3) & ((!msecond_display_high(2)) # (!msecond_display_high(0))))) # (!msecond_display_high(1) & ((msecond_display_high(2) $ (msecond_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y12_N6
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (second_counter_low(2)) # (((second_counter_low(1)) # (!second_counter_low(0))) # (!second_counter_low(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(2),
	datab => second_counter_low(3),
	datac => second_counter_low(0),
	datad => second_counter_low(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X29_Y12_N0
\second_counter_low[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[0]~2_combout\ = (!\Equal5~0_combout\ & (!\Equal4~0_combout\ & (\msecond_counter_low[0]~2_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \msecond_counter_low[0]~2_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_low[0]~2_combout\);

-- Location: LCCOMB_X29_Y12_N4
\second_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~3_combout\ = (!second_counter_low(0) & \second_counter_low[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => second_counter_low(0),
	datad => \second_counter_low[0]~2_combout\,
	combout => \second_counter_low~3_combout\);

-- Location: LCCOMB_X30_Y12_N8
\second_counter_low[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[0]~4_combout\ = (\always9~0_combout\) # ((!\Equal5~0_combout\ & (!\Equal4~0_combout\ & \msecond_counter_low[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \always9~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \msecond_counter_low[0]~2_combout\,
	combout => \second_counter_low[0]~4_combout\);

-- Location: LCFF_X29_Y12_N5
\second_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~3_combout\,
	ena => \second_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(0));

-- Location: LCCOMB_X29_Y12_N2
\second_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~5_combout\ = (\second_counter_low[0]~2_combout\ & (second_counter_low(0) $ (second_counter_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => second_counter_low(0),
	datac => second_counter_low(1),
	datad => \second_counter_low[0]~2_combout\,
	combout => \second_counter_low~5_combout\);

-- Location: LCFF_X29_Y12_N3
\second_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~5_combout\,
	ena => \second_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(1));

-- Location: LCCOMB_X33_Y12_N12
\Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (second_counter_low(0) & second_counter_low(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(0),
	datad => second_counter_low(1),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X29_Y12_N18
\second_counter_low~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~6_combout\ = (\second_counter_low[0]~2_combout\ & (second_counter_low(3) $ (((second_counter_low(2) & \Add8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(2),
	datab => \Add8~0_combout\,
	datac => second_counter_low(3),
	datad => \second_counter_low[0]~2_combout\,
	combout => \second_counter_low~6_combout\);

-- Location: LCFF_X29_Y12_N19
\second_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~6_combout\,
	ena => \second_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(3));

-- Location: LCCOMB_X33_Y12_N0
\second_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low[3]~feeder_combout\ = second_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_low(3),
	combout => \second_display_low[3]~feeder_combout\);

-- Location: LCFF_X33_Y12_N1
\second_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(3));

-- Location: LCCOMB_X33_Y12_N28
\second_display_low[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low[1]~feeder_combout\ = second_counter_low(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_low(1),
	combout => \second_display_low[1]~feeder_combout\);

-- Location: LCFF_X33_Y12_N29
\second_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low[1]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(1));

-- Location: LCCOMB_X29_Y12_N24
\second_counter_low~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low~7_combout\ = (\second_counter_low[0]~2_combout\ & (second_counter_low(2) $ (((second_counter_low(1) & second_counter_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(1),
	datab => second_counter_low(0),
	datac => second_counter_low(2),
	datad => \second_counter_low[0]~2_combout\,
	combout => \second_counter_low~7_combout\);

-- Location: LCFF_X29_Y12_N25
\second_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low~7_combout\,
	ena => \second_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(2));

-- Location: LCFF_X28_Y12_N3
\second_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(2));

-- Location: LCFF_X33_Y12_N25
\second_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_low(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(0));

-- Location: LCCOMB_X61_Y8_N14
\LED8_second_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr6~0_combout\ = (second_display_low(1) & (second_display_low(3))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X61_Y8_N0
\LED8_second_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr5~0_combout\ = (second_display_low(3) & ((second_display_low(1)) # ((second_display_low(2))))) # (!second_display_low(3) & (second_display_low(2) & (second_display_low(1) $ (second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X61_Y8_N10
\LED8_second_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr4~0_combout\ = (second_display_low(2) & (second_display_low(3))) # (!second_display_low(2) & (second_display_low(1) & ((second_display_low(3)) # (!second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X61_Y8_N4
\LED8_second_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr3~0_combout\ = (second_display_low(1) & ((second_display_low(3)) # ((second_display_low(2) & second_display_low(0))))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & 
-- second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X61_Y8_N26
\LED8_second_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr2~0_combout\ = (second_display_low(0)) # ((second_display_low(1) & (second_display_low(3))) # (!second_display_low(1) & ((second_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X61_Y8_N16
\LED8_second_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr1~0_combout\ = (second_display_low(2) & ((second_display_low(3)) # ((second_display_low(1) & second_display_low(0))))) # (!second_display_low(2) & ((second_display_low(1)) # ((!second_display_low(3) & 
-- second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X61_Y8_N22
\LED8_second_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr0~0_combout\ = (second_display_low(1) & (!second_display_low(3) & ((!second_display_low(0)) # (!second_display_low(2))))) # (!second_display_low(1) & (second_display_low(3) $ ((second_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(3),
	datab => second_display_low(1),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y12_N8
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = second_counter_high(2) $ (((second_counter_high(0) & second_counter_high(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(2),
	datab => second_counter_high(0),
	datad => second_counter_high(1),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X30_Y12_N2
\hour_counter_high[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high[0]~2_combout\ = (\counter_work~regout\ & (!\Equal6~0_combout\ & !\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_work~regout\,
	datab => \Equal6~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \hour_counter_high[0]~2_combout\);

-- Location: LCCOMB_X30_Y12_N18
\hour_counter_high[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high[0]~3_combout\ = (!\Equal4~0_combout\ & (\hour_counter_high[0]~2_combout\ & (!\Equal3~9_combout\ & !\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \hour_counter_high[0]~2_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \hour_counter_high[0]~3_combout\);

-- Location: LCCOMB_X33_Y12_N16
\second_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~4_combout\ = (\Equal7~0_combout\ & (\Add7~0_combout\ & \hour_counter_high[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datac => \Add7~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \second_counter_high~4_combout\);

-- Location: LCCOMB_X33_Y12_N18
\second_counter_high[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[0]~6_combout\ = (\hour_counter_high[0]~3_combout\) # (\reset_time_2~regout\ $ (\reset_time_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_time_2~regout\,
	datab => \reset_time_1~regout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \second_counter_high[0]~6_combout\);

-- Location: LCFF_X33_Y12_N17
\second_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~4_combout\,
	ena => \second_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(2));

-- Location: LCCOMB_X33_Y12_N20
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (second_counter_high(3)) # (((second_counter_high(1)) # (!second_counter_high(2))) # (!second_counter_high(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(3),
	datab => second_counter_high(0),
	datac => second_counter_high(2),
	datad => second_counter_high(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X33_Y12_N30
\second_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~2_combout\ = (\Equal7~0_combout\ & (!second_counter_high(0) & \hour_counter_high[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datac => second_counter_high(0),
	datad => \hour_counter_high[0]~3_combout\,
	combout => \second_counter_high~2_combout\);

-- Location: LCFF_X33_Y12_N31
\second_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~2_combout\,
	ena => \second_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(0));

-- Location: LCCOMB_X33_Y12_N6
\second_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~3_combout\ = (\hour_counter_high[0]~3_combout\ & (\Equal7~0_combout\ & (second_counter_high(0) $ (second_counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_counter_high[0]~3_combout\,
	datab => second_counter_high(0),
	datac => second_counter_high(1),
	datad => \Equal7~0_combout\,
	combout => \second_counter_high~3_combout\);

-- Location: LCFF_X33_Y12_N7
\second_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~3_combout\,
	ena => \second_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(1));

-- Location: LCCOMB_X33_Y12_N22
\second_display_high[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high[1]~feeder_combout\ = second_counter_high(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_high(1),
	combout => \second_display_high[1]~feeder_combout\);

-- Location: LCFF_X33_Y12_N23
\second_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high[1]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(1));

-- Location: LCFF_X33_Y12_N27
\second_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_high(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(2));

-- Location: LCCOMB_X33_Y12_N4
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = second_counter_high(3) $ (((second_counter_high(0) & (second_counter_high(2) & second_counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(3),
	datab => second_counter_high(0),
	datac => second_counter_high(2),
	datad => second_counter_high(1),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X33_Y12_N10
\second_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high~5_combout\ = (\Equal7~0_combout\ & (\Add7~1_combout\ & \hour_counter_high[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datac => \Add7~1_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \second_counter_high~5_combout\);

-- Location: LCFF_X33_Y12_N11
\second_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high~5_combout\,
	ena => \second_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(3));

-- Location: LCCOMB_X33_Y12_N2
\second_display_high[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high[3]~feeder_combout\ = second_counter_high(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_high(3),
	combout => \second_display_high[3]~feeder_combout\);

-- Location: LCFF_X33_Y12_N3
\second_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high[3]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(3));

-- Location: LCFF_X33_Y12_N19
\second_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(0));

-- Location: LCCOMB_X64_Y8_N20
\LED8_second_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr6~0_combout\ = (second_display_high(1) & (((second_display_high(3))))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\LED8_second_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr5~0_combout\ = (second_display_high(2) & ((second_display_high(3)) # (second_display_high(1) $ (second_display_high(0))))) # (!second_display_high(2) & (second_display_high(1) & (second_display_high(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\LED8_second_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr4~0_combout\ = (second_display_high(2) & (((second_display_high(3))))) # (!second_display_high(2) & (second_display_high(1) & ((second_display_high(3)) # (!second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\LED8_second_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr3~0_combout\ = (second_display_high(1) & ((second_display_high(3)) # ((second_display_high(2) & second_display_high(0))))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & 
-- second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\LED8_second_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr2~0_combout\ = (second_display_high(0)) # ((second_display_high(1) & ((second_display_high(3)))) # (!second_display_high(1) & (second_display_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\LED8_second_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr1~0_combout\ = (second_display_high(2) & ((second_display_high(3)) # ((second_display_high(1) & second_display_high(0))))) # (!second_display_high(2) & ((second_display_high(1)) # ((!second_display_high(3) & 
-- second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\LED8_second_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr0~0_combout\ = (second_display_high(1) & (!second_display_high(3) & ((!second_display_high(0)) # (!second_display_high(2))))) # (!second_display_high(1) & (second_display_high(2) $ ((second_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(2),
	datac => second_display_high(3),
	datad => second_display_high(0),
	combout => \LED8_second_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
\minute_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~2_combout\ = (!\Equal7~0_combout\ & (\Equal8~0_combout\ & (!minute_counter_low(0) & \hour_counter_high[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal8~0_combout\,
	datac => minute_counter_low(0),
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_low~2_combout\);

-- Location: LCCOMB_X31_Y12_N14
\minute_counter_low[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[0]~7_combout\ = (\Equal7~0_combout\ & (\reset_time_2~regout\ $ ((\reset_time_1~regout\)))) # (!\Equal7~0_combout\ & ((\hour_counter_high[0]~3_combout\) # (\reset_time_2~regout\ $ (\reset_time_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_time_2~regout\,
	datab => \reset_time_1~regout\,
	datac => \Equal7~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_low[0]~7_combout\);

-- Location: LCFF_X32_Y12_N25
\minute_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~2_combout\,
	ena => \minute_counter_low[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(0));

-- Location: LCCOMB_X32_Y12_N12
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ((minute_counter_low(2)) # ((minute_counter_low(1)) # (!minute_counter_low(0)))) # (!minute_counter_low(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(3),
	datab => minute_counter_low(2),
	datac => minute_counter_low(0),
	datad => minute_counter_low(1),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X31_Y12_N28
\minute_counter_low[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[0]~3_combout\ = (!\Equal7~0_combout\ & (\Equal8~0_combout\ & \hour_counter_high[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal8~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_low[0]~3_combout\);

-- Location: LCCOMB_X32_Y12_N18
\minute_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~4_combout\ = (\minute_counter_low[0]~3_combout\ & (minute_counter_low(0) $ (minute_counter_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(0),
	datac => minute_counter_low(1),
	datad => \minute_counter_low[0]~3_combout\,
	combout => \minute_counter_low~4_combout\);

-- Location: LCFF_X32_Y12_N19
\minute_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~4_combout\,
	ena => \minute_counter_low[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(1));

-- Location: LCCOMB_X32_Y12_N28
\minute_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~5_combout\ = (\minute_counter_low[0]~3_combout\ & (minute_counter_low(2) $ (((minute_counter_low(0) & minute_counter_low(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(0),
	datab => minute_counter_low(1),
	datac => minute_counter_low(2),
	datad => \minute_counter_low[0]~3_combout\,
	combout => \minute_counter_low~5_combout\);

-- Location: LCFF_X32_Y12_N29
\minute_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~5_combout\,
	ena => \minute_counter_low[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(2));

-- Location: LCFF_X24_Y12_N25
\minute_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(2));

-- Location: LCCOMB_X24_Y12_N2
\minute_display_low[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low[1]~feeder_combout\ = minute_counter_low(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_low(1),
	combout => \minute_display_low[1]~feeder_combout\);

-- Location: LCFF_X24_Y12_N3
\minute_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low[1]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(1));

-- Location: LCCOMB_X32_Y12_N30
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = minute_counter_low(3) $ (((minute_counter_low(2) & (minute_counter_low(0) & minute_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(3),
	datab => minute_counter_low(2),
	datac => minute_counter_low(0),
	datad => minute_counter_low(1),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\minute_counter_low~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low~6_combout\ = (\Equal8~0_combout\ & (\Add6~0_combout\ & (!\Equal7~0_combout\ & \hour_counter_high[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Add6~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_low~6_combout\);

-- Location: LCFF_X32_Y12_N7
\minute_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low~6_combout\,
	ena => \minute_counter_low[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(3));

-- Location: LCFF_X24_Y12_N15
\minute_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_low(3),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(3));

-- Location: LCCOMB_X24_Y12_N28
\minute_display_low[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low[0]~feeder_combout\ = minute_counter_low(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_low(0),
	combout => \minute_display_low[0]~feeder_combout\);

-- Location: LCFF_X24_Y12_N29
\minute_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low[0]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(0));

-- Location: LCCOMB_X24_Y12_N16
\LED8_minute_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr6~0_combout\ = (minute_display_low(1) & (((minute_display_low(3))))) # (!minute_display_low(1) & (minute_display_low(2) $ (((!minute_display_low(3) & minute_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y12_N18
\LED8_minute_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr5~0_combout\ = (minute_display_low(2) & ((minute_display_low(3)) # (minute_display_low(1) $ (minute_display_low(0))))) # (!minute_display_low(2) & (minute_display_low(1) & (minute_display_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y12_N0
\LED8_minute_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr4~0_combout\ = (minute_display_low(2) & (((minute_display_low(3))))) # (!minute_display_low(2) & (minute_display_low(1) & ((minute_display_low(3)) # (!minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\LED8_minute_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr3~0_combout\ = (minute_display_low(1) & ((minute_display_low(3)) # ((minute_display_low(2) & minute_display_low(0))))) # (!minute_display_low(1) & (minute_display_low(2) $ (((!minute_display_low(3) & 
-- minute_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\LED8_minute_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr2~0_combout\ = (minute_display_low(0)) # ((minute_display_low(1) & ((minute_display_low(3)))) # (!minute_display_low(1) & (minute_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
\LED8_minute_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr1~0_combout\ = (minute_display_low(2) & ((minute_display_low(3)) # ((minute_display_low(1) & minute_display_low(0))))) # (!minute_display_low(2) & ((minute_display_low(1)) # ((!minute_display_low(3) & 
-- minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(3),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
\LED8_minute_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr0~0_combout\ = (minute_display_low(2) & (!minute_display_low(3) & ((!minute_display_low(0)) # (!minute_display_low(1))))) # (!minute_display_low(2) & (minute_display_low(1) $ ((minute_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(2),
	datab => minute_display_low(1),
	datac => minute_display_low(3),
	datad => minute_display_low(0),
	combout => \LED8_minute_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y12_N20
\minute_counter_high~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~7_combout\ = (\minute_counter_high[0]~2_combout\ & (minute_counter_high(2) $ (((minute_counter_high(1) & minute_counter_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(1),
	datab => minute_counter_high(0),
	datac => minute_counter_high(2),
	datad => \minute_counter_high[0]~2_combout\,
	combout => \minute_counter_high~7_combout\);

-- Location: LCCOMB_X31_Y12_N30
\minute_counter_high[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[0]~4_combout\ = (\always9~0_combout\) # ((!\Equal7~0_combout\ & (!\Equal8~0_combout\ & \hour_counter_high[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \always9~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_high[0]~4_combout\);

-- Location: LCFF_X32_Y12_N21
\minute_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~7_combout\,
	ena => \minute_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(2));

-- Location: LCCOMB_X32_Y12_N16
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (minute_counter_high(3)) # ((minute_counter_high(1)) # ((!minute_counter_high(0)) # (!minute_counter_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(3),
	datab => minute_counter_high(1),
	datac => minute_counter_high(2),
	datad => minute_counter_high(0),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\minute_counter_high[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[0]~2_combout\ = (!\Equal7~0_combout\ & (\Equal9~0_combout\ & (!\Equal8~0_combout\ & \hour_counter_high[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \minute_counter_high[0]~2_combout\);

-- Location: LCCOMB_X32_Y12_N0
\minute_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~3_combout\ = (!minute_counter_high(0) & \minute_counter_high[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => minute_counter_high(0),
	datad => \minute_counter_high[0]~2_combout\,
	combout => \minute_counter_high~3_combout\);

-- Location: LCFF_X32_Y12_N1
\minute_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~3_combout\,
	ena => \minute_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(0));

-- Location: LCCOMB_X32_Y12_N2
\minute_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~5_combout\ = (\minute_counter_high[0]~2_combout\ & (minute_counter_high(0) $ (minute_counter_high(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_high(0),
	datac => minute_counter_high(1),
	datad => \minute_counter_high[0]~2_combout\,
	combout => \minute_counter_high~5_combout\);

-- Location: LCFF_X32_Y12_N3
\minute_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~5_combout\,
	ena => \minute_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(1));

-- Location: LCFF_X24_Y12_N13
\minute_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_high(1),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(1));

-- Location: LCFF_X24_Y12_N27
\minute_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_high(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(2));

-- Location: LCCOMB_X32_Y12_N26
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (minute_counter_high(1) & minute_counter_high(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_high(1),
	datad => minute_counter_high(0),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X32_Y12_N10
\minute_counter_high~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high~6_combout\ = (\minute_counter_high[0]~2_combout\ & (minute_counter_high(3) $ (((minute_counter_high(2) & \Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(2),
	datab => \Add5~0_combout\,
	datac => minute_counter_high(3),
	datad => \minute_counter_high[0]~2_combout\,
	combout => \minute_counter_high~6_combout\);

-- Location: LCFF_X32_Y12_N11
\minute_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high~6_combout\,
	ena => \minute_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(3));

-- Location: LCFF_X24_Y12_N21
\minute_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(3));

-- Location: LCFF_X24_Y12_N11
\minute_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(0));

-- Location: LCCOMB_X24_Y12_N22
\LED8_minute_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr6~0_combout\ = (minute_display_high(1) & (((minute_display_high(3))))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(1),
	datab => minute_display_high(2),
	datac => minute_display_high(3),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y12_N8
\LED8_minute_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr5~0_combout\ = (minute_display_high(2) & ((minute_display_high(3)) # (minute_display_high(1) $ (minute_display_high(0))))) # (!minute_display_high(2) & (minute_display_high(1) & (minute_display_high(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(1),
	datab => minute_display_high(2),
	datac => minute_display_high(3),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\LED8_minute_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr4~0_combout\ = (minute_display_high(2) & (((minute_display_high(3))))) # (!minute_display_high(2) & (minute_display_high(1) & ((minute_display_high(3)) # (!minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(1),
	datab => minute_display_high(2),
	datac => minute_display_high(3),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\LED8_minute_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr3~0_combout\ = (minute_display_high(1) & ((minute_display_high(3)) # ((minute_display_high(2) & minute_display_high(0))))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & 
-- minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(0),
	datad => minute_display_high(1),
	combout => \LED8_minute_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y12_N12
\LED8_minute_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr2~0_combout\ = (minute_display_high(0)) # ((minute_display_high(1) & (minute_display_high(3))) # (!minute_display_high(1) & ((minute_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y12_N26
\LED8_minute_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr1~0_combout\ = (minute_display_high(2) & ((minute_display_high(3)) # ((minute_display_high(1) & minute_display_high(0))))) # (!minute_display_high(2) & ((minute_display_high(1)) # ((!minute_display_high(3) & 
-- minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(1),
	datac => minute_display_high(2),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\LED8_minute_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr0~0_combout\ = (minute_display_high(1) & (!minute_display_high(3) & ((!minute_display_high(0)) # (!minute_display_high(2))))) # (!minute_display_high(1) & (minute_display_high(2) $ ((minute_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(1),
	datab => minute_display_high(2),
	datac => minute_display_high(3),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y12_N0
\hour_counter_high[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high[0]~4_combout\ = (!\Equal7~0_combout\ & (!\Equal9~0_combout\ & (!\Equal8~0_combout\ & \hour_counter_high[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \hour_counter_high[0]~3_combout\,
	combout => \hour_counter_high[0]~4_combout\);

-- Location: LCCOMB_X30_Y12_N16
\hour_counter_low~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~2_combout\ = (\Equal10~0_combout\ & (!hour_counter_low(0) & \hour_counter_high[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datac => hour_counter_low(0),
	datad => \hour_counter_high[0]~4_combout\,
	combout => \hour_counter_low~2_combout\);

-- Location: LCCOMB_X30_Y12_N24
\hour_counter_low[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[0]~6_combout\ = (\hour_counter_high[0]~4_combout\) # (\reset_time_2~regout\ $ (\reset_time_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_time_2~regout\,
	datac => \reset_time_1~regout\,
	datad => \hour_counter_high[0]~4_combout\,
	combout => \hour_counter_low[0]~6_combout\);

-- Location: LCFF_X30_Y12_N17
\hour_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~2_combout\,
	ena => \hour_counter_low[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(0));

-- Location: LCCOMB_X30_Y12_N6
\hour_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~3_combout\ = (\Equal10~0_combout\ & (\hour_counter_high[0]~4_combout\ & (hour_counter_low(0) $ (hour_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => hour_counter_low(0),
	datac => hour_counter_low(1),
	datad => \hour_counter_high[0]~4_combout\,
	combout => \hour_counter_low~3_combout\);

-- Location: LCFF_X30_Y12_N7
\hour_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~3_combout\,
	ena => \hour_counter_low[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(1));

-- Location: LCCOMB_X27_Y12_N22
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = hour_counter_low(2) $ (((hour_counter_low(0) & hour_counter_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(0),
	datab => hour_counter_low(2),
	datad => hour_counter_low(1),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X30_Y12_N4
\hour_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~4_combout\ = (\Equal10~0_combout\ & (\Add4~0_combout\ & \hour_counter_high[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datac => \Add4~0_combout\,
	datad => \hour_counter_high[0]~4_combout\,
	combout => \hour_counter_low~4_combout\);

-- Location: LCFF_X30_Y12_N5
\hour_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~4_combout\,
	ena => \hour_counter_low[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(2));

-- Location: LCCOMB_X23_Y12_N12
\hour_display_low[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[2]~feeder_combout\ = hour_counter_low(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(2),
	combout => \hour_display_low[2]~feeder_combout\);

-- Location: LCFF_X23_Y12_N13
\hour_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[2]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(2));

-- Location: LCCOMB_X23_Y12_N22
\hour_display_low[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[1]~feeder_combout\ = hour_counter_low(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(1),
	combout => \hour_display_low[1]~feeder_combout\);

-- Location: LCFF_X23_Y12_N23
\hour_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[1]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(1));

-- Location: LCCOMB_X23_Y12_N24
\hour_display_low[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[0]~feeder_combout\ = hour_counter_low(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(0),
	combout => \hour_display_low[0]~feeder_combout\);

-- Location: LCFF_X23_Y12_N25
\hour_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[0]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(0));

-- Location: LCCOMB_X30_Y12_N10
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (hour_counter_low(1)) # ((hour_counter_low(2)) # ((!hour_counter_low(3)) # (!hour_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(1),
	datab => hour_counter_low(2),
	datac => hour_counter_low(0),
	datad => hour_counter_low(3),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\hour_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low~5_combout\ = (\Add4~1_combout\ & (\hour_counter_high[0]~4_combout\ & \Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datac => \hour_counter_high[0]~4_combout\,
	datad => \Equal10~0_combout\,
	combout => \hour_counter_low~5_combout\);

-- Location: LCFF_X30_Y12_N23
\hour_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low~5_combout\,
	ena => \hour_counter_low[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(3));

-- Location: LCCOMB_X23_Y12_N18
\hour_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[3]~feeder_combout\ = hour_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(3),
	combout => \hour_display_low[3]~feeder_combout\);

-- Location: LCFF_X23_Y12_N19
\hour_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(3));

-- Location: LCCOMB_X23_Y12_N0
\LED8_hour_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr6~0_combout\ = (hour_display_low(1) & (((hour_display_low(3))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((hour_display_low(0) & !hour_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\LED8_hour_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr5~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # (hour_display_low(1) $ (hour_display_low(0))))) # (!hour_display_low(2) & (hour_display_low(1) & ((hour_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y12_N8
\LED8_hour_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr4~0_combout\ = (hour_display_low(2) & (((hour_display_low(3))))) # (!hour_display_low(2) & (hour_display_low(1) & ((hour_display_low(3)) # (!hour_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\LED8_hour_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr3~0_combout\ = (hour_display_low(1) & ((hour_display_low(3)) # ((hour_display_low(2) & hour_display_low(0))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((hour_display_low(0) & !hour_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y12_N16
\LED8_hour_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr2~0_combout\ = (hour_display_low(0)) # ((hour_display_low(1) & ((hour_display_low(3)))) # (!hour_display_low(1) & (hour_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\LED8_hour_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr1~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # ((hour_display_low(1) & hour_display_low(0))))) # (!hour_display_low(2) & ((hour_display_low(1)) # ((hour_display_low(0) & !hour_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y12_N28
\LED8_hour_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr0~0_combout\ = (hour_display_low(2) & (!hour_display_low(3) & ((!hour_display_low(0)) # (!hour_display_low(1))))) # (!hour_display_low(2) & (hour_display_low(1) $ (((hour_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(2),
	datab => hour_display_low(1),
	datac => hour_display_low(0),
	datad => hour_display_low(3),
	combout => \LED8_hour_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y12_N14
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = hour_counter_high(0) $ (hour_counter_high(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_counter_high(0),
	datad => hour_counter_high(1),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X31_Y12_N2
\hour_counter_high~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~6_combout\ = (!\Equal10~0_combout\ & (\Add3~0_combout\ & (\hour_counter_high[0]~4_combout\ & \Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Add3~0_combout\,
	datac => \hour_counter_high[0]~4_combout\,
	datad => \Equal11~0_combout\,
	combout => \hour_counter_high~6_combout\);

-- Location: LCCOMB_X30_Y12_N30
\hour_counter_high[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high[0]~9_combout\ = (\Equal10~0_combout\ & (\reset_time_2~regout\ $ ((\reset_time_1~regout\)))) # (!\Equal10~0_combout\ & ((\hour_counter_high[0]~4_combout\) # (\reset_time_2~regout\ $ (\reset_time_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \reset_time_2~regout\,
	datac => \reset_time_1~regout\,
	datad => \hour_counter_high[0]~4_combout\,
	combout => \hour_counter_high[0]~9_combout\);

-- Location: LCFF_X31_Y12_N3
\hour_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~6_combout\,
	ena => \hour_counter_high[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(1));

-- Location: LCCOMB_X31_Y12_N16
\Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = hour_counter_high(2) $ (((hour_counter_high(1) & hour_counter_high(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_counter_high(1),
	datac => hour_counter_high(2),
	datad => hour_counter_high(0),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X31_Y12_N12
\hour_counter_high~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~7_combout\ = (\Equal11~0_combout\ & (!\Equal10~0_combout\ & (\hour_counter_high[0]~4_combout\ & \Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \hour_counter_high[0]~4_combout\,
	datad => \Add3~1_combout\,
	combout => \hour_counter_high~7_combout\);

-- Location: LCFF_X31_Y12_N13
\hour_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~7_combout\,
	ena => \hour_counter_high[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(2));

-- Location: LCCOMB_X32_Y12_N8
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = hour_counter_high(3) $ (((hour_counter_high(1) & (hour_counter_high(0) & hour_counter_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(1),
	datab => hour_counter_high(0),
	datac => hour_counter_high(3),
	datad => hour_counter_high(2),
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X31_Y12_N24
\hour_counter_high~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~8_combout\ = (\Equal11~0_combout\ & (!\Equal10~0_combout\ & (\hour_counter_high[0]~4_combout\ & \Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \hour_counter_high[0]~4_combout\,
	datad => \Add3~2_combout\,
	combout => \hour_counter_high~8_combout\);

-- Location: LCFF_X31_Y12_N25
\hour_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~8_combout\,
	ena => \hour_counter_high[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(3));

-- Location: LCCOMB_X32_Y12_N4
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (hour_counter_high(1)) # (((hour_counter_high(3)) # (!hour_counter_high(2))) # (!hour_counter_high(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(1),
	datab => hour_counter_high(0),
	datac => hour_counter_high(3),
	datad => hour_counter_high(2),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X31_Y12_N18
\hour_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~5_combout\ = (\hour_counter_high[0]~4_combout\ & (!\Equal10~0_combout\ & (!hour_counter_high(0) & \Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_counter_high[0]~4_combout\,
	datab => \Equal10~0_combout\,
	datac => hour_counter_high(0),
	datad => \Equal11~0_combout\,
	combout => \hour_counter_high~5_combout\);

-- Location: LCFF_X31_Y12_N19
\hour_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~5_combout\,
	ena => \hour_counter_high[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(0));

-- Location: LCFF_X31_Y12_N11
\hour_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(0));

-- Location: LCFF_X31_Y12_N23
\hour_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(1),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(1));

-- Location: LCFF_X31_Y12_N27
\hour_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(3));

-- Location: LCFF_X31_Y12_N7
\hour_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(2),
	sload => VCC,
	ena => \ALT_INV_display_work~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(2));

-- Location: LCCOMB_X31_Y12_N4
\LED8_hour_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr6~0_combout\ = (hour_display_high(1) & (((hour_display_high(3))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y12_N20
\LED8_hour_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr5~0_combout\ = (hour_display_high(3) & (((hour_display_high(1)) # (hour_display_high(2))))) # (!hour_display_high(3) & (hour_display_high(2) & (hour_display_high(0) $ (hour_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y12_N10
\LED8_hour_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr4~0_combout\ = (hour_display_high(2) & (hour_display_high(3))) # (!hour_display_high(2) & (hour_display_high(1) & ((hour_display_high(3)) # (!hour_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(2),
	datab => hour_display_high(3),
	datac => hour_display_high(0),
	datad => hour_display_high(1),
	combout => \LED8_hour_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y12_N0
\LED8_hour_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr3~0_combout\ = (hour_display_high(1) & ((hour_display_high(3)) # ((hour_display_high(0) & hour_display_high(2))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y12_N22
\LED8_hour_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr2~0_combout\ = (hour_display_high(0)) # ((hour_display_high(1) & (hour_display_high(3))) # (!hour_display_high(1) & ((hour_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(3),
	datac => hour_display_high(1),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y12_N6
\LED8_hour_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr1~0_combout\ = (hour_display_high(0) & ((hour_display_high(1)) # (hour_display_high(3) $ (!hour_display_high(2))))) # (!hour_display_high(0) & ((hour_display_high(2) & (hour_display_high(3))) # (!hour_display_high(2) & 
-- ((hour_display_high(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(3),
	datac => hour_display_high(2),
	datad => hour_display_high(1),
	combout => \LED8_hour_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\LED8_hour_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr0~0_combout\ = (hour_display_high(1) & (!hour_display_high(3) & ((!hour_display_high(2)) # (!hour_display_high(0))))) # (!hour_display_high(1) & ((hour_display_high(3) $ (hour_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr0~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[0]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[1]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[2]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[3]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[4]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[5]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[6]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[0]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[1]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[2]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[3]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[4]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[5]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[6]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[0]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[1]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[2]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[3]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[4]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[5]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[6]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led0~I\ : cycloneii_io
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
	datain => \ALT_INV_key_display_stop~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led0);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1~I\ : cycloneii_io
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
	datain => \ALT_INV_key_start_pause~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1);

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2~I\ : cycloneii_io
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
	datain => \ALT_INV_key_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);
END structure;



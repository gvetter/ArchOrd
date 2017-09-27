-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "09/27/2017 08:43:22"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	s : OUT std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(5 DOWNTO 0);
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- s[31]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[30]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[29]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[27]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[26]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[25]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[24]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[23]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[22]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[21]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[20]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[18]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[17]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[16]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL \s[31]~output_o\ : std_logic;
SIGNAL \s[30]~output_o\ : std_logic;
SIGNAL \s[29]~output_o\ : std_logic;
SIGNAL \s[28]~output_o\ : std_logic;
SIGNAL \s[27]~output_o\ : std_logic;
SIGNAL \s[26]~output_o\ : std_logic;
SIGNAL \s[25]~output_o\ : std_logic;
SIGNAL \s[24]~output_o\ : std_logic;
SIGNAL \s[23]~output_o\ : std_logic;
SIGNAL \s[22]~output_o\ : std_logic;
SIGNAL \s[21]~output_o\ : std_logic;
SIGNAL \s[20]~output_o\ : std_logic;
SIGNAL \s[19]~output_o\ : std_logic;
SIGNAL \s[18]~output_o\ : std_logic;
SIGNAL \s[17]~output_o\ : std_logic;
SIGNAL \s[16]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \add_sub_0|Add2~1\ : std_logic;
SIGNAL \add_sub_0|Add2~3\ : std_logic;
SIGNAL \add_sub_0|Add2~5\ : std_logic;
SIGNAL \add_sub_0|Add2~7\ : std_logic;
SIGNAL \add_sub_0|Add2~9\ : std_logic;
SIGNAL \add_sub_0|Add2~11\ : std_logic;
SIGNAL \add_sub_0|Add2~13\ : std_logic;
SIGNAL \add_sub_0|Add2~15\ : std_logic;
SIGNAL \add_sub_0|Add2~17\ : std_logic;
SIGNAL \add_sub_0|Add2~19\ : std_logic;
SIGNAL \add_sub_0|Add2~21\ : std_logic;
SIGNAL \add_sub_0|Add2~23\ : std_logic;
SIGNAL \add_sub_0|Add2~25\ : std_logic;
SIGNAL \add_sub_0|Add2~27\ : std_logic;
SIGNAL \add_sub_0|Add2~29\ : std_logic;
SIGNAL \add_sub_0|Add2~31\ : std_logic;
SIGNAL \add_sub_0|Add2~33\ : std_logic;
SIGNAL \add_sub_0|Add2~35\ : std_logic;
SIGNAL \add_sub_0|Add2~37\ : std_logic;
SIGNAL \add_sub_0|Add2~39\ : std_logic;
SIGNAL \add_sub_0|Add2~41\ : std_logic;
SIGNAL \add_sub_0|Add2~43\ : std_logic;
SIGNAL \add_sub_0|Add2~45\ : std_logic;
SIGNAL \add_sub_0|Add2~47\ : std_logic;
SIGNAL \add_sub_0|Add2~49\ : std_logic;
SIGNAL \add_sub_0|Add2~51\ : std_logic;
SIGNAL \add_sub_0|Add2~53\ : std_logic;
SIGNAL \add_sub_0|Add2~55\ : std_logic;
SIGNAL \add_sub_0|Add2~57\ : std_logic;
SIGNAL \add_sub_0|Add2~59\ : std_logic;
SIGNAL \add_sub_0|Add2~61\ : std_logic;
SIGNAL \add_sub_0|Add2~62_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~60_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~58_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~56_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~54_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~52_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~50_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~48_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~46_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~44_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~42_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~40_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~38_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~36_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~34_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~32_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~30_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~28_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~26_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~24_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~22_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~20_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~18_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~16_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~14_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~12_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~10_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~8_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~6_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~4_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~2_combout\ : std_logic;
SIGNAL \add_sub_0|Add2~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~0_combout\ : std_logic;
SIGNAL \add_sub_0|r[0]~30_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~1\ : std_logic;
SIGNAL \add_sub_0|Add0~2_combout\ : std_logic;
SIGNAL \add_sub_0|r[1]~29_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~3\ : std_logic;
SIGNAL \add_sub_0|Add0~4_combout\ : std_logic;
SIGNAL \add_sub_0|r[2]~28_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~5\ : std_logic;
SIGNAL \add_sub_0|Add0~6_combout\ : std_logic;
SIGNAL \add_sub_0|r[3]~27_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~7\ : std_logic;
SIGNAL \add_sub_0|Add0~8_combout\ : std_logic;
SIGNAL \add_sub_0|r[4]~26_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~9\ : std_logic;
SIGNAL \add_sub_0|Add0~10_combout\ : std_logic;
SIGNAL \add_sub_0|r[5]~25_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~11\ : std_logic;
SIGNAL \add_sub_0|Add0~12_combout\ : std_logic;
SIGNAL \add_sub_0|r[6]~24_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~13\ : std_logic;
SIGNAL \add_sub_0|Add0~14_combout\ : std_logic;
SIGNAL \add_sub_0|r[7]~23_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~15\ : std_logic;
SIGNAL \add_sub_0|Add0~16_combout\ : std_logic;
SIGNAL \add_sub_0|r[8]~22_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~17\ : std_logic;
SIGNAL \add_sub_0|Add0~18_combout\ : std_logic;
SIGNAL \add_sub_0|r[9]~21_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~19\ : std_logic;
SIGNAL \add_sub_0|Add0~20_combout\ : std_logic;
SIGNAL \add_sub_0|r[10]~20_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~21\ : std_logic;
SIGNAL \add_sub_0|Add0~22_combout\ : std_logic;
SIGNAL \add_sub_0|r[11]~19_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~23\ : std_logic;
SIGNAL \add_sub_0|Add0~24_combout\ : std_logic;
SIGNAL \add_sub_0|r[12]~18_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~25\ : std_logic;
SIGNAL \add_sub_0|Add0~26_combout\ : std_logic;
SIGNAL \add_sub_0|r[13]~17_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~27\ : std_logic;
SIGNAL \add_sub_0|Add0~28_combout\ : std_logic;
SIGNAL \add_sub_0|r[14]~16_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~29\ : std_logic;
SIGNAL \add_sub_0|Add0~30_combout\ : std_logic;
SIGNAL \add_sub_0|r[15]~15_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~31\ : std_logic;
SIGNAL \add_sub_0|Add0~32_combout\ : std_logic;
SIGNAL \add_sub_0|r[16]~14_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~33\ : std_logic;
SIGNAL \add_sub_0|Add0~34_combout\ : std_logic;
SIGNAL \add_sub_0|r[17]~13_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~35\ : std_logic;
SIGNAL \add_sub_0|Add0~36_combout\ : std_logic;
SIGNAL \add_sub_0|r[18]~12_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~37\ : std_logic;
SIGNAL \add_sub_0|Add0~38_combout\ : std_logic;
SIGNAL \add_sub_0|r[19]~11_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~39\ : std_logic;
SIGNAL \add_sub_0|Add0~40_combout\ : std_logic;
SIGNAL \add_sub_0|r[20]~10_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~41\ : std_logic;
SIGNAL \add_sub_0|Add0~42_combout\ : std_logic;
SIGNAL \add_sub_0|r[21]~9_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~43\ : std_logic;
SIGNAL \add_sub_0|Add0~44_combout\ : std_logic;
SIGNAL \add_sub_0|r[22]~8_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~45\ : std_logic;
SIGNAL \add_sub_0|Add0~46_combout\ : std_logic;
SIGNAL \add_sub_0|r[23]~7_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~47\ : std_logic;
SIGNAL \add_sub_0|Add0~48_combout\ : std_logic;
SIGNAL \add_sub_0|r[24]~6_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~49\ : std_logic;
SIGNAL \add_sub_0|Add0~50_combout\ : std_logic;
SIGNAL \add_sub_0|r[25]~5_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~51\ : std_logic;
SIGNAL \add_sub_0|Add0~52_combout\ : std_logic;
SIGNAL \add_sub_0|r[26]~4_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~53\ : std_logic;
SIGNAL \add_sub_0|Add0~54_combout\ : std_logic;
SIGNAL \add_sub_0|r[27]~3_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~55\ : std_logic;
SIGNAL \add_sub_0|Add0~56_combout\ : std_logic;
SIGNAL \add_sub_0|r[28]~2_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~57\ : std_logic;
SIGNAL \add_sub_0|Add0~58_combout\ : std_logic;
SIGNAL \add_sub_0|r[29]~1_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~59\ : std_logic;
SIGNAL \add_sub_0|Add0~60_combout\ : std_logic;
SIGNAL \add_sub_0|r[30]~0_combout\ : std_logic;
SIGNAL \add_sub_0|Add0~61\ : std_logic;
SIGNAL \add_sub_0|Add0~62_combout\ : std_logic;
SIGNAL \add_sub_0|temp[31]~62_combout\ : std_logic;
SIGNAL \op[4]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \multiplexer_0|Mux0~0_combout\ : std_logic;
SIGNAL \op[5]~input_o\ : std_logic;
SIGNAL \multiplexer_0|Mux0~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux1~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux1~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux2~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux2~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux3~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux3~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux4~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux4~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux5~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux5~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux6~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux6~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux7~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux7~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux8~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux8~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux9~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux9~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux10~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux10~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux11~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux11~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux12~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux12~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux13~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux13~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux14~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux14~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux15~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux15~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux16~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux16~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux17~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux17~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux18~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux18~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux19~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux19~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux20~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux20~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux21~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux21~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux22~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux22~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux23~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux23~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux24~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux24~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux25~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux25~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux26~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux26~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux27~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux27~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux28~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux28~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux29~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux29~1_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux30~0_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux30~1_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \multiplexer_0|Mux31~2_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~3_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~4_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~5_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~6_combout\ : std_logic;
SIGNAL \multiplexer_0|Mux31~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

s <= ww_s;
ww_op <= op;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y16_N9
\s[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \s[31]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\s[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \s[30]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\s[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \s[29]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\s[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \s[28]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\s[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \s[27]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\s[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \s[26]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\s[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \s[25]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\s[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \s[24]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\s[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \s[23]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\s[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \s[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\s[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \s[21]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\s[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \s[20]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\s[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \s[19]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\s[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \s[18]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\s[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \s[17]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\s[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \s[16]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\s[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\s[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\s[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\s[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\s[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplexer_0|Mux31~7_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOIBUF_X38_Y0_N1
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X32_Y30_N0
\add_sub_0|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & VCC))
-- \add_sub_0|Add2~1\ = CARRY((\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \add_sub_0|Add2~0_combout\,
	cout => \add_sub_0|Add2~1\);

-- Location: LCCOMB_X32_Y30_N2
\add_sub_0|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (\add_sub_0|Add2~1\ & VCC)) # (!\a[1]~input_o\ & (!\add_sub_0|Add2~1\)))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (!\add_sub_0|Add2~1\)) # (!\a[1]~input_o\ & ((\add_sub_0|Add2~1\) # 
-- (GND)))))
-- \add_sub_0|Add2~3\ = CARRY((\b[1]~input_o\ & (!\a[1]~input_o\ & !\add_sub_0|Add2~1\)) # (!\b[1]~input_o\ & ((!\add_sub_0|Add2~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~1\,
	combout => \add_sub_0|Add2~2_combout\,
	cout => \add_sub_0|Add2~3\);

-- Location: LCCOMB_X32_Y30_N4
\add_sub_0|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~4_combout\ = ((\b[2]~input_o\ $ (\a[2]~input_o\ $ (!\add_sub_0|Add2~3\)))) # (GND)
-- \add_sub_0|Add2~5\ = CARRY((\b[2]~input_o\ & ((\a[2]~input_o\) # (!\add_sub_0|Add2~3\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & !\add_sub_0|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~3\,
	combout => \add_sub_0|Add2~4_combout\,
	cout => \add_sub_0|Add2~5\);

-- Location: LCCOMB_X32_Y30_N6
\add_sub_0|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~6_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (\add_sub_0|Add2~5\ & VCC)) # (!\a[3]~input_o\ & (!\add_sub_0|Add2~5\)))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & (!\add_sub_0|Add2~5\)) # (!\a[3]~input_o\ & ((\add_sub_0|Add2~5\) # 
-- (GND)))))
-- \add_sub_0|Add2~7\ = CARRY((\b[3]~input_o\ & (!\a[3]~input_o\ & !\add_sub_0|Add2~5\)) # (!\b[3]~input_o\ & ((!\add_sub_0|Add2~5\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~5\,
	combout => \add_sub_0|Add2~6_combout\,
	cout => \add_sub_0|Add2~7\);

-- Location: LCCOMB_X32_Y30_N8
\add_sub_0|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~8_combout\ = ((\a[4]~input_o\ $ (\b[4]~input_o\ $ (!\add_sub_0|Add2~7\)))) # (GND)
-- \add_sub_0|Add2~9\ = CARRY((\a[4]~input_o\ & ((\b[4]~input_o\) # (!\add_sub_0|Add2~7\))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & !\add_sub_0|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~7\,
	combout => \add_sub_0|Add2~8_combout\,
	cout => \add_sub_0|Add2~9\);

-- Location: LCCOMB_X32_Y30_N10
\add_sub_0|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~10_combout\ = (\a[5]~input_o\ & ((\b[5]~input_o\ & (\add_sub_0|Add2~9\ & VCC)) # (!\b[5]~input_o\ & (!\add_sub_0|Add2~9\)))) # (!\a[5]~input_o\ & ((\b[5]~input_o\ & (!\add_sub_0|Add2~9\)) # (!\b[5]~input_o\ & ((\add_sub_0|Add2~9\) # 
-- (GND)))))
-- \add_sub_0|Add2~11\ = CARRY((\a[5]~input_o\ & (!\b[5]~input_o\ & !\add_sub_0|Add2~9\)) # (!\a[5]~input_o\ & ((!\add_sub_0|Add2~9\) # (!\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~9\,
	combout => \add_sub_0|Add2~10_combout\,
	cout => \add_sub_0|Add2~11\);

-- Location: LCCOMB_X32_Y30_N12
\add_sub_0|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~12_combout\ = ((\b[6]~input_o\ $ (\a[6]~input_o\ $ (!\add_sub_0|Add2~11\)))) # (GND)
-- \add_sub_0|Add2~13\ = CARRY((\b[6]~input_o\ & ((\a[6]~input_o\) # (!\add_sub_0|Add2~11\))) # (!\b[6]~input_o\ & (\a[6]~input_o\ & !\add_sub_0|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~11\,
	combout => \add_sub_0|Add2~12_combout\,
	cout => \add_sub_0|Add2~13\);

-- Location: LCCOMB_X32_Y30_N14
\add_sub_0|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~14_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ & (\add_sub_0|Add2~13\ & VCC)) # (!\a[7]~input_o\ & (!\add_sub_0|Add2~13\)))) # (!\b[7]~input_o\ & ((\a[7]~input_o\ & (!\add_sub_0|Add2~13\)) # (!\a[7]~input_o\ & ((\add_sub_0|Add2~13\) # 
-- (GND)))))
-- \add_sub_0|Add2~15\ = CARRY((\b[7]~input_o\ & (!\a[7]~input_o\ & !\add_sub_0|Add2~13\)) # (!\b[7]~input_o\ & ((!\add_sub_0|Add2~13\) # (!\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~13\,
	combout => \add_sub_0|Add2~14_combout\,
	cout => \add_sub_0|Add2~15\);

-- Location: LCCOMB_X32_Y30_N16
\add_sub_0|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~16_combout\ = ((\a[8]~input_o\ $ (\b[8]~input_o\ $ (!\add_sub_0|Add2~15\)))) # (GND)
-- \add_sub_0|Add2~17\ = CARRY((\a[8]~input_o\ & ((\b[8]~input_o\) # (!\add_sub_0|Add2~15\))) # (!\a[8]~input_o\ & (\b[8]~input_o\ & !\add_sub_0|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \b[8]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~15\,
	combout => \add_sub_0|Add2~16_combout\,
	cout => \add_sub_0|Add2~17\);

-- Location: LCCOMB_X32_Y30_N18
\add_sub_0|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~18_combout\ = (\a[9]~input_o\ & ((\b[9]~input_o\ & (\add_sub_0|Add2~17\ & VCC)) # (!\b[9]~input_o\ & (!\add_sub_0|Add2~17\)))) # (!\a[9]~input_o\ & ((\b[9]~input_o\ & (!\add_sub_0|Add2~17\)) # (!\b[9]~input_o\ & ((\add_sub_0|Add2~17\) # 
-- (GND)))))
-- \add_sub_0|Add2~19\ = CARRY((\a[9]~input_o\ & (!\b[9]~input_o\ & !\add_sub_0|Add2~17\)) # (!\a[9]~input_o\ & ((!\add_sub_0|Add2~17\) # (!\b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \b[9]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~17\,
	combout => \add_sub_0|Add2~18_combout\,
	cout => \add_sub_0|Add2~19\);

-- Location: LCCOMB_X32_Y30_N20
\add_sub_0|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~20_combout\ = ((\a[10]~input_o\ $ (\b[10]~input_o\ $ (!\add_sub_0|Add2~19\)))) # (GND)
-- \add_sub_0|Add2~21\ = CARRY((\a[10]~input_o\ & ((\b[10]~input_o\) # (!\add_sub_0|Add2~19\))) # (!\a[10]~input_o\ & (\b[10]~input_o\ & !\add_sub_0|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \b[10]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~19\,
	combout => \add_sub_0|Add2~20_combout\,
	cout => \add_sub_0|Add2~21\);

-- Location: LCCOMB_X32_Y30_N22
\add_sub_0|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~22_combout\ = (\b[11]~input_o\ & ((\a[11]~input_o\ & (\add_sub_0|Add2~21\ & VCC)) # (!\a[11]~input_o\ & (!\add_sub_0|Add2~21\)))) # (!\b[11]~input_o\ & ((\a[11]~input_o\ & (!\add_sub_0|Add2~21\)) # (!\a[11]~input_o\ & 
-- ((\add_sub_0|Add2~21\) # (GND)))))
-- \add_sub_0|Add2~23\ = CARRY((\b[11]~input_o\ & (!\a[11]~input_o\ & !\add_sub_0|Add2~21\)) # (!\b[11]~input_o\ & ((!\add_sub_0|Add2~21\) # (!\a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~21\,
	combout => \add_sub_0|Add2~22_combout\,
	cout => \add_sub_0|Add2~23\);

-- Location: LCCOMB_X32_Y30_N24
\add_sub_0|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~24_combout\ = ((\a[12]~input_o\ $ (\b[12]~input_o\ $ (!\add_sub_0|Add2~23\)))) # (GND)
-- \add_sub_0|Add2~25\ = CARRY((\a[12]~input_o\ & ((\b[12]~input_o\) # (!\add_sub_0|Add2~23\))) # (!\a[12]~input_o\ & (\b[12]~input_o\ & !\add_sub_0|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \b[12]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~23\,
	combout => \add_sub_0|Add2~24_combout\,
	cout => \add_sub_0|Add2~25\);

-- Location: LCCOMB_X32_Y30_N26
\add_sub_0|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~26_combout\ = (\a[13]~input_o\ & ((\b[13]~input_o\ & (\add_sub_0|Add2~25\ & VCC)) # (!\b[13]~input_o\ & (!\add_sub_0|Add2~25\)))) # (!\a[13]~input_o\ & ((\b[13]~input_o\ & (!\add_sub_0|Add2~25\)) # (!\b[13]~input_o\ & 
-- ((\add_sub_0|Add2~25\) # (GND)))))
-- \add_sub_0|Add2~27\ = CARRY((\a[13]~input_o\ & (!\b[13]~input_o\ & !\add_sub_0|Add2~25\)) # (!\a[13]~input_o\ & ((!\add_sub_0|Add2~25\) # (!\b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \b[13]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~25\,
	combout => \add_sub_0|Add2~26_combout\,
	cout => \add_sub_0|Add2~27\);

-- Location: LCCOMB_X32_Y30_N28
\add_sub_0|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~28_combout\ = ((\a[14]~input_o\ $ (\b[14]~input_o\ $ (!\add_sub_0|Add2~27\)))) # (GND)
-- \add_sub_0|Add2~29\ = CARRY((\a[14]~input_o\ & ((\b[14]~input_o\) # (!\add_sub_0|Add2~27\))) # (!\a[14]~input_o\ & (\b[14]~input_o\ & !\add_sub_0|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \b[14]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~27\,
	combout => \add_sub_0|Add2~28_combout\,
	cout => \add_sub_0|Add2~29\);

-- Location: LCCOMB_X32_Y30_N30
\add_sub_0|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~30_combout\ = (\b[15]~input_o\ & ((\a[15]~input_o\ & (\add_sub_0|Add2~29\ & VCC)) # (!\a[15]~input_o\ & (!\add_sub_0|Add2~29\)))) # (!\b[15]~input_o\ & ((\a[15]~input_o\ & (!\add_sub_0|Add2~29\)) # (!\a[15]~input_o\ & 
-- ((\add_sub_0|Add2~29\) # (GND)))))
-- \add_sub_0|Add2~31\ = CARRY((\b[15]~input_o\ & (!\a[15]~input_o\ & !\add_sub_0|Add2~29\)) # (!\b[15]~input_o\ & ((!\add_sub_0|Add2~29\) # (!\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \a[15]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~29\,
	combout => \add_sub_0|Add2~30_combout\,
	cout => \add_sub_0|Add2~31\);

-- Location: LCCOMB_X32_Y29_N0
\add_sub_0|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~32_combout\ = ((\a[16]~input_o\ $ (\b[16]~input_o\ $ (!\add_sub_0|Add2~31\)))) # (GND)
-- \add_sub_0|Add2~33\ = CARRY((\a[16]~input_o\ & ((\b[16]~input_o\) # (!\add_sub_0|Add2~31\))) # (!\a[16]~input_o\ & (\b[16]~input_o\ & !\add_sub_0|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \b[16]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~31\,
	combout => \add_sub_0|Add2~32_combout\,
	cout => \add_sub_0|Add2~33\);

-- Location: LCCOMB_X32_Y29_N2
\add_sub_0|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~34_combout\ = (\a[17]~input_o\ & ((\b[17]~input_o\ & (\add_sub_0|Add2~33\ & VCC)) # (!\b[17]~input_o\ & (!\add_sub_0|Add2~33\)))) # (!\a[17]~input_o\ & ((\b[17]~input_o\ & (!\add_sub_0|Add2~33\)) # (!\b[17]~input_o\ & 
-- ((\add_sub_0|Add2~33\) # (GND)))))
-- \add_sub_0|Add2~35\ = CARRY((\a[17]~input_o\ & (!\b[17]~input_o\ & !\add_sub_0|Add2~33\)) # (!\a[17]~input_o\ & ((!\add_sub_0|Add2~33\) # (!\b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[17]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~33\,
	combout => \add_sub_0|Add2~34_combout\,
	cout => \add_sub_0|Add2~35\);

-- Location: LCCOMB_X32_Y29_N4
\add_sub_0|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~36_combout\ = ((\a[18]~input_o\ $ (\b[18]~input_o\ $ (!\add_sub_0|Add2~35\)))) # (GND)
-- \add_sub_0|Add2~37\ = CARRY((\a[18]~input_o\ & ((\b[18]~input_o\) # (!\add_sub_0|Add2~35\))) # (!\a[18]~input_o\ & (\b[18]~input_o\ & !\add_sub_0|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \b[18]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~35\,
	combout => \add_sub_0|Add2~36_combout\,
	cout => \add_sub_0|Add2~37\);

-- Location: LCCOMB_X32_Y29_N6
\add_sub_0|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~38_combout\ = (\a[19]~input_o\ & ((\b[19]~input_o\ & (\add_sub_0|Add2~37\ & VCC)) # (!\b[19]~input_o\ & (!\add_sub_0|Add2~37\)))) # (!\a[19]~input_o\ & ((\b[19]~input_o\ & (!\add_sub_0|Add2~37\)) # (!\b[19]~input_o\ & 
-- ((\add_sub_0|Add2~37\) # (GND)))))
-- \add_sub_0|Add2~39\ = CARRY((\a[19]~input_o\ & (!\b[19]~input_o\ & !\add_sub_0|Add2~37\)) # (!\a[19]~input_o\ & ((!\add_sub_0|Add2~37\) # (!\b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[19]~input_o\,
	datab => \b[19]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~37\,
	combout => \add_sub_0|Add2~38_combout\,
	cout => \add_sub_0|Add2~39\);

-- Location: LCCOMB_X32_Y29_N8
\add_sub_0|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~40_combout\ = ((\a[20]~input_o\ $ (\b[20]~input_o\ $ (!\add_sub_0|Add2~39\)))) # (GND)
-- \add_sub_0|Add2~41\ = CARRY((\a[20]~input_o\ & ((\b[20]~input_o\) # (!\add_sub_0|Add2~39\))) # (!\a[20]~input_o\ & (\b[20]~input_o\ & !\add_sub_0|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \b[20]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~39\,
	combout => \add_sub_0|Add2~40_combout\,
	cout => \add_sub_0|Add2~41\);

-- Location: LCCOMB_X32_Y29_N10
\add_sub_0|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~42_combout\ = (\a[21]~input_o\ & ((\b[21]~input_o\ & (\add_sub_0|Add2~41\ & VCC)) # (!\b[21]~input_o\ & (!\add_sub_0|Add2~41\)))) # (!\a[21]~input_o\ & ((\b[21]~input_o\ & (!\add_sub_0|Add2~41\)) # (!\b[21]~input_o\ & 
-- ((\add_sub_0|Add2~41\) # (GND)))))
-- \add_sub_0|Add2~43\ = CARRY((\a[21]~input_o\ & (!\b[21]~input_o\ & !\add_sub_0|Add2~41\)) # (!\a[21]~input_o\ & ((!\add_sub_0|Add2~41\) # (!\b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \b[21]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~41\,
	combout => \add_sub_0|Add2~42_combout\,
	cout => \add_sub_0|Add2~43\);

-- Location: LCCOMB_X32_Y29_N12
\add_sub_0|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~44_combout\ = ((\a[22]~input_o\ $ (\b[22]~input_o\ $ (!\add_sub_0|Add2~43\)))) # (GND)
-- \add_sub_0|Add2~45\ = CARRY((\a[22]~input_o\ & ((\b[22]~input_o\) # (!\add_sub_0|Add2~43\))) # (!\a[22]~input_o\ & (\b[22]~input_o\ & !\add_sub_0|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~43\,
	combout => \add_sub_0|Add2~44_combout\,
	cout => \add_sub_0|Add2~45\);

-- Location: LCCOMB_X32_Y29_N14
\add_sub_0|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~46_combout\ = (\b[23]~input_o\ & ((\a[23]~input_o\ & (\add_sub_0|Add2~45\ & VCC)) # (!\a[23]~input_o\ & (!\add_sub_0|Add2~45\)))) # (!\b[23]~input_o\ & ((\a[23]~input_o\ & (!\add_sub_0|Add2~45\)) # (!\a[23]~input_o\ & 
-- ((\add_sub_0|Add2~45\) # (GND)))))
-- \add_sub_0|Add2~47\ = CARRY((\b[23]~input_o\ & (!\a[23]~input_o\ & !\add_sub_0|Add2~45\)) # (!\b[23]~input_o\ & ((!\add_sub_0|Add2~45\) # (!\a[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \a[23]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~45\,
	combout => \add_sub_0|Add2~46_combout\,
	cout => \add_sub_0|Add2~47\);

-- Location: LCCOMB_X32_Y29_N16
\add_sub_0|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~48_combout\ = ((\a[24]~input_o\ $ (\b[24]~input_o\ $ (!\add_sub_0|Add2~47\)))) # (GND)
-- \add_sub_0|Add2~49\ = CARRY((\a[24]~input_o\ & ((\b[24]~input_o\) # (!\add_sub_0|Add2~47\))) # (!\a[24]~input_o\ & (\b[24]~input_o\ & !\add_sub_0|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \b[24]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~47\,
	combout => \add_sub_0|Add2~48_combout\,
	cout => \add_sub_0|Add2~49\);

-- Location: LCCOMB_X32_Y29_N18
\add_sub_0|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~50_combout\ = (\b[25]~input_o\ & ((\a[25]~input_o\ & (\add_sub_0|Add2~49\ & VCC)) # (!\a[25]~input_o\ & (!\add_sub_0|Add2~49\)))) # (!\b[25]~input_o\ & ((\a[25]~input_o\ & (!\add_sub_0|Add2~49\)) # (!\a[25]~input_o\ & 
-- ((\add_sub_0|Add2~49\) # (GND)))))
-- \add_sub_0|Add2~51\ = CARRY((\b[25]~input_o\ & (!\a[25]~input_o\ & !\add_sub_0|Add2~49\)) # (!\b[25]~input_o\ & ((!\add_sub_0|Add2~49\) # (!\a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \a[25]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~49\,
	combout => \add_sub_0|Add2~50_combout\,
	cout => \add_sub_0|Add2~51\);

-- Location: LCCOMB_X32_Y29_N20
\add_sub_0|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~52_combout\ = ((\a[26]~input_o\ $ (\b[26]~input_o\ $ (!\add_sub_0|Add2~51\)))) # (GND)
-- \add_sub_0|Add2~53\ = CARRY((\a[26]~input_o\ & ((\b[26]~input_o\) # (!\add_sub_0|Add2~51\))) # (!\a[26]~input_o\ & (\b[26]~input_o\ & !\add_sub_0|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[26]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~51\,
	combout => \add_sub_0|Add2~52_combout\,
	cout => \add_sub_0|Add2~53\);

-- Location: LCCOMB_X32_Y29_N22
\add_sub_0|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~54_combout\ = (\a[27]~input_o\ & ((\b[27]~input_o\ & (\add_sub_0|Add2~53\ & VCC)) # (!\b[27]~input_o\ & (!\add_sub_0|Add2~53\)))) # (!\a[27]~input_o\ & ((\b[27]~input_o\ & (!\add_sub_0|Add2~53\)) # (!\b[27]~input_o\ & 
-- ((\add_sub_0|Add2~53\) # (GND)))))
-- \add_sub_0|Add2~55\ = CARRY((\a[27]~input_o\ & (!\b[27]~input_o\ & !\add_sub_0|Add2~53\)) # (!\a[27]~input_o\ & ((!\add_sub_0|Add2~53\) # (!\b[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \b[27]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~53\,
	combout => \add_sub_0|Add2~54_combout\,
	cout => \add_sub_0|Add2~55\);

-- Location: LCCOMB_X32_Y29_N24
\add_sub_0|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~56_combout\ = ((\b[28]~input_o\ $ (\a[28]~input_o\ $ (!\add_sub_0|Add2~55\)))) # (GND)
-- \add_sub_0|Add2~57\ = CARRY((\b[28]~input_o\ & ((\a[28]~input_o\) # (!\add_sub_0|Add2~55\))) # (!\b[28]~input_o\ & (\a[28]~input_o\ & !\add_sub_0|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~55\,
	combout => \add_sub_0|Add2~56_combout\,
	cout => \add_sub_0|Add2~57\);

-- Location: LCCOMB_X32_Y29_N26
\add_sub_0|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~58_combout\ = (\a[29]~input_o\ & ((\b[29]~input_o\ & (\add_sub_0|Add2~57\ & VCC)) # (!\b[29]~input_o\ & (!\add_sub_0|Add2~57\)))) # (!\a[29]~input_o\ & ((\b[29]~input_o\ & (!\add_sub_0|Add2~57\)) # (!\b[29]~input_o\ & 
-- ((\add_sub_0|Add2~57\) # (GND)))))
-- \add_sub_0|Add2~59\ = CARRY((\a[29]~input_o\ & (!\b[29]~input_o\ & !\add_sub_0|Add2~57\)) # (!\a[29]~input_o\ & ((!\add_sub_0|Add2~57\) # (!\b[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \b[29]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~57\,
	combout => \add_sub_0|Add2~58_combout\,
	cout => \add_sub_0|Add2~59\);

-- Location: LCCOMB_X32_Y29_N28
\add_sub_0|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~60_combout\ = ((\a[30]~input_o\ $ (\b[30]~input_o\ $ (!\add_sub_0|Add2~59\)))) # (GND)
-- \add_sub_0|Add2~61\ = CARRY((\a[30]~input_o\ & ((\b[30]~input_o\) # (!\add_sub_0|Add2~59\))) # (!\a[30]~input_o\ & (\b[30]~input_o\ & !\add_sub_0|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[30]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add2~59\,
	combout => \add_sub_0|Add2~60_combout\,
	cout => \add_sub_0|Add2~61\);

-- Location: LCCOMB_X32_Y29_N30
\add_sub_0|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add2~62_combout\ = \b[31]~input_o\ $ (\add_sub_0|Add2~61\ $ (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	cin => \add_sub_0|Add2~61\,
	combout => \add_sub_0|Add2~62_combout\);

-- Location: LCCOMB_X31_Y30_N0
\add_sub_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~0_combout\ = (\a[0]~input_o\ & ((\add_sub_0|r[0]~30_combout\) # (GND))) # (!\a[0]~input_o\ & (\add_sub_0|r[0]~30_combout\ $ (VCC)))
-- \add_sub_0|Add0~1\ = CARRY((\a[0]~input_o\) # (\add_sub_0|r[0]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \add_sub_0|r[0]~30_combout\,
	datad => VCC,
	combout => \add_sub_0|Add0~0_combout\,
	cout => \add_sub_0|Add0~1\);

-- Location: LCCOMB_X37_Y30_N28
\add_sub_0|r[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[0]~30_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~0_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~0_combout\,
	datac => \add_sub_0|Add0~0_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[0]~30_combout\);

-- Location: LCCOMB_X31_Y30_N2
\add_sub_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~2_combout\ = (\a[1]~input_o\ & ((\add_sub_0|r[1]~29_combout\ & (\add_sub_0|Add0~1\ & VCC)) # (!\add_sub_0|r[1]~29_combout\ & (!\add_sub_0|Add0~1\)))) # (!\a[1]~input_o\ & ((\add_sub_0|r[1]~29_combout\ & (!\add_sub_0|Add0~1\)) # 
-- (!\add_sub_0|r[1]~29_combout\ & ((\add_sub_0|Add0~1\) # (GND)))))
-- \add_sub_0|Add0~3\ = CARRY((\a[1]~input_o\ & (!\add_sub_0|r[1]~29_combout\ & !\add_sub_0|Add0~1\)) # (!\a[1]~input_o\ & ((!\add_sub_0|Add0~1\) # (!\add_sub_0|r[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \add_sub_0|r[1]~29_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~1\,
	combout => \add_sub_0|Add0~2_combout\,
	cout => \add_sub_0|Add0~3\);

-- Location: LCCOMB_X29_Y29_N12
\add_sub_0|r[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[1]~29_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~2_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~2_combout\,
	datac => \add_sub_0|Add0~2_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[1]~29_combout\);

-- Location: LCCOMB_X31_Y30_N4
\add_sub_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~4_combout\ = ((\add_sub_0|r[2]~28_combout\ $ (\a[2]~input_o\ $ (!\add_sub_0|Add0~3\)))) # (GND)
-- \add_sub_0|Add0~5\ = CARRY((\add_sub_0|r[2]~28_combout\ & ((\a[2]~input_o\) # (!\add_sub_0|Add0~3\))) # (!\add_sub_0|r[2]~28_combout\ & (\a[2]~input_o\ & !\add_sub_0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[2]~28_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~3\,
	combout => \add_sub_0|Add0~4_combout\,
	cout => \add_sub_0|Add0~5\);

-- Location: LCCOMB_X31_Y28_N14
\add_sub_0|r[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[2]~28_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~4_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \add_sub_0|Add2~4_combout\,
	datac => \add_sub_0|Add0~4_combout\,
	combout => \add_sub_0|r[2]~28_combout\);

-- Location: LCCOMB_X31_Y30_N6
\add_sub_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~6_combout\ = (\a[3]~input_o\ & ((\add_sub_0|r[3]~27_combout\ & (\add_sub_0|Add0~5\ & VCC)) # (!\add_sub_0|r[3]~27_combout\ & (!\add_sub_0|Add0~5\)))) # (!\a[3]~input_o\ & ((\add_sub_0|r[3]~27_combout\ & (!\add_sub_0|Add0~5\)) # 
-- (!\add_sub_0|r[3]~27_combout\ & ((\add_sub_0|Add0~5\) # (GND)))))
-- \add_sub_0|Add0~7\ = CARRY((\a[3]~input_o\ & (!\add_sub_0|r[3]~27_combout\ & !\add_sub_0|Add0~5\)) # (!\a[3]~input_o\ & ((!\add_sub_0|Add0~5\) # (!\add_sub_0|r[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \add_sub_0|r[3]~27_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~5\,
	combout => \add_sub_0|Add0~6_combout\,
	cout => \add_sub_0|Add0~7\);

-- Location: LCCOMB_X34_Y29_N26
\add_sub_0|r[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[3]~27_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~6_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~6_combout\,
	datac => \add_sub_0|Add0~6_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[3]~27_combout\);

-- Location: LCCOMB_X31_Y30_N8
\add_sub_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~8_combout\ = ((\add_sub_0|r[4]~26_combout\ $ (\a[4]~input_o\ $ (!\add_sub_0|Add0~7\)))) # (GND)
-- \add_sub_0|Add0~9\ = CARRY((\add_sub_0|r[4]~26_combout\ & ((\a[4]~input_o\) # (!\add_sub_0|Add0~7\))) # (!\add_sub_0|r[4]~26_combout\ & (\a[4]~input_o\ & !\add_sub_0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[4]~26_combout\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~7\,
	combout => \add_sub_0|Add0~8_combout\,
	cout => \add_sub_0|Add0~9\);

-- Location: LCCOMB_X34_Y29_N28
\add_sub_0|r[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[4]~26_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~8_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~8_combout\,
	datac => \add_sub_0|Add0~8_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[4]~26_combout\);

-- Location: LCCOMB_X31_Y30_N10
\add_sub_0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~10_combout\ = (\add_sub_0|r[5]~25_combout\ & ((\a[5]~input_o\ & (\add_sub_0|Add0~9\ & VCC)) # (!\a[5]~input_o\ & (!\add_sub_0|Add0~9\)))) # (!\add_sub_0|r[5]~25_combout\ & ((\a[5]~input_o\ & (!\add_sub_0|Add0~9\)) # (!\a[5]~input_o\ & 
-- ((\add_sub_0|Add0~9\) # (GND)))))
-- \add_sub_0|Add0~11\ = CARRY((\add_sub_0|r[5]~25_combout\ & (!\a[5]~input_o\ & !\add_sub_0|Add0~9\)) # (!\add_sub_0|r[5]~25_combout\ & ((!\add_sub_0|Add0~9\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[5]~25_combout\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~9\,
	combout => \add_sub_0|Add0~10_combout\,
	cout => \add_sub_0|Add0~11\);

-- Location: LCCOMB_X31_Y28_N12
\add_sub_0|r[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[5]~25_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~10_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~10_combout\,
	datac => \op[3]~input_o\,
	datad => \add_sub_0|Add0~10_combout\,
	combout => \add_sub_0|r[5]~25_combout\);

-- Location: LCCOMB_X31_Y30_N12
\add_sub_0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~12_combout\ = ((\add_sub_0|r[6]~24_combout\ $ (\a[6]~input_o\ $ (!\add_sub_0|Add0~11\)))) # (GND)
-- \add_sub_0|Add0~13\ = CARRY((\add_sub_0|r[6]~24_combout\ & ((\a[6]~input_o\) # (!\add_sub_0|Add0~11\))) # (!\add_sub_0|r[6]~24_combout\ & (\a[6]~input_o\ & !\add_sub_0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[6]~24_combout\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~11\,
	combout => \add_sub_0|Add0~12_combout\,
	cout => \add_sub_0|Add0~13\);

-- Location: LCCOMB_X30_Y30_N16
\add_sub_0|r[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[6]~24_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~12_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~12_combout\,
	datac => \add_sub_0|Add0~12_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[6]~24_combout\);

-- Location: LCCOMB_X31_Y30_N14
\add_sub_0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~14_combout\ = (\a[7]~input_o\ & ((\add_sub_0|r[7]~23_combout\ & (\add_sub_0|Add0~13\ & VCC)) # (!\add_sub_0|r[7]~23_combout\ & (!\add_sub_0|Add0~13\)))) # (!\a[7]~input_o\ & ((\add_sub_0|r[7]~23_combout\ & (!\add_sub_0|Add0~13\)) # 
-- (!\add_sub_0|r[7]~23_combout\ & ((\add_sub_0|Add0~13\) # (GND)))))
-- \add_sub_0|Add0~15\ = CARRY((\a[7]~input_o\ & (!\add_sub_0|r[7]~23_combout\ & !\add_sub_0|Add0~13\)) # (!\a[7]~input_o\ & ((!\add_sub_0|Add0~13\) # (!\add_sub_0|r[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \add_sub_0|r[7]~23_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~13\,
	combout => \add_sub_0|Add0~14_combout\,
	cout => \add_sub_0|Add0~15\);

-- Location: LCCOMB_X32_Y28_N4
\add_sub_0|r[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[7]~23_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~14_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~14_combout\,
	datac => \add_sub_0|Add0~14_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[7]~23_combout\);

-- Location: LCCOMB_X31_Y30_N16
\add_sub_0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~16_combout\ = ((\a[8]~input_o\ $ (\add_sub_0|r[8]~22_combout\ $ (!\add_sub_0|Add0~15\)))) # (GND)
-- \add_sub_0|Add0~17\ = CARRY((\a[8]~input_o\ & ((\add_sub_0|r[8]~22_combout\) # (!\add_sub_0|Add0~15\))) # (!\a[8]~input_o\ & (\add_sub_0|r[8]~22_combout\ & !\add_sub_0|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \add_sub_0|r[8]~22_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~15\,
	combout => \add_sub_0|Add0~16_combout\,
	cout => \add_sub_0|Add0~17\);

-- Location: LCCOMB_X31_Y28_N2
\add_sub_0|r[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[8]~22_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~16_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~16_combout\,
	datab => \add_sub_0|Add0~16_combout\,
	datac => \op[3]~input_o\,
	combout => \add_sub_0|r[8]~22_combout\);

-- Location: LCCOMB_X31_Y30_N18
\add_sub_0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~18_combout\ = (\add_sub_0|r[9]~21_combout\ & ((\a[9]~input_o\ & (\add_sub_0|Add0~17\ & VCC)) # (!\a[9]~input_o\ & (!\add_sub_0|Add0~17\)))) # (!\add_sub_0|r[9]~21_combout\ & ((\a[9]~input_o\ & (!\add_sub_0|Add0~17\)) # (!\a[9]~input_o\ & 
-- ((\add_sub_0|Add0~17\) # (GND)))))
-- \add_sub_0|Add0~19\ = CARRY((\add_sub_0|r[9]~21_combout\ & (!\a[9]~input_o\ & !\add_sub_0|Add0~17\)) # (!\add_sub_0|r[9]~21_combout\ & ((!\add_sub_0|Add0~17\) # (!\a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[9]~21_combout\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~17\,
	combout => \add_sub_0|Add0~18_combout\,
	cout => \add_sub_0|Add0~19\);

-- Location: LCCOMB_X30_Y29_N18
\add_sub_0|r[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[9]~21_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~18_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~18_combout\,
	datad => \add_sub_0|Add0~18_combout\,
	combout => \add_sub_0|r[9]~21_combout\);

-- Location: LCCOMB_X31_Y30_N20
\add_sub_0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~20_combout\ = ((\a[10]~input_o\ $ (\add_sub_0|r[10]~20_combout\ $ (!\add_sub_0|Add0~19\)))) # (GND)
-- \add_sub_0|Add0~21\ = CARRY((\a[10]~input_o\ & ((\add_sub_0|r[10]~20_combout\) # (!\add_sub_0|Add0~19\))) # (!\a[10]~input_o\ & (\add_sub_0|r[10]~20_combout\ & !\add_sub_0|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \add_sub_0|r[10]~20_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~19\,
	combout => \add_sub_0|Add0~20_combout\,
	cout => \add_sub_0|Add0~21\);

-- Location: LCCOMB_X37_Y30_N4
\add_sub_0|r[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[10]~20_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~20_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~20_combout\,
	datac => \add_sub_0|Add0~20_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[10]~20_combout\);

-- Location: LCCOMB_X31_Y30_N22
\add_sub_0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~22_combout\ = (\a[11]~input_o\ & ((\add_sub_0|r[11]~19_combout\ & (\add_sub_0|Add0~21\ & VCC)) # (!\add_sub_0|r[11]~19_combout\ & (!\add_sub_0|Add0~21\)))) # (!\a[11]~input_o\ & ((\add_sub_0|r[11]~19_combout\ & (!\add_sub_0|Add0~21\)) # 
-- (!\add_sub_0|r[11]~19_combout\ & ((\add_sub_0|Add0~21\) # (GND)))))
-- \add_sub_0|Add0~23\ = CARRY((\a[11]~input_o\ & (!\add_sub_0|r[11]~19_combout\ & !\add_sub_0|Add0~21\)) # (!\a[11]~input_o\ & ((!\add_sub_0|Add0~21\) # (!\add_sub_0|r[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \add_sub_0|r[11]~19_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~21\,
	combout => \add_sub_0|Add0~22_combout\,
	cout => \add_sub_0|Add0~23\);

-- Location: LCCOMB_X30_Y30_N18
\add_sub_0|r[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[11]~19_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~22_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \add_sub_0|Add2~22_combout\,
	datad => \add_sub_0|Add0~22_combout\,
	combout => \add_sub_0|r[11]~19_combout\);

-- Location: LCCOMB_X31_Y30_N24
\add_sub_0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~24_combout\ = ((\add_sub_0|r[12]~18_combout\ $ (\a[12]~input_o\ $ (!\add_sub_0|Add0~23\)))) # (GND)
-- \add_sub_0|Add0~25\ = CARRY((\add_sub_0|r[12]~18_combout\ & ((\a[12]~input_o\) # (!\add_sub_0|Add0~23\))) # (!\add_sub_0|r[12]~18_combout\ & (\a[12]~input_o\ & !\add_sub_0|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[12]~18_combout\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~23\,
	combout => \add_sub_0|Add0~24_combout\,
	cout => \add_sub_0|Add0~25\);

-- Location: LCCOMB_X30_Y30_N12
\add_sub_0|r[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[12]~18_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~24_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \add_sub_0|Add2~24_combout\,
	datac => \add_sub_0|Add0~24_combout\,
	combout => \add_sub_0|r[12]~18_combout\);

-- Location: LCCOMB_X31_Y30_N26
\add_sub_0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~26_combout\ = (\a[13]~input_o\ & ((\add_sub_0|r[13]~17_combout\ & (\add_sub_0|Add0~25\ & VCC)) # (!\add_sub_0|r[13]~17_combout\ & (!\add_sub_0|Add0~25\)))) # (!\a[13]~input_o\ & ((\add_sub_0|r[13]~17_combout\ & (!\add_sub_0|Add0~25\)) # 
-- (!\add_sub_0|r[13]~17_combout\ & ((\add_sub_0|Add0~25\) # (GND)))))
-- \add_sub_0|Add0~27\ = CARRY((\a[13]~input_o\ & (!\add_sub_0|r[13]~17_combout\ & !\add_sub_0|Add0~25\)) # (!\a[13]~input_o\ & ((!\add_sub_0|Add0~25\) # (!\add_sub_0|r[13]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \add_sub_0|r[13]~17_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~25\,
	combout => \add_sub_0|Add0~26_combout\,
	cout => \add_sub_0|Add0~27\);

-- Location: LCCOMB_X30_Y30_N30
\add_sub_0|r[13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[13]~17_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~26_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \add_sub_0|Add2~26_combout\,
	datad => \add_sub_0|Add0~26_combout\,
	combout => \add_sub_0|r[13]~17_combout\);

-- Location: LCCOMB_X31_Y30_N28
\add_sub_0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~28_combout\ = ((\add_sub_0|r[14]~16_combout\ $ (\a[14]~input_o\ $ (!\add_sub_0|Add0~27\)))) # (GND)
-- \add_sub_0|Add0~29\ = CARRY((\add_sub_0|r[14]~16_combout\ & ((\a[14]~input_o\) # (!\add_sub_0|Add0~27\))) # (!\add_sub_0|r[14]~16_combout\ & (\a[14]~input_o\ & !\add_sub_0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[14]~16_combout\,
	datab => \a[14]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~27\,
	combout => \add_sub_0|Add0~28_combout\,
	cout => \add_sub_0|Add0~29\);

-- Location: LCCOMB_X29_Y29_N18
\add_sub_0|r[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[14]~16_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~28_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~28_combout\,
	datac => \add_sub_0|Add0~28_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[14]~16_combout\);

-- Location: LCCOMB_X31_Y30_N30
\add_sub_0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~30_combout\ = (\add_sub_0|r[15]~15_combout\ & ((\a[15]~input_o\ & (\add_sub_0|Add0~29\ & VCC)) # (!\a[15]~input_o\ & (!\add_sub_0|Add0~29\)))) # (!\add_sub_0|r[15]~15_combout\ & ((\a[15]~input_o\ & (!\add_sub_0|Add0~29\)) # 
-- (!\a[15]~input_o\ & ((\add_sub_0|Add0~29\) # (GND)))))
-- \add_sub_0|Add0~31\ = CARRY((\add_sub_0|r[15]~15_combout\ & (!\a[15]~input_o\ & !\add_sub_0|Add0~29\)) # (!\add_sub_0|r[15]~15_combout\ & ((!\add_sub_0|Add0~29\) # (!\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[15]~15_combout\,
	datab => \a[15]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~29\,
	combout => \add_sub_0|Add0~30_combout\,
	cout => \add_sub_0|Add0~31\);

-- Location: LCCOMB_X30_Y30_N0
\add_sub_0|r[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[15]~15_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~30_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~30_combout\,
	datac => \add_sub_0|Add0~30_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[15]~15_combout\);

-- Location: LCCOMB_X31_Y29_N0
\add_sub_0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~32_combout\ = ((\a[16]~input_o\ $ (\add_sub_0|r[16]~14_combout\ $ (!\add_sub_0|Add0~31\)))) # (GND)
-- \add_sub_0|Add0~33\ = CARRY((\a[16]~input_o\ & ((\add_sub_0|r[16]~14_combout\) # (!\add_sub_0|Add0~31\))) # (!\a[16]~input_o\ & (\add_sub_0|r[16]~14_combout\ & !\add_sub_0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \add_sub_0|r[16]~14_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~31\,
	combout => \add_sub_0|Add0~32_combout\,
	cout => \add_sub_0|Add0~33\);

-- Location: LCCOMB_X32_Y28_N12
\add_sub_0|r[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[16]~14_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~32_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~32_combout\,
	datac => \add_sub_0|Add0~32_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[16]~14_combout\);

-- Location: LCCOMB_X31_Y29_N2
\add_sub_0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~34_combout\ = (\a[17]~input_o\ & ((\add_sub_0|r[17]~13_combout\ & (\add_sub_0|Add0~33\ & VCC)) # (!\add_sub_0|r[17]~13_combout\ & (!\add_sub_0|Add0~33\)))) # (!\a[17]~input_o\ & ((\add_sub_0|r[17]~13_combout\ & (!\add_sub_0|Add0~33\)) # 
-- (!\add_sub_0|r[17]~13_combout\ & ((\add_sub_0|Add0~33\) # (GND)))))
-- \add_sub_0|Add0~35\ = CARRY((\a[17]~input_o\ & (!\add_sub_0|r[17]~13_combout\ & !\add_sub_0|Add0~33\)) # (!\a[17]~input_o\ & ((!\add_sub_0|Add0~33\) # (!\add_sub_0|r[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \add_sub_0|r[17]~13_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~33\,
	combout => \add_sub_0|Add0~34_combout\,
	cout => \add_sub_0|Add0~35\);

-- Location: LCCOMB_X32_Y28_N6
\add_sub_0|r[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[17]~13_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~34_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~34_combout\,
	datad => \add_sub_0|Add0~34_combout\,
	combout => \add_sub_0|r[17]~13_combout\);

-- Location: LCCOMB_X31_Y29_N4
\add_sub_0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~36_combout\ = ((\a[18]~input_o\ $ (\add_sub_0|r[18]~12_combout\ $ (!\add_sub_0|Add0~35\)))) # (GND)
-- \add_sub_0|Add0~37\ = CARRY((\a[18]~input_o\ & ((\add_sub_0|r[18]~12_combout\) # (!\add_sub_0|Add0~35\))) # (!\a[18]~input_o\ & (\add_sub_0|r[18]~12_combout\ & !\add_sub_0|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \add_sub_0|r[18]~12_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~35\,
	combout => \add_sub_0|Add0~36_combout\,
	cout => \add_sub_0|Add0~37\);

-- Location: LCCOMB_X32_Y28_N0
\add_sub_0|r[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[18]~12_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~36_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~36_combout\,
	datac => \add_sub_0|Add0~36_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[18]~12_combout\);

-- Location: LCCOMB_X31_Y29_N6
\add_sub_0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~38_combout\ = (\a[19]~input_o\ & ((\add_sub_0|r[19]~11_combout\ & (\add_sub_0|Add0~37\ & VCC)) # (!\add_sub_0|r[19]~11_combout\ & (!\add_sub_0|Add0~37\)))) # (!\a[19]~input_o\ & ((\add_sub_0|r[19]~11_combout\ & (!\add_sub_0|Add0~37\)) # 
-- (!\add_sub_0|r[19]~11_combout\ & ((\add_sub_0|Add0~37\) # (GND)))))
-- \add_sub_0|Add0~39\ = CARRY((\a[19]~input_o\ & (!\add_sub_0|r[19]~11_combout\ & !\add_sub_0|Add0~37\)) # (!\a[19]~input_o\ & ((!\add_sub_0|Add0~37\) # (!\add_sub_0|r[19]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[19]~input_o\,
	datab => \add_sub_0|r[19]~11_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~37\,
	combout => \add_sub_0|Add0~38_combout\,
	cout => \add_sub_0|Add0~39\);

-- Location: LCCOMB_X32_Y28_N10
\add_sub_0|r[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[19]~11_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~38_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~38_combout\,
	datac => \add_sub_0|Add0~38_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[19]~11_combout\);

-- Location: LCCOMB_X31_Y29_N8
\add_sub_0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~40_combout\ = ((\add_sub_0|r[20]~10_combout\ $ (\a[20]~input_o\ $ (!\add_sub_0|Add0~39\)))) # (GND)
-- \add_sub_0|Add0~41\ = CARRY((\add_sub_0|r[20]~10_combout\ & ((\a[20]~input_o\) # (!\add_sub_0|Add0~39\))) # (!\add_sub_0|r[20]~10_combout\ & (\a[20]~input_o\ & !\add_sub_0|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[20]~10_combout\,
	datab => \a[20]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~39\,
	combout => \add_sub_0|Add0~40_combout\,
	cout => \add_sub_0|Add0~41\);

-- Location: LCCOMB_X34_Y29_N6
\add_sub_0|r[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[20]~10_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~40_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~40_combout\,
	datac => \add_sub_0|Add0~40_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[20]~10_combout\);

-- Location: LCCOMB_X31_Y29_N10
\add_sub_0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~42_combout\ = (\a[21]~input_o\ & ((\add_sub_0|r[21]~9_combout\ & (\add_sub_0|Add0~41\ & VCC)) # (!\add_sub_0|r[21]~9_combout\ & (!\add_sub_0|Add0~41\)))) # (!\a[21]~input_o\ & ((\add_sub_0|r[21]~9_combout\ & (!\add_sub_0|Add0~41\)) # 
-- (!\add_sub_0|r[21]~9_combout\ & ((\add_sub_0|Add0~41\) # (GND)))))
-- \add_sub_0|Add0~43\ = CARRY((\a[21]~input_o\ & (!\add_sub_0|r[21]~9_combout\ & !\add_sub_0|Add0~41\)) # (!\a[21]~input_o\ & ((!\add_sub_0|Add0~41\) # (!\add_sub_0|r[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \add_sub_0|r[21]~9_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~41\,
	combout => \add_sub_0|Add0~42_combout\,
	cout => \add_sub_0|Add0~43\);

-- Location: LCCOMB_X29_Y29_N4
\add_sub_0|r[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[21]~9_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~42_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~42_combout\,
	datac => \add_sub_0|Add0~42_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[21]~9_combout\);

-- Location: LCCOMB_X31_Y29_N12
\add_sub_0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~44_combout\ = ((\add_sub_0|r[22]~8_combout\ $ (\a[22]~input_o\ $ (!\add_sub_0|Add0~43\)))) # (GND)
-- \add_sub_0|Add0~45\ = CARRY((\add_sub_0|r[22]~8_combout\ & ((\a[22]~input_o\) # (!\add_sub_0|Add0~43\))) # (!\add_sub_0|r[22]~8_combout\ & (\a[22]~input_o\ & !\add_sub_0|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[22]~8_combout\,
	datab => \a[22]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~43\,
	combout => \add_sub_0|Add0~44_combout\,
	cout => \add_sub_0|Add0~45\);

-- Location: LCCOMB_X31_Y28_N0
\add_sub_0|r[22]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[22]~8_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~44_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datac => \add_sub_0|Add2~44_combout\,
	datad => \add_sub_0|Add0~44_combout\,
	combout => \add_sub_0|r[22]~8_combout\);

-- Location: LCCOMB_X31_Y29_N14
\add_sub_0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~46_combout\ = (\a[23]~input_o\ & ((\add_sub_0|r[23]~7_combout\ & (\add_sub_0|Add0~45\ & VCC)) # (!\add_sub_0|r[23]~7_combout\ & (!\add_sub_0|Add0~45\)))) # (!\a[23]~input_o\ & ((\add_sub_0|r[23]~7_combout\ & (!\add_sub_0|Add0~45\)) # 
-- (!\add_sub_0|r[23]~7_combout\ & ((\add_sub_0|Add0~45\) # (GND)))))
-- \add_sub_0|Add0~47\ = CARRY((\a[23]~input_o\ & (!\add_sub_0|r[23]~7_combout\ & !\add_sub_0|Add0~45\)) # (!\a[23]~input_o\ & ((!\add_sub_0|Add0~45\) # (!\add_sub_0|r[23]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \add_sub_0|r[23]~7_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~45\,
	combout => \add_sub_0|Add0~46_combout\,
	cout => \add_sub_0|Add0~47\);

-- Location: LCCOMB_X29_Y29_N26
\add_sub_0|r[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[23]~7_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~46_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~46_combout\,
	datac => \add_sub_0|Add0~46_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[23]~7_combout\);

-- Location: LCCOMB_X31_Y29_N16
\add_sub_0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~48_combout\ = ((\add_sub_0|r[24]~6_combout\ $ (\a[24]~input_o\ $ (!\add_sub_0|Add0~47\)))) # (GND)
-- \add_sub_0|Add0~49\ = CARRY((\add_sub_0|r[24]~6_combout\ & ((\a[24]~input_o\) # (!\add_sub_0|Add0~47\))) # (!\add_sub_0|r[24]~6_combout\ & (\a[24]~input_o\ & !\add_sub_0|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[24]~6_combout\,
	datab => \a[24]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~47\,
	combout => \add_sub_0|Add0~48_combout\,
	cout => \add_sub_0|Add0~49\);

-- Location: LCCOMB_X34_Y29_N24
\add_sub_0|r[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[24]~6_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~48_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~48_combout\,
	datac => \add_sub_0|Add0~48_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[24]~6_combout\);

-- Location: LCCOMB_X31_Y29_N18
\add_sub_0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~50_combout\ = (\a[25]~input_o\ & ((\add_sub_0|r[25]~5_combout\ & (\add_sub_0|Add0~49\ & VCC)) # (!\add_sub_0|r[25]~5_combout\ & (!\add_sub_0|Add0~49\)))) # (!\a[25]~input_o\ & ((\add_sub_0|r[25]~5_combout\ & (!\add_sub_0|Add0~49\)) # 
-- (!\add_sub_0|r[25]~5_combout\ & ((\add_sub_0|Add0~49\) # (GND)))))
-- \add_sub_0|Add0~51\ = CARRY((\a[25]~input_o\ & (!\add_sub_0|r[25]~5_combout\ & !\add_sub_0|Add0~49\)) # (!\a[25]~input_o\ & ((!\add_sub_0|Add0~49\) # (!\add_sub_0|r[25]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \add_sub_0|r[25]~5_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~49\,
	combout => \add_sub_0|Add0~50_combout\,
	cout => \add_sub_0|Add0~51\);

-- Location: LCCOMB_X34_Y29_N18
\add_sub_0|r[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[25]~5_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~50_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~50_combout\,
	datac => \add_sub_0|Add0~50_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[25]~5_combout\);

-- Location: LCCOMB_X31_Y29_N20
\add_sub_0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~52_combout\ = ((\add_sub_0|r[26]~4_combout\ $ (\a[26]~input_o\ $ (!\add_sub_0|Add0~51\)))) # (GND)
-- \add_sub_0|Add0~53\ = CARRY((\add_sub_0|r[26]~4_combout\ & ((\a[26]~input_o\) # (!\add_sub_0|Add0~51\))) # (!\add_sub_0|r[26]~4_combout\ & (\a[26]~input_o\ & !\add_sub_0|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[26]~4_combout\,
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~51\,
	combout => \add_sub_0|Add0~52_combout\,
	cout => \add_sub_0|Add0~53\);

-- Location: LCCOMB_X30_Y29_N12
\add_sub_0|r[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[26]~4_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~52_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|Add2~52_combout\,
	datac => \add_sub_0|Add0~52_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[26]~4_combout\);

-- Location: LCCOMB_X31_Y29_N22
\add_sub_0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~54_combout\ = (\a[27]~input_o\ & ((\add_sub_0|r[27]~3_combout\ & (\add_sub_0|Add0~53\ & VCC)) # (!\add_sub_0|r[27]~3_combout\ & (!\add_sub_0|Add0~53\)))) # (!\a[27]~input_o\ & ((\add_sub_0|r[27]~3_combout\ & (!\add_sub_0|Add0~53\)) # 
-- (!\add_sub_0|r[27]~3_combout\ & ((\add_sub_0|Add0~53\) # (GND)))))
-- \add_sub_0|Add0~55\ = CARRY((\a[27]~input_o\ & (!\add_sub_0|r[27]~3_combout\ & !\add_sub_0|Add0~53\)) # (!\a[27]~input_o\ & ((!\add_sub_0|Add0~53\) # (!\add_sub_0|r[27]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \add_sub_0|r[27]~3_combout\,
	datad => VCC,
	cin => \add_sub_0|Add0~53\,
	combout => \add_sub_0|Add0~54_combout\,
	cout => \add_sub_0|Add0~55\);

-- Location: LCCOMB_X30_Y29_N6
\add_sub_0|r[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[27]~3_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~54_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~54_combout\,
	datad => \add_sub_0|Add0~54_combout\,
	combout => \add_sub_0|r[27]~3_combout\);

-- Location: LCCOMB_X31_Y29_N24
\add_sub_0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~56_combout\ = ((\add_sub_0|r[28]~2_combout\ $ (\a[28]~input_o\ $ (!\add_sub_0|Add0~55\)))) # (GND)
-- \add_sub_0|Add0~57\ = CARRY((\add_sub_0|r[28]~2_combout\ & ((\a[28]~input_o\) # (!\add_sub_0|Add0~55\))) # (!\add_sub_0|r[28]~2_combout\ & (\a[28]~input_o\ & !\add_sub_0|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[28]~2_combout\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~55\,
	combout => \add_sub_0|Add0~56_combout\,
	cout => \add_sub_0|Add0~57\);

-- Location: LCCOMB_X30_Y29_N16
\add_sub_0|r[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[28]~2_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~56_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~56_combout\,
	datad => \add_sub_0|Add0~56_combout\,
	combout => \add_sub_0|r[28]~2_combout\);

-- Location: LCCOMB_X31_Y29_N26
\add_sub_0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~58_combout\ = (\add_sub_0|r[29]~1_combout\ & ((\a[29]~input_o\ & (\add_sub_0|Add0~57\ & VCC)) # (!\a[29]~input_o\ & (!\add_sub_0|Add0~57\)))) # (!\add_sub_0|r[29]~1_combout\ & ((\a[29]~input_o\ & (!\add_sub_0|Add0~57\)) # (!\a[29]~input_o\ 
-- & ((\add_sub_0|Add0~57\) # (GND)))))
-- \add_sub_0|Add0~59\ = CARRY((\add_sub_0|r[29]~1_combout\ & (!\a[29]~input_o\ & !\add_sub_0|Add0~57\)) # (!\add_sub_0|r[29]~1_combout\ & ((!\add_sub_0|Add0~57\) # (!\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[29]~1_combout\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~57\,
	combout => \add_sub_0|Add0~58_combout\,
	cout => \add_sub_0|Add0~59\);

-- Location: LCCOMB_X30_Y29_N26
\add_sub_0|r[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[29]~1_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~58_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|Add2~58_combout\,
	datac => \add_sub_0|Add0~58_combout\,
	datad => \op[3]~input_o\,
	combout => \add_sub_0|r[29]~1_combout\);

-- Location: LCCOMB_X31_Y29_N28
\add_sub_0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~60_combout\ = ((\add_sub_0|r[30]~0_combout\ $ (\a[30]~input_o\ $ (!\add_sub_0|Add0~59\)))) # (GND)
-- \add_sub_0|Add0~61\ = CARRY((\add_sub_0|r[30]~0_combout\ & ((\a[30]~input_o\) # (!\add_sub_0|Add0~59\))) # (!\add_sub_0|r[30]~0_combout\ & (\a[30]~input_o\ & !\add_sub_0|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[30]~0_combout\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \add_sub_0|Add0~59\,
	combout => \add_sub_0|Add0~60_combout\,
	cout => \add_sub_0|Add0~61\);

-- Location: LCCOMB_X37_Y30_N30
\add_sub_0|r[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|r[30]~0_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~60_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~60_combout\,
	datad => \add_sub_0|Add0~60_combout\,
	combout => \add_sub_0|r[30]~0_combout\);

-- Location: LCCOMB_X31_Y29_N30
\add_sub_0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|Add0~62_combout\ = \a[31]~input_o\ $ (\add_sub_0|Add0~61\ $ (\add_sub_0|temp[31]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datad => \add_sub_0|temp[31]~62_combout\,
	cin => \add_sub_0|Add0~61\,
	combout => \add_sub_0|Add0~62_combout\);

-- Location: LCCOMB_X37_Y30_N12
\add_sub_0|temp[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_0|temp[31]~62_combout\ = (\op[3]~input_o\ & ((\add_sub_0|Add0~62_combout\))) # (!\op[3]~input_o\ & (\add_sub_0|Add2~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \add_sub_0|Add2~62_combout\,
	datad => \add_sub_0|Add0~62_combout\,
	combout => \add_sub_0|temp[31]~62_combout\);

-- Location: IOIBUF_X45_Y34_N8
\op[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(4),
	o => \op[4]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X37_Y30_N24
\multiplexer_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux0~0_combout\ = (\b[31]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[31]~input_o\))))) # (!\b[31]~input_o\ & ((\op[1]~input_o\ & ((\a[31]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[31]~input_o\,
	combout => \multiplexer_0|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y34_N8
\op[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(5),
	o => \op[5]~input_o\);

-- Location: LCCOMB_X37_Y30_N18
\multiplexer_0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux0~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux0~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|temp[31]~62_combout\ & (!\op[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp[31]~62_combout\,
	datab => \op[4]~input_o\,
	datac => \multiplexer_0|Mux0~0_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y30_N20
\multiplexer_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux1~0_combout\ = (\b[30]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[30]~input_o\))))) # (!\b[30]~input_o\ & ((\op[1]~input_o\ & ((\a[30]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[30]~input_o\,
	combout => \multiplexer_0|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y30_N0
\multiplexer_0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux1~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux1~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[30]~0_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux1~0_combout\,
	datac => \add_sub_0|r[30]~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y29_N24
\multiplexer_0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux2~0_combout\ = (\b[29]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[29]~input_o\))))) # (!\b[29]~input_o\ & ((\op[1]~input_o\ & ((\a[29]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[29]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[29]~input_o\,
	combout => \multiplexer_0|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y29_N4
\multiplexer_0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux2~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux2~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[29]~1_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[29]~1_combout\,
	datab => \multiplexer_0|Mux2~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y29_N30
\multiplexer_0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux3~0_combout\ = (\b[28]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[28]~input_o\))))) # (!\b[28]~input_o\ & ((\op[1]~input_o\ & ((\a[28]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[28]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[28]~input_o\,
	combout => \multiplexer_0|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y29_N10
\multiplexer_0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux3~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux3~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[28]~2_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux3~0_combout\,
	datab => \add_sub_0|r[28]~2_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y29_N20
\multiplexer_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux4~0_combout\ = (\b[27]~input_o\ & (\op[1]~input_o\ $ (((\a[27]~input_o\ & \op[0]~input_o\))))) # (!\b[27]~input_o\ & ((\a[27]~input_o\ & ((\op[1]~input_o\))) # (!\a[27]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \a[27]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y29_N8
\multiplexer_0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux4~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux4~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[27]~3_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[27]~3_combout\,
	datab => \multiplexer_0|Mux4~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y29_N2
\multiplexer_0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux5~0_combout\ = (\b[26]~input_o\ & (\op[1]~input_o\ $ (((\a[26]~input_o\ & \op[0]~input_o\))))) # (!\b[26]~input_o\ & ((\a[26]~input_o\ & ((\op[1]~input_o\))) # (!\a[26]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datab => \a[26]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y29_N22
\multiplexer_0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux5~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux5~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[26]~4_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[26]~4_combout\,
	datab => \multiplexer_0|Mux5~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux5~1_combout\);

-- Location: LCCOMB_X34_Y29_N16
\multiplexer_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux6~0_combout\ = (\b[25]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[25]~input_o\))))) # (!\b[25]~input_o\ & ((\op[1]~input_o\ & ((\a[25]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[25]~input_o\,
	datac => \op[1]~input_o\,
	datad => \a[25]~input_o\,
	combout => \multiplexer_0|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y29_N12
\multiplexer_0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux6~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux6~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[25]~5_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux6~0_combout\,
	datac => \add_sub_0|r[25]~5_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y29_N14
\multiplexer_0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux7~0_combout\ = (\a[24]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[24]~input_o\))))) # (!\a[24]~input_o\ & ((\op[1]~input_o\ & ((\b[24]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[24]~input_o\,
	datad => \b[24]~input_o\,
	combout => \multiplexer_0|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y29_N10
\multiplexer_0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux7~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux7~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[24]~6_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[24]~6_combout\,
	datac => \multiplexer_0|Mux7~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux7~1_combout\);

-- Location: LCCOMB_X29_Y29_N16
\multiplexer_0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux8~0_combout\ = (\b[23]~input_o\ & (\op[1]~input_o\ $ (((\a[23]~input_o\ & \op[0]~input_o\))))) # (!\b[23]~input_o\ & ((\a[23]~input_o\ & (\op[1]~input_o\)) # (!\a[23]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \a[23]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y29_N20
\multiplexer_0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux8~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux8~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[23]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux8~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[23]~7_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux8~1_combout\);

-- Location: LCCOMB_X29_Y29_N22
\multiplexer_0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux9~0_combout\ = (\a[22]~input_o\ & (\op[1]~input_o\ $ (((\b[22]~input_o\ & \op[0]~input_o\))))) # (!\a[22]~input_o\ & ((\b[22]~input_o\ & (\op[1]~input_o\)) # (!\b[22]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y29_N24
\multiplexer_0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux9~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux9~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[22]~8_combout\ & (!\op[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[22]~8_combout\,
	datab => \op[4]~input_o\,
	datac => \multiplexer_0|Mux9~0_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux9~1_combout\);

-- Location: LCCOMB_X29_Y29_N10
\multiplexer_0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux10~0_combout\ = (\a[21]~input_o\ & (\op[1]~input_o\ $ (((\b[21]~input_o\ & \op[0]~input_o\))))) # (!\a[21]~input_o\ & ((\op[1]~input_o\ & (\b[21]~input_o\)) # (!\op[1]~input_o\ & (!\b[21]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[21]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y29_N14
\multiplexer_0|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux10~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux10~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux10~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[21]~9_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux10~1_combout\);

-- Location: LCCOMB_X34_Y29_N4
\multiplexer_0|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux11~0_combout\ = (\a[20]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[20]~input_o\))))) # (!\a[20]~input_o\ & ((\op[1]~input_o\ & ((\b[20]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[20]~input_o\,
	datad => \b[20]~input_o\,
	combout => \multiplexer_0|Mux11~0_combout\);

-- Location: LCCOMB_X34_Y29_N8
\multiplexer_0|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux11~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux11~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[20]~10_combout\ & (!\op[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[20]~10_combout\,
	datab => \op[4]~input_o\,
	datac => \multiplexer_0|Mux11~0_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux11~1_combout\);

-- Location: LCCOMB_X32_Y28_N16
\multiplexer_0|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux12~0_combout\ = (\b[19]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[19]~input_o\))))) # (!\b[19]~input_o\ & ((\op[1]~input_o\ & ((\a[19]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[19]~input_o\,
	datad => \a[19]~input_o\,
	combout => \multiplexer_0|Mux12~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\multiplexer_0|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux12~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux12~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[19]~11_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[19]~11_combout\,
	datab => \multiplexer_0|Mux12~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux12~1_combout\);

-- Location: LCCOMB_X32_Y28_N14
\multiplexer_0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux13~0_combout\ = (\a[18]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[18]~input_o\))))) # (!\a[18]~input_o\ & ((\op[1]~input_o\ & ((\b[18]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \a[18]~input_o\,
	datad => \b[18]~input_o\,
	combout => \multiplexer_0|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y28_N18
\multiplexer_0|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux13~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux13~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[18]~12_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[18]~12_combout\,
	datac => \multiplexer_0|Mux13~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux13~1_combout\);

-- Location: LCCOMB_X32_Y28_N20
\multiplexer_0|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux14~0_combout\ = (\b[17]~input_o\ & (\op[1]~input_o\ $ (((\a[17]~input_o\ & \op[0]~input_o\))))) # (!\b[17]~input_o\ & ((\op[1]~input_o\ & (\a[17]~input_o\)) # (!\op[1]~input_o\ & (!\a[17]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[17]~input_o\,
	datac => \a[17]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux14~0_combout\);

-- Location: LCCOMB_X32_Y28_N24
\multiplexer_0|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux14~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux14~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[17]~13_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[17]~13_combout\,
	datab => \multiplexer_0|Mux14~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux14~1_combout\);

-- Location: LCCOMB_X32_Y28_N2
\multiplexer_0|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux15~0_combout\ = (\b[16]~input_o\ & (\op[1]~input_o\ $ (((\a[16]~input_o\ & \op[0]~input_o\))))) # (!\b[16]~input_o\ & ((\op[1]~input_o\ & (\a[16]~input_o\)) # (!\op[1]~input_o\ & (!\a[16]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[16]~input_o\,
	datac => \a[16]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y28_N30
\multiplexer_0|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux15~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux15~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[16]~14_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[16]~14_combout\,
	datab => \multiplexer_0|Mux15~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux15~1_combout\);

-- Location: LCCOMB_X32_Y28_N8
\multiplexer_0|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux16~0_combout\ = (\b[15]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[15]~input_o\))))) # (!\b[15]~input_o\ & ((\op[1]~input_o\ & ((\a[15]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[15]~input_o\,
	datad => \a[15]~input_o\,
	combout => \multiplexer_0|Mux16~0_combout\);

-- Location: LCCOMB_X30_Y30_N26
\multiplexer_0|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux16~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux16~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[15]~15_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[15]~15_combout\,
	datac => \multiplexer_0|Mux16~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux16~1_combout\);

-- Location: LCCOMB_X29_Y29_N8
\multiplexer_0|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux17~0_combout\ = (\b[14]~input_o\ & (\op[1]~input_o\ $ (((\a[14]~input_o\ & \op[0]~input_o\))))) # (!\b[14]~input_o\ & ((\a[14]~input_o\ & (\op[1]~input_o\)) # (!\a[14]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \a[14]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux17~0_combout\);

-- Location: LCCOMB_X29_Y29_N28
\multiplexer_0|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux17~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux17~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[14]~16_combout\ & (!\op[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[14]~16_combout\,
	datab => \op[4]~input_o\,
	datac => \multiplexer_0|Mux17~0_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux17~1_combout\);

-- Location: LCCOMB_X30_Y30_N28
\multiplexer_0|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux18~0_combout\ = (\a[13]~input_o\ & (\op[1]~input_o\ $ (((\b[13]~input_o\ & \op[0]~input_o\))))) # (!\a[13]~input_o\ & ((\b[13]~input_o\ & ((\op[1]~input_o\))) # (!\b[13]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \b[13]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux18~0_combout\);

-- Location: LCCOMB_X30_Y30_N8
\multiplexer_0|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux18~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux18~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[13]~17_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux18~0_combout\,
	datac => \add_sub_0|r[13]~17_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux18~1_combout\);

-- Location: LCCOMB_X30_Y30_N10
\multiplexer_0|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux19~0_combout\ = (\a[12]~input_o\ & (\op[1]~input_o\ $ (((\b[12]~input_o\ & \op[0]~input_o\))))) # (!\a[12]~input_o\ & ((\b[12]~input_o\ & ((\op[1]~input_o\))) # (!\b[12]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \b[12]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux19~0_combout\);

-- Location: LCCOMB_X30_Y30_N6
\multiplexer_0|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux19~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux19~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux19~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[12]~18_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux19~1_combout\);

-- Location: LCCOMB_X30_Y30_N24
\multiplexer_0|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux20~0_combout\ = (\a[11]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[11]~input_o\))))) # (!\a[11]~input_o\ & ((\b[11]~input_o\ & ((\op[1]~input_o\))) # (!\b[11]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \a[11]~input_o\,
	datac => \b[11]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux20~0_combout\);

-- Location: LCCOMB_X30_Y30_N20
\multiplexer_0|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux20~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux20~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[11]~19_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux20~0_combout\,
	datac => \add_sub_0|r[11]~19_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux20~1_combout\);

-- Location: LCCOMB_X37_Y30_N10
\multiplexer_0|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux21~0_combout\ = (\a[10]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[10]~input_o\))))) # (!\a[10]~input_o\ & ((\op[1]~input_o\ & ((\b[10]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[10]~input_o\,
	combout => \multiplexer_0|Mux21~0_combout\);

-- Location: LCCOMB_X37_Y30_N22
\multiplexer_0|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux21~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux21~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux21~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[10]~20_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux21~1_combout\);

-- Location: LCCOMB_X30_Y29_N0
\multiplexer_0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux22~0_combout\ = (\b[9]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[9]~input_o\))))) # (!\b[9]~input_o\ & ((\a[9]~input_o\ & ((\op[1]~input_o\))) # (!\a[9]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \b[9]~input_o\,
	datac => \a[9]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux22~0_combout\);

-- Location: LCCOMB_X30_Y29_N28
\multiplexer_0|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux22~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux22~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[9]~21_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[9]~21_combout\,
	datab => \multiplexer_0|Mux22~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux22~1_combout\);

-- Location: LCCOMB_X29_Y29_N6
\multiplexer_0|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux23~0_combout\ = (\b[8]~input_o\ & (\op[1]~input_o\ $ (((\a[8]~input_o\ & \op[0]~input_o\))))) # (!\b[8]~input_o\ & ((\op[1]~input_o\ & (\a[8]~input_o\)) # (!\op[1]~input_o\ & (!\a[8]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[8]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux23~0_combout\);

-- Location: LCCOMB_X29_Y29_N0
\multiplexer_0|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux23~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux23~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux23~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[8]~22_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux23~1_combout\);

-- Location: LCCOMB_X32_Y28_N26
\multiplexer_0|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux24~0_combout\ = (\b[7]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[7]~input_o\))))) # (!\b[7]~input_o\ & ((\op[1]~input_o\ & ((\a[7]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[7]~input_o\,
	datad => \a[7]~input_o\,
	combout => \multiplexer_0|Mux24~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\multiplexer_0|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux24~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux24~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[7]~23_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[7]~23_combout\,
	datac => \multiplexer_0|Mux24~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux24~1_combout\);

-- Location: LCCOMB_X30_Y30_N22
\multiplexer_0|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux25~0_combout\ = (\b[6]~input_o\ & (\op[1]~input_o\ $ (((\a[6]~input_o\ & \op[0]~input_o\))))) # (!\b[6]~input_o\ & ((\a[6]~input_o\ & ((\op[1]~input_o\))) # (!\a[6]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \multiplexer_0|Mux25~0_combout\);

-- Location: LCCOMB_X30_Y30_N2
\multiplexer_0|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux25~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux25~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[6]~24_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[6]~24_combout\,
	datac => \multiplexer_0|Mux25~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux25~1_combout\);

-- Location: LCCOMB_X30_Y30_N4
\multiplexer_0|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux26~0_combout\ = (\a[5]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[5]~input_o\))))) # (!\a[5]~input_o\ & ((\op[1]~input_o\ & ((\b[5]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \a[5]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[5]~input_o\,
	combout => \multiplexer_0|Mux26~0_combout\);

-- Location: LCCOMB_X30_Y30_N14
\multiplexer_0|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux26~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux26~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[5]~25_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \add_sub_0|r[5]~25_combout\,
	datac => \multiplexer_0|Mux26~0_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux26~1_combout\);

-- Location: LCCOMB_X34_Y29_N2
\multiplexer_0|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux27~0_combout\ = (\b[4]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[4]~input_o\))))) # (!\b[4]~input_o\ & ((\op[1]~input_o\ & ((\a[4]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \multiplexer_0|Mux27~0_combout\);

-- Location: LCCOMB_X34_Y29_N30
\multiplexer_0|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux27~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux27~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[4]~26_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux27~0_combout\,
	datac => \add_sub_0|r[4]~26_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux27~1_combout\);

-- Location: LCCOMB_X34_Y29_N0
\multiplexer_0|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux28~0_combout\ = (\b[3]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \a[3]~input_o\))))) # (!\b[3]~input_o\ & ((\op[1]~input_o\ & ((\a[3]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \multiplexer_0|Mux28~0_combout\);

-- Location: LCCOMB_X34_Y29_N20
\multiplexer_0|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux28~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux28~0_combout\)) # (!\op[5]~input_o\ & (((\add_sub_0|r[3]~27_combout\ & !\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[5]~input_o\,
	datab => \multiplexer_0|Mux28~0_combout\,
	datac => \add_sub_0|r[3]~27_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux28~1_combout\);

-- Location: LCCOMB_X34_Y29_N22
\multiplexer_0|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux29~0_combout\ = (\a[2]~input_o\ & (\op[1]~input_o\ $ (((\op[0]~input_o\ & \b[2]~input_o\))))) # (!\a[2]~input_o\ & ((\op[1]~input_o\ & ((\b[2]~input_o\))) # (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \multiplexer_0|Mux29~0_combout\);

-- Location: LCCOMB_X30_Y29_N14
\multiplexer_0|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux29~1_combout\ = (\op[5]~input_o\ & (((\multiplexer_0|Mux29~0_combout\)))) # (!\op[5]~input_o\ & (\add_sub_0|r[2]~28_combout\ & ((!\op[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|r[2]~28_combout\,
	datab => \multiplexer_0|Mux29~0_combout\,
	datac => \op[5]~input_o\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux29~1_combout\);

-- Location: LCCOMB_X29_Y29_N2
\multiplexer_0|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux30~0_combout\ = (\a[1]~input_o\ & (\op[1]~input_o\ $ (((\b[1]~input_o\ & \op[0]~input_o\))))) # (!\a[1]~input_o\ & ((\b[1]~input_o\ & (\op[1]~input_o\)) # (!\b[1]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux30~0_combout\);

-- Location: LCCOMB_X29_Y29_N30
\multiplexer_0|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux30~1_combout\ = (\op[5]~input_o\ & (\multiplexer_0|Mux30~0_combout\)) # (!\op[5]~input_o\ & (((!\op[4]~input_o\ & \add_sub_0|r[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexer_0|Mux30~0_combout\,
	datab => \op[4]~input_o\,
	datac => \add_sub_0|r[1]~29_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux30~1_combout\);

-- Location: IOIBUF_X40_Y34_N8
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X37_Y30_N16
\multiplexer_0|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~2_combout\ = (\add_sub_0|temp[31]~62_combout\ & (\b[31]~input_o\ & !\a[31]~input_o\)) # (!\add_sub_0|temp[31]~62_combout\ & (!\b[31]~input_o\ & \a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp[31]~62_combout\,
	datac => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	combout => \multiplexer_0|Mux31~2_combout\);

-- Location: LCCOMB_X37_Y30_N2
\multiplexer_0|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~3_combout\ = (\op[2]~input_o\ & (((!\op[1]~input_o\ & \op[0]~input_o\)))) # (!\op[2]~input_o\ & ((\multiplexer_0|Mux31~2_combout\ & ((\op[0]~input_o\))) # (!\multiplexer_0|Mux31~2_combout\ & (\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \multiplexer_0|Mux31~2_combout\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux31~3_combout\);

-- Location: LCCOMB_X37_Y30_N14
\multiplexer_0|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~4_combout\ = (\a[0]~input_o\ & ((\b[0]~input_o\) # (!\op[0]~input_o\))) # (!\a[0]~input_o\ & (!\op[0]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \op[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \multiplexer_0|Mux31~4_combout\);

-- Location: LCCOMB_X37_Y30_N8
\multiplexer_0|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~5_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\ & ((!\add_sub_0|Add2~0_combout\))) # (!\op[0]~input_o\ & (!\multiplexer_0|Mux31~4_combout\)))) # (!\op[1]~input_o\ & (\multiplexer_0|Mux31~4_combout\ $ (((\op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \multiplexer_0|Mux31~4_combout\,
	datac => \add_sub_0|Add2~0_combout\,
	datad => \op[0]~input_o\,
	combout => \multiplexer_0|Mux31~5_combout\);

-- Location: LCCOMB_X37_Y30_N26
\multiplexer_0|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~6_combout\ = (\op[5]~input_o\ & ((!\multiplexer_0|Mux31~5_combout\))) # (!\op[5]~input_o\ & (\add_sub_0|r[0]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub_0|r[0]~30_combout\,
	datac => \multiplexer_0|Mux31~5_combout\,
	datad => \op[5]~input_o\,
	combout => \multiplexer_0|Mux31~6_combout\);

-- Location: LCCOMB_X37_Y30_N6
\multiplexer_0|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplexer_0|Mux31~7_combout\ = (\op[4]~input_o\ & (\add_sub_0|temp[31]~62_combout\ $ ((!\multiplexer_0|Mux31~3_combout\)))) # (!\op[4]~input_o\ & (((\multiplexer_0|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub_0|temp[31]~62_combout\,
	datab => \multiplexer_0|Mux31~3_combout\,
	datac => \multiplexer_0|Mux31~6_combout\,
	datad => \op[4]~input_o\,
	combout => \multiplexer_0|Mux31~7_combout\);

ww_s(31) <= \s[31]~output_o\;

ww_s(30) <= \s[30]~output_o\;

ww_s(29) <= \s[29]~output_o\;

ww_s(28) <= \s[28]~output_o\;

ww_s(27) <= \s[27]~output_o\;

ww_s(26) <= \s[26]~output_o\;

ww_s(25) <= \s[25]~output_o\;

ww_s(24) <= \s[24]~output_o\;

ww_s(23) <= \s[23]~output_o\;

ww_s(22) <= \s[22]~output_o\;

ww_s(21) <= \s[21]~output_o\;

ww_s(20) <= \s[20]~output_o\;

ww_s(19) <= \s[19]~output_o\;

ww_s(18) <= \s[18]~output_o\;

ww_s(17) <= \s[17]~output_o\;

ww_s(16) <= \s[16]~output_o\;

ww_s(15) <= \s[15]~output_o\;

ww_s(14) <= \s[14]~output_o\;

ww_s(13) <= \s[13]~output_o\;

ww_s(12) <= \s[12]~output_o\;

ww_s(11) <= \s[11]~output_o\;

ww_s(10) <= \s[10]~output_o\;

ww_s(9) <= \s[9]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;



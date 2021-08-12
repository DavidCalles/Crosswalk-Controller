-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/12/2021 19:10:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Crosswalk_Controller IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	button : IN std_logic;
	button2 : IN std_logic;
	green : OUT std_logic;
	red : OUT std_logic;
	yellow : OUT std_logic;
	green2 : OUT std_logic;
	red2 : OUT std_logic;
	yellow2 : OUT std_logic;
	counter0 : OUT std_logic_vector(31 DOWNTO 0);
	counter1 : OUT std_logic_vector(31 DOWNTO 0);
	counter2 : OUT std_logic_vector(31 DOWNTO 0);
	segment0 : OUT std_logic_vector(6 DOWNTO 0);
	segment1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Crosswalk_Controller;

-- Design Ports Information
-- green	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green2	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red2	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow2	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[2]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[3]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[6]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[7]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[8]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[10]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[11]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[12]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[13]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[14]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[16]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[17]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[18]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[19]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[20]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[21]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[22]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[24]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[25]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[26]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[27]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[28]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[30]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[31]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[2]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[4]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[6]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[7]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[8]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[9]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[10]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[11]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[14]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[15]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[16]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[17]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[18]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[19]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[20]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[21]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[22]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[23]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[24]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[26]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[27]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[28]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[29]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[30]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[31]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[2]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[5]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[6]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[7]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[8]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[11]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[12]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[13]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[14]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[15]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[16]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[17]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[18]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[19]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[20]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[21]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[22]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[23]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[24]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[25]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[26]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[27]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[28]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[29]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[30]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter2[31]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Crosswalk_Controller IS
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
SIGNAL ww_button : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green2 : std_logic;
SIGNAL ww_red2 : std_logic;
SIGNAL ww_yellow2 : std_logic;
SIGNAL ww_counter0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_counter1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_segment0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \FSM_CWC1|State.GREENS~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSM_CWC1|timerResetSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|timerResetSignal~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|countSignal~0_combout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~1_sumout\ : std_logic;
SIGNAL \FSM_CWC1|timerResetSignal~q\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[2]~0_combout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~2\ : std_logic;
SIGNAL \Counter32Bits0|Add0~5_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~6\ : std_logic;
SIGNAL \Counter32Bits0|Add0~9_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~10\ : std_logic;
SIGNAL \Counter32Bits0|Add0~13_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~14\ : std_logic;
SIGNAL \Counter32Bits0|Add0~17_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~18\ : std_logic;
SIGNAL \Counter32Bits0|Add0~21_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~22\ : std_logic;
SIGNAL \Counter32Bits0|Add0~25_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~26\ : std_logic;
SIGNAL \Counter32Bits0|Add0~29_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~30\ : std_logic;
SIGNAL \Counter32Bits0|Add0~33_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~34\ : std_logic;
SIGNAL \Counter32Bits0|Add0~37_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~38\ : std_logic;
SIGNAL \Counter32Bits0|Add0~41_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~42\ : std_logic;
SIGNAL \Counter32Bits0|Add0~45_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~46\ : std_logic;
SIGNAL \Counter32Bits0|Add0~49_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~50\ : std_logic;
SIGNAL \Counter32Bits0|Add0~53_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~54\ : std_logic;
SIGNAL \Counter32Bits0|Add0~57_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~58\ : std_logic;
SIGNAL \Counter32Bits0|Add0~61_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~62\ : std_logic;
SIGNAL \Counter32Bits0|Add0~65_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~66\ : std_logic;
SIGNAL \Counter32Bits0|Add0~69_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~70\ : std_logic;
SIGNAL \Counter32Bits0|Add0~73_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~74\ : std_logic;
SIGNAL \Counter32Bits0|Add0~77_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~78\ : std_logic;
SIGNAL \Counter32Bits0|Add0~81_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~82\ : std_logic;
SIGNAL \Counter32Bits0|Add0~85_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~86\ : std_logic;
SIGNAL \Counter32Bits0|Add0~89_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~90\ : std_logic;
SIGNAL \Counter32Bits0|Add0~93_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~94\ : std_logic;
SIGNAL \Counter32Bits0|Add0~97_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~98\ : std_logic;
SIGNAL \Counter32Bits0|Add0~101_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Add0~102\ : std_logic;
SIGNAL \Counter32Bits0|Add0~105_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~106\ : std_logic;
SIGNAL \Counter32Bits0|Add0~109_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~110\ : std_logic;
SIGNAL \Counter32Bits0|Add0~113_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~0_combout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~114\ : std_logic;
SIGNAL \Counter32Bits0|Add0~117_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~118\ : std_logic;
SIGNAL \Counter32Bits0|Add0~121_sumout\ : std_logic;
SIGNAL \Counter32Bits0|Add0~122\ : std_logic;
SIGNAL \Counter32Bits0|Add0~125_sumout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits0|Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits0|overflow~feeder_combout\ : std_logic;
SIGNAL \Counter32Bits0|overflow~q\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[0]~1_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FSM_CWC1|State.GREENS~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~1_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~2\ : std_logic;
SIGNAL \Counter32Bits1|Add0~5_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[1]~2_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~6\ : std_logic;
SIGNAL \Counter32Bits1|Add0~9_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[2]~3_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~10\ : std_logic;
SIGNAL \Counter32Bits1|Add0~13_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~14\ : std_logic;
SIGNAL \Counter32Bits1|Add0~17_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~18\ : std_logic;
SIGNAL \Counter32Bits1|Add0~21_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~22\ : std_logic;
SIGNAL \Counter32Bits1|Add0~25_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~26\ : std_logic;
SIGNAL \Counter32Bits1|Add0~29_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~30\ : std_logic;
SIGNAL \Counter32Bits1|Add0~33_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~34\ : std_logic;
SIGNAL \Counter32Bits1|Add0~37_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~38\ : std_logic;
SIGNAL \Counter32Bits1|Add0~41_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~42\ : std_logic;
SIGNAL \Counter32Bits1|Add0~45_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~46\ : std_logic;
SIGNAL \Counter32Bits1|Add0~49_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~50\ : std_logic;
SIGNAL \Counter32Bits1|Add0~53_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~54\ : std_logic;
SIGNAL \Counter32Bits1|Add0~57_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~58\ : std_logic;
SIGNAL \Counter32Bits1|Add0~61_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~62\ : std_logic;
SIGNAL \Counter32Bits1|Add0~65_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~66\ : std_logic;
SIGNAL \Counter32Bits1|Add0~69_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~70\ : std_logic;
SIGNAL \Counter32Bits1|Add0~73_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~74\ : std_logic;
SIGNAL \Counter32Bits1|Add0~77_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~78\ : std_logic;
SIGNAL \Counter32Bits1|Add0~81_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~82\ : std_logic;
SIGNAL \Counter32Bits1|Add0~85_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~86\ : std_logic;
SIGNAL \Counter32Bits1|Add0~89_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~90\ : std_logic;
SIGNAL \Counter32Bits1|Add0~93_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~94\ : std_logic;
SIGNAL \Counter32Bits1|Add0~97_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~98\ : std_logic;
SIGNAL \Counter32Bits1|Add0~101_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~102\ : std_logic;
SIGNAL \Counter32Bits1|Add0~105_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~106\ : std_logic;
SIGNAL \Counter32Bits1|Add0~109_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~0_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~110\ : std_logic;
SIGNAL \Counter32Bits1|Add0~113_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~114\ : std_logic;
SIGNAL \Counter32Bits1|Add0~117_sumout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Add0~118\ : std_logic;
SIGNAL \Counter32Bits1|Add0~121_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Add0~122\ : std_logic;
SIGNAL \Counter32Bits1|Add0~125_sumout\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits1|Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits1|overflow~q\ : std_logic;
SIGNAL \FSM_CWC1|State.GREENS~q\ : std_logic;
SIGNAL \FSM_CWC1|State.YELLOWS~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|State.YELLOWS~q\ : std_logic;
SIGNAL \FSM_CWC1|State.REDS~q\ : std_logic;
SIGNAL \FSM_CWC1|greenSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|greenSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|redSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|yellowSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|yellowSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|State.GREENS~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|timerResetSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|timerResetSignal~q\ : std_logic;
SIGNAL \Counter32Bits2|countSignal~0_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[6]~1_combout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~1_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~2\ : std_logic;
SIGNAL \Counter32Bits2|Add0~5_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[1]~2_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~6\ : std_logic;
SIGNAL \Counter32Bits2|Add0~9_sumout\ : std_logic;
SIGNAL \FSM_CWC2|State.YELLOWS~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[2]~3_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~10\ : std_logic;
SIGNAL \Counter32Bits2|Add0~13_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~14\ : std_logic;
SIGNAL \Counter32Bits2|Add0~17_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~18\ : std_logic;
SIGNAL \Counter32Bits2|Add0~21_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~22\ : std_logic;
SIGNAL \Counter32Bits2|Add0~25_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~26\ : std_logic;
SIGNAL \Counter32Bits2|Add0~29_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~30\ : std_logic;
SIGNAL \Counter32Bits2|Add0~33_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~34\ : std_logic;
SIGNAL \Counter32Bits2|Add0~37_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~38\ : std_logic;
SIGNAL \Counter32Bits2|Add0~41_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~42\ : std_logic;
SIGNAL \Counter32Bits2|Add0~45_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~46\ : std_logic;
SIGNAL \Counter32Bits2|Add0~49_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~50\ : std_logic;
SIGNAL \Counter32Bits2|Add0~53_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[13]~feeder_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~54\ : std_logic;
SIGNAL \Counter32Bits2|Add0~57_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~58\ : std_logic;
SIGNAL \Counter32Bits2|Add0~61_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~0_combout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~62\ : std_logic;
SIGNAL \Counter32Bits2|Add0~65_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~66\ : std_logic;
SIGNAL \Counter32Bits2|Add0~69_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~70\ : std_logic;
SIGNAL \Counter32Bits2|Add0~73_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~74\ : std_logic;
SIGNAL \Counter32Bits2|Add0~77_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[19]~feeder_combout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~78\ : std_logic;
SIGNAL \Counter32Bits2|Add0~81_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~82\ : std_logic;
SIGNAL \Counter32Bits2|Add0~85_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~86\ : std_logic;
SIGNAL \Counter32Bits2|Add0~89_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~90\ : std_logic;
SIGNAL \Counter32Bits2|Add0~93_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~94\ : std_logic;
SIGNAL \Counter32Bits2|Add0~97_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~98\ : std_logic;
SIGNAL \Counter32Bits2|Add0~101_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~102\ : std_logic;
SIGNAL \Counter32Bits2|Add0~105_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~106\ : std_logic;
SIGNAL \Counter32Bits2|Add0~109_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~110\ : std_logic;
SIGNAL \Counter32Bits2|Add0~113_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Add0~114\ : std_logic;
SIGNAL \Counter32Bits2|Add0~117_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~118\ : std_logic;
SIGNAL \Counter32Bits2|Add0~121_sumout\ : std_logic;
SIGNAL \Counter32Bits2|Add0~122\ : std_logic;
SIGNAL \Counter32Bits2|Add0~125_sumout\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits2|Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits2|overflow~q\ : std_logic;
SIGNAL \FSM_CWC2|State.GREENS~q\ : std_logic;
SIGNAL \FSM_CWC2|State.YELLOWS~q\ : std_logic;
SIGNAL \FSM_CWC2|State.REDS~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|State.REDS~DUPLICATE_q\ : std_logic;
SIGNAL \FSM_CWC2|greenSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|greenSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|redSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|redSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|yellowSignal~q\ : std_logic;
SIGNAL \Counter32Bits1|countSignal[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \FSM_CWC1|buttonHoldSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|buttonHoldSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|enable7SegmentsSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|enable7SegmentsSignal~q\ : std_logic;
SIGNAL \SevenSegments0|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux0~0_combout\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \FSM_CWC2|State.REDS~q\ : std_logic;
SIGNAL \FSM_CWC2|buttonHoldSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|buttonHoldSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|enable7SegmentsSignal~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|enable7SegmentsSignal~q\ : std_logic;
SIGNAL \SevenSegments1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux0~0_combout\ : std_logic;
SIGNAL \Counter32Bits0|countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits2|countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits1|countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits0|ALT_INV_countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits2|ALT_INV_countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits1|ALT_INV_countSignal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter32Bits2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_button2~input_o\ : std_logic;
SIGNAL \ALT_INV_button~input_o\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_buttonHoldSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_buttonHoldSignal~q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_timerResetSignal~q\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_overflow~q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Counter32Bits0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_timerResetSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_State.GREENS~q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_State.YELLOWS~q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_overflow~q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_State.REDS~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_State.GREENS~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_State.YELLOWS~q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_overflow~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_State.REDS~q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_redSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_greenSignal~q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_State.YELLOWS~DUPLICATE_q\ : std_logic;
SIGNAL \FSM_CWC2|ALT_INV_State.REDS~DUPLICATE_q\ : std_logic;
SIGNAL \FSM_CWC1|ALT_INV_State.GREENS~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter32Bits1|ALT_INV_countSignal[16]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_button <= button;
ww_button2 <= button2;
green <= ww_green;
red <= ww_red;
yellow <= ww_yellow;
green2 <= ww_green2;
red2 <= ww_red2;
yellow2 <= ww_yellow2;
counter0 <= ww_counter0;
counter1 <= ww_counter1;
counter2 <= ww_counter2;
segment0 <= ww_segment0;
segment1 <= ww_segment1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Counter32Bits0|ALT_INV_countSignal\(16) <= NOT \Counter32Bits0|countSignal\(16);
\Counter32Bits0|ALT_INV_countSignal\(15) <= NOT \Counter32Bits0|countSignal\(15);
\Counter32Bits0|ALT_INV_countSignal\(14) <= NOT \Counter32Bits0|countSignal\(14);
\Counter32Bits0|ALT_INV_countSignal\(13) <= NOT \Counter32Bits0|countSignal\(13);
\Counter32Bits0|ALT_INV_countSignal\(12) <= NOT \Counter32Bits0|countSignal\(12);
\Counter32Bits0|ALT_INV_countSignal\(11) <= NOT \Counter32Bits0|countSignal\(11);
\Counter32Bits0|ALT_INV_countSignal\(10) <= NOT \Counter32Bits0|countSignal\(10);
\Counter32Bits0|ALT_INV_countSignal\(9) <= NOT \Counter32Bits0|countSignal\(9);
\Counter32Bits0|ALT_INV_countSignal\(8) <= NOT \Counter32Bits0|countSignal\(8);
\Counter32Bits0|ALT_INV_countSignal\(7) <= NOT \Counter32Bits0|countSignal\(7);
\Counter32Bits0|ALT_INV_countSignal\(6) <= NOT \Counter32Bits0|countSignal\(6);
\Counter32Bits0|ALT_INV_countSignal\(5) <= NOT \Counter32Bits0|countSignal\(5);
\Counter32Bits0|ALT_INV_countSignal\(4) <= NOT \Counter32Bits0|countSignal\(4);
\Counter32Bits0|ALT_INV_countSignal\(3) <= NOT \Counter32Bits0|countSignal\(3);
\Counter32Bits0|ALT_INV_countSignal\(2) <= NOT \Counter32Bits0|countSignal\(2);
\Counter32Bits0|ALT_INV_countSignal\(1) <= NOT \Counter32Bits0|countSignal\(1);
\Counter32Bits0|ALT_INV_countSignal\(0) <= NOT \Counter32Bits0|countSignal\(0);
\Counter32Bits2|ALT_INV_countSignal\(31) <= NOT \Counter32Bits2|countSignal\(31);
\Counter32Bits2|ALT_INV_countSignal\(30) <= NOT \Counter32Bits2|countSignal\(30);
\Counter32Bits2|ALT_INV_countSignal\(29) <= NOT \Counter32Bits2|countSignal\(29);
\Counter32Bits2|ALT_INV_countSignal\(28) <= NOT \Counter32Bits2|countSignal\(28);
\Counter32Bits2|ALT_INV_countSignal\(25) <= NOT \Counter32Bits2|countSignal\(25);
\Counter32Bits2|ALT_INV_countSignal\(22) <= NOT \Counter32Bits2|countSignal\(22);
\Counter32Bits2|ALT_INV_countSignal\(21) <= NOT \Counter32Bits2|countSignal\(21);
\Counter32Bits2|ALT_INV_countSignal\(20) <= NOT \Counter32Bits2|countSignal\(20);
\Counter32Bits2|ALT_INV_countSignal\(19) <= NOT \Counter32Bits2|countSignal\(19);
\Counter32Bits2|ALT_INV_countSignal\(18) <= NOT \Counter32Bits2|countSignal\(18);
\Counter32Bits2|ALT_INV_countSignal\(17) <= NOT \Counter32Bits2|countSignal\(17);
\Counter32Bits2|ALT_INV_countSignal\(16) <= NOT \Counter32Bits2|countSignal\(16);
\Counter32Bits2|ALT_INV_countSignal\(15) <= NOT \Counter32Bits2|countSignal\(15);
\Counter32Bits2|ALT_INV_countSignal\(14) <= NOT \Counter32Bits2|countSignal\(14);
\Counter32Bits2|ALT_INV_countSignal\(13) <= NOT \Counter32Bits2|countSignal\(13);
\Counter32Bits2|ALT_INV_countSignal\(11) <= NOT \Counter32Bits2|countSignal\(11);
\Counter32Bits2|ALT_INV_countSignal\(10) <= NOT \Counter32Bits2|countSignal\(10);
\Counter32Bits2|ALT_INV_countSignal\(9) <= NOT \Counter32Bits2|countSignal\(9);
\Counter32Bits2|ALT_INV_countSignal\(8) <= NOT \Counter32Bits2|countSignal\(8);
\Counter32Bits2|ALT_INV_countSignal\(7) <= NOT \Counter32Bits2|countSignal\(7);
\Counter32Bits2|ALT_INV_countSignal\(6) <= NOT \Counter32Bits2|countSignal\(6);
\Counter32Bits2|ALT_INV_countSignal\(5) <= NOT \Counter32Bits2|countSignal\(5);
\Counter32Bits2|ALT_INV_countSignal\(4) <= NOT \Counter32Bits2|countSignal\(4);
\Counter32Bits2|ALT_INV_countSignal\(3) <= NOT \Counter32Bits2|countSignal\(3);
\Counter32Bits2|ALT_INV_countSignal\(0) <= NOT \Counter32Bits2|countSignal\(0);
\Counter32Bits1|ALT_INV_countSignal\(31) <= NOT \Counter32Bits1|countSignal\(31);
\Counter32Bits1|ALT_INV_countSignal\(30) <= NOT \Counter32Bits1|countSignal\(30);
\Counter32Bits1|ALT_INV_countSignal\(29) <= NOT \Counter32Bits1|countSignal\(29);
\Counter32Bits1|ALT_INV_countSignal\(28) <= NOT \Counter32Bits1|countSignal\(28);
\Counter32Bits1|ALT_INV_countSignal\(27) <= NOT \Counter32Bits1|countSignal\(27);
\Counter32Bits1|ALT_INV_countSignal\(26) <= NOT \Counter32Bits1|countSignal\(26);
\Counter32Bits1|ALT_INV_countSignal\(24) <= NOT \Counter32Bits1|countSignal\(24);
\Counter32Bits1|ALT_INV_countSignal\(23) <= NOT \Counter32Bits1|countSignal\(23);
\Counter32Bits1|ALT_INV_countSignal\(22) <= NOT \Counter32Bits1|countSignal\(22);
\Counter32Bits1|ALT_INV_countSignal\(21) <= NOT \Counter32Bits1|countSignal\(21);
\Counter32Bits1|ALT_INV_countSignal\(20) <= NOT \Counter32Bits1|countSignal\(20);
\Counter32Bits1|ALT_INV_countSignal\(19) <= NOT \Counter32Bits1|countSignal\(19);
\Counter32Bits1|ALT_INV_countSignal\(18) <= NOT \Counter32Bits1|countSignal\(18);
\Counter32Bits1|ALT_INV_countSignal\(17) <= NOT \Counter32Bits1|countSignal\(17);
\Counter32Bits1|ALT_INV_countSignal\(16) <= NOT \Counter32Bits1|countSignal\(16);
\Counter32Bits1|ALT_INV_countSignal\(15) <= NOT \Counter32Bits1|countSignal\(15);
\Counter32Bits1|ALT_INV_countSignal\(14) <= NOT \Counter32Bits1|countSignal\(14);
\Counter32Bits1|ALT_INV_countSignal\(13) <= NOT \Counter32Bits1|countSignal\(13);
\Counter32Bits1|ALT_INV_countSignal\(12) <= NOT \Counter32Bits1|countSignal\(12);
\Counter32Bits1|ALT_INV_countSignal\(11) <= NOT \Counter32Bits1|countSignal\(11);
\Counter32Bits1|ALT_INV_countSignal\(9) <= NOT \Counter32Bits1|countSignal\(9);
\Counter32Bits1|ALT_INV_countSignal\(8) <= NOT \Counter32Bits1|countSignal\(8);
\Counter32Bits1|ALT_INV_countSignal\(7) <= NOT \Counter32Bits1|countSignal\(7);
\Counter32Bits1|ALT_INV_countSignal\(6) <= NOT \Counter32Bits1|countSignal\(6);
\Counter32Bits1|ALT_INV_countSignal\(5) <= NOT \Counter32Bits1|countSignal\(5);
\Counter32Bits1|ALT_INV_countSignal\(4) <= NOT \Counter32Bits1|countSignal\(4);
\Counter32Bits1|ALT_INV_countSignal\(3) <= NOT \Counter32Bits1|countSignal\(3);
\Counter32Bits1|ALT_INV_countSignal\(0) <= NOT \Counter32Bits1|countSignal\(0);
\Counter32Bits0|ALT_INV_countSignal\(31) <= NOT \Counter32Bits0|countSignal\(31);
\Counter32Bits0|ALT_INV_countSignal\(30) <= NOT \Counter32Bits0|countSignal\(30);
\Counter32Bits0|ALT_INV_countSignal\(29) <= NOT \Counter32Bits0|countSignal\(29);
\Counter32Bits0|ALT_INV_countSignal\(28) <= NOT \Counter32Bits0|countSignal\(28);
\Counter32Bits0|ALT_INV_countSignal\(27) <= NOT \Counter32Bits0|countSignal\(27);
\Counter32Bits0|ALT_INV_countSignal\(26) <= NOT \Counter32Bits0|countSignal\(26);
\Counter32Bits0|ALT_INV_countSignal\(24) <= NOT \Counter32Bits0|countSignal\(24);
\Counter32Bits0|ALT_INV_countSignal\(22) <= NOT \Counter32Bits0|countSignal\(22);
\Counter32Bits0|ALT_INV_countSignal\(20) <= NOT \Counter32Bits0|countSignal\(20);
\Counter32Bits0|ALT_INV_countSignal\(19) <= NOT \Counter32Bits0|countSignal\(19);
\Counter32Bits0|ALT_INV_countSignal\(18) <= NOT \Counter32Bits0|countSignal\(18);
\Counter32Bits0|ALT_INV_countSignal\(17) <= NOT \Counter32Bits0|countSignal\(17);
\Counter32Bits2|ALT_INV_Add0~77_sumout\ <= NOT \Counter32Bits2|Add0~77_sumout\;
\Counter32Bits2|ALT_INV_Add0~53_sumout\ <= NOT \Counter32Bits2|Add0~53_sumout\;
\Counter32Bits2|ALT_INV_Add0~9_sumout\ <= NOT \Counter32Bits2|Add0~9_sumout\;
\Counter32Bits2|ALT_INV_Add0~5_sumout\ <= NOT \Counter32Bits2|Add0~5_sumout\;
\Counter32Bits1|ALT_INV_Add0~9_sumout\ <= NOT \Counter32Bits1|Add0~9_sumout\;
\Counter32Bits1|ALT_INV_Add0~5_sumout\ <= NOT \Counter32Bits1|Add0~5_sumout\;
\Counter32Bits1|ALT_INV_countSignal[15]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[15]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[12]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[12]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[10]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[10]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[9]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[9]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[8]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[8]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[7]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[7]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[5]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[5]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[0]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[31]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[31]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[25]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[25]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[23]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[23]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[21]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[21]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[19]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[19]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[16]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[16]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[15]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[15]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[13]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[13]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[12]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[12]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[10]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[10]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[9]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[9]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[8]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[8]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[6]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[6]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[3]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[3]~DUPLICATE_q\;
\Counter32Bits0|ALT_INV_countSignal[0]~DUPLICATE_q\ <= NOT \Counter32Bits0|countSignal[0]~DUPLICATE_q\;
\ALT_INV_button2~input_o\ <= NOT \button2~input_o\;
\ALT_INV_button~input_o\ <= NOT \button~input_o\;
\FSM_CWC2|ALT_INV_buttonHoldSignal~q\ <= NOT \FSM_CWC2|buttonHoldSignal~q\;
\FSM_CWC1|ALT_INV_buttonHoldSignal~q\ <= NOT \FSM_CWC1|buttonHoldSignal~q\;
\Counter32Bits2|ALT_INV_Equal0~6_combout\ <= NOT \Counter32Bits2|Equal0~6_combout\;
\Counter32Bits2|ALT_INV_Equal0~5_combout\ <= NOT \Counter32Bits2|Equal0~5_combout\;
\Counter32Bits2|ALT_INV_Equal0~4_combout\ <= NOT \Counter32Bits2|Equal0~4_combout\;
\Counter32Bits2|ALT_INV_Equal0~3_combout\ <= NOT \Counter32Bits2|Equal0~3_combout\;
\Counter32Bits2|ALT_INV_Equal0~2_combout\ <= NOT \Counter32Bits2|Equal0~2_combout\;
\Counter32Bits2|ALT_INV_Equal0~1_combout\ <= NOT \Counter32Bits2|Equal0~1_combout\;
\Counter32Bits2|ALT_INV_Equal0~0_combout\ <= NOT \Counter32Bits2|Equal0~0_combout\;
\FSM_CWC2|ALT_INV_timerResetSignal~q\ <= NOT \FSM_CWC2|timerResetSignal~q\;
\Counter32Bits0|ALT_INV_overflow~q\ <= NOT \Counter32Bits0|overflow~q\;
\Counter32Bits1|ALT_INV_Equal0~6_combout\ <= NOT \Counter32Bits1|Equal0~6_combout\;
\Counter32Bits1|ALT_INV_Equal0~5_combout\ <= NOT \Counter32Bits1|Equal0~5_combout\;
\Counter32Bits1|ALT_INV_Equal0~4_combout\ <= NOT \Counter32Bits1|Equal0~4_combout\;
\Counter32Bits1|ALT_INV_Equal0~3_combout\ <= NOT \Counter32Bits1|Equal0~3_combout\;
\Counter32Bits1|ALT_INV_Equal0~2_combout\ <= NOT \Counter32Bits1|Equal0~2_combout\;
\Counter32Bits1|ALT_INV_Equal0~1_combout\ <= NOT \Counter32Bits1|Equal0~1_combout\;
\Counter32Bits1|ALT_INV_Equal0~0_combout\ <= NOT \Counter32Bits1|Equal0~0_combout\;
\Counter32Bits0|ALT_INV_Equal0~6_combout\ <= NOT \Counter32Bits0|Equal0~6_combout\;
\Counter32Bits0|ALT_INV_Equal0~5_combout\ <= NOT \Counter32Bits0|Equal0~5_combout\;
\Counter32Bits0|ALT_INV_Equal0~4_combout\ <= NOT \Counter32Bits0|Equal0~4_combout\;
\Counter32Bits0|ALT_INV_Equal0~3_combout\ <= NOT \Counter32Bits0|Equal0~3_combout\;
\Counter32Bits0|ALT_INV_Equal0~2_combout\ <= NOT \Counter32Bits0|Equal0~2_combout\;
\Counter32Bits0|ALT_INV_Equal0~1_combout\ <= NOT \Counter32Bits0|Equal0~1_combout\;
\Counter32Bits0|ALT_INV_Equal0~0_combout\ <= NOT \Counter32Bits0|Equal0~0_combout\;
\FSM_CWC1|ALT_INV_timerResetSignal~q\ <= NOT \FSM_CWC1|timerResetSignal~q\;
\FSM_CWC2|ALT_INV_State.GREENS~q\ <= NOT \FSM_CWC2|State.GREENS~q\;
\FSM_CWC2|ALT_INV_State.YELLOWS~q\ <= NOT \FSM_CWC2|State.YELLOWS~q\;
\Counter32Bits2|ALT_INV_overflow~q\ <= NOT \Counter32Bits2|overflow~q\;
\FSM_CWC2|ALT_INV_State.REDS~q\ <= NOT \FSM_CWC2|State.REDS~q\;
\FSM_CWC1|ALT_INV_State.GREENS~q\ <= NOT \FSM_CWC1|State.GREENS~q\;
\FSM_CWC1|ALT_INV_State.YELLOWS~q\ <= NOT \FSM_CWC1|State.YELLOWS~q\;
\Counter32Bits1|ALT_INV_overflow~q\ <= NOT \Counter32Bits1|overflow~q\;
\FSM_CWC1|ALT_INV_State.REDS~q\ <= NOT \FSM_CWC1|State.REDS~q\;
\FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\ <= NOT \FSM_CWC2|enable7SegmentsSignal~q\;
\FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\ <= NOT \FSM_CWC1|enable7SegmentsSignal~q\;
\Counter32Bits2|ALT_INV_countSignal\(2) <= NOT \Counter32Bits2|countSignal\(2);
\Counter32Bits2|ALT_INV_countSignal\(1) <= NOT \Counter32Bits2|countSignal\(1);
\Counter32Bits1|ALT_INV_countSignal\(2) <= NOT \Counter32Bits1|countSignal\(2);
\Counter32Bits1|ALT_INV_countSignal\(1) <= NOT \Counter32Bits1|countSignal\(1);
\FSM_CWC2|ALT_INV_redSignal~q\ <= NOT \FSM_CWC2|redSignal~q\;
\FSM_CWC1|ALT_INV_greenSignal~q\ <= NOT \FSM_CWC1|greenSignal~q\;
\FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\ <= NOT \FSM_CWC1|timerResetSignal~DUPLICATE_q\;
\FSM_CWC2|ALT_INV_State.YELLOWS~DUPLICATE_q\ <= NOT \FSM_CWC2|State.YELLOWS~DUPLICATE_q\;
\FSM_CWC2|ALT_INV_State.REDS~DUPLICATE_q\ <= NOT \FSM_CWC2|State.REDS~DUPLICATE_q\;
\FSM_CWC1|ALT_INV_State.GREENS~DUPLICATE_q\ <= NOT \FSM_CWC1|State.GREENS~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[2]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[2]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[1]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[1]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[2]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[2]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[1]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[1]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[28]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[28]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[27]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[27]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[26]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[26]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[24]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[24]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[23]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[23]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[20]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[20]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[18]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[18]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[17]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[17]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[16]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[16]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[15]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[15]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[14]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[14]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[13]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[13]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[12]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[12]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[11]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[11]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[9]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[9]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[7]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[7]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[6]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[6]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[4]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[4]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[3]~DUPLICATE_q\;
\Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\ <= NOT \Counter32Bits2|countSignal[0]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[30]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[30]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[28]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[28]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[25]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[25]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[24]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[24]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[19]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[19]~DUPLICATE_q\;
\Counter32Bits1|ALT_INV_countSignal[16]~DUPLICATE_q\ <= NOT \Counter32Bits1|countSignal[16]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N2
\green~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC1|ALT_INV_greenSignal~q\,
	devoe => ww_devoe,
	o => ww_green);

-- Location: IOOBUF_X60_Y0_N2
\red~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC1|redSignal~q\,
	devoe => ww_devoe,
	o => ww_red);

-- Location: IOOBUF_X52_Y0_N19
\yellow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC1|yellowSignal~q\,
	devoe => ww_devoe,
	o => ww_yellow);

-- Location: IOOBUF_X89_Y6_N5
\green2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC2|greenSignal~q\,
	devoe => ww_devoe,
	o => ww_green2);

-- Location: IOOBUF_X89_Y6_N22
\red2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC2|ALT_INV_redSignal~q\,
	devoe => ww_devoe,
	o => ww_red2);

-- Location: IOOBUF_X89_Y8_N5
\yellow2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_CWC2|yellowSignal~q\,
	devoe => ww_devoe,
	o => ww_yellow2);

-- Location: IOOBUF_X22_Y0_N2
\counter0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(0));

-- Location: IOOBUF_X14_Y0_N53
\counter0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(1),
	devoe => ww_devoe,
	o => ww_counter0(1));

-- Location: IOOBUF_X14_Y0_N36
\counter0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(2),
	devoe => ww_devoe,
	o => ww_counter0(2));

-- Location: IOOBUF_X20_Y0_N53
\counter0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(3));

-- Location: IOOBUF_X24_Y0_N19
\counter0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(4),
	devoe => ww_devoe,
	o => ww_counter0(4));

-- Location: IOOBUF_X22_Y0_N19
\counter0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(5),
	devoe => ww_devoe,
	o => ww_counter0(5));

-- Location: IOOBUF_X22_Y0_N36
\counter0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(6),
	devoe => ww_devoe,
	o => ww_counter0(6));

-- Location: IOOBUF_X20_Y0_N36
\counter0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(7),
	devoe => ww_devoe,
	o => ww_counter0(7));

-- Location: IOOBUF_X26_Y0_N93
\counter0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(8),
	devoe => ww_devoe,
	o => ww_counter0(8));

-- Location: IOOBUF_X89_Y4_N45
\counter0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(9),
	devoe => ww_devoe,
	o => ww_counter0(9));

-- Location: IOOBUF_X22_Y0_N53
\counter0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(10));

-- Location: IOOBUF_X26_Y0_N76
\counter0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(11),
	devoe => ww_devoe,
	o => ww_counter0(11));

-- Location: IOOBUF_X26_Y0_N42
\counter0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(12));

-- Location: IOOBUF_X18_Y0_N93
\counter0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(13));

-- Location: IOOBUF_X14_Y0_N19
\counter0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(14),
	devoe => ww_devoe,
	o => ww_counter0(14));

-- Location: IOOBUF_X20_Y0_N2
\counter0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(15),
	devoe => ww_devoe,
	o => ww_counter0(15));

-- Location: IOOBUF_X24_Y0_N36
\counter0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[16]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(16));

-- Location: IOOBUF_X18_Y0_N59
\counter0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(17),
	devoe => ww_devoe,
	o => ww_counter0(17));

-- Location: IOOBUF_X14_Y0_N2
\counter0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(18),
	devoe => ww_devoe,
	o => ww_counter0(18));

-- Location: IOOBUF_X26_Y0_N59
\counter0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[19]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(19));

-- Location: IOOBUF_X24_Y0_N53
\counter0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(20),
	devoe => ww_devoe,
	o => ww_counter0(20));

-- Location: IOOBUF_X16_Y0_N2
\counter0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(21),
	devoe => ww_devoe,
	o => ww_counter0(21));

-- Location: IOOBUF_X18_Y0_N42
\counter0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(22),
	devoe => ww_devoe,
	o => ww_counter0(22));

-- Location: IOOBUF_X16_Y0_N19
\counter0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(23),
	devoe => ww_devoe,
	o => ww_counter0(23));

-- Location: IOOBUF_X16_Y0_N53
\counter0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(24),
	devoe => ww_devoe,
	o => ww_counter0(24));

-- Location: IOOBUF_X16_Y0_N36
\counter0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(25),
	devoe => ww_devoe,
	o => ww_counter0(25));

-- Location: IOOBUF_X12_Y0_N19
\counter0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(26),
	devoe => ww_devoe,
	o => ww_counter0(26));

-- Location: IOOBUF_X28_Y0_N19
\counter0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(27),
	devoe => ww_devoe,
	o => ww_counter0(27));

-- Location: IOOBUF_X12_Y0_N36
\counter0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(28),
	devoe => ww_devoe,
	o => ww_counter0(28));

-- Location: IOOBUF_X20_Y0_N19
\counter0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(29),
	devoe => ww_devoe,
	o => ww_counter0(29));

-- Location: IOOBUF_X18_Y0_N76
\counter0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal\(30),
	devoe => ww_devoe,
	o => ww_counter0(30));

-- Location: IOOBUF_X24_Y0_N2
\counter0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits0|countSignal[31]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter0(31));

-- Location: IOOBUF_X38_Y0_N2
\counter1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(0));

-- Location: IOOBUF_X38_Y0_N53
\counter1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(1),
	devoe => ww_devoe,
	o => ww_counter1(1));

-- Location: IOOBUF_X38_Y0_N19
\counter1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(2),
	devoe => ww_devoe,
	o => ww_counter1(2));

-- Location: IOOBUF_X38_Y0_N36
\counter1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(3),
	devoe => ww_devoe,
	o => ww_counter1(3));

-- Location: IOOBUF_X50_Y0_N76
\counter1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(4),
	devoe => ww_devoe,
	o => ww_counter1(4));

-- Location: IOOBUF_X32_Y0_N36
\counter1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(5));

-- Location: IOOBUF_X34_Y0_N42
\counter1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(6),
	devoe => ww_devoe,
	o => ww_counter1(6));

-- Location: IOOBUF_X28_Y0_N53
\counter1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(7));

-- Location: IOOBUF_X50_Y0_N93
\counter1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(8),
	devoe => ww_devoe,
	o => ww_counter1(8));

-- Location: IOOBUF_X34_Y0_N93
\counter1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(9),
	devoe => ww_devoe,
	o => ww_counter1(9));

-- Location: IOOBUF_X50_Y0_N42
\counter1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(10),
	devoe => ww_devoe,
	o => ww_counter1(10));

-- Location: IOOBUF_X36_Y0_N53
\counter1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(11),
	devoe => ww_devoe,
	o => ww_counter1(11));

-- Location: IOOBUF_X32_Y0_N19
\counter1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(12));

-- Location: IOOBUF_X52_Y0_N36
\counter1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(13),
	devoe => ww_devoe,
	o => ww_counter1(13));

-- Location: IOOBUF_X40_Y0_N53
\counter1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(14),
	devoe => ww_devoe,
	o => ww_counter1(14));

-- Location: IOOBUF_X50_Y0_N59
\counter1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(15),
	devoe => ww_devoe,
	o => ww_counter1(15));

-- Location: IOOBUF_X52_Y0_N53
\counter1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[16]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(16));

-- Location: IOOBUF_X54_Y0_N53
\counter1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(17),
	devoe => ww_devoe,
	o => ww_counter1(17));

-- Location: IOOBUF_X40_Y0_N36
\counter1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(18),
	devoe => ww_devoe,
	o => ww_counter1(18));

-- Location: IOOBUF_X32_Y0_N53
\counter1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[19]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(19));

-- Location: IOOBUF_X30_Y0_N2
\counter1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(20),
	devoe => ww_devoe,
	o => ww_counter1(20));

-- Location: IOOBUF_X54_Y0_N2
\counter1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[21]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(21));

-- Location: IOOBUF_X36_Y0_N36
\counter1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(22),
	devoe => ww_devoe,
	o => ww_counter1(22));

-- Location: IOOBUF_X34_Y0_N76
\counter1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(23),
	devoe => ww_devoe,
	o => ww_counter1(23));

-- Location: IOOBUF_X34_Y0_N59
\counter1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[24]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(24));

-- Location: IOOBUF_X36_Y0_N19
\counter1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(25),
	devoe => ww_devoe,
	o => ww_counter1(25));

-- Location: IOOBUF_X28_Y0_N36
\counter1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(26),
	devoe => ww_devoe,
	o => ww_counter1(26));

-- Location: IOOBUF_X30_Y0_N19
\counter1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(27),
	devoe => ww_devoe,
	o => ww_counter1(27));

-- Location: IOOBUF_X28_Y0_N2
\counter1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[28]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(28));

-- Location: IOOBUF_X36_Y81_N19
\counter1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(29),
	devoe => ww_devoe,
	o => ww_counter1(29));

-- Location: IOOBUF_X30_Y0_N36
\counter1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal[30]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter1(30));

-- Location: IOOBUF_X30_Y0_N53
\counter1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits1|countSignal\(31),
	devoe => ww_devoe,
	o => ww_counter1(31));

-- Location: IOOBUF_X68_Y0_N19
\counter2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(0));

-- Location: IOOBUF_X68_Y0_N2
\counter2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(1),
	devoe => ww_devoe,
	o => ww_counter2(1));

-- Location: IOOBUF_X68_Y0_N53
\counter2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(2),
	devoe => ww_devoe,
	o => ww_counter2(2));

-- Location: IOOBUF_X68_Y0_N36
\counter2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(3));

-- Location: IOOBUF_X58_Y0_N93
\counter2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(4));

-- Location: IOOBUF_X72_Y0_N2
\counter2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(5),
	devoe => ww_devoe,
	o => ww_counter2(5));

-- Location: IOOBUF_X72_Y0_N36
\counter2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(6));

-- Location: IOOBUF_X72_Y0_N53
\counter2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(7));

-- Location: IOOBUF_X74_Y0_N76
\counter2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(8),
	devoe => ww_devoe,
	o => ww_counter2(8));

-- Location: IOOBUF_X72_Y0_N19
\counter2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(9));

-- Location: IOOBUF_X58_Y0_N76
\counter2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(10),
	devoe => ww_devoe,
	o => ww_counter2(10));

-- Location: IOOBUF_X62_Y0_N53
\counter2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(11));

-- Location: IOOBUF_X60_Y0_N53
\counter2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(12),
	devoe => ww_devoe,
	o => ww_counter2(12));

-- Location: IOOBUF_X66_Y0_N93
\counter2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(13));

-- Location: IOOBUF_X66_Y0_N59
\counter2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(14));

-- Location: IOOBUF_X58_Y0_N42
\counter2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(15));

-- Location: IOOBUF_X60_Y0_N36
\counter2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[16]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(16));

-- Location: IOOBUF_X66_Y0_N76
\counter2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[17]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(17));

-- Location: IOOBUF_X60_Y0_N19
\counter2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(18),
	devoe => ww_devoe,
	o => ww_counter2(18));

-- Location: IOOBUF_X64_Y0_N53
\counter2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(19),
	devoe => ww_devoe,
	o => ww_counter2(19));

-- Location: IOOBUF_X64_Y0_N2
\counter2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[20]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(20));

-- Location: IOOBUF_X64_Y0_N36
\counter2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(21),
	devoe => ww_devoe,
	o => ww_counter2(21));

-- Location: IOOBUF_X62_Y0_N36
\counter2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(22),
	devoe => ww_devoe,
	o => ww_counter2(22));

-- Location: IOOBUF_X70_Y0_N36
\counter2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(23),
	devoe => ww_devoe,
	o => ww_counter2(23));

-- Location: IOOBUF_X70_Y0_N53
\counter2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(24),
	devoe => ww_devoe,
	o => ww_counter2(24));

-- Location: IOOBUF_X66_Y0_N42
\counter2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(25),
	devoe => ww_devoe,
	o => ww_counter2(25));

-- Location: IOOBUF_X70_Y0_N2
\counter2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(26),
	devoe => ww_devoe,
	o => ww_counter2(26));

-- Location: IOOBUF_X74_Y0_N59
\counter2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(27),
	devoe => ww_devoe,
	o => ww_counter2(27));

-- Location: IOOBUF_X70_Y0_N19
\counter2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal[28]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_counter2(28));

-- Location: IOOBUF_X62_Y0_N2
\counter2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(29),
	devoe => ww_devoe,
	o => ww_counter2(29));

-- Location: IOOBUF_X64_Y0_N19
\counter2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(30),
	devoe => ww_devoe,
	o => ww_counter2(30));

-- Location: IOOBUF_X62_Y0_N19
\counter2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter32Bits2|countSignal\(31),
	devoe => ww_devoe,
	o => ww_counter2(31));

-- Location: IOOBUF_X89_Y8_N39
\segment0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(0));

-- Location: IOOBUF_X89_Y11_N79
\segment0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(1));

-- Location: IOOBUF_X89_Y11_N96
\segment0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(2));

-- Location: IOOBUF_X89_Y4_N79
\segment0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(3));

-- Location: IOOBUF_X89_Y13_N56
\segment0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(4));

-- Location: IOOBUF_X89_Y13_N39
\segment0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(5));

-- Location: IOOBUF_X89_Y4_N96
\segment0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segment0(6));

-- Location: IOOBUF_X89_Y11_N45
\segment1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(0));

-- Location: IOOBUF_X89_Y13_N5
\segment1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(1));

-- Location: IOOBUF_X89_Y13_N22
\segment1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(2));

-- Location: IOOBUF_X89_Y8_N22
\segment1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(3));

-- Location: IOOBUF_X89_Y15_N22
\segment1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(4));

-- Location: IOOBUF_X89_Y15_N5
\segment1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(5));

-- Location: IOOBUF_X89_Y20_N45
\segment1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X40_Y4_N36
\FSM_CWC1|State.GREENS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|State.GREENS~0_combout\ = ( !\FSM_CWC1|State.REDS~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM_CWC1|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC1|State.GREENS~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X37_Y3_N48
\FSM_CWC1|timerResetSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|timerResetSignal~0_combout\ = ( !\Counter32Bits1|overflow~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter32Bits1|ALT_INV_overflow~q\,
	combout => \FSM_CWC1|timerResetSignal~0_combout\);

-- Location: FF_X37_Y3_N49
\FSM_CWC1|timerResetSignal~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|timerResetSignal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|timerResetSignal~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N24
\Counter32Bits1|countSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|countSignal~0_combout\ = ( \FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ( \Counter32Bits1|Equal0~6_combout\ ) ) # ( !\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ( \Counter32Bits1|Equal0~6_combout\ ) ) # ( 
-- !\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ( !\Counter32Bits1|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\,
	dataf => \Counter32Bits1|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits1|countSignal~0_combout\);

-- Location: LABCELL_X22_Y4_N0
\Counter32Bits0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~1_sumout\ = SUM(( \Counter32Bits0|countSignal[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Counter32Bits0|Add0~2\ = CARRY(( \Counter32Bits0|countSignal[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Counter32Bits0|Add0~1_sumout\,
	cout => \Counter32Bits0|Add0~2\);

-- Location: FF_X37_Y3_N50
\FSM_CWC1|timerResetSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|timerResetSignal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|timerResetSignal~q\);

-- Location: LABCELL_X23_Y3_N0
\Counter32Bits0|countSignal[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|countSignal[2]~0_combout\ = ( \FSM_CWC1|timerResetSignal~q\ & ( \Counter32Bits0|Equal0~6_combout\ ) ) # ( !\FSM_CWC1|timerResetSignal~q\ & ( \Counter32Bits0|Equal0~6_combout\ ) ) # ( !\FSM_CWC1|timerResetSignal~q\ & ( 
-- !\Counter32Bits0|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FSM_CWC1|ALT_INV_timerResetSignal~q\,
	dataf => \Counter32Bits0|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits0|countSignal[2]~0_combout\);

-- Location: FF_X22_Y4_N2
\Counter32Bits0|countSignal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~1_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[0]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y4_N3
\Counter32Bits0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~5_sumout\ = SUM(( \Counter32Bits0|countSignal\(1) ) + ( GND ) + ( \Counter32Bits0|Add0~2\ ))
-- \Counter32Bits0|Add0~6\ = CARRY(( \Counter32Bits0|countSignal\(1) ) + ( GND ) + ( \Counter32Bits0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal\(1),
	cin => \Counter32Bits0|Add0~2\,
	sumout => \Counter32Bits0|Add0~5_sumout\,
	cout => \Counter32Bits0|Add0~6\);

-- Location: FF_X22_Y4_N5
\Counter32Bits0|countSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~5_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(1));

-- Location: LABCELL_X22_Y4_N6
\Counter32Bits0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~9_sumout\ = SUM(( \Counter32Bits0|countSignal\(2) ) + ( GND ) + ( \Counter32Bits0|Add0~6\ ))
-- \Counter32Bits0|Add0~10\ = CARRY(( \Counter32Bits0|countSignal\(2) ) + ( GND ) + ( \Counter32Bits0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal\(2),
	cin => \Counter32Bits0|Add0~6\,
	sumout => \Counter32Bits0|Add0~9_sumout\,
	cout => \Counter32Bits0|Add0~10\);

-- Location: FF_X22_Y4_N7
\Counter32Bits0|countSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~9_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(2));

-- Location: LABCELL_X22_Y4_N9
\Counter32Bits0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~13_sumout\ = SUM(( \Counter32Bits0|countSignal\(3) ) + ( GND ) + ( \Counter32Bits0|Add0~10\ ))
-- \Counter32Bits0|Add0~14\ = CARRY(( \Counter32Bits0|countSignal\(3) ) + ( GND ) + ( \Counter32Bits0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(3),
	cin => \Counter32Bits0|Add0~10\,
	sumout => \Counter32Bits0|Add0~13_sumout\,
	cout => \Counter32Bits0|Add0~14\);

-- Location: FF_X22_Y4_N11
\Counter32Bits0|countSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~13_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(3));

-- Location: LABCELL_X22_Y4_N12
\Counter32Bits0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~17_sumout\ = SUM(( \Counter32Bits0|countSignal\(4) ) + ( GND ) + ( \Counter32Bits0|Add0~14\ ))
-- \Counter32Bits0|Add0~18\ = CARRY(( \Counter32Bits0|countSignal\(4) ) + ( GND ) + ( \Counter32Bits0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits0|ALT_INV_countSignal\(4),
	cin => \Counter32Bits0|Add0~14\,
	sumout => \Counter32Bits0|Add0~17_sumout\,
	cout => \Counter32Bits0|Add0~18\);

-- Location: FF_X22_Y4_N14
\Counter32Bits0|countSignal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~17_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(4));

-- Location: LABCELL_X22_Y4_N15
\Counter32Bits0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~21_sumout\ = SUM(( \Counter32Bits0|countSignal\(5) ) + ( GND ) + ( \Counter32Bits0|Add0~18\ ))
-- \Counter32Bits0|Add0~22\ = CARRY(( \Counter32Bits0|countSignal\(5) ) + ( GND ) + ( \Counter32Bits0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(5),
	cin => \Counter32Bits0|Add0~18\,
	sumout => \Counter32Bits0|Add0~21_sumout\,
	cout => \Counter32Bits0|Add0~22\);

-- Location: FF_X22_Y4_N17
\Counter32Bits0|countSignal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~21_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(5));

-- Location: LABCELL_X22_Y4_N18
\Counter32Bits0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~25_sumout\ = SUM(( \Counter32Bits0|countSignal[6]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~22\ ))
-- \Counter32Bits0|Add0~26\ = CARRY(( \Counter32Bits0|countSignal[6]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal[6]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~22\,
	sumout => \Counter32Bits0|Add0~25_sumout\,
	cout => \Counter32Bits0|Add0~26\);

-- Location: FF_X22_Y4_N20
\Counter32Bits0|countSignal[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~25_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[6]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y4_N21
\Counter32Bits0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~29_sumout\ = SUM(( \Counter32Bits0|countSignal\(7) ) + ( GND ) + ( \Counter32Bits0|Add0~26\ ))
-- \Counter32Bits0|Add0~30\ = CARRY(( \Counter32Bits0|countSignal\(7) ) + ( GND ) + ( \Counter32Bits0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal\(7),
	cin => \Counter32Bits0|Add0~26\,
	sumout => \Counter32Bits0|Add0~29_sumout\,
	cout => \Counter32Bits0|Add0~30\);

-- Location: FF_X22_Y4_N23
\Counter32Bits0|countSignal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~29_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(7));

-- Location: LABCELL_X22_Y4_N24
\Counter32Bits0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~33_sumout\ = SUM(( \Counter32Bits0|countSignal[8]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~30\ ))
-- \Counter32Bits0|Add0~34\ = CARRY(( \Counter32Bits0|countSignal[8]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal[8]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~30\,
	sumout => \Counter32Bits0|Add0~33_sumout\,
	cout => \Counter32Bits0|Add0~34\);

-- Location: FF_X22_Y4_N26
\Counter32Bits0|countSignal[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~33_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[8]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y4_N27
\Counter32Bits0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~37_sumout\ = SUM(( \Counter32Bits0|countSignal[9]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~34\ ))
-- \Counter32Bits0|Add0~38\ = CARRY(( \Counter32Bits0|countSignal[9]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal[9]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~34\,
	sumout => \Counter32Bits0|Add0~37_sumout\,
	cout => \Counter32Bits0|Add0~38\);

-- Location: FF_X22_Y4_N29
\Counter32Bits0|countSignal[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~37_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[9]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y4_N30
\Counter32Bits0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~41_sumout\ = SUM(( \Counter32Bits0|countSignal\(10) ) + ( GND ) + ( \Counter32Bits0|Add0~38\ ))
-- \Counter32Bits0|Add0~42\ = CARRY(( \Counter32Bits0|countSignal\(10) ) + ( GND ) + ( \Counter32Bits0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits0|ALT_INV_countSignal\(10),
	cin => \Counter32Bits0|Add0~38\,
	sumout => \Counter32Bits0|Add0~41_sumout\,
	cout => \Counter32Bits0|Add0~42\);

-- Location: FF_X22_Y4_N32
\Counter32Bits0|countSignal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~41_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(10));

-- Location: LABCELL_X22_Y4_N33
\Counter32Bits0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~45_sumout\ = SUM(( \Counter32Bits0|countSignal\(11) ) + ( GND ) + ( \Counter32Bits0|Add0~42\ ))
-- \Counter32Bits0|Add0~46\ = CARRY(( \Counter32Bits0|countSignal\(11) ) + ( GND ) + ( \Counter32Bits0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(11),
	cin => \Counter32Bits0|Add0~42\,
	sumout => \Counter32Bits0|Add0~45_sumout\,
	cout => \Counter32Bits0|Add0~46\);

-- Location: FF_X22_Y4_N35
\Counter32Bits0|countSignal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~45_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(11));

-- Location: LABCELL_X22_Y4_N36
\Counter32Bits0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~49_sumout\ = SUM(( \Counter32Bits0|countSignal\(12) ) + ( GND ) + ( \Counter32Bits0|Add0~46\ ))
-- \Counter32Bits0|Add0~50\ = CARRY(( \Counter32Bits0|countSignal\(12) ) + ( GND ) + ( \Counter32Bits0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(12),
	cin => \Counter32Bits0|Add0~46\,
	sumout => \Counter32Bits0|Add0~49_sumout\,
	cout => \Counter32Bits0|Add0~50\);

-- Location: FF_X22_Y4_N38
\Counter32Bits0|countSignal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~49_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(12));

-- Location: LABCELL_X22_Y4_N39
\Counter32Bits0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~53_sumout\ = SUM(( \Counter32Bits0|countSignal[13]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~50\ ))
-- \Counter32Bits0|Add0~54\ = CARRY(( \Counter32Bits0|countSignal[13]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal[13]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~50\,
	sumout => \Counter32Bits0|Add0~53_sumout\,
	cout => \Counter32Bits0|Add0~54\);

-- Location: FF_X22_Y4_N40
\Counter32Bits0|countSignal[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~53_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[13]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y4_N42
\Counter32Bits0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~57_sumout\ = SUM(( \Counter32Bits0|countSignal\(14) ) + ( GND ) + ( \Counter32Bits0|Add0~54\ ))
-- \Counter32Bits0|Add0~58\ = CARRY(( \Counter32Bits0|countSignal\(14) ) + ( GND ) + ( \Counter32Bits0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal\(14),
	cin => \Counter32Bits0|Add0~54\,
	sumout => \Counter32Bits0|Add0~57_sumout\,
	cout => \Counter32Bits0|Add0~58\);

-- Location: FF_X22_Y4_N43
\Counter32Bits0|countSignal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~57_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(14));

-- Location: LABCELL_X22_Y4_N45
\Counter32Bits0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~61_sumout\ = SUM(( \Counter32Bits0|countSignal\(15) ) + ( GND ) + ( \Counter32Bits0|Add0~58\ ))
-- \Counter32Bits0|Add0~62\ = CARRY(( \Counter32Bits0|countSignal\(15) ) + ( GND ) + ( \Counter32Bits0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(15),
	cin => \Counter32Bits0|Add0~58\,
	sumout => \Counter32Bits0|Add0~61_sumout\,
	cout => \Counter32Bits0|Add0~62\);

-- Location: FF_X22_Y4_N47
\Counter32Bits0|countSignal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~61_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(15));

-- Location: LABCELL_X22_Y4_N48
\Counter32Bits0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~65_sumout\ = SUM(( \Counter32Bits0|countSignal\(16) ) + ( GND ) + ( \Counter32Bits0|Add0~62\ ))
-- \Counter32Bits0|Add0~66\ = CARRY(( \Counter32Bits0|countSignal\(16) ) + ( GND ) + ( \Counter32Bits0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(16),
	cin => \Counter32Bits0|Add0~62\,
	sumout => \Counter32Bits0|Add0~65_sumout\,
	cout => \Counter32Bits0|Add0~66\);

-- Location: FF_X22_Y4_N50
\Counter32Bits0|countSignal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~65_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(16));

-- Location: LABCELL_X22_Y4_N51
\Counter32Bits0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~69_sumout\ = SUM(( \Counter32Bits0|countSignal\(17) ) + ( GND ) + ( \Counter32Bits0|Add0~66\ ))
-- \Counter32Bits0|Add0~70\ = CARRY(( \Counter32Bits0|countSignal\(17) ) + ( GND ) + ( \Counter32Bits0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(17),
	cin => \Counter32Bits0|Add0~66\,
	sumout => \Counter32Bits0|Add0~69_sumout\,
	cout => \Counter32Bits0|Add0~70\);

-- Location: FF_X22_Y4_N52
\Counter32Bits0|countSignal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~69_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(17));

-- Location: LABCELL_X22_Y4_N54
\Counter32Bits0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~73_sumout\ = SUM(( \Counter32Bits0|countSignal\(18) ) + ( GND ) + ( \Counter32Bits0|Add0~70\ ))
-- \Counter32Bits0|Add0~74\ = CARRY(( \Counter32Bits0|countSignal\(18) ) + ( GND ) + ( \Counter32Bits0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(18),
	cin => \Counter32Bits0|Add0~70\,
	sumout => \Counter32Bits0|Add0~73_sumout\,
	cout => \Counter32Bits0|Add0~74\);

-- Location: FF_X22_Y4_N56
\Counter32Bits0|countSignal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~73_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(18));

-- Location: LABCELL_X22_Y4_N57
\Counter32Bits0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~77_sumout\ = SUM(( \Counter32Bits0|countSignal\(19) ) + ( GND ) + ( \Counter32Bits0|Add0~74\ ))
-- \Counter32Bits0|Add0~78\ = CARRY(( \Counter32Bits0|countSignal\(19) ) + ( GND ) + ( \Counter32Bits0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(19),
	cin => \Counter32Bits0|Add0~74\,
	sumout => \Counter32Bits0|Add0~77_sumout\,
	cout => \Counter32Bits0|Add0~78\);

-- Location: FF_X22_Y4_N59
\Counter32Bits0|countSignal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~77_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(19));

-- Location: LABCELL_X22_Y3_N0
\Counter32Bits0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~81_sumout\ = SUM(( \Counter32Bits0|countSignal\(20) ) + ( GND ) + ( \Counter32Bits0|Add0~78\ ))
-- \Counter32Bits0|Add0~82\ = CARRY(( \Counter32Bits0|countSignal\(20) ) + ( GND ) + ( \Counter32Bits0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(20),
	cin => \Counter32Bits0|Add0~78\,
	sumout => \Counter32Bits0|Add0~81_sumout\,
	cout => \Counter32Bits0|Add0~82\);

-- Location: FF_X22_Y3_N1
\Counter32Bits0|countSignal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~81_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(20));

-- Location: LABCELL_X22_Y3_N3
\Counter32Bits0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~85_sumout\ = SUM(( \Counter32Bits0|countSignal[21]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~82\ ))
-- \Counter32Bits0|Add0~86\ = CARRY(( \Counter32Bits0|countSignal[21]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits0|ALT_INV_countSignal[21]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~82\,
	sumout => \Counter32Bits0|Add0~85_sumout\,
	cout => \Counter32Bits0|Add0~86\);

-- Location: FF_X22_Y3_N5
\Counter32Bits0|countSignal[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~85_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[21]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y3_N6
\Counter32Bits0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~89_sumout\ = SUM(( \Counter32Bits0|countSignal\(22) ) + ( GND ) + ( \Counter32Bits0|Add0~86\ ))
-- \Counter32Bits0|Add0~90\ = CARRY(( \Counter32Bits0|countSignal\(22) ) + ( GND ) + ( \Counter32Bits0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits0|ALT_INV_countSignal\(22),
	cin => \Counter32Bits0|Add0~86\,
	sumout => \Counter32Bits0|Add0~89_sumout\,
	cout => \Counter32Bits0|Add0~90\);

-- Location: FF_X22_Y3_N8
\Counter32Bits0|countSignal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~89_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(22));

-- Location: LABCELL_X22_Y3_N9
\Counter32Bits0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~93_sumout\ = SUM(( \Counter32Bits0|countSignal[23]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~90\ ))
-- \Counter32Bits0|Add0~94\ = CARRY(( \Counter32Bits0|countSignal[23]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal[23]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~90\,
	sumout => \Counter32Bits0|Add0~93_sumout\,
	cout => \Counter32Bits0|Add0~94\);

-- Location: FF_X22_Y3_N11
\Counter32Bits0|countSignal[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~93_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[23]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y3_N12
\Counter32Bits0|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~97_sumout\ = SUM(( \Counter32Bits0|countSignal\(24) ) + ( GND ) + ( \Counter32Bits0|Add0~94\ ))
-- \Counter32Bits0|Add0~98\ = CARRY(( \Counter32Bits0|countSignal\(24) ) + ( GND ) + ( \Counter32Bits0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits0|ALT_INV_countSignal\(24),
	cin => \Counter32Bits0|Add0~94\,
	sumout => \Counter32Bits0|Add0~97_sumout\,
	cout => \Counter32Bits0|Add0~98\);

-- Location: FF_X22_Y3_N14
\Counter32Bits0|countSignal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~97_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(24));

-- Location: LABCELL_X22_Y3_N15
\Counter32Bits0|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~101_sumout\ = SUM(( \Counter32Bits0|countSignal[25]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~98\ ))
-- \Counter32Bits0|Add0~102\ = CARRY(( \Counter32Bits0|countSignal[25]~DUPLICATE_q\ ) + ( GND ) + ( \Counter32Bits0|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal[25]~DUPLICATE_q\,
	cin => \Counter32Bits0|Add0~98\,
	sumout => \Counter32Bits0|Add0~101_sumout\,
	cout => \Counter32Bits0|Add0~102\);

-- Location: FF_X22_Y3_N17
\Counter32Bits0|countSignal[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~101_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[25]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y3_N18
\Counter32Bits0|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~105_sumout\ = SUM(( \Counter32Bits0|countSignal\(26) ) + ( GND ) + ( \Counter32Bits0|Add0~102\ ))
-- \Counter32Bits0|Add0~106\ = CARRY(( \Counter32Bits0|countSignal\(26) ) + ( GND ) + ( \Counter32Bits0|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(26),
	cin => \Counter32Bits0|Add0~102\,
	sumout => \Counter32Bits0|Add0~105_sumout\,
	cout => \Counter32Bits0|Add0~106\);

-- Location: FF_X22_Y3_N20
\Counter32Bits0|countSignal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~105_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(26));

-- Location: LABCELL_X22_Y3_N21
\Counter32Bits0|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~109_sumout\ = SUM(( \Counter32Bits0|countSignal\(27) ) + ( GND ) + ( \Counter32Bits0|Add0~106\ ))
-- \Counter32Bits0|Add0~110\ = CARRY(( \Counter32Bits0|countSignal\(27) ) + ( GND ) + ( \Counter32Bits0|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(27),
	cin => \Counter32Bits0|Add0~106\,
	sumout => \Counter32Bits0|Add0~109_sumout\,
	cout => \Counter32Bits0|Add0~110\);

-- Location: FF_X22_Y3_N23
\Counter32Bits0|countSignal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~109_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(27));

-- Location: LABCELL_X22_Y3_N24
\Counter32Bits0|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~113_sumout\ = SUM(( \Counter32Bits0|countSignal\(28) ) + ( GND ) + ( \Counter32Bits0|Add0~110\ ))
-- \Counter32Bits0|Add0~114\ = CARRY(( \Counter32Bits0|countSignal\(28) ) + ( GND ) + ( \Counter32Bits0|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(28),
	cin => \Counter32Bits0|Add0~110\,
	sumout => \Counter32Bits0|Add0~113_sumout\,
	cout => \Counter32Bits0|Add0~114\);

-- Location: FF_X22_Y3_N26
\Counter32Bits0|countSignal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~113_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(28));

-- Location: LABCELL_X22_Y3_N54
\Counter32Bits0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~1_combout\ = ( !\Counter32Bits0|countSignal\(27) & ( !\Counter32Bits0|countSignal[23]~DUPLICATE_q\ & ( (!\Counter32Bits0|countSignal\(28) & (!\Counter32Bits0|countSignal[25]~DUPLICATE_q\ & (!\Counter32Bits0|countSignal\(26) & 
-- !\Counter32Bits0|countSignal\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(28),
	datab => \Counter32Bits0|ALT_INV_countSignal[25]~DUPLICATE_q\,
	datac => \Counter32Bits0|ALT_INV_countSignal\(26),
	datad => \Counter32Bits0|ALT_INV_countSignal\(24),
	datae => \Counter32Bits0|ALT_INV_countSignal\(27),
	dataf => \Counter32Bits0|ALT_INV_countSignal[23]~DUPLICATE_q\,
	combout => \Counter32Bits0|Equal0~1_combout\);

-- Location: LABCELL_X22_Y3_N48
\Counter32Bits0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~0_combout\ = ( !\Counter32Bits0|countSignal[21]~DUPLICATE_q\ & ( !\Counter32Bits0|countSignal\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Counter32Bits0|ALT_INV_countSignal[21]~DUPLICATE_q\,
	dataf => \Counter32Bits0|ALT_INV_countSignal\(22),
	combout => \Counter32Bits0|Equal0~0_combout\);

-- Location: FF_X22_Y4_N19
\Counter32Bits0|countSignal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~25_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(6));

-- Location: FF_X22_Y4_N25
\Counter32Bits0|countSignal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~33_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(8));

-- Location: FF_X22_Y4_N10
\Counter32Bits0|countSignal[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~13_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[3]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y3_N42
\Counter32Bits0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~3_combout\ = ( !\Counter32Bits0|countSignal\(8) & ( !\Counter32Bits0|countSignal[3]~DUPLICATE_q\ & ( (!\Counter32Bits0|countSignal\(7) & (!\Counter32Bits0|countSignal\(5) & (!\Counter32Bits0|countSignal\(4) & 
-- !\Counter32Bits0|countSignal\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(7),
	datab => \Counter32Bits0|ALT_INV_countSignal\(5),
	datac => \Counter32Bits0|ALT_INV_countSignal\(4),
	datad => \Counter32Bits0|ALT_INV_countSignal\(6),
	datae => \Counter32Bits0|ALT_INV_countSignal\(8),
	dataf => \Counter32Bits0|ALT_INV_countSignal[3]~DUPLICATE_q\,
	combout => \Counter32Bits0|Equal0~3_combout\);

-- Location: FF_X22_Y3_N35
\Counter32Bits0|countSignal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~125_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(31));

-- Location: LABCELL_X22_Y3_N27
\Counter32Bits0|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~117_sumout\ = SUM(( \Counter32Bits0|countSignal\(29) ) + ( GND ) + ( \Counter32Bits0|Add0~114\ ))
-- \Counter32Bits0|Add0~118\ = CARRY(( \Counter32Bits0|countSignal\(29) ) + ( GND ) + ( \Counter32Bits0|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(29),
	cin => \Counter32Bits0|Add0~114\,
	sumout => \Counter32Bits0|Add0~117_sumout\,
	cout => \Counter32Bits0|Add0~118\);

-- Location: FF_X22_Y3_N28
\Counter32Bits0|countSignal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~117_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(29));

-- Location: LABCELL_X22_Y3_N30
\Counter32Bits0|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~121_sumout\ = SUM(( \Counter32Bits0|countSignal\(30) ) + ( GND ) + ( \Counter32Bits0|Add0~118\ ))
-- \Counter32Bits0|Add0~122\ = CARRY(( \Counter32Bits0|countSignal\(30) ) + ( GND ) + ( \Counter32Bits0|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits0|ALT_INV_countSignal\(30),
	cin => \Counter32Bits0|Add0~118\,
	sumout => \Counter32Bits0|Add0~121_sumout\,
	cout => \Counter32Bits0|Add0~122\);

-- Location: FF_X22_Y3_N31
\Counter32Bits0|countSignal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~121_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(30));

-- Location: LABCELL_X22_Y3_N33
\Counter32Bits0|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Add0~125_sumout\ = SUM(( \Counter32Bits0|countSignal\(31) ) + ( GND ) + ( \Counter32Bits0|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(31),
	cin => \Counter32Bits0|Add0~122\,
	sumout => \Counter32Bits0|Add0~125_sumout\);

-- Location: FF_X22_Y3_N34
\Counter32Bits0|countSignal[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~125_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[31]~DUPLICATE_q\);

-- Location: FF_X22_Y4_N46
\Counter32Bits0|countSignal[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~61_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[15]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y3_N24
\Counter32Bits0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~4_combout\ = ( !\Counter32Bits0|countSignal\(2) & ( !\Counter32Bits0|countSignal\(17) & ( (!\Counter32Bits0|countSignal[31]~DUPLICATE_q\ & (!\Counter32Bits0|countSignal\(20) & (!\Counter32Bits0|countSignal\(18) & 
-- !\Counter32Bits0|countSignal[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal[31]~DUPLICATE_q\,
	datab => \Counter32Bits0|ALT_INV_countSignal\(20),
	datac => \Counter32Bits0|ALT_INV_countSignal\(18),
	datad => \Counter32Bits0|ALT_INV_countSignal[15]~DUPLICATE_q\,
	datae => \Counter32Bits0|ALT_INV_countSignal\(2),
	dataf => \Counter32Bits0|ALT_INV_countSignal\(17),
	combout => \Counter32Bits0|Equal0~4_combout\);

-- Location: FF_X22_Y4_N58
\Counter32Bits0|countSignal[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~77_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[19]~DUPLICATE_q\);

-- Location: FF_X22_Y4_N28
\Counter32Bits0|countSignal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~37_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(9));

-- Location: FF_X22_Y4_N31
\Counter32Bits0|countSignal[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~41_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[10]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y3_N54
\Counter32Bits0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~2_combout\ = ( !\Counter32Bits0|countSignal\(9) & ( !\Counter32Bits0|countSignal[10]~DUPLICATE_q\ & ( (!\Counter32Bits0|countSignal\(30) & (!\Counter32Bits0|countSignal[19]~DUPLICATE_q\ & (!\Counter32Bits0|countSignal\(11) & 
-- !\Counter32Bits0|countSignal\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(30),
	datab => \Counter32Bits0|ALT_INV_countSignal[19]~DUPLICATE_q\,
	datac => \Counter32Bits0|ALT_INV_countSignal\(11),
	datad => \Counter32Bits0|ALT_INV_countSignal\(29),
	datae => \Counter32Bits0|ALT_INV_countSignal\(9),
	dataf => \Counter32Bits0|ALT_INV_countSignal[10]~DUPLICATE_q\,
	combout => \Counter32Bits0|Equal0~2_combout\);

-- Location: FF_X22_Y4_N1
\Counter32Bits0|countSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~1_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(0));

-- Location: FF_X22_Y4_N49
\Counter32Bits0|countSignal[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~65_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[16]~DUPLICATE_q\);

-- Location: FF_X22_Y4_N37
\Counter32Bits0|countSignal[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~49_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal[12]~DUPLICATE_q\);

-- Location: FF_X22_Y4_N41
\Counter32Bits0|countSignal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~53_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(13));

-- Location: LABCELL_X23_Y3_N18
\Counter32Bits0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~5_combout\ = ( \Counter32Bits0|countSignal\(1) & ( !\Counter32Bits0|countSignal\(14) & ( (\Counter32Bits0|countSignal\(0) & (!\Counter32Bits0|countSignal[16]~DUPLICATE_q\ & (!\Counter32Bits0|countSignal[12]~DUPLICATE_q\ & 
-- !\Counter32Bits0|countSignal\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_countSignal\(0),
	datab => \Counter32Bits0|ALT_INV_countSignal[16]~DUPLICATE_q\,
	datac => \Counter32Bits0|ALT_INV_countSignal[12]~DUPLICATE_q\,
	datad => \Counter32Bits0|ALT_INV_countSignal\(13),
	datae => \Counter32Bits0|ALT_INV_countSignal\(1),
	dataf => \Counter32Bits0|ALT_INV_countSignal\(14),
	combout => \Counter32Bits0|Equal0~5_combout\);

-- Location: LABCELL_X23_Y3_N51
\Counter32Bits0|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|Equal0~6_combout\ = ( \Counter32Bits0|Equal0~2_combout\ & ( \Counter32Bits0|Equal0~5_combout\ & ( (\Counter32Bits0|Equal0~1_combout\ & (\Counter32Bits0|Equal0~0_combout\ & (\Counter32Bits0|Equal0~3_combout\ & 
-- \Counter32Bits0|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_Equal0~1_combout\,
	datab => \Counter32Bits0|ALT_INV_Equal0~0_combout\,
	datac => \Counter32Bits0|ALT_INV_Equal0~3_combout\,
	datad => \Counter32Bits0|ALT_INV_Equal0~4_combout\,
	datae => \Counter32Bits0|ALT_INV_Equal0~2_combout\,
	dataf => \Counter32Bits0|ALT_INV_Equal0~5_combout\,
	combout => \Counter32Bits0|Equal0~6_combout\);

-- Location: LABCELL_X23_Y3_N36
\Counter32Bits0|overflow~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits0|overflow~feeder_combout\ = ( \Counter32Bits0|Equal0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter32Bits0|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits0|overflow~feeder_combout\);

-- Location: FF_X23_Y3_N37
\Counter32Bits0|overflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|overflow~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|overflow~q\);

-- Location: LABCELL_X37_Y4_N3
\Counter32Bits1|countSignal[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|countSignal[0]~1_combout\ = ( \Counter32Bits1|Equal0~6_combout\ ) # ( !\Counter32Bits1|Equal0~6_combout\ & ( (!\FSM_CWC1|timerResetSignal~DUPLICATE_q\) # (\Counter32Bits0|overflow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\,
	datad => \Counter32Bits0|ALT_INV_overflow~q\,
	dataf => \Counter32Bits1|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits1|countSignal[0]~1_combout\);

-- Location: FF_X36_Y5_N17
\Counter32Bits1|countSignal[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~21_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[5]~DUPLICATE_q\);

-- Location: FF_X37_Y4_N8
\Counter32Bits1|countSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|countSignal[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(2));

-- Location: FF_X40_Y4_N37
\FSM_CWC1|State.GREENS~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|State.GREENS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|State.GREENS~DUPLICATE_q\);

-- Location: FF_X37_Y4_N49
\Counter32Bits1|countSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|countSignal[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(1));

-- Location: LABCELL_X36_Y5_N0
\Counter32Bits1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~1_sumout\ = SUM(( \Counter32Bits1|countSignal\(0) ) + ( VCC ) + ( !VCC ))
-- \Counter32Bits1|Add0~2\ = CARRY(( \Counter32Bits1|countSignal\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(0),
	cin => GND,
	sumout => \Counter32Bits1|Add0~1_sumout\,
	cout => \Counter32Bits1|Add0~2\);

-- Location: FF_X36_Y5_N2
\Counter32Bits1|countSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~1_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(0));

-- Location: LABCELL_X36_Y5_N3
\Counter32Bits1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~5_sumout\ = SUM(( \Counter32Bits1|countSignal[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~2\ ))
-- \Counter32Bits1|Add0~6\ = CARRY(( \Counter32Bits1|countSignal[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[1]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~2\,
	sumout => \Counter32Bits1|Add0~5_sumout\,
	cout => \Counter32Bits1|Add0~6\);

-- Location: LABCELL_X37_Y4_N48
\Counter32Bits1|countSignal[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|countSignal[1]~2_combout\ = ( \Counter32Bits1|countSignal\(1) & ( \Counter32Bits1|Add0~5_sumout\ & ( ((\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & !\Counter32Bits1|Equal0~6_combout\)) # (\FSM_CWC1|State.GREENS~DUPLICATE_q\) ) ) ) # ( 
-- !\Counter32Bits1|countSignal\(1) & ( \Counter32Bits1|Add0~5_sumout\ & ( (!\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & (\FSM_CWC1|State.GREENS~DUPLICATE_q\)) # (\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ((!\Counter32Bits1|Equal0~6_combout\ & 
-- ((\Counter32Bits0|overflow~q\))) # (\Counter32Bits1|Equal0~6_combout\ & (\FSM_CWC1|State.GREENS~DUPLICATE_q\)))) ) ) ) # ( \Counter32Bits1|countSignal\(1) & ( !\Counter32Bits1|Add0~5_sumout\ & ( (!\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & 
-- (\FSM_CWC1|State.GREENS~DUPLICATE_q\)) # (\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ((!\Counter32Bits1|Equal0~6_combout\ & ((!\Counter32Bits0|overflow~q\))) # (\Counter32Bits1|Equal0~6_combout\ & (\FSM_CWC1|State.GREENS~DUPLICATE_q\)))) ) ) ) # ( 
-- !\Counter32Bits1|countSignal\(1) & ( !\Counter32Bits1|Add0~5_sumout\ & ( (\FSM_CWC1|State.GREENS~DUPLICATE_q\ & ((!\FSM_CWC1|timerResetSignal~DUPLICATE_q\) # (\Counter32Bits1|Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101011101000101010101000111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CWC1|ALT_INV_State.GREENS~DUPLICATE_q\,
	datab => \FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\,
	datac => \Counter32Bits0|ALT_INV_overflow~q\,
	datad => \Counter32Bits1|ALT_INV_Equal0~6_combout\,
	datae => \Counter32Bits1|ALT_INV_countSignal\(1),
	dataf => \Counter32Bits1|ALT_INV_Add0~5_sumout\,
	combout => \Counter32Bits1|countSignal[1]~2_combout\);

-- Location: FF_X37_Y4_N50
\Counter32Bits1|countSignal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|countSignal[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N6
\Counter32Bits1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~9_sumout\ = SUM(( \Counter32Bits1|countSignal[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~6\ ))
-- \Counter32Bits1|Add0~10\ = CARRY(( \Counter32Bits1|countSignal[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal[2]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~6\,
	sumout => \Counter32Bits1|Add0~9_sumout\,
	cout => \Counter32Bits1|Add0~10\);

-- Location: LABCELL_X37_Y4_N6
\Counter32Bits1|countSignal[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|countSignal[2]~3_combout\ = ( \Counter32Bits1|countSignal\(2) & ( \Counter32Bits1|Add0~9_sumout\ & ( (!\FSM_CWC1|State.YELLOWS~q\) # ((\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & !\Counter32Bits1|Equal0~6_combout\)) ) ) ) # ( 
-- !\Counter32Bits1|countSignal\(2) & ( \Counter32Bits1|Add0~9_sumout\ & ( (!\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & (!\FSM_CWC1|State.YELLOWS~q\)) # (\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ((!\Counter32Bits1|Equal0~6_combout\ & 
-- ((\Counter32Bits0|overflow~q\))) # (\Counter32Bits1|Equal0~6_combout\ & (!\FSM_CWC1|State.YELLOWS~q\)))) ) ) ) # ( \Counter32Bits1|countSignal\(2) & ( !\Counter32Bits1|Add0~9_sumout\ & ( (!\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & 
-- (!\FSM_CWC1|State.YELLOWS~q\)) # (\FSM_CWC1|timerResetSignal~DUPLICATE_q\ & ((!\Counter32Bits1|Equal0~6_combout\ & ((!\Counter32Bits0|overflow~q\))) # (\Counter32Bits1|Equal0~6_combout\ & (!\FSM_CWC1|State.YELLOWS~q\)))) ) ) ) # ( 
-- !\Counter32Bits1|countSignal\(2) & ( !\Counter32Bits1|Add0~9_sumout\ & ( (!\FSM_CWC1|State.YELLOWS~q\ & ((!\FSM_CWC1|timerResetSignal~DUPLICATE_q\) # (\Counter32Bits1|Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010101110001010101010001011101010101011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CWC1|ALT_INV_State.YELLOWS~q\,
	datab => \FSM_CWC1|ALT_INV_timerResetSignal~DUPLICATE_q\,
	datac => \Counter32Bits0|ALT_INV_overflow~q\,
	datad => \Counter32Bits1|ALT_INV_Equal0~6_combout\,
	datae => \Counter32Bits1|ALT_INV_countSignal\(2),
	dataf => \Counter32Bits1|ALT_INV_Add0~9_sumout\,
	combout => \Counter32Bits1|countSignal[2]~3_combout\);

-- Location: FF_X37_Y4_N7
\Counter32Bits1|countSignal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|countSignal[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[2]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N9
\Counter32Bits1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~13_sumout\ = SUM(( \Counter32Bits1|countSignal\(3) ) + ( VCC ) + ( \Counter32Bits1|Add0~10\ ))
-- \Counter32Bits1|Add0~14\ = CARRY(( \Counter32Bits1|countSignal\(3) ) + ( VCC ) + ( \Counter32Bits1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(3),
	cin => \Counter32Bits1|Add0~10\,
	sumout => \Counter32Bits1|Add0~13_sumout\,
	cout => \Counter32Bits1|Add0~14\);

-- Location: FF_X36_Y5_N10
\Counter32Bits1|countSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~13_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(3));

-- Location: LABCELL_X36_Y5_N12
\Counter32Bits1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~17_sumout\ = SUM(( \Counter32Bits1|countSignal\(4) ) + ( VCC ) + ( \Counter32Bits1|Add0~14\ ))
-- \Counter32Bits1|Add0~18\ = CARRY(( \Counter32Bits1|countSignal\(4) ) + ( VCC ) + ( \Counter32Bits1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits1|ALT_INV_countSignal\(4),
	cin => \Counter32Bits1|Add0~14\,
	sumout => \Counter32Bits1|Add0~17_sumout\,
	cout => \Counter32Bits1|Add0~18\);

-- Location: FF_X36_Y5_N14
\Counter32Bits1|countSignal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~17_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(4));

-- Location: LABCELL_X36_Y5_N15
\Counter32Bits1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~21_sumout\ = SUM(( \Counter32Bits1|countSignal[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~18\ ))
-- \Counter32Bits1|Add0~22\ = CARRY(( \Counter32Bits1|countSignal[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[5]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~18\,
	sumout => \Counter32Bits1|Add0~21_sumout\,
	cout => \Counter32Bits1|Add0~22\);

-- Location: FF_X36_Y5_N16
\Counter32Bits1|countSignal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~21_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(5));

-- Location: FF_X36_Y5_N1
\Counter32Bits1|countSignal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~1_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N36
\Counter32Bits1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~4_combout\ = ( !\Counter32Bits1|countSignal\(1) & ( !\Counter32Bits1|countSignal\(2) & ( (!\Counter32Bits1|countSignal\(5) & (!\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & (!\Counter32Bits1|countSignal\(3) & 
-- !\Counter32Bits1|countSignal\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(5),
	datab => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(3),
	datad => \Counter32Bits1|ALT_INV_countSignal\(4),
	datae => \Counter32Bits1|ALT_INV_countSignal\(1),
	dataf => \Counter32Bits1|ALT_INV_countSignal\(2),
	combout => \Counter32Bits1|Equal0~4_combout\);

-- Location: LABCELL_X36_Y5_N18
\Counter32Bits1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~25_sumout\ = SUM(( \Counter32Bits1|countSignal\(6) ) + ( VCC ) + ( \Counter32Bits1|Add0~22\ ))
-- \Counter32Bits1|Add0~26\ = CARRY(( \Counter32Bits1|countSignal\(6) ) + ( VCC ) + ( \Counter32Bits1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(6),
	cin => \Counter32Bits1|Add0~22\,
	sumout => \Counter32Bits1|Add0~25_sumout\,
	cout => \Counter32Bits1|Add0~26\);

-- Location: FF_X36_Y5_N20
\Counter32Bits1|countSignal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~25_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(6));

-- Location: LABCELL_X36_Y5_N21
\Counter32Bits1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~29_sumout\ = SUM(( \Counter32Bits1|countSignal[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~26\ ))
-- \Counter32Bits1|Add0~30\ = CARRY(( \Counter32Bits1|countSignal[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal[7]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~26\,
	sumout => \Counter32Bits1|Add0~29_sumout\,
	cout => \Counter32Bits1|Add0~30\);

-- Location: FF_X36_Y5_N23
\Counter32Bits1|countSignal[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~29_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N24
\Counter32Bits1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~33_sumout\ = SUM(( \Counter32Bits1|countSignal[8]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~30\ ))
-- \Counter32Bits1|Add0~34\ = CARRY(( \Counter32Bits1|countSignal[8]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[8]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~30\,
	sumout => \Counter32Bits1|Add0~33_sumout\,
	cout => \Counter32Bits1|Add0~34\);

-- Location: FF_X36_Y5_N26
\Counter32Bits1|countSignal[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~33_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[8]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N27
\Counter32Bits1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~37_sumout\ = SUM(( \Counter32Bits1|countSignal[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~34\ ))
-- \Counter32Bits1|Add0~38\ = CARRY(( \Counter32Bits1|countSignal[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal[9]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~34\,
	sumout => \Counter32Bits1|Add0~37_sumout\,
	cout => \Counter32Bits1|Add0~38\);

-- Location: FF_X36_Y5_N29
\Counter32Bits1|countSignal[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~37_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[9]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N30
\Counter32Bits1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~41_sumout\ = SUM(( \Counter32Bits1|countSignal[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~38\ ))
-- \Counter32Bits1|Add0~42\ = CARRY(( \Counter32Bits1|countSignal[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[10]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~38\,
	sumout => \Counter32Bits1|Add0~41_sumout\,
	cout => \Counter32Bits1|Add0~42\);

-- Location: FF_X36_Y5_N31
\Counter32Bits1|countSignal[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~41_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[10]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N33
\Counter32Bits1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~45_sumout\ = SUM(( \Counter32Bits1|countSignal\(11) ) + ( VCC ) + ( \Counter32Bits1|Add0~42\ ))
-- \Counter32Bits1|Add0~46\ = CARRY(( \Counter32Bits1|countSignal\(11) ) + ( VCC ) + ( \Counter32Bits1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(11),
	cin => \Counter32Bits1|Add0~42\,
	sumout => \Counter32Bits1|Add0~45_sumout\,
	cout => \Counter32Bits1|Add0~46\);

-- Location: FF_X36_Y5_N35
\Counter32Bits1|countSignal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~45_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(11));

-- Location: LABCELL_X36_Y5_N36
\Counter32Bits1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~49_sumout\ = SUM(( \Counter32Bits1|countSignal\(12) ) + ( VCC ) + ( \Counter32Bits1|Add0~46\ ))
-- \Counter32Bits1|Add0~50\ = CARRY(( \Counter32Bits1|countSignal\(12) ) + ( VCC ) + ( \Counter32Bits1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(12),
	cin => \Counter32Bits1|Add0~46\,
	sumout => \Counter32Bits1|Add0~49_sumout\,
	cout => \Counter32Bits1|Add0~50\);

-- Location: FF_X36_Y5_N38
\Counter32Bits1|countSignal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~49_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(12));

-- Location: LABCELL_X36_Y5_N39
\Counter32Bits1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~53_sumout\ = SUM(( \Counter32Bits1|countSignal\(13) ) + ( VCC ) + ( \Counter32Bits1|Add0~50\ ))
-- \Counter32Bits1|Add0~54\ = CARRY(( \Counter32Bits1|countSignal\(13) ) + ( VCC ) + ( \Counter32Bits1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(13),
	cin => \Counter32Bits1|Add0~50\,
	sumout => \Counter32Bits1|Add0~53_sumout\,
	cout => \Counter32Bits1|Add0~54\);

-- Location: FF_X36_Y5_N41
\Counter32Bits1|countSignal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~53_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(13));

-- Location: LABCELL_X36_Y5_N42
\Counter32Bits1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~57_sumout\ = SUM(( \Counter32Bits1|countSignal\(14) ) + ( VCC ) + ( \Counter32Bits1|Add0~54\ ))
-- \Counter32Bits1|Add0~58\ = CARRY(( \Counter32Bits1|countSignal\(14) ) + ( VCC ) + ( \Counter32Bits1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(14),
	cin => \Counter32Bits1|Add0~54\,
	sumout => \Counter32Bits1|Add0~57_sumout\,
	cout => \Counter32Bits1|Add0~58\);

-- Location: FF_X36_Y5_N43
\Counter32Bits1|countSignal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~57_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(14));

-- Location: LABCELL_X36_Y5_N45
\Counter32Bits1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~61_sumout\ = SUM(( \Counter32Bits1|countSignal\(15) ) + ( VCC ) + ( \Counter32Bits1|Add0~58\ ))
-- \Counter32Bits1|Add0~62\ = CARRY(( \Counter32Bits1|countSignal\(15) ) + ( VCC ) + ( \Counter32Bits1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(15),
	cin => \Counter32Bits1|Add0~58\,
	sumout => \Counter32Bits1|Add0~61_sumout\,
	cout => \Counter32Bits1|Add0~62\);

-- Location: FF_X36_Y5_N47
\Counter32Bits1|countSignal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~61_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(15));

-- Location: LABCELL_X36_Y5_N48
\Counter32Bits1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~65_sumout\ = SUM(( \Counter32Bits1|countSignal\(16) ) + ( VCC ) + ( \Counter32Bits1|Add0~62\ ))
-- \Counter32Bits1|Add0~66\ = CARRY(( \Counter32Bits1|countSignal\(16) ) + ( VCC ) + ( \Counter32Bits1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(16),
	cin => \Counter32Bits1|Add0~62\,
	sumout => \Counter32Bits1|Add0~65_sumout\,
	cout => \Counter32Bits1|Add0~66\);

-- Location: FF_X36_Y5_N50
\Counter32Bits1|countSignal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~65_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(16));

-- Location: LABCELL_X36_Y5_N51
\Counter32Bits1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~69_sumout\ = SUM(( \Counter32Bits1|countSignal\(17) ) + ( VCC ) + ( \Counter32Bits1|Add0~66\ ))
-- \Counter32Bits1|Add0~70\ = CARRY(( \Counter32Bits1|countSignal\(17) ) + ( VCC ) + ( \Counter32Bits1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(17),
	cin => \Counter32Bits1|Add0~66\,
	sumout => \Counter32Bits1|Add0~69_sumout\,
	cout => \Counter32Bits1|Add0~70\);

-- Location: FF_X36_Y5_N52
\Counter32Bits1|countSignal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~69_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(17));

-- Location: LABCELL_X36_Y5_N54
\Counter32Bits1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~73_sumout\ = SUM(( \Counter32Bits1|countSignal\(18) ) + ( VCC ) + ( \Counter32Bits1|Add0~70\ ))
-- \Counter32Bits1|Add0~74\ = CARRY(( \Counter32Bits1|countSignal\(18) ) + ( VCC ) + ( \Counter32Bits1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(18),
	cin => \Counter32Bits1|Add0~70\,
	sumout => \Counter32Bits1|Add0~73_sumout\,
	cout => \Counter32Bits1|Add0~74\);

-- Location: FF_X36_Y5_N56
\Counter32Bits1|countSignal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~73_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(18));

-- Location: LABCELL_X36_Y5_N57
\Counter32Bits1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~77_sumout\ = SUM(( \Counter32Bits1|countSignal\(19) ) + ( VCC ) + ( \Counter32Bits1|Add0~74\ ))
-- \Counter32Bits1|Add0~78\ = CARRY(( \Counter32Bits1|countSignal\(19) ) + ( VCC ) + ( \Counter32Bits1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(19),
	cin => \Counter32Bits1|Add0~74\,
	sumout => \Counter32Bits1|Add0~77_sumout\,
	cout => \Counter32Bits1|Add0~78\);

-- Location: FF_X36_Y5_N59
\Counter32Bits1|countSignal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~77_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(19));

-- Location: LABCELL_X36_Y4_N0
\Counter32Bits1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~81_sumout\ = SUM(( \Counter32Bits1|countSignal\(20) ) + ( VCC ) + ( \Counter32Bits1|Add0~78\ ))
-- \Counter32Bits1|Add0~82\ = CARRY(( \Counter32Bits1|countSignal\(20) ) + ( VCC ) + ( \Counter32Bits1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(20),
	cin => \Counter32Bits1|Add0~78\,
	sumout => \Counter32Bits1|Add0~81_sumout\,
	cout => \Counter32Bits1|Add0~82\);

-- Location: FF_X36_Y4_N2
\Counter32Bits1|countSignal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~81_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(20));

-- Location: LABCELL_X36_Y4_N3
\Counter32Bits1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~85_sumout\ = SUM(( \Counter32Bits1|countSignal\(21) ) + ( VCC ) + ( \Counter32Bits1|Add0~82\ ))
-- \Counter32Bits1|Add0~86\ = CARRY(( \Counter32Bits1|countSignal\(21) ) + ( VCC ) + ( \Counter32Bits1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(21),
	cin => \Counter32Bits1|Add0~82\,
	sumout => \Counter32Bits1|Add0~85_sumout\,
	cout => \Counter32Bits1|Add0~86\);

-- Location: FF_X36_Y4_N5
\Counter32Bits1|countSignal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~85_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(21));

-- Location: LABCELL_X36_Y4_N6
\Counter32Bits1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~89_sumout\ = SUM(( \Counter32Bits1|countSignal\(22) ) + ( VCC ) + ( \Counter32Bits1|Add0~86\ ))
-- \Counter32Bits1|Add0~90\ = CARRY(( \Counter32Bits1|countSignal\(22) ) + ( VCC ) + ( \Counter32Bits1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits1|ALT_INV_countSignal\(22),
	cin => \Counter32Bits1|Add0~86\,
	sumout => \Counter32Bits1|Add0~89_sumout\,
	cout => \Counter32Bits1|Add0~90\);

-- Location: FF_X36_Y4_N8
\Counter32Bits1|countSignal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~89_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(22));

-- Location: LABCELL_X36_Y4_N9
\Counter32Bits1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~93_sumout\ = SUM(( \Counter32Bits1|countSignal\(23) ) + ( VCC ) + ( \Counter32Bits1|Add0~90\ ))
-- \Counter32Bits1|Add0~94\ = CARRY(( \Counter32Bits1|countSignal\(23) ) + ( VCC ) + ( \Counter32Bits1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(23),
	cin => \Counter32Bits1|Add0~90\,
	sumout => \Counter32Bits1|Add0~93_sumout\,
	cout => \Counter32Bits1|Add0~94\);

-- Location: FF_X36_Y4_N10
\Counter32Bits1|countSignal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~93_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(23));

-- Location: LABCELL_X36_Y4_N12
\Counter32Bits1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~97_sumout\ = SUM(( \Counter32Bits1|countSignal\(24) ) + ( VCC ) + ( \Counter32Bits1|Add0~94\ ))
-- \Counter32Bits1|Add0~98\ = CARRY(( \Counter32Bits1|countSignal\(24) ) + ( VCC ) + ( \Counter32Bits1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits1|ALT_INV_countSignal\(24),
	cin => \Counter32Bits1|Add0~94\,
	sumout => \Counter32Bits1|Add0~97_sumout\,
	cout => \Counter32Bits1|Add0~98\);

-- Location: FF_X36_Y4_N14
\Counter32Bits1|countSignal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~97_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(24));

-- Location: LABCELL_X36_Y4_N15
\Counter32Bits1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~101_sumout\ = SUM(( \Counter32Bits1|countSignal[25]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~98\ ))
-- \Counter32Bits1|Add0~102\ = CARRY(( \Counter32Bits1|countSignal[25]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[25]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~98\,
	sumout => \Counter32Bits1|Add0~101_sumout\,
	cout => \Counter32Bits1|Add0~102\);

-- Location: FF_X36_Y4_N16
\Counter32Bits1|countSignal[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~101_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[25]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N18
\Counter32Bits1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~105_sumout\ = SUM(( \Counter32Bits1|countSignal\(26) ) + ( VCC ) + ( \Counter32Bits1|Add0~102\ ))
-- \Counter32Bits1|Add0~106\ = CARRY(( \Counter32Bits1|countSignal\(26) ) + ( VCC ) + ( \Counter32Bits1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal\(26),
	cin => \Counter32Bits1|Add0~102\,
	sumout => \Counter32Bits1|Add0~105_sumout\,
	cout => \Counter32Bits1|Add0~106\);

-- Location: FF_X36_Y4_N20
\Counter32Bits1|countSignal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~105_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(26));

-- Location: LABCELL_X36_Y4_N21
\Counter32Bits1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~109_sumout\ = SUM(( \Counter32Bits1|countSignal\(27) ) + ( VCC ) + ( \Counter32Bits1|Add0~106\ ))
-- \Counter32Bits1|Add0~110\ = CARRY(( \Counter32Bits1|countSignal\(27) ) + ( VCC ) + ( \Counter32Bits1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(27),
	cin => \Counter32Bits1|Add0~106\,
	sumout => \Counter32Bits1|Add0~109_sumout\,
	cout => \Counter32Bits1|Add0~110\);

-- Location: FF_X36_Y4_N23
\Counter32Bits1|countSignal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~109_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(27));

-- Location: LABCELL_X36_Y4_N48
\Counter32Bits1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~0_combout\ = ( !\Counter32Bits1|countSignal\(27) & ( !\Counter32Bits1|countSignal\(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Counter32Bits1|ALT_INV_countSignal\(27),
	dataf => \Counter32Bits1|ALT_INV_countSignal\(26),
	combout => \Counter32Bits1|Equal0~0_combout\);

-- Location: FF_X36_Y5_N46
\Counter32Bits1|countSignal[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~61_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[15]~DUPLICATE_q\);

-- Location: FF_X36_Y5_N49
\Counter32Bits1|countSignal[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~65_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[16]~DUPLICATE_q\);

-- Location: FF_X36_Y5_N37
\Counter32Bits1|countSignal[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~49_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[12]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N30
\Counter32Bits1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~3_combout\ = ( !\Counter32Bits1|countSignal[12]~DUPLICATE_q\ & ( !\Counter32Bits1|countSignal\(13) & ( (!\Counter32Bits1|countSignal\(14) & (!\Counter32Bits1|countSignal[15]~DUPLICATE_q\ & (!\Counter32Bits1|countSignal\(11) & 
-- !\Counter32Bits1|countSignal[16]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(14),
	datab => \Counter32Bits1|ALT_INV_countSignal[15]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(11),
	datad => \Counter32Bits1|ALT_INV_countSignal[16]~DUPLICATE_q\,
	datae => \Counter32Bits1|ALT_INV_countSignal[12]~DUPLICATE_q\,
	dataf => \Counter32Bits1|ALT_INV_countSignal\(13),
	combout => \Counter32Bits1|Equal0~3_combout\);

-- Location: FF_X36_Y5_N28
\Counter32Bits1|countSignal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~37_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(9));

-- Location: FF_X36_Y5_N58
\Counter32Bits1|countSignal[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~77_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[19]~DUPLICATE_q\);

-- Location: FF_X36_Y5_N22
\Counter32Bits1|countSignal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~29_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(7));

-- Location: FF_X36_Y5_N25
\Counter32Bits1|countSignal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~33_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(8));

-- Location: LABCELL_X37_Y4_N12
\Counter32Bits1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~5_combout\ = ( !\Counter32Bits1|countSignal\(7) & ( !\Counter32Bits1|countSignal\(8) & ( (!\Counter32Bits1|countSignal\(9) & (!\Counter32Bits1|countSignal\(6) & (!\Counter32Bits1|countSignal[10]~DUPLICATE_q\ & 
-- !\Counter32Bits1|countSignal[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(9),
	datab => \Counter32Bits1|ALT_INV_countSignal\(6),
	datac => \Counter32Bits1|ALT_INV_countSignal[10]~DUPLICATE_q\,
	datad => \Counter32Bits1|ALT_INV_countSignal[19]~DUPLICATE_q\,
	datae => \Counter32Bits1|ALT_INV_countSignal\(7),
	dataf => \Counter32Bits1|ALT_INV_countSignal\(8),
	combout => \Counter32Bits1|Equal0~5_combout\);

-- Location: LABCELL_X36_Y4_N24
\Counter32Bits1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~113_sumout\ = SUM(( \Counter32Bits1|countSignal[28]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~110\ ))
-- \Counter32Bits1|Add0~114\ = CARRY(( \Counter32Bits1|countSignal[28]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[28]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~110\,
	sumout => \Counter32Bits1|Add0~113_sumout\,
	cout => \Counter32Bits1|Add0~114\);

-- Location: FF_X36_Y4_N26
\Counter32Bits1|countSignal[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~113_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[28]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N27
\Counter32Bits1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~117_sumout\ = SUM(( \Counter32Bits1|countSignal\(29) ) + ( VCC ) + ( \Counter32Bits1|Add0~114\ ))
-- \Counter32Bits1|Add0~118\ = CARRY(( \Counter32Bits1|countSignal\(29) ) + ( VCC ) + ( \Counter32Bits1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits1|ALT_INV_countSignal\(29),
	cin => \Counter32Bits1|Add0~114\,
	sumout => \Counter32Bits1|Add0~117_sumout\,
	cout => \Counter32Bits1|Add0~118\);

-- Location: FF_X36_Y4_N29
\Counter32Bits1|countSignal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~117_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(29));

-- Location: FF_X36_Y4_N31
\Counter32Bits1|countSignal[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~121_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[30]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N30
\Counter32Bits1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~121_sumout\ = SUM(( \Counter32Bits1|countSignal[30]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~118\ ))
-- \Counter32Bits1|Add0~122\ = CARRY(( \Counter32Bits1|countSignal[30]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits1|ALT_INV_countSignal[30]~DUPLICATE_q\,
	cin => \Counter32Bits1|Add0~118\,
	sumout => \Counter32Bits1|Add0~121_sumout\,
	cout => \Counter32Bits1|Add0~122\);

-- Location: FF_X36_Y4_N32
\Counter32Bits1|countSignal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~121_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(30));

-- Location: FF_X36_Y4_N25
\Counter32Bits1|countSignal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~113_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(28));

-- Location: LABCELL_X36_Y4_N33
\Counter32Bits1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Add0~125_sumout\ = SUM(( \Counter32Bits1|countSignal\(31) ) + ( VCC ) + ( \Counter32Bits1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(31),
	cin => \Counter32Bits1|Add0~122\,
	sumout => \Counter32Bits1|Add0~125_sumout\);

-- Location: FF_X36_Y4_N35
\Counter32Bits1|countSignal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~125_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(31));

-- Location: LABCELL_X36_Y4_N42
\Counter32Bits1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~1_combout\ = ( !\Counter32Bits1|countSignal\(20) & ( !\Counter32Bits1|countSignal\(31) & ( (!\Counter32Bits1|countSignal\(29) & (!\Counter32Bits1|countSignal\(30) & (!\Counter32Bits1|countSignal\(21) & 
-- !\Counter32Bits1|countSignal\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(29),
	datab => \Counter32Bits1|ALT_INV_countSignal\(30),
	datac => \Counter32Bits1|ALT_INV_countSignal\(21),
	datad => \Counter32Bits1|ALT_INV_countSignal\(28),
	datae => \Counter32Bits1|ALT_INV_countSignal\(20),
	dataf => \Counter32Bits1|ALT_INV_countSignal\(31),
	combout => \Counter32Bits1|Equal0~1_combout\);

-- Location: FF_X36_Y4_N13
\Counter32Bits1|countSignal[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~97_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[24]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N18
\Counter32Bits1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~2_combout\ = ( !\Counter32Bits1|countSignal\(17) & ( !\Counter32Bits1|countSignal\(23) & ( (!\Counter32Bits1|countSignal[24]~DUPLICATE_q\ & (!\Counter32Bits1|countSignal[25]~DUPLICATE_q\ & (!\Counter32Bits1|countSignal\(18) & 
-- !\Counter32Bits1|countSignal\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal[24]~DUPLICATE_q\,
	datab => \Counter32Bits1|ALT_INV_countSignal[25]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(18),
	datad => \Counter32Bits1|ALT_INV_countSignal\(22),
	datae => \Counter32Bits1|ALT_INV_countSignal\(17),
	dataf => \Counter32Bits1|ALT_INV_countSignal\(23),
	combout => \Counter32Bits1|Equal0~2_combout\);

-- Location: LABCELL_X37_Y4_N42
\Counter32Bits1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits1|Equal0~6_combout\ = ( \Counter32Bits1|Equal0~1_combout\ & ( \Counter32Bits1|Equal0~2_combout\ & ( (\Counter32Bits1|Equal0~4_combout\ & (\Counter32Bits1|Equal0~0_combout\ & (\Counter32Bits1|Equal0~3_combout\ & 
-- \Counter32Bits1|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_Equal0~4_combout\,
	datab => \Counter32Bits1|ALT_INV_Equal0~0_combout\,
	datac => \Counter32Bits1|ALT_INV_Equal0~3_combout\,
	datad => \Counter32Bits1|ALT_INV_Equal0~5_combout\,
	datae => \Counter32Bits1|ALT_INV_Equal0~1_combout\,
	dataf => \Counter32Bits1|ALT_INV_Equal0~2_combout\,
	combout => \Counter32Bits1|Equal0~6_combout\);

-- Location: FF_X37_Y4_N44
\Counter32Bits1|overflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|overflow~q\);

-- Location: FF_X40_Y4_N38
\FSM_CWC1|State.GREENS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|State.GREENS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|State.GREENS~q\);

-- Location: LABCELL_X40_Y4_N42
\FSM_CWC1|State.YELLOWS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|State.YELLOWS~0_combout\ = ( !\FSM_CWC1|State.GREENS~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM_CWC1|ALT_INV_State.GREENS~q\,
	combout => \FSM_CWC1|State.YELLOWS~0_combout\);

-- Location: FF_X40_Y4_N43
\FSM_CWC1|State.YELLOWS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|State.YELLOWS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|State.YELLOWS~q\);

-- Location: FF_X40_Y4_N4
\FSM_CWC1|State.REDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM_CWC1|State.YELLOWS~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|State.REDS~q\);

-- Location: LABCELL_X40_Y4_N27
\FSM_CWC1|greenSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|greenSignal~0_combout\ = ( !\FSM_CWC1|State.REDS~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM_CWC1|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC1|greenSignal~0_combout\);

-- Location: FF_X40_Y4_N28
\FSM_CWC1|greenSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|greenSignal~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|greenSignal~q\);

-- Location: FF_X40_Y4_N7
\FSM_CWC1|redSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM_CWC1|State.YELLOWS~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|redSignal~q\);

-- Location: LABCELL_X40_Y4_N12
\FSM_CWC1|yellowSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|yellowSignal~0_combout\ = ( !\FSM_CWC1|State.GREENS~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM_CWC1|ALT_INV_State.GREENS~q\,
	combout => \FSM_CWC1|yellowSignal~0_combout\);

-- Location: FF_X40_Y4_N14
\FSM_CWC1|yellowSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|yellowSignal~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits1|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|yellowSignal~q\);

-- Location: LABCELL_X63_Y1_N30
\FSM_CWC2|State.GREENS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|State.GREENS~0_combout\ = ( !\FSM_CWC2|State.REDS~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM_CWC2|ALT_INV_State.REDS~DUPLICATE_q\,
	combout => \FSM_CWC2|State.GREENS~0_combout\);

-- Location: LABCELL_X63_Y1_N12
\FSM_CWC2|timerResetSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|timerResetSignal~0_combout\ = ( !\Counter32Bits2|overflow~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter32Bits2|ALT_INV_overflow~q\,
	combout => \FSM_CWC2|timerResetSignal~0_combout\);

-- Location: FF_X63_Y1_N14
\FSM_CWC2|timerResetSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|timerResetSignal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|timerResetSignal~q\);

-- Location: LABCELL_X63_Y1_N33
\Counter32Bits2|countSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal~0_combout\ = ( \Counter32Bits2|Equal0~6_combout\ ) # ( !\Counter32Bits2|Equal0~6_combout\ & ( !\FSM_CWC2|timerResetSignal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_CWC2|ALT_INV_timerResetSignal~q\,
	dataf => \Counter32Bits2|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits2|countSignal~0_combout\);

-- Location: LABCELL_X63_Y1_N54
\Counter32Bits2|countSignal[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal[6]~1_combout\ = ( \Counter32Bits2|Equal0~6_combout\ ) # ( !\Counter32Bits2|Equal0~6_combout\ & ( (!\FSM_CWC2|timerResetSignal~q\) # (\Counter32Bits0|overflow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_CWC2|ALT_INV_timerResetSignal~q\,
	datad => \Counter32Bits0|ALT_INV_overflow~q\,
	dataf => \Counter32Bits2|ALT_INV_Equal0~6_combout\,
	combout => \Counter32Bits2|countSignal[6]~1_combout\);

-- Location: FF_X64_Y2_N44
\Counter32Bits2|countSignal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~57_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(14));

-- Location: LABCELL_X64_Y2_N0
\Counter32Bits2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~1_sumout\ = SUM(( \Counter32Bits2|countSignal\(0) ) + ( VCC ) + ( !VCC ))
-- \Counter32Bits2|Add0~2\ = CARRY(( \Counter32Bits2|countSignal\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(0),
	cin => GND,
	sumout => \Counter32Bits2|Add0~1_sumout\,
	cout => \Counter32Bits2|Add0~2\);

-- Location: FF_X64_Y2_N2
\Counter32Bits2|countSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~1_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(0));

-- Location: LABCELL_X64_Y2_N3
\Counter32Bits2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~5_sumout\ = SUM(( \Counter32Bits2|countSignal[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~2\ ))
-- \Counter32Bits2|Add0~6\ = CARRY(( \Counter32Bits2|countSignal[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal[1]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~2\,
	sumout => \Counter32Bits2|Add0~5_sumout\,
	cout => \Counter32Bits2|Add0~6\);

-- Location: FF_X64_Y1_N38
\Counter32Bits2|countSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(1));

-- Location: LABCELL_X64_Y1_N36
\Counter32Bits2|countSignal[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal[1]~2_combout\ = ( \Counter32Bits2|countSignal\(1) & ( \FSM_CWC2|timerResetSignal~q\ & ( (!\Counter32Bits2|Equal0~6_combout\ & ((!\Counter32Bits0|overflow~q\) # ((\Counter32Bits2|Add0~5_sumout\)))) # 
-- (\Counter32Bits2|Equal0~6_combout\ & (((!\FSM_CWC2|State.GREENS~q\)))) ) ) ) # ( !\Counter32Bits2|countSignal\(1) & ( \FSM_CWC2|timerResetSignal~q\ & ( (!\Counter32Bits2|Equal0~6_combout\ & (\Counter32Bits0|overflow~q\ & (\Counter32Bits2|Add0~5_sumout\))) 
-- # (\Counter32Bits2|Equal0~6_combout\ & (((!\FSM_CWC2|State.GREENS~q\)))) ) ) ) # ( \Counter32Bits2|countSignal\(1) & ( !\FSM_CWC2|timerResetSignal~q\ & ( !\FSM_CWC2|State.GREENS~q\ ) ) ) # ( !\Counter32Bits2|countSignal\(1) & ( 
-- !\FSM_CWC2|timerResetSignal~q\ & ( !\FSM_CWC2|State.GREENS~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000010001111100001011101111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits0|ALT_INV_overflow~q\,
	datab => \Counter32Bits2|ALT_INV_Add0~5_sumout\,
	datac => \FSM_CWC2|ALT_INV_State.GREENS~q\,
	datad => \Counter32Bits2|ALT_INV_Equal0~6_combout\,
	datae => \Counter32Bits2|ALT_INV_countSignal\(1),
	dataf => \FSM_CWC2|ALT_INV_timerResetSignal~q\,
	combout => \Counter32Bits2|countSignal[1]~2_combout\);

-- Location: FF_X64_Y1_N37
\Counter32Bits2|countSignal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N6
\Counter32Bits2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~9_sumout\ = SUM(( \Counter32Bits2|countSignal[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~6\ ))
-- \Counter32Bits2|Add0~10\ = CARRY(( \Counter32Bits2|countSignal[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal[2]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~6\,
	sumout => \Counter32Bits2|Add0~9_sumout\,
	cout => \Counter32Bits2|Add0~10\);

-- Location: FF_X63_Y1_N20
\Counter32Bits2|countSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(2));

-- Location: FF_X63_Y1_N40
\FSM_CWC2|State.YELLOWS~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM_CWC2|State.GREENS~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|State.YELLOWS~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N18
\Counter32Bits2|countSignal[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal[2]~3_combout\ = ( \Counter32Bits2|countSignal\(2) & ( \FSM_CWC2|State.YELLOWS~DUPLICATE_q\ & ( (\FSM_CWC2|timerResetSignal~q\ & (!\Counter32Bits2|Equal0~6_combout\ & ((!\Counter32Bits0|overflow~q\) # 
-- (\Counter32Bits2|Add0~9_sumout\)))) ) ) ) # ( !\Counter32Bits2|countSignal\(2) & ( \FSM_CWC2|State.YELLOWS~DUPLICATE_q\ & ( (\Counter32Bits2|Add0~9_sumout\ & (\FSM_CWC2|timerResetSignal~q\ & (\Counter32Bits0|overflow~q\ & 
-- !\Counter32Bits2|Equal0~6_combout\))) ) ) ) # ( \Counter32Bits2|countSignal\(2) & ( !\FSM_CWC2|State.YELLOWS~DUPLICATE_q\ & ( ((!\FSM_CWC2|timerResetSignal~q\) # ((!\Counter32Bits0|overflow~q\) # (\Counter32Bits2|Equal0~6_combout\))) # 
-- (\Counter32Bits2|Add0~9_sumout\) ) ) ) # ( !\Counter32Bits2|countSignal\(2) & ( !\FSM_CWC2|State.YELLOWS~DUPLICATE_q\ & ( (!\FSM_CWC2|timerResetSignal~q\) # (((\Counter32Bits2|Add0~9_sumout\ & \Counter32Bits0|overflow~q\)) # 
-- (\Counter32Bits2|Equal0~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111111111111011111111100000001000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_Add0~9_sumout\,
	datab => \FSM_CWC2|ALT_INV_timerResetSignal~q\,
	datac => \Counter32Bits0|ALT_INV_overflow~q\,
	datad => \Counter32Bits2|ALT_INV_Equal0~6_combout\,
	datae => \Counter32Bits2|ALT_INV_countSignal\(2),
	dataf => \FSM_CWC2|ALT_INV_State.YELLOWS~DUPLICATE_q\,
	combout => \Counter32Bits2|countSignal[2]~3_combout\);

-- Location: FF_X63_Y1_N19
\Counter32Bits2|countSignal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N9
\Counter32Bits2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~13_sumout\ = SUM(( \Counter32Bits2|countSignal\(3) ) + ( VCC ) + ( \Counter32Bits2|Add0~10\ ))
-- \Counter32Bits2|Add0~14\ = CARRY(( \Counter32Bits2|countSignal\(3) ) + ( VCC ) + ( \Counter32Bits2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(3),
	cin => \Counter32Bits2|Add0~10\,
	sumout => \Counter32Bits2|Add0~13_sumout\,
	cout => \Counter32Bits2|Add0~14\);

-- Location: FF_X64_Y2_N11
\Counter32Bits2|countSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~13_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(3));

-- Location: LABCELL_X64_Y2_N12
\Counter32Bits2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~17_sumout\ = SUM(( \Counter32Bits2|countSignal\(4) ) + ( VCC ) + ( \Counter32Bits2|Add0~14\ ))
-- \Counter32Bits2|Add0~18\ = CARRY(( \Counter32Bits2|countSignal\(4) ) + ( VCC ) + ( \Counter32Bits2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal\(4),
	cin => \Counter32Bits2|Add0~14\,
	sumout => \Counter32Bits2|Add0~17_sumout\,
	cout => \Counter32Bits2|Add0~18\);

-- Location: FF_X64_Y2_N14
\Counter32Bits2|countSignal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~17_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(4));

-- Location: LABCELL_X64_Y2_N15
\Counter32Bits2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~21_sumout\ = SUM(( \Counter32Bits2|countSignal\(5) ) + ( VCC ) + ( \Counter32Bits2|Add0~18\ ))
-- \Counter32Bits2|Add0~22\ = CARRY(( \Counter32Bits2|countSignal\(5) ) + ( VCC ) + ( \Counter32Bits2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(5),
	cin => \Counter32Bits2|Add0~18\,
	sumout => \Counter32Bits2|Add0~21_sumout\,
	cout => \Counter32Bits2|Add0~22\);

-- Location: FF_X64_Y2_N17
\Counter32Bits2|countSignal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~21_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(5));

-- Location: LABCELL_X64_Y2_N18
\Counter32Bits2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~25_sumout\ = SUM(( \Counter32Bits2|countSignal\(6) ) + ( VCC ) + ( \Counter32Bits2|Add0~22\ ))
-- \Counter32Bits2|Add0~26\ = CARRY(( \Counter32Bits2|countSignal\(6) ) + ( VCC ) + ( \Counter32Bits2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(6),
	cin => \Counter32Bits2|Add0~22\,
	sumout => \Counter32Bits2|Add0~25_sumout\,
	cout => \Counter32Bits2|Add0~26\);

-- Location: FF_X64_Y2_N20
\Counter32Bits2|countSignal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~25_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(6));

-- Location: LABCELL_X64_Y2_N21
\Counter32Bits2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~29_sumout\ = SUM(( \Counter32Bits2|countSignal\(7) ) + ( VCC ) + ( \Counter32Bits2|Add0~26\ ))
-- \Counter32Bits2|Add0~30\ = CARRY(( \Counter32Bits2|countSignal\(7) ) + ( VCC ) + ( \Counter32Bits2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(7),
	cin => \Counter32Bits2|Add0~26\,
	sumout => \Counter32Bits2|Add0~29_sumout\,
	cout => \Counter32Bits2|Add0~30\);

-- Location: FF_X64_Y2_N23
\Counter32Bits2|countSignal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~29_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(7));

-- Location: LABCELL_X64_Y2_N24
\Counter32Bits2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~33_sumout\ = SUM(( \Counter32Bits2|countSignal\(8) ) + ( VCC ) + ( \Counter32Bits2|Add0~30\ ))
-- \Counter32Bits2|Add0~34\ = CARRY(( \Counter32Bits2|countSignal\(8) ) + ( VCC ) + ( \Counter32Bits2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(8),
	cin => \Counter32Bits2|Add0~30\,
	sumout => \Counter32Bits2|Add0~33_sumout\,
	cout => \Counter32Bits2|Add0~34\);

-- Location: FF_X64_Y2_N26
\Counter32Bits2|countSignal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~33_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(8));

-- Location: LABCELL_X64_Y2_N27
\Counter32Bits2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~37_sumout\ = SUM(( \Counter32Bits2|countSignal[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~34\ ))
-- \Counter32Bits2|Add0~38\ = CARRY(( \Counter32Bits2|countSignal[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal[9]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~34\,
	sumout => \Counter32Bits2|Add0~37_sumout\,
	cout => \Counter32Bits2|Add0~38\);

-- Location: FF_X64_Y2_N29
\Counter32Bits2|countSignal[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~37_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[9]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N30
\Counter32Bits2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~41_sumout\ = SUM(( \Counter32Bits2|countSignal\(10) ) + ( VCC ) + ( \Counter32Bits2|Add0~38\ ))
-- \Counter32Bits2|Add0~42\ = CARRY(( \Counter32Bits2|countSignal\(10) ) + ( VCC ) + ( \Counter32Bits2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(10),
	cin => \Counter32Bits2|Add0~38\,
	sumout => \Counter32Bits2|Add0~41_sumout\,
	cout => \Counter32Bits2|Add0~42\);

-- Location: FF_X64_Y2_N31
\Counter32Bits2|countSignal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~41_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(10));

-- Location: LABCELL_X64_Y2_N33
\Counter32Bits2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~45_sumout\ = SUM(( \Counter32Bits2|countSignal[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~42\ ))
-- \Counter32Bits2|Add0~46\ = CARRY(( \Counter32Bits2|countSignal[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal[11]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~42\,
	sumout => \Counter32Bits2|Add0~45_sumout\,
	cout => \Counter32Bits2|Add0~46\);

-- Location: FF_X63_Y1_N49
\Counter32Bits2|countSignal[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Counter32Bits2|Add0~45_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	sload => VCC,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N36
\Counter32Bits2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~49_sumout\ = SUM(( \Counter32Bits2|countSignal[12]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~46\ ))
-- \Counter32Bits2|Add0~50\ = CARRY(( \Counter32Bits2|countSignal[12]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[12]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~46\,
	sumout => \Counter32Bits2|Add0~49_sumout\,
	cout => \Counter32Bits2|Add0~50\);

-- Location: FF_X64_Y2_N38
\Counter32Bits2|countSignal[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~49_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N39
\Counter32Bits2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~53_sumout\ = SUM(( \Counter32Bits2|countSignal[13]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~50\ ))
-- \Counter32Bits2|Add0~54\ = CARRY(( \Counter32Bits2|countSignal[13]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[13]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~50\,
	sumout => \Counter32Bits2|Add0~53_sumout\,
	cout => \Counter32Bits2|Add0~54\);

-- Location: LABCELL_X63_Y1_N3
\Counter32Bits2|countSignal[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal[13]~feeder_combout\ = ( \Counter32Bits2|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter32Bits2|ALT_INV_Add0~53_sumout\,
	combout => \Counter32Bits2|countSignal[13]~feeder_combout\);

-- Location: FF_X63_Y1_N4
\Counter32Bits2|countSignal[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[13]~feeder_combout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[13]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N42
\Counter32Bits2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~57_sumout\ = SUM(( \Counter32Bits2|countSignal\(14) ) + ( VCC ) + ( \Counter32Bits2|Add0~54\ ))
-- \Counter32Bits2|Add0~58\ = CARRY(( \Counter32Bits2|countSignal\(14) ) + ( VCC ) + ( \Counter32Bits2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal\(14),
	cin => \Counter32Bits2|Add0~54\,
	sumout => \Counter32Bits2|Add0~57_sumout\,
	cout => \Counter32Bits2|Add0~58\);

-- Location: FF_X64_Y2_N43
\Counter32Bits2|countSignal[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~57_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[14]~DUPLICATE_q\);

-- Location: FF_X63_Y1_N5
\Counter32Bits2|countSignal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[13]~feeder_combout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(13));

-- Location: FF_X64_Y2_N47
\Counter32Bits2|countSignal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~61_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(15));

-- Location: LABCELL_X64_Y2_N45
\Counter32Bits2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~61_sumout\ = SUM(( \Counter32Bits2|countSignal\(15) ) + ( VCC ) + ( \Counter32Bits2|Add0~58\ ))
-- \Counter32Bits2|Add0~62\ = CARRY(( \Counter32Bits2|countSignal\(15) ) + ( VCC ) + ( \Counter32Bits2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(15),
	cin => \Counter32Bits2|Add0~58\,
	sumout => \Counter32Bits2|Add0~61_sumout\,
	cout => \Counter32Bits2|Add0~62\);

-- Location: FF_X64_Y2_N46
\Counter32Bits2|countSignal[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~61_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[15]~DUPLICATE_q\);

-- Location: FF_X63_Y1_N50
\Counter32Bits2|countSignal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Counter32Bits2|Add0~45_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	sload => VCC,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(11));

-- Location: LABCELL_X63_Y1_N51
\Counter32Bits2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~5_combout\ = ( !\Counter32Bits2|countSignal[15]~DUPLICATE_q\ & ( !\Counter32Bits2|countSignal\(11) & ( (!\Counter32Bits2|countSignal[14]~DUPLICATE_q\ & (!\Counter32Bits2|countSignal\(13) & 
-- (!\Counter32Bits2|countSignal[12]~DUPLICATE_q\ & !\Counter32Bits2|countSignal\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[14]~DUPLICATE_q\,
	datab => \Counter32Bits2|ALT_INV_countSignal\(13),
	datac => \Counter32Bits2|ALT_INV_countSignal[12]~DUPLICATE_q\,
	datad => \Counter32Bits2|ALT_INV_countSignal\(10),
	datae => \Counter32Bits2|ALT_INV_countSignal[15]~DUPLICATE_q\,
	dataf => \Counter32Bits2|ALT_INV_countSignal\(11),
	combout => \Counter32Bits2|Equal0~5_combout\);

-- Location: FF_X64_Y2_N13
\Counter32Bits2|countSignal[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~17_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[4]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N15
\Counter32Bits2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~0_combout\ = ( !\Counter32Bits2|countSignal[4]~DUPLICATE_q\ & ( !\Counter32Bits2|countSignal\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(5),
	dataf => \Counter32Bits2|ALT_INV_countSignal[4]~DUPLICATE_q\,
	combout => \Counter32Bits2|Equal0~0_combout\);

-- Location: LABCELL_X64_Y2_N48
\Counter32Bits2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~65_sumout\ = SUM(( \Counter32Bits2|countSignal\(16) ) + ( VCC ) + ( \Counter32Bits2|Add0~62\ ))
-- \Counter32Bits2|Add0~66\ = CARRY(( \Counter32Bits2|countSignal\(16) ) + ( VCC ) + ( \Counter32Bits2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(16),
	cin => \Counter32Bits2|Add0~62\,
	sumout => \Counter32Bits2|Add0~65_sumout\,
	cout => \Counter32Bits2|Add0~66\);

-- Location: FF_X64_Y2_N50
\Counter32Bits2|countSignal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~65_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(16));

-- Location: LABCELL_X64_Y2_N51
\Counter32Bits2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~69_sumout\ = SUM(( \Counter32Bits2|countSignal[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~66\ ))
-- \Counter32Bits2|Add0~70\ = CARRY(( \Counter32Bits2|countSignal[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[17]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~66\,
	sumout => \Counter32Bits2|Add0~69_sumout\,
	cout => \Counter32Bits2|Add0~70\);

-- Location: FF_X64_Y2_N52
\Counter32Bits2|countSignal[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~69_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[17]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N54
\Counter32Bits2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~73_sumout\ = SUM(( \Counter32Bits2|countSignal[18]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~70\ ))
-- \Counter32Bits2|Add0~74\ = CARRY(( \Counter32Bits2|countSignal[18]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal[18]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~70\,
	sumout => \Counter32Bits2|Add0~73_sumout\,
	cout => \Counter32Bits2|Add0~74\);

-- Location: FF_X64_Y2_N55
\Counter32Bits2|countSignal[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~73_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[18]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N57
\Counter32Bits2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~77_sumout\ = SUM(( \Counter32Bits2|countSignal\(19) ) + ( VCC ) + ( \Counter32Bits2|Add0~74\ ))
-- \Counter32Bits2|Add0~78\ = CARRY(( \Counter32Bits2|countSignal\(19) ) + ( VCC ) + ( \Counter32Bits2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(19),
	cin => \Counter32Bits2|Add0~74\,
	sumout => \Counter32Bits2|Add0~77_sumout\,
	cout => \Counter32Bits2|Add0~78\);

-- Location: LABCELL_X63_Y1_N0
\Counter32Bits2|countSignal[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|countSignal[19]~feeder_combout\ = ( \Counter32Bits2|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Counter32Bits2|ALT_INV_Add0~77_sumout\,
	combout => \Counter32Bits2|countSignal[19]~feeder_combout\);

-- Location: FF_X63_Y1_N2
\Counter32Bits2|countSignal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|countSignal[19]~feeder_combout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(19));

-- Location: LABCELL_X64_Y1_N0
\Counter32Bits2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~81_sumout\ = SUM(( \Counter32Bits2|countSignal[20]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~78\ ))
-- \Counter32Bits2|Add0~82\ = CARRY(( \Counter32Bits2|countSignal[20]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[20]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~78\,
	sumout => \Counter32Bits2|Add0~81_sumout\,
	cout => \Counter32Bits2|Add0~82\);

-- Location: FF_X64_Y1_N2
\Counter32Bits2|countSignal[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~81_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[20]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N3
\Counter32Bits2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~85_sumout\ = SUM(( \Counter32Bits2|countSignal\(21) ) + ( VCC ) + ( \Counter32Bits2|Add0~82\ ))
-- \Counter32Bits2|Add0~86\ = CARRY(( \Counter32Bits2|countSignal\(21) ) + ( VCC ) + ( \Counter32Bits2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(21),
	cin => \Counter32Bits2|Add0~82\,
	sumout => \Counter32Bits2|Add0~85_sumout\,
	cout => \Counter32Bits2|Add0~86\);

-- Location: FF_X64_Y1_N5
\Counter32Bits2|countSignal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~85_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(21));

-- Location: LABCELL_X64_Y1_N6
\Counter32Bits2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~89_sumout\ = SUM(( \Counter32Bits2|countSignal\(22) ) + ( VCC ) + ( \Counter32Bits2|Add0~86\ ))
-- \Counter32Bits2|Add0~90\ = CARRY(( \Counter32Bits2|countSignal\(22) ) + ( VCC ) + ( \Counter32Bits2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal\(22),
	cin => \Counter32Bits2|Add0~86\,
	sumout => \Counter32Bits2|Add0~89_sumout\,
	cout => \Counter32Bits2|Add0~90\);

-- Location: FF_X64_Y1_N8
\Counter32Bits2|countSignal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~89_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(22));

-- Location: FF_X64_Y1_N1
\Counter32Bits2|countSignal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~81_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(20));

-- Location: FF_X64_Y2_N49
\Counter32Bits2|countSignal[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~65_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[16]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N53
\Counter32Bits2|countSignal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~69_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(17));

-- Location: FF_X64_Y2_N56
\Counter32Bits2|countSignal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~73_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(18));

-- Location: LABCELL_X63_Y1_N27
\Counter32Bits2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~3_combout\ = ( !\Counter32Bits2|countSignal\(17) & ( !\Counter32Bits2|countSignal\(18) & ( (!\Counter32Bits2|countSignal\(22) & (!\Counter32Bits2|countSignal\(20) & (!\Counter32Bits2|countSignal[16]~DUPLICATE_q\ & 
-- !\Counter32Bits2|countSignal\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(22),
	datab => \Counter32Bits2|ALT_INV_countSignal\(20),
	datac => \Counter32Bits2|ALT_INV_countSignal[16]~DUPLICATE_q\,
	datad => \Counter32Bits2|ALT_INV_countSignal\(21),
	datae => \Counter32Bits2|ALT_INV_countSignal\(17),
	dataf => \Counter32Bits2|ALT_INV_countSignal\(18),
	combout => \Counter32Bits2|Equal0~3_combout\);

-- Location: FF_X64_Y2_N28
\Counter32Bits2|countSignal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~37_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(9));

-- Location: FF_X64_Y2_N19
\Counter32Bits2|countSignal[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~25_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[6]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N22
\Counter32Bits2|countSignal[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~29_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[7]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N9
\Counter32Bits2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~4_combout\ = ( !\Counter32Bits2|countSignal\(8) & ( !\Counter32Bits2|countSignal\(2) & ( (!\Counter32Bits2|countSignal\(9) & (!\Counter32Bits2|countSignal\(1) & (!\Counter32Bits2|countSignal[6]~DUPLICATE_q\ & 
-- !\Counter32Bits2|countSignal[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(9),
	datab => \Counter32Bits2|ALT_INV_countSignal\(1),
	datac => \Counter32Bits2|ALT_INV_countSignal[6]~DUPLICATE_q\,
	datad => \Counter32Bits2|ALT_INV_countSignal[7]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal\(8),
	dataf => \Counter32Bits2|ALT_INV_countSignal\(2),
	combout => \Counter32Bits2|Equal0~4_combout\);

-- Location: LABCELL_X64_Y1_N9
\Counter32Bits2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~93_sumout\ = SUM(( \Counter32Bits2|countSignal[23]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~90\ ))
-- \Counter32Bits2|Add0~94\ = CARRY(( \Counter32Bits2|countSignal[23]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[23]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~90\,
	sumout => \Counter32Bits2|Add0~93_sumout\,
	cout => \Counter32Bits2|Add0~94\);

-- Location: FF_X64_Y1_N11
\Counter32Bits2|countSignal[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~93_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[23]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N12
\Counter32Bits2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~97_sumout\ = SUM(( \Counter32Bits2|countSignal[24]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~94\ ))
-- \Counter32Bits2|Add0~98\ = CARRY(( \Counter32Bits2|countSignal[24]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal[24]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~94\,
	sumout => \Counter32Bits2|Add0~97_sumout\,
	cout => \Counter32Bits2|Add0~98\);

-- Location: FF_X64_Y1_N14
\Counter32Bits2|countSignal[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~97_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[24]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N15
\Counter32Bits2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~101_sumout\ = SUM(( \Counter32Bits2|countSignal\(25) ) + ( VCC ) + ( \Counter32Bits2|Add0~98\ ))
-- \Counter32Bits2|Add0~102\ = CARRY(( \Counter32Bits2|countSignal\(25) ) + ( VCC ) + ( \Counter32Bits2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal\(25),
	cin => \Counter32Bits2|Add0~98\,
	sumout => \Counter32Bits2|Add0~101_sumout\,
	cout => \Counter32Bits2|Add0~102\);

-- Location: FF_X64_Y1_N17
\Counter32Bits2|countSignal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~101_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(25));

-- Location: LABCELL_X64_Y1_N18
\Counter32Bits2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~105_sumout\ = SUM(( \Counter32Bits2|countSignal[26]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~102\ ))
-- \Counter32Bits2|Add0~106\ = CARRY(( \Counter32Bits2|countSignal[26]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter32Bits2|ALT_INV_countSignal[26]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~102\,
	sumout => \Counter32Bits2|Add0~105_sumout\,
	cout => \Counter32Bits2|Add0~106\);

-- Location: FF_X64_Y1_N20
\Counter32Bits2|countSignal[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~105_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[26]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N21
\Counter32Bits2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~109_sumout\ = SUM(( \Counter32Bits2|countSignal[27]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~106\ ))
-- \Counter32Bits2|Add0~110\ = CARRY(( \Counter32Bits2|countSignal[27]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[27]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~106\,
	sumout => \Counter32Bits2|Add0~109_sumout\,
	cout => \Counter32Bits2|Add0~110\);

-- Location: FF_X64_Y1_N23
\Counter32Bits2|countSignal[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~109_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[27]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N24
\Counter32Bits2|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~113_sumout\ = SUM(( \Counter32Bits2|countSignal[28]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~110\ ))
-- \Counter32Bits2|Add0~114\ = CARRY(( \Counter32Bits2|countSignal[28]~DUPLICATE_q\ ) + ( VCC ) + ( \Counter32Bits2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal[28]~DUPLICATE_q\,
	cin => \Counter32Bits2|Add0~110\,
	sumout => \Counter32Bits2|Add0~113_sumout\,
	cout => \Counter32Bits2|Add0~114\);

-- Location: FF_X64_Y1_N25
\Counter32Bits2|countSignal[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~113_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[28]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N27
\Counter32Bits2|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~117_sumout\ = SUM(( \Counter32Bits2|countSignal\(29) ) + ( VCC ) + ( \Counter32Bits2|Add0~114\ ))
-- \Counter32Bits2|Add0~118\ = CARRY(( \Counter32Bits2|countSignal\(29) ) + ( VCC ) + ( \Counter32Bits2|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter32Bits2|ALT_INV_countSignal\(29),
	cin => \Counter32Bits2|Add0~114\,
	sumout => \Counter32Bits2|Add0~117_sumout\,
	cout => \Counter32Bits2|Add0~118\);

-- Location: FF_X64_Y1_N28
\Counter32Bits2|countSignal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~117_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(29));

-- Location: LABCELL_X64_Y1_N30
\Counter32Bits2|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~121_sumout\ = SUM(( \Counter32Bits2|countSignal\(30) ) + ( VCC ) + ( \Counter32Bits2|Add0~118\ ))
-- \Counter32Bits2|Add0~122\ = CARRY(( \Counter32Bits2|countSignal\(30) ) + ( VCC ) + ( \Counter32Bits2|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter32Bits2|ALT_INV_countSignal\(30),
	cin => \Counter32Bits2|Add0~118\,
	sumout => \Counter32Bits2|Add0~121_sumout\,
	cout => \Counter32Bits2|Add0~122\);

-- Location: FF_X64_Y1_N32
\Counter32Bits2|countSignal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~121_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(30));

-- Location: LABCELL_X64_Y1_N33
\Counter32Bits2|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Add0~125_sumout\ = SUM(( \Counter32Bits2|countSignal\(31) ) + ( VCC ) + ( \Counter32Bits2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(31),
	cin => \Counter32Bits2|Add0~122\,
	sumout => \Counter32Bits2|Add0~125_sumout\);

-- Location: FF_X64_Y1_N35
\Counter32Bits2|countSignal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~125_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(31));

-- Location: FF_X64_Y2_N10
\Counter32Bits2|countSignal[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~13_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[3]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N36
\Counter32Bits2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~1_combout\ = ( !\Counter32Bits2|countSignal\(19) & ( !\Counter32Bits2|countSignal\(0) & ( (!\Counter32Bits2|countSignal\(30) & (!\Counter32Bits2|countSignal\(29) & (!\Counter32Bits2|countSignal\(31) & 
-- !\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(30),
	datab => \Counter32Bits2|ALT_INV_countSignal\(29),
	datac => \Counter32Bits2|ALT_INV_countSignal\(31),
	datad => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal\(19),
	dataf => \Counter32Bits2|ALT_INV_countSignal\(0),
	combout => \Counter32Bits2|Equal0~1_combout\);

-- Location: FF_X64_Y1_N26
\Counter32Bits2|countSignal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~113_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(28));

-- Location: LABCELL_X64_Y1_N45
\Counter32Bits2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~2_combout\ = ( !\Counter32Bits2|countSignal[27]~DUPLICATE_q\ & ( !\Counter32Bits2|countSignal[23]~DUPLICATE_q\ & ( (!\Counter32Bits2|countSignal[26]~DUPLICATE_q\ & (!\Counter32Bits2|countSignal[24]~DUPLICATE_q\ & 
-- (!\Counter32Bits2|countSignal\(25) & !\Counter32Bits2|countSignal\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[26]~DUPLICATE_q\,
	datab => \Counter32Bits2|ALT_INV_countSignal[24]~DUPLICATE_q\,
	datac => \Counter32Bits2|ALT_INV_countSignal\(25),
	datad => \Counter32Bits2|ALT_INV_countSignal\(28),
	datae => \Counter32Bits2|ALT_INV_countSignal[27]~DUPLICATE_q\,
	dataf => \Counter32Bits2|ALT_INV_countSignal[23]~DUPLICATE_q\,
	combout => \Counter32Bits2|Equal0~2_combout\);

-- Location: LABCELL_X63_Y1_N42
\Counter32Bits2|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter32Bits2|Equal0~6_combout\ = ( \Counter32Bits2|Equal0~1_combout\ & ( \Counter32Bits2|Equal0~2_combout\ & ( (\Counter32Bits2|Equal0~5_combout\ & (\Counter32Bits2|Equal0~0_combout\ & (\Counter32Bits2|Equal0~3_combout\ & 
-- \Counter32Bits2|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_Equal0~5_combout\,
	datab => \Counter32Bits2|ALT_INV_Equal0~0_combout\,
	datac => \Counter32Bits2|ALT_INV_Equal0~3_combout\,
	datad => \Counter32Bits2|ALT_INV_Equal0~4_combout\,
	datae => \Counter32Bits2|ALT_INV_Equal0~1_combout\,
	dataf => \Counter32Bits2|ALT_INV_Equal0~2_combout\,
	combout => \Counter32Bits2|Equal0~6_combout\);

-- Location: FF_X63_Y1_N44
\Counter32Bits2|overflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|overflow~q\);

-- Location: FF_X63_Y1_N31
\FSM_CWC2|State.GREENS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|State.GREENS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|State.GREENS~q\);

-- Location: FF_X63_Y1_N41
\FSM_CWC2|State.YELLOWS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM_CWC2|State.GREENS~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|State.YELLOWS~q\);

-- Location: LABCELL_X63_Y1_N57
\FSM_CWC2|State.REDS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|State.REDS~0_combout\ = !\FSM_CWC2|State.YELLOWS~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_CWC2|ALT_INV_State.YELLOWS~q\,
	combout => \FSM_CWC2|State.REDS~0_combout\);

-- Location: FF_X63_Y1_N59
\FSM_CWC2|State.REDS~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|State.REDS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|State.REDS~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N36
\FSM_CWC2|greenSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|greenSignal~0_combout\ = !\FSM_CWC2|State.REDS~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_CWC2|ALT_INV_State.REDS~DUPLICATE_q\,
	combout => \FSM_CWC2|greenSignal~0_combout\);

-- Location: FF_X68_Y1_N37
\FSM_CWC2|greenSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|greenSignal~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|greenSignal~q\);

-- Location: LABCELL_X68_Y1_N33
\FSM_CWC2|redSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|redSignal~0_combout\ = !\FSM_CWC2|State.YELLOWS~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_CWC2|ALT_INV_State.YELLOWS~DUPLICATE_q\,
	combout => \FSM_CWC2|redSignal~0_combout\);

-- Location: FF_X68_Y1_N34
\FSM_CWC2|redSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|redSignal~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|redSignal~q\);

-- Location: FF_X63_Y1_N35
\FSM_CWC2|yellowSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM_CWC2|State.GREENS~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|yellowSignal~q\);

-- Location: FF_X22_Y3_N4
\Counter32Bits0|countSignal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~85_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(21));

-- Location: FF_X22_Y3_N10
\Counter32Bits0|countSignal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~93_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(23));

-- Location: FF_X22_Y3_N16
\Counter32Bits0|countSignal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits0|Add0~101_sumout\,
	sclr => \Counter32Bits0|countSignal[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits0|countSignal\(25));

-- Location: FF_X36_Y5_N32
\Counter32Bits1|countSignal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~41_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(10));

-- Location: FF_X36_Y4_N4
\Counter32Bits1|countSignal[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~85_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal[21]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N17
\Counter32Bits1|countSignal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits1|Add0~101_sumout\,
	sclr => \Counter32Bits1|countSignal~0_combout\,
	ena => \Counter32Bits1|countSignal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits1|countSignal\(25));

-- Location: FF_X64_Y2_N1
\Counter32Bits2|countSignal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~1_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal[0]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N37
\Counter32Bits2|countSignal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~49_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(12));

-- Location: FF_X64_Y1_N10
\Counter32Bits2|countSignal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~93_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(23));

-- Location: FF_X64_Y1_N13
\Counter32Bits2|countSignal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~97_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(24));

-- Location: FF_X64_Y1_N19
\Counter32Bits2|countSignal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~105_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(26));

-- Location: FF_X64_Y1_N22
\Counter32Bits2|countSignal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter32Bits2|Add0~109_sumout\,
	sclr => \Counter32Bits2|countSignal~0_combout\,
	ena => \Counter32Bits2|countSignal[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter32Bits2|countSignal\(27));

-- Location: IOIBUF_X36_Y0_N1
\button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LABCELL_X40_Y4_N57
\FSM_CWC1|buttonHoldSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|buttonHoldSignal~0_combout\ = ( \FSM_CWC1|buttonHoldSignal~q\ & ( \FSM_CWC1|State.REDS~q\ & ( !\Counter32Bits1|overflow~q\ ) ) ) # ( !\FSM_CWC1|buttonHoldSignal~q\ & ( \FSM_CWC1|State.REDS~q\ & ( (!\button~input_o\ & 
-- !\Counter32Bits1|overflow~q\) ) ) ) # ( \FSM_CWC1|buttonHoldSignal~q\ & ( !\FSM_CWC1|State.REDS~q\ ) ) # ( !\FSM_CWC1|buttonHoldSignal~q\ & ( !\FSM_CWC1|State.REDS~q\ & ( !\button~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_button~input_o\,
	datad => \Counter32Bits1|ALT_INV_overflow~q\,
	datae => \FSM_CWC1|ALT_INV_buttonHoldSignal~q\,
	dataf => \FSM_CWC1|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC1|buttonHoldSignal~0_combout\);

-- Location: FF_X40_Y4_N59
\FSM_CWC1|buttonHoldSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|buttonHoldSignal~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|buttonHoldSignal~q\);

-- Location: LABCELL_X40_Y4_N21
\FSM_CWC1|enable7SegmentsSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC1|enable7SegmentsSignal~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( \FSM_CWC1|State.REDS~q\ & ( (!\Counter32Bits1|overflow~q\) # (!\FSM_CWC1|State.GREENS~q\) ) ) ) # ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( !\FSM_CWC1|State.REDS~q\ & ( 
-- (!\Counter32Bits1|overflow~q\) # ((!\FSM_CWC1|State.GREENS~q\) # (\FSM_CWC1|buttonHoldSignal~q\)) ) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ & ( !\FSM_CWC1|State.REDS~q\ & ( (\Counter32Bits1|overflow~q\ & (\FSM_CWC1|buttonHoldSignal~q\ & 
-- \FSM_CWC1|State.GREENS~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111010111100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_overflow~q\,
	datac => \FSM_CWC1|ALT_INV_buttonHoldSignal~q\,
	datad => \FSM_CWC1|ALT_INV_State.GREENS~q\,
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	dataf => \FSM_CWC1|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC1|enable7SegmentsSignal~0_combout\);

-- Location: FF_X40_Y4_N22
\FSM_CWC1|enable7SegmentsSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC1|enable7SegmentsSignal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC1|enable7SegmentsSignal~q\);

-- Location: LABCELL_X37_Y5_N12
\SevenSegments0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux6~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) & ( (\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & (!\Counter32Bits1|countSignal\(1) $ (!\Counter32Bits1|countSignal\(2)))) ) ) ) # ( 
-- !\FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) ) ) # ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) & ( (!\Counter32Bits1|countSignal\(1) & (!\Counter32Bits1|countSignal[0]~DUPLICATE_q\ $ 
-- (!\Counter32Bits1|countSignal\(2)))) ) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001010000010100011111111111111110001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(1),
	datab => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(2),
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	dataf => \Counter32Bits1|ALT_INV_countSignal\(3),
	combout => \SevenSegments0|Mux6~0_combout\);

-- Location: LABCELL_X37_Y5_N54
\SevenSegments0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux5~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) & ( (!\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ((\Counter32Bits1|countSignal\(2)))) # (\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & 
-- (\Counter32Bits1|countSignal\(1))) ) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) ) ) # ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) & ( (\Counter32Bits1|countSignal\(2) & 
-- (!\Counter32Bits1|countSignal\(1) $ (!\Counter32Bits1|countSignal[0]~DUPLICATE_q\))) ) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001100000011011111111111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(1),
	datab => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(2),
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	dataf => \Counter32Bits1|ALT_INV_countSignal\(3),
	combout => \SevenSegments0|Mux5~0_combout\);

-- Location: LABCELL_X37_Y5_N51
\SevenSegments0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux4~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( (!\Counter32Bits1|countSignal\(2) & (!\Counter32Bits1|countSignal\(3) & (!\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & \Counter32Bits1|countSignal\(1)))) # 
-- (\Counter32Bits1|countSignal\(2) & (\Counter32Bits1|countSignal\(3) & ((!\Counter32Bits1|countSignal[0]~DUPLICATE_q\) # (\Counter32Bits1|countSignal\(1))))) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100001001000111111111111111110001000010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(2),
	datab => \Counter32Bits1|ALT_INV_countSignal\(3),
	datac => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datad => \Counter32Bits1|ALT_INV_countSignal\(1),
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments0|Mux4~0_combout\);

-- Location: LABCELL_X37_Y4_N57
\SevenSegments0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux3~0_combout\ = ( \Counter32Bits1|countSignal\(3) & ( \Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( (!\FSM_CWC1|enable7SegmentsSignal~q\) # (!\Counter32Bits1|countSignal\(1) $ (\Counter32Bits1|countSignal\(2))) ) ) ) # ( 
-- !\Counter32Bits1|countSignal\(3) & ( \Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( (!\FSM_CWC1|enable7SegmentsSignal~q\) # (!\Counter32Bits1|countSignal\(1) $ (\Counter32Bits1|countSignal\(2))) ) ) ) # ( \Counter32Bits1|countSignal\(3) & ( 
-- !\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( (!\FSM_CWC1|enable7SegmentsSignal~q\) # ((\Counter32Bits1|countSignal\(1) & !\Counter32Bits1|countSignal\(2))) ) ) ) # ( !\Counter32Bits1|countSignal\(3) & ( !\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( 
-- (!\FSM_CWC1|enable7SegmentsSignal~q\) # ((!\Counter32Bits1|countSignal\(1) & \Counter32Bits1|countSignal\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101110101011101011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	datab => \Counter32Bits1|ALT_INV_countSignal\(1),
	datac => \Counter32Bits1|ALT_INV_countSignal\(2),
	datae => \Counter32Bits1|ALT_INV_countSignal\(3),
	dataf => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	combout => \SevenSegments0|Mux3~0_combout\);

-- Location: LABCELL_X37_Y5_N33
\SevenSegments0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux2~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( (!\Counter32Bits1|countSignal\(1) & ((!\Counter32Bits1|countSignal\(2) & ((\Counter32Bits1|countSignal[0]~DUPLICATE_q\))) # (\Counter32Bits1|countSignal\(2) & 
-- (!\Counter32Bits1|countSignal\(3))))) # (\Counter32Bits1|countSignal\(1) & (((!\Counter32Bits1|countSignal\(3) & \Counter32Bits1|countSignal[0]~DUPLICATE_q\)))) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010011100000110011111111111111110100111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(2),
	datab => \Counter32Bits1|ALT_INV_countSignal\(3),
	datac => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datad => \Counter32Bits1|ALT_INV_countSignal\(1),
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments0|Mux2~0_combout\);

-- Location: LABCELL_X37_Y5_N36
\SevenSegments0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux1~0_combout\ = ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) & ( (!\Counter32Bits1|countSignal\(1) & (\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & \Counter32Bits1|countSignal\(2))) ) ) ) # ( 
-- !\FSM_CWC1|enable7SegmentsSignal~q\ & ( \Counter32Bits1|countSignal\(3) ) ) # ( \FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) & ( (!\Counter32Bits1|countSignal\(1) & (\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & 
-- !\Counter32Bits1|countSignal\(2))) # (\Counter32Bits1|countSignal\(1) & ((!\Counter32Bits1|countSignal\(2)) # (\Counter32Bits1|countSignal[0]~DUPLICATE_q\))) ) ) ) # ( !\FSM_CWC1|enable7SegmentsSignal~q\ & ( !\Counter32Bits1|countSignal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011100010111000111111111111111110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(1),
	datab => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \Counter32Bits1|ALT_INV_countSignal\(2),
	datae => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	dataf => \Counter32Bits1|ALT_INV_countSignal\(3),
	combout => \SevenSegments0|Mux1~0_combout\);

-- Location: LABCELL_X37_Y4_N0
\SevenSegments0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux0~0_combout\ = ( \Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( (!\Counter32Bits1|countSignal\(3) & (\FSM_CWC1|enable7SegmentsSignal~q\ & (!\Counter32Bits1|countSignal\(2) $ (\Counter32Bits1|countSignal\(1))))) ) ) # ( 
-- !\Counter32Bits1|countSignal[0]~DUPLICATE_q\ & ( (\FSM_CWC1|enable7SegmentsSignal~q\ & (!\Counter32Bits1|countSignal\(1) & (!\Counter32Bits1|countSignal\(3) $ (\Counter32Bits1|countSignal\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits1|ALT_INV_countSignal\(3),
	datab => \Counter32Bits1|ALT_INV_countSignal\(2),
	datac => \FSM_CWC1|ALT_INV_enable7SegmentsSignal~q\,
	datad => \Counter32Bits1|ALT_INV_countSignal\(1),
	dataf => \Counter32Bits1|ALT_INV_countSignal[0]~DUPLICATE_q\,
	combout => \SevenSegments0|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\button2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: FF_X63_Y1_N58
\FSM_CWC2|State.REDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|State.REDS~0_combout\,
	clrn => \reset~input_o\,
	ena => \Counter32Bits2|overflow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|State.REDS~q\);

-- Location: LABCELL_X64_Y1_N54
\FSM_CWC2|buttonHoldSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|buttonHoldSignal~0_combout\ = ( \FSM_CWC2|buttonHoldSignal~q\ & ( \FSM_CWC2|State.REDS~q\ ) ) # ( !\FSM_CWC2|buttonHoldSignal~q\ & ( \FSM_CWC2|State.REDS~q\ & ( !\button2~input_o\ ) ) ) # ( \FSM_CWC2|buttonHoldSignal~q\ & ( 
-- !\FSM_CWC2|State.REDS~q\ & ( !\Counter32Bits2|overflow~q\ ) ) ) # ( !\FSM_CWC2|buttonHoldSignal~q\ & ( !\FSM_CWC2|State.REDS~q\ & ( (!\Counter32Bits2|overflow~q\ & !\button2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101010101010101011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_overflow~q\,
	datac => \ALT_INV_button2~input_o\,
	datae => \FSM_CWC2|ALT_INV_buttonHoldSignal~q\,
	dataf => \FSM_CWC2|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC2|buttonHoldSignal~0_combout\);

-- Location: FF_X64_Y1_N55
\FSM_CWC2|buttonHoldSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|buttonHoldSignal~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|buttonHoldSignal~q\);

-- Location: LABCELL_X64_Y1_N48
\FSM_CWC2|enable7SegmentsSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM_CWC2|enable7SegmentsSignal~0_combout\ = ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( \FSM_CWC2|State.REDS~q\ & ( (!\Counter32Bits2|overflow~q\) # ((\FSM_CWC2|State.GREENS~q\) # (\FSM_CWC2|buttonHoldSignal~q\)) ) ) ) # ( 
-- !\FSM_CWC2|enable7SegmentsSignal~q\ & ( \FSM_CWC2|State.REDS~q\ & ( (\Counter32Bits2|overflow~q\ & (\FSM_CWC2|buttonHoldSignal~q\ & !\FSM_CWC2|State.GREENS~q\)) ) ) ) # ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( !\FSM_CWC2|State.REDS~q\ & ( 
-- (!\Counter32Bits2|overflow~q\) # (\FSM_CWC2|State.GREENS~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100010000000100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_overflow~q\,
	datab => \FSM_CWC2|ALT_INV_buttonHoldSignal~q\,
	datac => \FSM_CWC2|ALT_INV_State.GREENS~q\,
	datae => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	dataf => \FSM_CWC2|ALT_INV_State.REDS~q\,
	combout => \FSM_CWC2|enable7SegmentsSignal~0_combout\);

-- Location: FF_X64_Y1_N49
\FSM_CWC2|enable7SegmentsSignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM_CWC2|enable7SegmentsSignal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_CWC2|enable7SegmentsSignal~q\);

-- Location: LABCELL_X68_Y1_N48
\SevenSegments1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux6~0_combout\ = ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (!\Counter32Bits2|countSignal\(2) & (!\Counter32Bits2|countSignal\(1) $ (\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) # 
-- (\Counter32Bits2|countSignal\(2) & (!\Counter32Bits2|countSignal\(1) & \Counter32Bits2|countSignal[3]~DUPLICATE_q\)) ) ) ) # ( !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (\Counter32Bits2|countSignal\(2) & 
-- (!\Counter32Bits2|countSignal\(1) & !\Counter32Bits2|countSignal[3]~DUPLICATE_q\)) ) ) ) # ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( !\FSM_CWC2|enable7SegmentsSignal~q\ ) ) # ( !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( 
-- !\FSM_CWC2|enable7SegmentsSignal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101000000010000001000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(2),
	datab => \Counter32Bits2|ALT_INV_countSignal\(1),
	datac => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	dataf => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments1|Mux6~0_combout\);

-- Location: LABCELL_X68_Y1_N45
\SevenSegments1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux5~0_combout\ = ( \Counter32Bits2|countSignal\(1) & ( (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((!\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ((\Counter32Bits2|countSignal\(2)))) # (\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & 
-- (\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) ) ) # ( !\Counter32Bits2|countSignal\(1) & ( (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((\Counter32Bits2|countSignal\(2) & (!\Counter32Bits2|countSignal[3]~DUPLICATE_q\ $ 
-- (!\Counter32Bits2|countSignal[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110110111100011111110111110000111101101111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datab => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	datad => \Counter32Bits2|ALT_INV_countSignal\(2),
	datae => \Counter32Bits2|ALT_INV_countSignal\(1),
	combout => \SevenSegments1|Mux5~0_combout\);

-- Location: LABCELL_X68_Y1_N24
\SevenSegments1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux4~0_combout\ = ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (\Counter32Bits2|countSignal\(2) & (\Counter32Bits2|countSignal\(1) & \Counter32Bits2|countSignal[3]~DUPLICATE_q\)) ) ) ) # ( 
-- !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (!\Counter32Bits2|countSignal\(2) & (\Counter32Bits2|countSignal\(1) & !\Counter32Bits2|countSignal[3]~DUPLICATE_q\)) # (\Counter32Bits2|countSignal\(2) & 
-- ((\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) ) ) ) # ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( !\FSM_CWC2|enable7SegmentsSignal~q\ ) ) # ( !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( !\FSM_CWC2|enable7SegmentsSignal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100101001001010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(2),
	datab => \Counter32Bits2|ALT_INV_countSignal\(1),
	datac => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	dataf => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments1|Mux4~0_combout\);

-- Location: LABCELL_X68_Y1_N9
\SevenSegments1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux3~0_combout\ = ( \Counter32Bits2|countSignal\(1) & ( (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((!\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & (\Counter32Bits2|countSignal[3]~DUPLICATE_q\ & !\Counter32Bits2|countSignal\(2))) # 
-- (\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ((\Counter32Bits2|countSignal\(2))))) ) ) # ( !\Counter32Bits2|countSignal\(1) & ( (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((!\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & 
-- (!\Counter32Bits2|countSignal[3]~DUPLICATE_q\ & \Counter32Bits2|countSignal\(2))) # (\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ((!\Counter32Bits2|countSignal\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111000111101001111001111110011111110001111010011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datab => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	datad => \Counter32Bits2|ALT_INV_countSignal\(2),
	datae => \Counter32Bits2|ALT_INV_countSignal\(1),
	combout => \SevenSegments1|Mux3~0_combout\);

-- Location: LABCELL_X68_Y1_N15
\SevenSegments1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux2~0_combout\ = ( \Counter32Bits2|countSignal\(1) & ( (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((!\Counter32Bits2|countSignal[3]~DUPLICATE_q\ & \Counter32Bits2|countSignal[0]~DUPLICATE_q\)) ) ) # ( !\Counter32Bits2|countSignal\(1) & ( 
-- (!\FSM_CWC2|enable7SegmentsSignal~q\) # ((!\Counter32Bits2|countSignal\(2) & ((\Counter32Bits2|countSignal[0]~DUPLICATE_q\))) # (\Counter32Bits2|countSignal\(2) & (!\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111010111100101111001011110011111110101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datab => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	datac => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	datad => \Counter32Bits2|ALT_INV_countSignal\(2),
	datae => \Counter32Bits2|ALT_INV_countSignal\(1),
	combout => \SevenSegments1|Mux2~0_combout\);

-- Location: LABCELL_X68_Y1_N54
\SevenSegments1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux1~0_combout\ = ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( !\Counter32Bits2|countSignal[3]~DUPLICATE_q\ $ (((\Counter32Bits2|countSignal\(2) & !\Counter32Bits2|countSignal\(1)))) ) ) ) # ( 
-- !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (!\Counter32Bits2|countSignal\(2) & (\Counter32Bits2|countSignal\(1) & !\Counter32Bits2|countSignal[3]~DUPLICATE_q\)) ) ) ) # ( 
-- \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( !\FSM_CWC2|enable7SegmentsSignal~q\ ) ) # ( !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( !\FSM_CWC2|enable7SegmentsSignal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100000001000001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(2),
	datab => \Counter32Bits2|ALT_INV_countSignal\(1),
	datac => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	dataf => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments1|Mux1~0_combout\);

-- Location: LABCELL_X68_Y1_N0
\SevenSegments1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux0~0_combout\ = ( \Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (!\Counter32Bits2|countSignal[3]~DUPLICATE_q\ & (!\Counter32Bits2|countSignal\(2) $ (\Counter32Bits2|countSignal\(1)))) ) ) ) # ( 
-- !\Counter32Bits2|countSignal[0]~DUPLICATE_q\ & ( \FSM_CWC2|enable7SegmentsSignal~q\ & ( (!\Counter32Bits2|countSignal\(1) & (!\Counter32Bits2|countSignal\(2) $ (\Counter32Bits2|countSignal[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100100001001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter32Bits2|ALT_INV_countSignal\(2),
	datab => \Counter32Bits2|ALT_INV_countSignal\(1),
	datac => \Counter32Bits2|ALT_INV_countSignal[3]~DUPLICATE_q\,
	datae => \Counter32Bits2|ALT_INV_countSignal[0]~DUPLICATE_q\,
	dataf => \FSM_CWC2|ALT_INV_enable7SegmentsSignal~q\,
	combout => \SevenSegments1|Mux0~0_combout\);

-- Location: LABCELL_X50_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



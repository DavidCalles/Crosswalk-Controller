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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/08/2021 18:14:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Crosswalk_Controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Crosswalk_Controller_vhd_vec_tst IS
END Crosswalk_Controller_vhd_vec_tst;
ARCHITECTURE Crosswalk_Controller_arch OF Crosswalk_Controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL button : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL counter0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL counter1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL green : STD_LOGIC;
SIGNAL red : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL segment0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL yellow : STD_LOGIC;
COMPONENT Crosswalk_Controller
	PORT (
	button : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	counter0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	counter1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	green : OUT STD_LOGIC;
	red : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	segment0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	yellow : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Crosswalk_Controller
	PORT MAP (
-- list connections between master ports and signals
	button => button,
	clk => clk,
	counter0 => counter0,
	counter1 => counter1,
	green => green,
	red => red,
	reset => reset,
	segment0 => segment0,
	yellow => yellow
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- button
t_prcs_button: PROCESS
BEGIN
	button <= '1';
WAIT;
END PROCESS t_prcs_button;
END Crosswalk_Controller_arch;

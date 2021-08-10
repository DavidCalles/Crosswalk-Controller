-- Crosswalk_Controller.vhd

--***********************************************************************
--	Description: 
--	
--	Inputs: 	
--					
--	Outputs: 	
--				
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration

ENTITY Crosswalk_Controller IS

	PORT (
	
		clk 			: IN STD_LOGIC;
		reset 		: IN STD_LOGIC;
		button		: IN STD_LOGIC;
		
		green			: OUT STD_LOGIC;
		red			: OUT STD_LOGIC;
		yellow		: OUT STD_LOGIC;
		counter0		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		counter1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		segment0 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)	
		
	);

END Crosswalk_Controller;

-- Architecture definition

ARCHITECTURE Behavioral OF Crosswalk_Controller IS

	--------------------------------------------------------------------------
	---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
	--------------------------------------------------------------------------

	-- Integer to 7segment decoder
	COMPONENT SevenSegments
		PORT (
			binNumber : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			segmentLed : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;

	-- 
	COMPONENT Counter32Bits
		PORT (
			clk 		: IN STD_LOGIC;
			reset 	: IN STD_LOGIC;
			enable	: IN STD_LOGIC;
			max		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			overflow : OUT STD_LOGIC;
			count 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;

	COMPONENT FSM_CWC 
		PORT (
			clk 		: IN STD_LOGIC;
			reset 	: IN STD_LOGIC;
			button	: IN STD_LOGIC;
			overflow : IN STD_LOGIC;			
			greenT	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			yellowT	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			redT		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);	
			redLight 	: OUT STD_LOGIC;
			yellowLight : OUT STD_LOGIC;
			greenLight 	: OUT STD_LOGIC;
			enable7Segments : OUT STD_LOGIC;
			timerVal 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			timerReset	: OUT STD_LOGIC
		);
	END COMPONENT;
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------

	SIGNAL overflowSignalSecond : STD_LOGIC;
	SIGNAL overflowSignalBig : STD_LOGIC;
	
	SIGNAL greenLedSignal : STD_LOGIC;
	SIGNAL yellowLedSignal : STD_LOGIC;
	SIGNAL redLedSignal : STD_LOGIC;
	
	SIGNAL enable7SegmentsSignal : STD_LOGIC;
	
	SIGNAL timerMaxSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL timerResetSignal : STD_LOGIC;
	
	SIGNAL segment0Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	SIGNAL counterSecondSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL counterBigSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

	--------------------------------------------------------------------------
	-------------------------- COMPONENTS MAPPING ----------------------------
	--------------------------------------------------------------------------	

	-- 7 segments
	SevenSegments0 : SevenSegments
	PORT MAP(counterBigSignal(3 downto 0), segment0Signal);
	
	-- 16 bits counter
	Counter32Bits0 : Counter32Bits
	PORT MAP(clk, timerResetSignal, '1', x"00000002", overflowSignalSecond,
				counterSecondSignal);
	
	Counter32Bits1 : Counter32Bits
	PORT MAP(clk, timerResetSignal, overflowSignalSecond, timerMaxSignal,
				overflowSignalBig, counterBigSignal);
	
	FSM_CWC0 : FSM_CWC
	PORT MAP(clk, reset, button, overflowSignalBig, x"00000007", x"00000003",
				x"00000005", redLedSignal, yellowLedSignal, greenLedSignal, 
				enable7SegmentsSignal, timerMaxSignal, timerResetSignal);
	
	-- Outputs
	
	counter0 <= counterSecondSignal;
	counter1 <= counterBigSignal;
	
	green <= greenLedSignal;
	yellow <= yellowLedSignal;
	red <= redLedSignal;
	
	segment0  <= segment0Signal when enable7SegmentsSignal = '1'
					else "0111111"; -- segment -
					
END;
-- Crosswalk_Controller.vhd

--***********************************************************************
--	Description: 1-way to 1-way street crosswalk controller.
--	
--	Inputs: 	clk, clock signal
--				reset, reset all blocks to their initial state
--				button, input from pedestrian to cross the street
--				button2, input from pedestrian to cross the street
--					
--	Outputs: green, green2, green lights of traffic lights	
--				red, red2, red lights of traffic lights
--				yellow, yello2, yellow lights of traffic lights
--				segment0, segment1, 7 segment displays for pedestrians
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Own package with state variable definition
use work.State_Package.all; 

-- Entity declaration

ENTITY Crosswalk_Controller IS

	PORT (
	
		clk 			: IN STD_LOGIC;
		reset 		: IN STD_LOGIC;
		button		: IN STD_LOGIC;
		button2		: IN STD_LOGIC;	
		
		green			: OUT STD_LOGIC;
		red			: OUT STD_LOGIC;
		yellow		: OUT STD_LOGIC;
		
		green2		: OUT STD_LOGIC;
		red2			: OUT STD_LOGIC;
		yellow2		: OUT STD_LOGIC;
		
--		counter0		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0); -- debugging only
--		counter1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--		counter2		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		segment0 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		segment1 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)	
		
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

	-- Forward 32 bit counter
	COMPONENT Counter32Bits
		PORT (
			clk 		: IN STD_LOGIC;
			reset 	: IN STD_LOGIC;
			enable	: IN STD_LOGIC;
			max		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			overflow : OUT STD_LOGIC;
			count 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;

	-- Reverse 32 bit counter
	COMPONENT Counter32BitsReverse
		PORT (
			clk 		: IN STD_LOGIC;
			reset 	: IN STD_LOGIC;
			enable	: IN STD_LOGIC;
			max		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			overflow : OUT STD_LOGIC;
			count 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	-- Finite state machine of single 
	-- traffic light/crosswalk controller
	
	COMPONENT FSM_CWC 
		PORT (
			clk 		: IN STD_LOGIC;
			reset 	: IN STD_LOGIC;
			button	: IN STD_LOGIC;
			overflow : IN STD_LOGIC;	
			stateI	: IN State_Type;		
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
	-- Seconds counter signals
	SIGNAL counterSecondSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL overflowSignalSecond : STD_LOGIC;
	
	-- FIRST TRAFFIC LIGHT
	SIGNAL overflowSignalBig : STD_LOGIC;
	SIGNAL greenLedSignal : STD_LOGIC;
	SIGNAL yellowLedSignal : STD_LOGIC;
	SIGNAL redLedSignal : STD_LOGIC;
	SIGNAL enable7SegmentsSignal : STD_LOGIC;
	SIGNAL timerMaxSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL timerResetSignal : STD_LOGIC;
	SIGNAL segment0Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL counterBigSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	-- SECOND TRAFFIC LIGHT
	SIGNAL overflowSignalBig2 : STD_LOGIC;
	SIGNAL greenLedSignal2 : STD_LOGIC;
	SIGNAL yellowLedSignal2 : STD_LOGIC;
	SIGNAL redLedSignal2 : STD_LOGIC;
	SIGNAL enable7SegmentsSignal2 : STD_LOGIC;
	SIGNAL timerMaxSignal2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL timerResetSignal2 : STD_LOGIC;
	SIGNAL segment1Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL counterBigSignal2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
		

BEGIN

	--------------------------------------------------------------------------
	-------------------------- COMPONENTS MAPPING ----------------------------
	--------------------------------------------------------------------------	

	-- 7 segments
	SevenSegments0 : SevenSegments
	PORT MAP(counterBigSignal(3 downto 0), segment0Signal);
	
	-- 7 segments
	SevenSegments1 : SevenSegments
	PORT MAP(counterBigSignal2(3 downto 0), segment1Signal);
	
	-- 32 bits counter 02FAF080 = 50M
	Counter32Bits0 : Counter32Bits
	PORT MAP(clk, timerResetSignal, '1', x"02FAF080", overflowSignalSecond,
				counterSecondSignal);
	
	-- FIRST TRAFFIC LIGHT
	Counter32Bits1 : Counter32BitsReverse
	PORT MAP(clk, timerResetSignal, overflowSignalSecond, timerMaxSignal,
				overflowSignalBig, counterBigSignal);
	
	FSM_CWC1 : FSM_CWC
	PORT MAP(clk, reset, button, overflowSignalBig, GREENS, x"00000004", x"00000002",
				x"00000006", redLedSignal, yellowLedSignal, greenLedSignal, 
				enable7SegmentsSignal, timerMaxSignal, timerResetSignal);
	
	
	-- SECOND TRAFFIC LIGHT
	Counter32Bits2 : Counter32BitsReverse
	PORT MAP(clk, timerResetSignal2, overflowSignalSecond, timerMaxSignal2,
				overflowSignalBig2, counterBigSignal2);
	
	FSM_CWC2 : FSM_CWC
	PORT MAP(clk, reset, button2, overflowSignalBig2, REDS, x"00000004", x"00000002",
				x"00000006", redLedSignal2, yellowLedSignal2, greenLedSignal2, 
				enable7SegmentsSignal2, timerMaxSignal2, timerResetSignal2);
	
	-- Outputs
	
--	counter0 <= counterSecondSignal; -- For debbugging only
--	counter1 <= counterBigSignal;
--	counter2 <= counterBigSignal2;
	
	-- FIRST TRAFFIC LIGHT
	green <= greenLedSignal;
	yellow <= yellowLedSignal;
	red <= redLedSignal;
	segment0  <= segment0Signal when enable7SegmentsSignal = '1'
					else "0111111"; -- segment -
	
-- SECOND TRAFFIC LIGHT	
	green2 <= greenLedSignal2;
	yellow2 <= yellowLedSignal2;
	red2 <= redLedSignal2;
	segment1  <= segment1Signal when enable7SegmentsSignal2 = '1'
					else "0111111"; -- segment -
					
END;
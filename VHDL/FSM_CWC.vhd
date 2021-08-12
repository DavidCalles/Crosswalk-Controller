-- FSM_CWC.vhd

--***********************************************************************
--	Description: 
--	
--	Inputs: 		
--			
--					
--	Outputs:
--			 	
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.State_Package.all; -- USING PACKAGE HERE!

-- Entity declaration

ENTITY FSM_CWC IS

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

END FSM_CWC;

-- Architecture definition

ARCHITECTURE Behavioral OF FSM_CWC IS
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------

	
	SIGNAL State : State_Type;

	SIGNAL greenSignal : STD_LOGIC;
	SIGNAL yellowSignal : STD_LOGIC;
	SIGNAL redSignal : STD_LOGIC;
	SIGNAL enable7SegmentsSignal : STD_LOGIC;
	SIGNAL timerResetSignal : STD_LOGIC;
	SIGNAL timerValSignal : STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	SIGNAL buttonHoldSignal : STD_LOGIC;
	
	

BEGIN

	--------------------------------------------------------------------------
	-------------------------- ARCHITECTURE LOGIC ----------------------------
	--------------------------------------------------------------------------	

	PROCESS (clk, reset) 
	BEGIN 
		IF (reset = '0') THEN            -- Upon reset, initial values
		
			State <= stateI;
			IF (stateI = GREENS) THEN
				greenSignal <= '1';
				yellowSignal <= '0';
				redSignal <= '0';
				timerValSignal <= greenT;
			END IF;
			IF (stateI = REDS) THEN
				greenSignal <= '0';
				yellowSignal <= '0';
				redSignal <= '1';
				timerValSignal <= redT;
			END IF;
			IF (stateI = YELLOWS) THEN
				greenSignal <= '0';
				yellowSignal <= '1';
				redSignal <= '0';
				timerValSignal <= yellowT;
			END IF;
			enable7SegmentsSignal <= '0';
			timerResetSignal <= '0';
 
		ELSIF rising_edge(clk) THEN    -- if there is a rising edge of the
			 -- clock, then do the stuff below
			
			IF (button = '0') THEN	-- When button is pushed, flag stays ON.	
				buttonHoldSignal <= '1';
			END IF;
			
			CASE State IS
		 
				WHEN GREENS => 
					IF (overflow /= '1') THEN
						timerResetSignal <= '1'; -- Let timer count
						State <= GREENS;
					ELSE
						timerValSignal <= yellowT; -- set new max val for counter
						greenSignal <= '0';
						yellowSignal <= '1'; -- Yellow ON
						redSignal <= '0';
						timerResetSignal <= '0'; -- reset timer
						State <= YELLOWS;
					END IF;
		 
				WHEN YELLOWS => 
					IF (overflow /= '1') THEN
						timerResetSignal <= '1'; -- Let timer count
						State <= YELLOWS;
						
					ELSIF (buttonHoldSignal = '0') THEN
						timerValSignal <= redT; -- set new max val for counter
						greenSignal <= '0';
						yellowSignal <= '0'; -- Red ON
						redSignal <= '1';
						timerResetSignal <= '0'; -- reset timer
						enable7SegmentsSignal <= '0'; -- Do not Let 7 segments display
						State <= REDS;
					
					ELSIF (buttonHoldSignal = '1') THEN
						timerValSignal <= redT; -- set new max val for counter
						greenSignal <= '0';
						yellowSignal <= '0'; -- Red ON
						redSignal <= '1';
						timerResetSignal <= '0'; -- reset timer
						enable7SegmentsSignal <= '1'; -- Let 7 segments display
						State <= REDS;
					
					END IF; 

				WHEN REDS => 
					 IF (overflow /= '1') THEN
						timerResetSignal <= '1'; -- Let timer count
						State <= REDS;
					ELSE
						timerValSignal <= greenT; -- set new max val for counter
						greenSignal <= '1';
						yellowSignal <= '0'; -- Green ON
						redSignal <= '0';
						timerResetSignal <= '0'; -- reset timer
						buttonHoldSignal <= '0'; -- Lower button flag
						enable7SegmentsSignal <= '0'; -- Turn off 7 segments after red light
						State <= GREENS;
					END IF;

				WHEN others =>
					State <= stateI;
					IF (stateI = GREENS) THEN
						greenSignal <= '1';
						yellowSignal <= '0';
						redSignal <= '0';
						timerValSignal <= greenT;
					END IF;
					IF (stateI = REDS) THEN
						greenSignal <= '0';
						yellowSignal <= '0';
						redSignal <= '1';
						timerValSignal <= redT;
					END IF;
					IF (stateI = YELLOWS) THEN
						greenSignal <= '0';
						yellowSignal <= '1';
						redSignal <= '0';
						timerValSignal <= yellowT;
					END IF;
					enable7SegmentsSignal <= '0';
					timerResetSignal <= '0';
			END CASE; 
		END IF; 
  END PROCESS;
  
  -- Outputs
  
	greenLight <= greenSignal;
	yellowLight <= yellowSignal;
	redLight <= redSignal;

	enable7Segments <= enable7SegmentsSignal;
	timerReset <= timerResetSignal;
	timerVal <= timerValSignal;

END;
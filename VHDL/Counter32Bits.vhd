-- Counter32Bits.vhd

--***********************************************************************
--	Description: 32-bits forward counter
--	
--	Inputs: 		clk, clock signal;
--					reset, reset signal, active low;
--					enable, enable signal, active high;
--					max, reset value of the counter;
--			
--	Outputs:
--					overflow, single cycle flag when counter reaches max;
--					count, current counter value;
--			 	
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration

ENTITY Counter32Bits IS

	PORT (
		clk 		: IN STD_LOGIC;
		reset 	: IN STD_LOGIC;
		enable	: IN STD_LOGIC;
		max		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		overflow : OUT STD_LOGIC;
		count 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);

END Counter32Bits;

-- Architecture definition

ARCHITECTURE Behavioral OF Counter32Bits IS
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------

	SIGNAL countSignal : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

	--------------------------------------------------------------------------
	-------------------------- ARCHITECTURE LOGIC ----------------------------
	--------------------------------------------------------------------------	

	PROCESS (clk)
	BEGIN

		IF rising_edge(clk) THEN

			IF (reset = '0') THEN
				countSignal <= x"00000000";

			ELSE
				IF (enable = '1') THEN
					countSignal <= countSignal + x"00000001";
				END IF; -- (enable = '1')

			END IF; -- (reset = '0')
			
				IF (countSignal = max) THEN
					countSignal <= x"00000000";
					overflow <= '1';
				ELSE
					overflow <= '0';
				END IF; -- (countSignal = max)
				
			
			
		END IF; -- rising_edge(clk)

	END PROCESS;

	-- outputs
	count <= countSignal;
END;
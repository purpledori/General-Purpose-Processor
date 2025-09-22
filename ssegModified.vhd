LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ssegModified IS
	PORT ( S : IN std_logic;
			
			
			leds : OUT std_logic_vector(0 TO 6));
			

			END ssegModified; 

ARCHITECTURE Behavior OF ssegModified IS
BEGIN




		PROCESS (S)
		BEGIN
		
		CASE S IS            --abcdefg
		WHEN '0' =>leds<= "1101010"; --prints n for no
		WHEN '1' =>leds<= "1000100"; --prints y for yes
		
		WHEN OTHERS =>leds<= "0110000";
		END CASE;
		
		END PROCESS;
		END BeHavior;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
	PORT ( S : IN std_logic_vector(3 DOWNTO 0);
			Neg : IN std_logic;
			
			leds1 : OUT std_logic_vector(0 TO 6);
			leds2 : OUT std_logic_vector(0 TO 6));

			END sseg;

ARCHITECTURE Behavior OF sseg IS
BEGIN

PROCESS(Neg)
BEGIN
IF (Neg = '1') THEN
leds2 <= "1111110" ;
ELSE
leds2 <= "1111111" ;
END IF;
END PROCESS;

		PROCESS (S)
		BEGIN
		
		CASE S IS            --abcdefg
		WHEN "0000" =>leds1<= "0000001";
		WHEN "0001" =>leds1<= "1001111";
		WHEN "0010" =>leds1<= "0010010";
		WHEN "0011" =>leds1<= "0000110";
		WHEN "0100" =>leds1<= "1001100";
		WHEN "0101" =>leds1<= "0100100";
		WHEN "0110" =>leds1<= "0100000";
		WHEN "0111" =>leds1<= "0001111";
		WHEN "1000" =>leds1<= "0000000";
		WHEN "1001" =>leds1<= "0001100";
		WHEN "1010" => leds1 <= "0001000"; -- A
            WHEN "1011" => leds1 <= "1100000"; -- B
            WHEN "1100" => leds1 <= "0110001"; -- C
            WHEN "1101" => leds1 <= "0000001"; -- D
            WHEN "1110" => leds1 <= "0110000"; -- E
            WHEN "1111" => leds1 <= "0111000"; -- F
		WHEN OTHERS =>leds1<= "0110000";
		END CASE;
		
		END PROCESS;
		END BeHavior;
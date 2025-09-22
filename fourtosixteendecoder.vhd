LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fourtosixteendecoder is 

port (w : in std_logic_vector (3 DOWNTO 0);
		En : in std_logic;
		z : out std_logic_vector (15 DOWNTO 0)
		);
END fourtosixteendecoder;

architecture struct of fourtosixteendecoder is 
begin 
	process (w)
	begin 
		case w is 
			when "0000" => z <= "0000000000000001"; --state0
			when "0001" => z <= "0000000000000010"; --state1
			when "0010" => z <= "0000000000000100"; --state2
			when "0011" => z <= "0000000000001000"; --state3
			when "0100" => z <= "0000000000010000";
			when "0101" => z <= "0000000000100000";
			when "0110" => z <= "0000000001000000";
			when "0111" => z <= "0000000010000000";
			when "1000" => z <= "0000000100000000";
			when "1001" => z <= "0000001000000000";
			when "1010" => z <= "0000010000000000";
			when "1011" => z <= "0000100000000000";
			when "1100" => z <= "0001000000000000";
			when "1101" => z <= "0010000000000000";
			when "1110" => z <= "0100000000000000";
			when "1111" => z <= "1000000000000000";
			
			when others => null;
		end case;
	end process;
end struct;

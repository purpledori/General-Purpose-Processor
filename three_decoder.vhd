LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY three_decoder IS
PORT (w : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
En : IN STD_LOGIC ;
y : OUT STD_LOGIC_VECTOR (0 TO 7));
END three_decoder;

ARCHITECTURE Behavior OF three_decoder IS
COMPONENT decodelab6
PORT (w: in STD_LOGIC_VECTOR (1 DOWNTO 0);
En : in STD_LOGIC;
y : out STD_LOGIC_VECTOR (3 DOWNTO 0));
END COMPONENT;

BEGIN
dec0 : decodelab6 port map (w(1 downto 0), not w(2) and En, y(0 to 3));
dec1 : decodelab6 port map (w(1 downto 0), En and w(2), y(4 to 7));
END Behavior;


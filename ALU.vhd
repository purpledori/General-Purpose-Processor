library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port( Clock : in std_logic;
   	 A,B : in unsigned(7 DOWNTO 0);
   	 student_id : in unsigned (3 DOWNTO 0);
   	 OP : in unsigned ( 15 DOWNTO 0);
   	 Neg : out std_logic;
   	 R1 : out unsigned (3 DOWNTO 0);
   	 R2 : out unsigned(3 DOWNTO 0));
    end ALU3;

architecture calculation of ALU3 is
signal count_ones : std_logic_vector(7 downto 0)  ; 
signal odd_parity : std_logic;
signal Result : std_logic_vector(7 downto 0);

begin
count_ones <= unsigned (popcount(student_id));


odd_parity <= '1' when (count_ones mod 2 =1) else '0';


process (clock)
begin
   	 if(rising_edge(Clock)) THEN
   		 case odd_parity is
   			 WHEN '1' =>
					Neg <= '0';
   				 Result <= "1001111";--sseg for y
					 
   			 WHEN '0' =>
   				 Neg <='0';
   				 Result <= "0101100"; --sseg for n
					 
   			 WHEN OTHERS =>
   				 NULL;
   				 
   	 end case;
    end if;
end process ;
R1 <= Result (3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);
end calculation;	
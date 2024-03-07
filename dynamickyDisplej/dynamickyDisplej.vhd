
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity dynamickyDisplej is
    Port ( ce : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC);
end dynamickyDisplej;

architecture Behavioral of dynamickyDisplej is

signal tmp: std_logic_vector(1 downto 0);

begin
    process (CLK)
    begin
        if (clk'event and clk='1') then
          if (ce ='1') then
            tmp <= tmp + 1;
          end if;
        end if;
    end process;


with tmp select
      an <= "1110" when "00",
            "1101" when "01",
				"1011" when "10",
				"0111" when "11",
            "1111" when others;

 
 
 -- segment encoinputg
--      0
--     ---  
--  5 |   | 1
--     ---   <- 6
--  4 |   | 2
--     ---
--      3

with tmp SELect
   seg<= "1000000" when "01",  
         "0001001" when "10", 
         "0001000" when "11", 
			"1100001" when "00", 
         "1000000" when others;


end Behavioral;


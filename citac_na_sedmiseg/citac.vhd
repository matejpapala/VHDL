
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity citac is
    Port ( clk : in  STD_LOGIC;
           ce, dir : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
			  Q : out std_logic_vector(3 downto 0));
end citac;

architecture Behavioral of citac is

signal tmp: std_logic_vector(3 downto 0);

begin

process (CLK)
    begin
        if (clk'event and clk='1') then
		  if (ce = '1') then
          if (reset='1') then
            tmp <= "0000";
          else if(dir = '1') then
            tmp <= tmp + 1;
				else 
					tmp <= tmp - 1;
					end if;
					end if;
				end if;
          end if;
        end if;
    end process;

    Q <= tmp;

    with tmp SELect
   seg<= "1111001" when "0001",   --1
         "0100100" when "0010",   --2
         "0110000" when "0011",   --3
         "0011001" when "0100",   --4
         "0010010" when "0101",   --5
         "0000010" when "0110",   --6
         "1111000" when "0111",   --7
         "0000000" when "1000",   --8
         "0010000" when "1001",   --9
--         "0001000" when "1010",   --A
--         "0000011" when "1011",   --b
--         "1000110" when "1100",   --C
--         "0100001" when "1101",   --d
--         "0000110" when "1110",   --E
--         "0001110" when "1111",   --F
         "1000000" when others;   --0


an <= "1110";

end Behavioral;


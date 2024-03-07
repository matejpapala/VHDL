
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity had is
    Port ( clk : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           dir : in  STD_LOGIC;
           vzor : in  STD_LOGIC_VECTOR (7 downto 0);
           load : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end had;

architecture Behavioral of had is
signal temp :unsigned(7 downto 0);
begin

process (clk)
begin  
   if (clk'event and clk = '1') then
      if ce = '1' then
         if load = '1' then temp <= unsigned(vzor);
				else if dir = '1' then temp <= temp rol 1;
					else temp <=temp ror 1;
					end if;
		led <=STD_LOGIC_VECTOR(temp);
		end if;
      end if;
   end if;
end process;
				

end Behavioral;


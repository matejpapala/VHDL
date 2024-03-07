
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sm is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC;
           ce1 : in  STD_LOGIC;
           vystup : out  STD_LOGIC);
end sm;

architecture Behavioral of sm is
type state_type is (zap, vyp); 
signal state, next_state : state_type;
begin
SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (ce1 = '1') then
            state <= next_state;
         end if;        
      end if;
   end process;

OUTPUT_DECODE: process (state)
   begin
      if state = zap then
         vystup <= '1';
      else
         vystup <= '0';
      end if;
   end process;


NEXT_STATE_DECODE: process (state, btn)
   begin

      next_state <= state; 
 
      case (state) is
         when zap =>
            if btn = '1' then
               next_state <= vyp;
            end if;
         when vyp =>
            if btn = '1' then
               next_state <= zap;
            end if;
         when others =>null;
      end case;      
   end process;
end Behavioral;


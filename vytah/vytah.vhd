
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity vytah is
    Port ( ce : in  STD_LOGIC;
				reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           prvni : in  STD_LOGIC;
           druhe : in  STD_LOGIC;
           treti : in  STD_LOGIC;
           prizemi : in  STD_LOGIC);
end vytah;

architecture Behavioral of vytah is

   type state_type is (s0, s1, s2, s3); 
   signal state, next_state : state_type; 

begin

SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
			if (ce = '1') then
				if (reset = '1') then
            state <= s0;
         else
            state <= next_state;
         end if;        
      end if;
		end if;
   end process;

--OUTPUT_DECODE: process (state)
--   begin
--      if state = s0 then
--         led <= "00000001";
--      elsif state = s1 then
--         led <= "00000010";
--		elsif state = s2 then
--			led <= "00000100";
--		elsif state = s3 then
--			led <= "00001000";
--      end if;
--   end process;


NEXT_STATE_DECODE: process (state, prizemi, prvni, druhe, treti)
   begin
      next_state <= state; 

      case (state) is
         when s0 =>
            if prvni = '1' then
               next_state <= s1;
					led <= "00000001";
				elsif druhe = '1' then
					next_state <= s2;
					led <= "00000011";
				elsif treti = '1' then
					next_state <= s3;
					led <= "00000111";
            end if;
         when s1 =>
            if prizemi = '1' then
               next_state <= s0;
					led <= "00000001";
				elsif druhe = '1' then
					next_state <= s2;
					led <= "00000001";
				elsif treti = '1' then
					next_state <= s3;
					led <= "00000011";
				end if;
         when s2 =>
            if prizemi = '1' then
               next_state <= s0;
					led <= "00000011";
				elsif prvni = '1' then
					next_state <= s1;
					led <= "00000001";
				elsif treti = '1' then
					next_state <= s3;
					led <= "00000001";
				end if;
			when s3 =>
            if prizemi = '1' then
               next_state <= s0;
					led <= "00000111";
				elsif druhe = '1' then
					next_state <= s2;
					led <= "00000001";
				elsif prvni = '1' then
					next_state <= s1;
					led <= "00000011";
				end if;
         when others => null;
			end case;      
   end process;


with state SELect
   seg<= "1000000" when s0,   
         "1111001" when s1,  
         "0100100" when s2, 
         "0110000" when s3, 
         "1000000" when others;  
			
an <= "0111";

end Behavioral;


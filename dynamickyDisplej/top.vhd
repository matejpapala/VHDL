
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( mclk : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end top;

architecture Behavioral of top is

signal ce:STD_LOGIC;

begin

	Inst_dynamickyDisplej:entity dynamickyDisplej PORT MAP(
		ce => ce,
		seg => seg,
		an => an,
		clk => mclk
	);
	
	Inst_puls:entity puls PORT MAP(
		clk => mclk,
		pulse => ce
	);

end Behavioral;


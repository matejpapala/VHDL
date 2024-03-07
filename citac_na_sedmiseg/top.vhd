
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
    Port ( mclk : in  STD_LOGIC;
           sw0 : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           sw1 : in  STD_LOGIC);
end top;

architecture Behavioral of top is

signal ce:STD_LOGIC;
signal tmp:STD_LOGIC_VECTOR(3 downto 0);

begin

	Inst_citac:entity citac PORT MAP(
		clk => mclk,
		ce => ce,
		dir => sw1,
		reset => sw0,
		seg => seg,
		an => an,
		Q => tmp
	);
	
		Inst_puls:entity puls PORT MAP(
		clk => mclk,
		pulse => ce
	);


end Behavioral;


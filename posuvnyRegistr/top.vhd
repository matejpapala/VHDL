
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
    Port ( mclk : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           btn0 : in  STD_LOGIC;
           btn1 : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is
signal ce, ce1, dir, pos_edge, pos_edge1:STD_LOGIC;
signal vzor:STD_LOGIC_VECTOR(7 downto 0);
begin
Inst_had:entity had PORT MAP(
		clk => mclk,
		ce => ce,
		dir => dir,
		vzor => sw,
		load => pos_edge1,
		led => led
	);
	
Inst_puls:entity puls PORT MAP(
		clk => mclk,
		pulse => ce
	);
	
Inst_puls1:entity puls PORT MAP(
		clk => mclk,
		pulse => ce1
	);

Inst_sm:entity sm PORT MAP(
		clk => mclk,
		btn => pos_edge,
		ce1 => ce1,
		vystup => dir
	);
	
Inst_debouncer:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce1,
		btn_in => btn1,
		btn_posedge => pos_edge
	);
	
Inst_debouncer1:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce1,
		btn_in => btn0,
		btn_posedge => pos_edge
	);
end Behavioral;


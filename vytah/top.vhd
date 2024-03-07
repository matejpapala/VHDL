
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           sw0 : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           mclk : in  STD_LOGIC;
           btn0 : in  STD_LOGIC;
           btn1 : in  STD_LOGIC;
           btn2 : in  STD_LOGIC;
           btn3 : in  STD_LOGIC);
end top;

architecture Behavioral of top is

signal ce:std_logic;
signal prizemi:std_logic;
signal prvni:std_logic;
signal druhe:std_logic;
signal treti:std_logic;


begin

Inst_vytah:entity vytah PORT MAP(
		ce => ce,
		reset => sw0,
		seg => seg,
		an => an,
		led => led,
		clk => mclk,
		prvni => prvni,
		druhe => druhe,
		treti => treti,
		prizemi => prizemi
	);
Inst_puls:entity puls PORT MAP(
		clk => mclk,
		pulse => ce
	);
Inst_debouncer0:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce,
		btn_in => btn0,
		btn_posedge => prizemi
	);
	Inst_debouncer1:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce,
		btn_in => btn1,
		btn_posedge => prvni
	);
	Inst_debouncer2:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce,
		btn_in => btn2,
		btn_posedge => druhe
	);
	Inst_debouncer3:entity debouncer PORT MAP(
		clk => mclk,
		ce => ce,
		btn_in => btn3,
		btn_posedge => treti
	);

end Behavioral;


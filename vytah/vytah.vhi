
-- VHDL Instantiation Created from source file vytah.vhd -- 10:28:47 03/05/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vytah
	PORT(
		ce : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		prvni : IN std_logic;
		druhe : IN std_logic;
		treti : IN std_logic;
		prizemi : IN std_logic;          
		seg : OUT std_logic_vector(6 downto 0);
		an : OUT std_logic_vector(3 downto 0);
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_vytah: vytah PORT MAP(
		ce => ,
		reset => ,
		seg => ,
		an => ,
		led => ,
		clk => ,
		prvni => ,
		druhe => ,
		treti => ,
		prizemi => 
	);



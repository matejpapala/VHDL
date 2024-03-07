
-- VHDL Instantiation Created from source file had.vhd -- 09:53:14 01/16/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT had
	PORT(
		clk : IN std_logic;
		ce : IN std_logic;
		dir : IN std_logic;
		vzor : IN std_logic_vector(7 downto 0);
		load : IN std_logic;          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_had: had PORT MAP(
		clk => ,
		ce => ,
		dir => ,
		vzor => ,
		load => ,
		led => 
	);




-- VHDL Instantiation Created from source file dynamickyDisplej.vhd -- 09:21:31 03/05/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dynamickyDisplej
	PORT(
		ce : IN std_logic;
		clk : IN std_logic;          
		seg : OUT std_logic_vector(6 downto 0);
		an : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_dynamickyDisplej: dynamickyDisplej PORT MAP(
		ce => ,
		seg => ,
		an => ,
		clk => 
	);



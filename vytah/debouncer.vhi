
-- VHDL Instantiation Created from source file debouncer.vhd -- 10:29:12 03/05/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT debouncer
	PORT(
		clk : IN std_logic;
		ce : IN std_logic;
		btn_in : IN std_logic;          
		btn_posedge : OUT std_logic
		);
	END COMPONENT;

	Inst_debouncer: debouncer PORT MAP(
		clk => ,
		ce => ,
		btn_in => ,
		btn_posedge => 
	);



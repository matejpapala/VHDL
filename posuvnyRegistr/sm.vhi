
-- VHDL Instantiation Created from source file sm.vhd -- 09:55:59 01/16/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sm
	PORT(
		clk : IN std_logic;
		btn : IN std_logic;
		ce1 : IN std_logic;          
		vystup : OUT std_logic
		);
	END COMPONENT;

	Inst_sm: sm PORT MAP(
		clk => ,
		btn => ,
		ce1 => ,
		vystup => 
	);




-- VHDL Instantiation Created from source file puls.vhd -- 09:17:33 01/23/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT puls
	PORT(
		clk : IN std_logic;          
		pulse : OUT std_logic
		);
	END COMPONENT;

	Inst_puls: puls PORT MAP(
		clk => clk,
		pulse => 
	);



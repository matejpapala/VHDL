
-- VHDL Instantiation Created from source file citac.vhd -- 09:13:40 01/23/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT citac
	PORT(
		clk : IN std_logic;
		ce : IN std_logic;
		dir : IN std_logic;
		reset : IN std_logic;          
		seg : OUT std_logic_vector(6 downto 0);
		an : OUT std_logic_vector(3 downto 0);
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_citac: citac PORT MAP(
		clk => ,
		ce => ,
		dir => ,
		reset => ,
		seg => ,
		an => ,
		Q => 
	);



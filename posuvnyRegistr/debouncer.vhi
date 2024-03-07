

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



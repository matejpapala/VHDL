--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:19:49 01/16/2024
-- Design Name:   
-- Module Name:   /home/q13/Documents/papala/posuvnyRegistr/tb_sim.vhd
-- Project Name:  posuvnyRegistr
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: had
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_sim IS
END tb_sim;
 
ARCHITECTURE behavior OF tb_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT had
    PORT(
         clk : IN  std_logic;
         ce : IN  std_logic;
         dir : IN  std_logic;
         vzor : IN  std_logic_vector(7 downto 0);
         load : IN  std_logic;
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ce : std_logic := '0';
   signal dir : std_logic := '0';
   signal vzor : std_logic_vector(7 downto 0) := (others => '0');
   signal load : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: had PORT MAP (
          clk => clk,
          ce => ce,
          dir => dir,
          vzor => vzor,
          load => load,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      ce <= '1';
		load <= '1';
		vzor <= "00000001";
      wait for clk_period;
		
		load <= '0';
		dir <= '1';
		wait for clk_period*10;
		
		load <= '0';
		dir <= '0';
		wait for clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;

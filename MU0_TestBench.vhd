--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:05:52 03/01/2021
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/MU0_TestBench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MU0
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
 
ENTITY MU0_TestBench IS
END MU0_TestBench;
 
ARCHITECTURE behavior OF MU0_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MU0
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_bus : INOUT  std_logic_vector(15 downto 0);
         addr_bus : INOUT  std_logic_vector(11 downto 0);
         mem_rq : OUT  std_logic;
         rnw : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(15 downto 0);
   signal addr_bus : std_logic_vector(11 downto 0);

 	--Outputs
   signal mem_rq : std_logic;
   signal rnw : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MU0 PORT MAP (
          clk => clk,
          reset => reset,
          data_bus => data_bus,
          addr_bus => addr_bus,
          mem_rq => mem_rq,
          rnw => rnw
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
      -- hold reset state for 100 ns.
      wait for 10 ns;	
			reset <= '1';
		wait for 10 ns;	
			reset <= '0';
		-- insert stimulus here 

      wait;
   end process;

END;

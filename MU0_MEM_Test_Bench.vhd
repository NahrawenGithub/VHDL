--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:51:34 03/01/2021
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/MU0_MEM_Test_Bench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MU0_MEM
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
 
ENTITY MU0_MEM_Test_Bench IS
END MU0_MEM_Test_Bench;
 
ARCHITECTURE behavior OF MU0_MEM_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MU0_MEM
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_bus : INOUT  std_logic_vector(15 downto 0);
         addr_bus : INOUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(15 downto 0);
   signal addr_bus : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MU0_MEM PORT MAP (
          clk => clk,
          reset => reset,
          data_bus => data_bus,
          addr_bus => addr_bus
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
      -- hold reset state for 10 ns.
      wait for 10 ns;	
			reset <= '1';
		wait for 10 ns;	
			reset <= '0';
         
      -- insert stimulus here 

      wait;
   end process;

END;

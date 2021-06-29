--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:29:19 11/13/2020
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/Test_Bench_MUXA.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUXA
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
 
ENTITY Test_Bench_MUXA IS
END Test_Bench_MUXA;
 
ARCHITECTURE behavior OF Test_Bench_MUXA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUXA
    PORT(
         e_0 : IN  std_logic_vector(11 downto 0);
         e_1 : IN  std_logic_vector(11 downto 0);
         sel : IN  std_logic;
         s : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e_0 : std_logic_vector(11 downto 0) := (others => '0');
   signal e_1 : std_logic_vector(11 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(11 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUXA PORT MAP (
          e_0 => e_0,
          e_1 => e_1,
          sel => sel,
          s => s
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 5 ns;	
		
			e_0 <= "000000000000";
			e_1 <= "000000000011";
			sel <= '0';
		wait for 5 ns;	
		
			e_0 <= "000000000010";
			e_1 <= "000000000011";
			sel <= '1';
     -- wait for <clock>_period*10;

      -- insert stimulus here 

   end process;

END;

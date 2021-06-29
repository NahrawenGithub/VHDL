--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:48:26 11/27/2020
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/AUL_Test_Bench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AUL
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
 
ENTITY AUL_Test_Bench IS
END AUL_Test_Bench;
 
ARCHITECTURE behavior OF AUL_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AUL
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         AULFS : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal AULFS : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AUL PORT MAP (
          A => A,
          B => B,
          AULFS => AULFS,
          S => S
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
		AULFS <="0000";
		A <= "0000000000000001";
		B <= "0000000000000011";
		
		wait for 50 ns;	
		
		AULFS <="0001";
		A <= "0000000000000101";
		B <= "0000000000000011";
		
		wait for 50 ns;	
		
		AULFS <="0010";
		A <= "0000000000000011";
		B <= "0000000000000101";
		
		wait for 50 ns;	
		
		AULFS <="0100";
		A <= "0000000000000111";
		B <= "0000000000001101";
		
		wait for 50 ns;	
		
		AULFS <="0101";
		A <= "0000000000001011";
		B <= "0000000001000101";
      --wait for <clock>_period*10;

      -- insert stimulus here 
   end process;

END;

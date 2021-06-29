--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:05:38 03/01/2021
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/PC_Reg_TestBench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC_reg
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
 
ENTITY PC_Reg_TestBench IS
END PC_Reg_TestBench;
 
ARCHITECTURE behavior OF PC_Reg_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC_reg
    PORT(
         clk : IN  std_logic;
         raz : IN  std_logic;
         load : IN  std_logic;
         data_in : IN  std_logic_vector(11 downto 0);
         data_out : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal raz : std_logic := '0';
   signal load : std_logic := '0';
   signal data_in : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC_reg PORT MAP (
          clk => clk,
          raz => raz,
          load => load,
          data_in => data_in,
          data_out => data_out
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
         raz <='1';
         load  <= '1';
		   data_in <="000000000000";
      wait for 10 ns;	
         raz <='0';
         load  <= '1';
		   data_in <="110000000010";
	    wait for 10 ns;	
         raz <='0'; 
         load  <= '1';
		   data_in <="101000000111";
		wait for 10 ns;	
         raz <='0';
         load  <= '0';
		   data_in <="110100101010";
	    wait for 10 ns;	
         raz <='0';
         load  <= '1';
		   data_in <="101000000111";

      -- insert stimulus here 

      wait;
   end process;

END;

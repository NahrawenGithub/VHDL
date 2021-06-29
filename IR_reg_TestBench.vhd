--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:39:49 03/01/2021
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/IR_reg_TestBench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IR_reg
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
 
ENTITY IR_reg_TestBench IS
END IR_reg_TestBench;
 
ARCHITECTURE behavior OF IR_reg_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IR_reg
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         raz : IN  std_logic;
         load : IN  std_logic;
         clk : IN  std_logic;
         op_code : OUT  std_logic_vector(3 downto 0);
         data_out : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal raz : std_logic := '0';
   signal load : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal op_code : std_logic_vector(3 downto 0);
   signal data_out : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IR_reg PORT MAP (
          data_in => data_in,
          raz => raz,
          load => load,
          clk => clk,
          op_code => op_code,
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
		   data_in <="0000000000000000";
      wait for 10 ns;	
         raz <='0';
         load  <= '1';
		   data_in <="1100000000000010";
	    wait for 10 ns;	
         raz <='0';
         load  <= '1';
		   data_in <="1010000000000111";
		wait for 10 ns;	
         raz <='0';
         load  <= '0';
		   data_in <="1101000000101010";
	    wait for 10 ns;	
         raz <='0';
         load  <= '1';
		   data_in <="1010000000000111";
      -- insert stimulus here 

      wait;
   end process;

END;

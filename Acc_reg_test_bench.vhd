--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:23:28 11/20/2020
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/Acc_reg_test_bench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ACC_REG
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
 
ENTITY Acc_reg_test_bench IS
END Acc_reg_test_bench;
 
ARCHITECTURE behavior OF Acc_reg_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ACC_REG
    PORT(
         Raz : IN  std_logic;
         Load : IN  std_logic;
         Clk : IN  std_logic;
         Data_in : IN  std_logic_vector(15 downto 0);
         Data_out : OUT  std_logic_vector(15 downto 0);
         AccZ : OUT  std_logic;
         Acc15 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Raz : std_logic := '0';
   signal Load : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(15 downto 0);
   signal AccZ : std_logic;
   signal Acc15 : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ACC_REG PORT MAP (
          Raz => Raz,
          Load => Load,
          Clk => Clk,
          Data_in => Data_in,
          Data_out => Data_out,
          AccZ => AccZ,
          Acc15 => Acc15
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns
		raz <='0';
		load <='1';
		data_in <= "0000000000000001";
		
      wait for Clk_period*10;

      -- insert stimulus here 
	wait for 100 ns;	
		raz <='1';		
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:14 12/11/2020
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/Memoire_Test_Bench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
 
ENTITY Memoire_Test_Bench IS
END Memoire_Test_Bench;
 
ARCHITECTURE behavior OF Memoire_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         clk : IN  std_logic;
         MEMrq : IN  std_logic;
         RnW : IN  std_logic;
         addr_bus : IN  std_logic_vector(11 downto 0);
         data_bus : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal MEMrq : std_logic := '0';
   signal RnW : std_logic := '0';
   signal addr_bus : std_logic_vector(11 downto 0) := (others => '0');

	--BiDirs
   signal data_bus : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          clk => clk,
          MEMrq => MEMrq,
          RnW => RnW,
          addr_bus => addr_bus,
          data_bus => data_bus
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
		memrq <= '1';
		--rnw <= '1';
--addr_bus <= "000000000000";
   --   wait for 20 ns;	
--addr_bus <= "000000000001";
   --   wait for 20 ns;	
--addr_bus <= "000000000010";
     -- wait for 20 ns;	
--addr_bus <= "000000000011";
     -- wait for 20 ns;	
--addr_bus <= "000000000100";
     -- wait for 20 ns;	

rnw <= '0' ;
data_bus <= "1111111111111111";
addr_bus <= "000000000100";


      -- insert stimulus here 

      wait for 20ns ; 
   end process; 

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:07:52 03/01/2021
-- Design Name:   
-- Module Name:   C:/Users/Joker/Desktop/if4/TP architecture/ProjectUAL/Sequenceur-test-bench.vhd
-- Project Name:  ProjectUAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sequenceur
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
 
ENTITY Sequenceur-test-bench IS

END Sequenceur-test-bench;
 
ARCHITECTURE behavior OF Sequenceur-test-bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sequenceur
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         accz : IN  std_logic;
         acc15 : IN  std_logic;
         opcode : IN  std_logic_vector(3 downto 0);
         raz : OUT  std_logic;
         selA : OUT  std_logic;
         selB : OUT  std_logic;
         acc_ld : OUT  std_logic;
         pc_ld : OUT  std_logic;
         ir_ld : OUT  std_logic;
         acc_oe : OUT  std_logic;
         alufs : OUT  std_logic_vector(3 downto 0);
         memrq : OUT  std_logic;
         rnw : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal accz : std_logic := '0';
   signal acc15 : std_logic := '0';
   signal opcode : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal raz : std_logic;
   signal selA : std_logic;
   signal selB : std_logic;
   signal acc_ld : std_logic;
   signal pc_ld : std_logic;
   signal ir_ld : std_logic;
   signal acc_oe : std_logic;
   signal alufs : std_logic_vector(3 downto 0);
   signal memrq : std_logic;
   signal rnw : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sequenceur PORT MAP (
          clk => clk,
          reset => reset,
          accz => accz,
          acc15 => acc15,
          opcode => opcode,
          raz => raz,
          selA => selA,
          selB => selB,
          acc_ld => acc_ld,
          pc_ld => pc_ld,
          ir_ld => ir_ld,
          acc_oe => acc_oe,
          alufs => alufs,
          memrq => memrq,
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

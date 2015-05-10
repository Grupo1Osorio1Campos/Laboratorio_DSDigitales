--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:07:16 04/09/2015
-- Design Name:   
-- Module Name:   //psf/Home/Documents/I semestre 2015/Lab. Sistemas Digitales/Laboratorio_DSDigitales/LabDigitales/Proyecto1EcualizadordeAudio/adc_test.vhd
-- Project Name:  Proyecto1EcualizadordeAudio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adc_top
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
 
ENTITY adc_test IS
END adc_test;
 
ARCHITECTURE behavior OF adc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adc_top
    PORT(
         clk_i : IN  std_logic;
         rst_i : IN  std_logic;
         data_i : IN  std_logic;
         cs_sng : OUT  std_logic;
         clk_o : OUT  std_logic;
         garg : OUT  std_logic_vector(3 downto 0);
         data_o : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal rst_i : std_logic := '0';
   signal data_i : std_logic := '0';

 	--Outputs
   signal cs_sng : std_logic;
   signal clk_o : std_logic;
   signal garg : std_logic_vector(3 downto 0);
   signal data_o : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
   constant clk_o_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adc_top PORT MAP (
          clk_i => clk_i,
          rst_i => rst_i,
          data_i => data_i,
          cs_sng => cs_sng,
          clk_o => clk_o,
          garg => garg,
          data_o => data_o
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 
   clk_o_process :process
   begin
		clk_o <= '0';
		wait for clk_o_period/2;
		clk_o <= '1';
		wait for clk_o_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_i_period*10;

      -- insert stimulus here 
		

      wait;
   end process;

END;

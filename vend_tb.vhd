--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:46:00 11/26/2019
-- Design Name:   
-- Module Name:   C:/Users/qotjd/Desktop/vhdl_study/term/vend_machine/vend_tb.vhd
-- Project Name:  vend_machine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vend_mod
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
 
ENTITY vend_tb IS
END vend_tb;
 
ARCHITECTURE behavior OF vend_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vend_mod
    PORT(
         ret : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         in_50 : IN  std_logic;
         in_100 : IN  std_logic;
         in_500 : IN  std_logic;
         in_1000 : IN  std_logic;
         cof_but : IN  std_logic;
         yulm_but : IN  std_logic;
         out_50 : OUT  std_logic;
         out_100 : OUT  std_logic;
         out_500 : OUT  std_logic;
         out_1000 : OUT  std_logic;
         cof_out : OUT  std_logic;
         yulm_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ret : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal in_50 : std_logic := '0';
   signal in_100 : std_logic := '0';
   signal in_500 : std_logic := '0';
   signal in_1000 : std_logic := '0';
   signal cof_but : std_logic := '0';
   signal yulm_but : std_logic := '0';

 	--Outputs
   signal out_50 : std_logic;
   signal out_100 : std_logic;
   signal out_500 : std_logic;
   signal out_1000 : std_logic;
   signal cof_out : std_logic;
   signal yulm_out : std_logic;

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vend_mod PORT MAP (
          ret => ret,
          rst => rst,
          clk => clk,
          in_50 => in_50,
          in_100 => in_100,
          in_500 => in_500,
          in_1000 => in_1000,
          cof_but => cof_but,
          yulm_but => yulm_but,
          out_50 => out_50,
          out_100 => out_100,
          out_500 => out_500,
          out_1000 => out_1000,
          cof_out => cof_out,
          yulm_out => yulm_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10ns;
		clk <= '1';
		wait for 10ns;
   end process;
	
	
	-- 1 , 2,3 , 4,5 풀어서 테스트 하시면 됩니다.
	
 --1)
 
 --in_1000 <= '0', '1' after 20ns, '0' after 40ns, '1' after 140ns, '0' after 160ns ,'1' after 260ns, '0' after 280ns;
 --in_50 <= '0', '1' after 60ns, '0' after 80ns ;
 --in_100 <= '0', '1' after 180ns, '0' after 200ns;
 --in_500 <='0', '1' after 300ns, '0' after 320ns;
 
 
--2,3)

	--in_50 <= '0', '1' after 150ns, '0' after 170ns;
	--in_100 <= '0', '1' after 30ns, '0' after 50ns , '1' after 110ns, '0' after 130ns;
	--rst <= '0', '1' after 70ns, '0' after 90ns;
	--ret <= '0', '1' after 200ns, '0' after 220ns;

--4,5)

	--in_500 <= '0', '1' after 190ns, '0' after 210ns;
	--in_100 <= '0', '1' after 30ns, '0' after 50ns , '1' after 150ns, '0' after 170ns;
	--cof_but <= '0', '1' after 70ns, '0' after 90ns, '1' after 230ns, '0' after 250ns;
	--yulm_but <= '0', '1' after 110ns, '0' after 130ns, '1' after 270ns, '0' after 290ns;
	--ret <= '0', '1' after 350ns, '0' after 370ns;
	
  
END;

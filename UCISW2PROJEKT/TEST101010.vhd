-- Vhdl test bench created from schematic C:\Users\osad5\Desktop\UCISW2PROJEKT\UCISW2PROJEKT\i2c_use.sch - Thu Apr 16 17:39:40 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY i2c_use_i2c_use_sch_tb IS
END i2c_use_i2c_use_sch_tb;
ARCHITECTURE behavioral OF i2c_use_i2c_use_sch_tb IS 

   COMPONENT i2c_use
   PORT( RST	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL RST	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;

BEGIN

   UUT: i2c_use PORT MAP(
		RST => RST, 
		Clk => Clk
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

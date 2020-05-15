--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : i2c_use.vhf
-- /___/   /\     Timestamp : 05/15/2020 14:37:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/osad5/Desktop/UCISW2PROJEKT/UCISW2PROJEKT/i2c_use.vhf -w C:/Users/osad5/Desktop/UCISW2PROJEKT/UCISW2PROJEKT/i2c_use.sch
--Design Name: i2c_use
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity i2c_use is
   port ( Clk    : in    std_logic; 
          RST    : in    std_logic; 
          START  : in    std_logic; 
          sygnal : out   std_logic_vector (7 downto 0); 
          SCL    : inout std_logic; 
          SDA    : inout std_logic);
end i2c_use;

architecture BEHAVIORAL of i2c_use is
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic_vector (7 downto 0);
   signal XLXN_6  : std_logic_vector (3 downto 0);
   signal XLXN_7  : std_logic_vector (7 downto 0);
   signal XLXN_10 : std_logic_vector (7 downto 0);
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   component BlackBox
      port ( FIFO_Empty       : in    std_logic; 
             FIFO_Full        : in    std_logic; 
             Busy             : in    std_logic; 
             RST              : in    std_logic; 
             CLK              : in    std_logic; 
             START            : in    std_logic; 
             FIFO_DO          : in    std_logic_vector (7 downto 0); 
             Go               : out   std_logic; 
             FIFO_Push_signal : out   std_logic; 
             FIFO_Pop         : out   std_logic; 
             Address          : out   std_logic_vector (7 downto 0); 
             ReadCnt          : out   std_logic_vector (3 downto 0); 
             FIFO_DI          : out   std_logic_vector (7 downto 0); 
             sygnal           : out   std_logic_vector (7 downto 0));
   end component;
   
   component I2C_Master
      port ( Go         : in    std_logic; 
             Address    : in    std_logic_vector (7 downto 0); 
             ReadCnt    : in    std_logic_vector (3 downto 0); 
             SDA        : inout std_logic; 
             SCL        : inout std_logic; 
             FIFO_Pop   : in    std_logic; 
             FIFO_Push  : in    std_logic; 
             FIFO_DI    : in    std_logic_vector (7 downto 0); 
             FIFO_Empty : out   std_logic; 
             FIFO_Full  : out   std_logic; 
             FIFO_DO    : out   std_logic_vector (7 downto 0); 
             Reset      : in    std_logic; 
             Clk        : in    std_logic; 
             Busy       : out   std_logic; 
             NACK       : out   std_logic);
   end component;
   
begin
   XLXI_1 : BlackBox
      port map (Busy=>XLXN_13,
                CLK=>Clk,
                FIFO_DO(7 downto 0)=>XLXN_10(7 downto 0),
                FIFO_Empty=>XLXN_12,
                FIFO_Full=>XLXN_11,
                RST=>RST,
                START=>START,
                Address(7 downto 0)=>XLXN_5(7 downto 0),
                FIFO_DI(7 downto 0)=>XLXN_7(7 downto 0),
                FIFO_Pop=>XLXN_4,
                FIFO_Push_signal=>XLXN_3,
                Go=>XLXN_2,
                ReadCnt(3 downto 0)=>XLXN_6(3 downto 0),
                sygnal(7 downto 0)=>sygnal(7 downto 0));
   
   XLXI_2 : I2C_Master
      port map (Address(7 downto 0)=>XLXN_5(7 downto 0),
                Clk=>Clk,
                FIFO_DI(7 downto 0)=>XLXN_7(7 downto 0),
                FIFO_Pop=>XLXN_4,
                FIFO_Push=>XLXN_3,
                Go=>XLXN_2,
                ReadCnt(3 downto 0)=>XLXN_6(3 downto 0),
                Reset=>RST,
                Busy=>XLXN_13,
                FIFO_DO(7 downto 0)=>XLXN_10(7 downto 0),
                FIFO_Empty=>XLXN_12,
                FIFO_Full=>XLXN_11,
                NACK=>open,
                SCL=>SCL,
                SDA=>SDA);
   
end BEHAVIORAL;



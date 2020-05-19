----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:57 04/02/2020 
-- Design Name: 
-- Module Name:    black_box - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BlackBox is
Port(
Address: out std_logic_vector(7 downto 0 );
FIFO_Empty:in std_logic ;
FIFO_Full:in std_logic ;
Go:out std_logic ;
ReadCnt:out std_logic_vector(3 downto 0);
FIFO_DO:in std_logic_vector(7 downto 0); 
FIFO_DI:out std_logic_vector(7 downto 0); 
FIFO_Push_signal: out std_logic ;
Busy: in std_logic ;
FIFO_Pop: out std_logic ;
RST: in std_logic ;
CLK:in std_logic;
START: in std_logic;
sygnal: out std_logic_vector(7 downto 0);
acc_x : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --x-axis acceleration data
acc_y : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --y-axis acceleration data
acc_z : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0)); --z-axis acceleration data
end BlackBox;


architecture Behavioral of BlackBox is

--Insert the following in the architecture before the begin keyword
   --Use descriptive names for the states, like st1_reset, st2_search
   type state_type is (IDLE , FIFO_PUSH, GO_STATE, BUSY_STATE, R_DATA, RESET, GO_STATE2, BUSY_STATE2);
   signal state, next_state : state_type; 
	signal acc_x_var : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal acc_y_var : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal acc_z_var : STD_LOGIC_VECTOR(15 DOWNTO 0);
 --Declare internal signals for all outputs of the state-machine
   --signal <output>_i : std_logic;  -- example output signal
   --other outputs
begin
--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (CLK)
   begin
      if rising_edge(CLK) then  
         if ( RST = '1') then
            state <= IDLE;
         else
            state <= next_state;
            --<output> <= <output>_i;
         -- assign other outputs to internal signals
         end if;        
      end if;
   end process;
 
	CONFIGURE: process (state, BUSY, START, FIFO_EMPTY)
	begin
	--adres a potem dane 
	--JAKI OUTPUT RATE?
	--setting data output rate to 50HZ 
		FIFO_DI <= "00001001";
	--data format address 0x31 (data range?)
	--0x2c data rate address
	--0x2D turn on Measure (D3)
	--settin data range
	
	end process;
 
   NEXT_STATE_DECODE: process (state,BUSY, RST, FIFO_FULL, START)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when IDLE =>
            if START = '1' then
					next_state <= FIFO_PUSH;
				else 
					next_state <=IDLE;
            end if;
			when FIFO_PUSH =>
				if  BUSY = '0' then
					next_state <= GO_STATE;
				else 
				next_state <= FIFO_PUSH;
				end if;
			when GO_STATE => 
				if BUSY = '1' then
					next_state <= BUSY_STATE;
					--ReadCnt <= "0000";
				end if; 
			when BUSY_STATE => 
				if BUSY = '0' then
					next_state <= GO_STATE2;
				else
					next_state <= BUSY_STATE; 
				end if;
			when GO_STATE2 =>
				if BUSY ='1' then
					next_state <=BUSY_STATE2;
				end if;
			when BUSY_STATE2 => 
				if BUSY = '0' then
					next_state <= R_DATA;
				else
					next_state <= BUSY_STATE2; 
				end if;
			when R_DATA =>
				next_state <= RESET;
			when RESET =>
				if  RST = '1'   then
					next_state <= IDLE;
				else
					next_state <= RESET;
				end if;
			when others =>
            next_state <= IDLE;
      end case;      
   end process;

process(CLK, state)
		begin
			if rising_edge(CLK) then
				if  then
					case  is

						when  =>
							acc_x_var(7 downto 0) <= FIFO_DO;
							
						when  =>
							acc_x_var(15 downto 8) <= FIFO_DO;
							
						when  =>
							acc_y_var(7 downto 0) <= FIFO_DO;
							
						when  =>
							acc_y_var(15 downto 8) <= FIFO_DO;
							
						when  =>
							acc_z_var(7 downto 0) <= FIFO_DO;
							
						when  =>
							acc_z_var(15 downto 8) <= FIFO_DO;
					end case;
				end if;
			end if;
		end process;
		
-- convert data to output
acc_x <= acc_x_var;  
acc_y <= acc_x_var; 
acc_z <= acc_x_var;  
FIFO_PUSH_signal <= '1' when ( state = FIFO_PUSH   and FIFO_Full ='0') else '0';
FIFO_DI <= X"01" when ( state = GO_STATE or state = GO_STATE2  )  and  FIFO_Full ='0'  else X"00";
Go <= '1' when (state = GO_STATE OR state = GO_STATE2 ) else '0' ; 
Address <= X"3A" when (state = GO_STATE) else X"3B" when (state= GO_STATE2) ;
sygnal <= FIFO_DO when (state = R_DATA and rising_edge(CLK));
FIFO_POP <= '1' when (state = R_DATA);
ReadCnt <= "0001" when (state = GO_STATE2) else "0000";
end Behavioral;

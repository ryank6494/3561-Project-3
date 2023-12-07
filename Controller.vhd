----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Kelsey and Mitch Le Roy
-- 
-- Create Date:    08:36:58 12/04/2023 
-- Design Name: 
-- Module Name:    Controller (Rising Edge) - Behavioral 
-- Project Name: ECE3561 Project 3
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity Controller is
	generic (N:integer :=2);
	port( Clk : in  STD_LOGIC;	-- rising edge clock
           Q0 : in  STD_LOGIC;	-- LSB of multiplier
           Start : in  STD_LOGIC;	-- start alg
           Load : out  STD_LOGIC;	-- load M,Q; Clear A
           Shift : out  STD_LOGIC;	-- Shift A:Q
           AddA : out  STD_LOGIC;	-- Adder A
           Done : out  STD_LOGIC;	-- Alg complete
			  C4	 : in std_logic);

end Controller;

architecture Behavioral of Controller is
	type states is (HaltS,InitS,QtempS,AddS,ShiftS);
	signal state: states := HaltS;

begin
	-- moore model outputs to control the datapath
	Done <= '1' when state = HaltS else '0'; 	-- end of algorithm
	Load <= '1' when state = InitS else '0'; 	-- load M/Q, clear A
	AddA <= '1' when state = AddS else '0'; 	-- Load adder to A
	Shift <= '1' when state = ShiftS else '0'; -- Shift A:Q
	
	process(clk)
	begin
		if rising_edge(Clk) then				-- rising now
			case state is
				when HaltS	=> if Start = '1' then
										state <= InitS;
									end if;
				when InitS	=> state <= QtempS;
				when QtempS => if (Q0 = '1') then
										state <= AddS;
									else
										state <= ShiftS;
									end if;
				when AddS	=> state <= ShiftS;
				when ShiftS	=> if (C4 = '1') then
										state <= HaltS;
									else
										state <= QtempS;
									end if;
			end case;
		end if;
	end process;
end Behavioral;
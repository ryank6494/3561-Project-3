----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Kelsey and Mitch Le Roy
-- 
-- Create Date:    01:16:48 11/29/2023 
-- Design Name: 
-- Module Name:    RegN - Behavioral 
-- Project Name: ECE3561 Project 3
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RegN is
	generic (N:integer :=9);
	port( Din : in std_logic_vector(N-1 downto 0);		-- N-bit input
			Dout : out std_logic_vector(N-1 downto 0);	-- N-bit output
			Clk : in  STD_LOGIC;		-- rising edge clock
         Load : in  STD_LOGIC;	-- Load enable
         Shift : in  STD_LOGIC;	-- shift enable
         Clear : in  STD_LOGIC;	-- clear enable
         SerIn : in  STD_LOGIC );	-- serial input
end RegN;

architecture Behavioral of RegN is
	signal Dinternal: std_logic_vector(N-1 downto 0); -- internal state
begin
	
	process(Clk)
	begin
		if(rising_edge(Clk)) then
			if (Clear = '1') then
				Dinternal <= (others => '0');							-- clear
			elsif (Load = '1') then
				Dinternal <= Din;											-- load
			elsif (Shift = '1') then
				Dinternal <= SerIn & Dinternal(N-1 downto 1);	-- shift
			end if;
		end if;
	end process;
	
	Dout <= Dinternal;
end Behavioral;



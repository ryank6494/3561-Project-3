----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Kelsey and Mitch Le Roy
-- 
-- Create Date:    01:16:48 11/29/2023 
-- Design Name: 
-- Module Name:    AdderN - Behavioral 
-- Project Name: ECE3561 Project 3
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AdderN is
	generic (N:integer :=4);
	port( A,B : in std_logic_vector(N-1 downto 0);	-- N bit
		S: out std_logic_vector(N downto 0));			-- N+1 bit
end AdderN;

architecture Behavioral of AdderN is
begin
        S <= std_logic_vector(('0' & unsigned(A)) + unsigned(B));
end Behavioral;

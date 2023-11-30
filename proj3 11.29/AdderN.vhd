----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:16:48 11/29/2023 
-- Design Name: 
-- Module Name:    AdderN - Behavioral 
-- Project Name: 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AdderN is
	generic (N:integer :=4);
	port( A,B : in std_logic_vector(N-1 downto 0);
		S: out std_logic_vector(N downto 0) );
end AdderN;

architecture Behavioral of AdderN is

begin
	S <= std_logic_vector(('0' & UNSIGNED(A)) + UNSIGNED(B));

end Behavioral;


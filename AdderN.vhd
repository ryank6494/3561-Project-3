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
	port( A,B : in std_logic_vector(N-1 downto 0);	-- N bit
		S: out std_logic_vector(N-1 downto 0);
		C5: out std_logic);			-- N+1 bit
end AdderN;

architecture Behavioral of AdderN is
begin
    process
        variable temp_sum : unsigned(N downto 0);
    begin
        temp_sum := ('0' & unsigned(A)) + unsigned(B);
        S <= std_logic_vector(temp_sum(N-1 downto 0));
        C5 <= temp_sum(N);
	
    end process;
end Behavioral;

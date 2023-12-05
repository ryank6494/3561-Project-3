----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:58:01 11/29/2023 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity Counter is
	generic (N:integer :=4);
	Port (	EN_CNTR : in std_logic;
				CLR_CNTR_L : in std_logic;
				Clk : in std_logic;
				C4 : out std_logic);
				
end Counter;

architecture Behavioral of Counter is
	signal CNT: UNSIGNED(N-1 downto 0);
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			if CLR_CNTR_L = '0' then
				CNT <= to_unsigned(0,N);
			elsif EN_CNTR = '1' then
				CNT <= CNT + 1;
			end if;
		end if;
	end process;
	
	C4 <= CNT(2);

end Behavioral;


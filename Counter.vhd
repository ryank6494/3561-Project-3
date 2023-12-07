----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Kelsey and Mitch Le Roy
-- 
-- Create Date:    04:58:01 11/29/2023 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
-- Project Name: ECE 3561 Project 3
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter is
	generic (N:integer :=4);
	Port (	Clk : in std_logic;
				EN_CNTR : in std_logic;
				ENP:	in std_logic;
				Load:	in std_logic;
				Cin:	in std_logic_vector(3 downto 0);
				CLR_CNTR_L : in std_logic;
				C4 : out std_logic_vector(3 downto 0);
				RCO:	out std_logic);
				
end Counter;

architecture Behavioral of Counter is
	signal CNT: UNSIGNED(3 downto 0); -- move over to our real output
	signal RCOtest:	std_logic;	-- to check if we are at '1111'
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			if CLR_CNTR_L = '1' then --If CLR_CNTR_L is asserted ('1'), the counter (CNT) is reset to zero.
				CNT <= to_unsigned(0,N);
			elsif EN_CNTR = '1' then -- If EN_CNTR is asserted ('1'), the counter increments by one on each rising clock edge.
				CNT <= CNT + 1;
			end if;
		end if;
	end process;
	
	C4 <= std_logic_vector(CNT);
	
	process(EN_CNTR) -- whether the counter has reached "1111."
	begin
		if EN_CNTR = '1' and CNT = "1111" then
			RCOtest <= '1';
		else
			RCOtest <= '0';
		end if;
	end process;
	RCO <= RCOtest; -- The RCO output is assigned the value of RCOtest
end Behavioral;


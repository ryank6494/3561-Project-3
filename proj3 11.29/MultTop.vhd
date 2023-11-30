----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:47 11/28/2023 
-- Design Name: 
-- Module Name:    controller - Controller 
-- Project Name: 
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MultTop is
    Port ( 
				Multiplier : in std_logic_vector(3 downto 0);
				Multiplicand : in std_logic_vector(3 downto 0);
				Product : out std_logic_vector(7 downto 0);
				Start : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Done : out  STD_LOGIC);
end MultTop;

architecture Behavioral of MultTop is
	use work.mult_components.ALL;	-- component declarations
	
	-- interconnect components
	signal Mout,Qout:			std_logic_vector(3 downto 0);
	signal Dout,Aout:			std_logic_vector(4 downto 0);
	signal Load,Shift,AddA:	STD_LOGIC;
begin
	C:	Controller 	generic map (2)
						port map (Clk,Qout(0),Start,Load,Shift,AddA,Done);
	A: AdderN		generic map (4)
						port map (Aout(3 downto 0), Mout, Dout);
	M: RegN			generic map (4)						-- 4 bit multiplicand register
						port map (Multiplicand,Mout,Clk,Load,'0','0','0');
	Q: RegN			generic map (4)						-- 4 bit multiplier register
						port map (Multiplier,Qout,Clk,Load,Shift,'0',Aout(0));
	ACC: RegN		generic map (9)						-- 9 bit Accumulator register
						port map (Dout,Aout,Clk,AddA,Shift,Load,'0');
	
	Product <=Aout(3 downto 0) & Qout;	-- 8 bit product

end Behavioral;


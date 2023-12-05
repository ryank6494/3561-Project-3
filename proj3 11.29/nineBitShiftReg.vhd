----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:25:07 12/05/2023 
-- Design Name: 
-- Module Name:    nineBitShiftReg - Behavioral 
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

entity nineBitShiftReg is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR(8 downto 0);
			  s0, s1: in STD_LOGIC;
			  R : out STD_LOGIC_VECTOR(8 downto 0));
end nineBitShiftReg;

architecture Behavioral of nineBitShiftReg is
	signal shift_reg : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
	signal control : STD_LOGIC_VECTOR(1 downto 0); 
begin
	process(clk, clr)
	begin
		control <= s1 & s0;
		if clr = '1' then --If clr == 1 set all to 0
			shift_reg <= (others => '0');
		elsif rising_edge(clk) then
				if control = "00" then
					null; -- 00: do nothing
				elsif control = "01" then
					shift_reg <= '0' & shift_reg(8 downto 1); -- 01: shift right
				elsif control = "10" then
					shift_reg <= shift_reg(7 downto 0) & '0'; -- 10: shift left
				elsif control = "11" then
					shift_reg <= data; -- 11: load
				
				end if;			
		end if;
	end process;
	
	R <= shift_reg; -- output

end Behavioral;


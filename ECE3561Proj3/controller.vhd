----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:47 11/28/2023 
-- Design Name: 
-- Module Name:    controller - Controller 
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

entity MultTop is
    Port ( 
				Multiplier : in std_logic_vector(3 downto 0);
				Multipland : in std_logic_vector(3 downto 0);
				Product : out std_logic_vector(7 downto 0);
				Start : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Done : out  STD_LOGIC);
end MultTop;

architecture Behavioral of MultTop is
	use work.mult_components.ALL;	-- component declarations
	
	-- interconnect components
	
begin


end MultTop;


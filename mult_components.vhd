--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

-----------might just have to get rid of this...

library IEEE;
use IEEE.STD_LOGIC_1164.all;
package mult_components is
component Controller			-- multiplier controller
	generic (N:integer :=2);
	port( Clk : in  STD_LOGIC;	-- rising edge clock
           Q0 : in  STD_LOGIC;	-- LSB of multiplier
           Start : in  STD_LOGIC;	-- start alg
           Load : out  STD_LOGIC;	-- load M,Q; Clear A
           Shift : out  STD_LOGIC;	-- Shift A:Q
           AddA : out  STD_LOGIC;	-- Adder A
           Done : out  STD_LOGIC);	-- Alg complete
end component;
component AdderN				-- N-bit adder, N+1 bit output	
	generic (N:integer :=4);
	port( A,B : in std_logic_vector(N-1 downto 0);
		S: out std_logic_vector(N downto 0) );
end component;
component RegN					--N-bit register with load/shift/clear
	generic (N:integer :=4);
	port( Din : in std_logic_vector(N-1 downto 0);		-- N-bit input
			Dout : out std_logic_vector(N-1 downto 0);	-- N-bit output
			Clk : in  STD_LOGIC;		-- rising edge clock
         Load : in  STD_LOGIC;	-- Load enable
         Shift : in  STD_LOGIC;	-- shift enable
         Clear : in  STD_LOGIC;	-- clear enable
         SerIn : in  STD_LOGIC );	-- serial input
end component;
component Counter
	generic (N:integer :=4);
	port( EN_CNTR : in std_logic;
			CLR_CNTR_L : in std_logic;
			CLK : in std_logic;
			C4 : out std_logic);
end component;

end mult_components;

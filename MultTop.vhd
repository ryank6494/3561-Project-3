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
--use work.mult_components.ALL;	-- component declarations
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
	component Controller			-- multiplier controller
	generic (N:integer :=2);
	port( Clk : in  STD_LOGIC;	-- rising edge clock
           Q0 : in  STD_LOGIC;	-- LSB of multiplier
           Start : in  STD_LOGIC;	-- start alg
           Load : out  STD_LOGIC;	-- load M,Q; Clear A
           Shift : out  STD_LOGIC;	-- Shift A:Q
           AddA : out  STD_LOGIC;	-- Adder A
           Done : out  STD_LOGIC;	-- Alg complete
			  C4	 : in std_logic);
end component;
component AdderN				-- N-bit adder, N+1 bit output	
	generic (N:integer :=4);
	port( A,B : in std_logic_vector(N-1 downto 0);
		S: out std_logic_vector(N-1 downto 0) ;
		C5: out std_logic);
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
			Clk : in std_logic;
			C4 : out std_logic);
end component;	
	-- interconnect components
	signal Mout,Qout:			std_logic_vector(3 downto 0);
	signal Aout:			std_logic_vector(8 downto 0);
	signal Dout:			std_logic_vector(8 downto 0 );		
	signal Load,Shift,AddA:	STD_LOGIC;
	signal CLR_CNTR_L,EN_CNTR:		std_logic;
	signal C4: 				std_logic;
	signal C5:				std_logic;
	
begin
	C:	Controller 	generic map (2)
						port map (Clk,Qout(0),Start,Load,Shift,AddA,Done,C4);
	A: AdderN		generic map (4)
						port map (Mout,Aout(7 downto 4), Dout(7 downto 4), Dout(8));
	M: RegN			generic map (4)						-- 4 bit multiplicand register
						port map (Multiplicand,Mout,Clk,Load,'0','0','0');
	Q: RegN			generic map (4)						-- 4 bit multiplier register
						port map (Multiplier,Qout,Clk,Load,Shift,'0',Aout(0));
	ACC: RegN		generic map (9)						-- 9 bit Accumulator register
						port map (Dout,Aout,Clk,AddA,Shift,Load,'0');
	-- turn into 1
	CNT: Counter	generic map (4)
						port map (Clk, EN_CNTR, CLR_CNTR_L, C4);
	
	Product <=Aout(3 downto 0) & Qout;	-- 8 bit product

end Behavioral;


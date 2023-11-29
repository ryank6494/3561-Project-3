--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

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

end mult_components;

package body mult_components is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end mult_components;

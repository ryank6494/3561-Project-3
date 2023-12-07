----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ryan Kelsey and Mitch Le Roy
-- 
-- Create Date:    05:56:48 11/29/2023 
-- Design Name: 
-- Module Name:    tester - Behavioral 
-- Project Name: ECE3561 Project 3
--------------------------------------------------------------------------------
-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

	--use work.mult_components.All;
  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT MultTop is
					Port ( 
				Multiplier : in std_logic_vector(3 downto 0);
				Multiplicand : in std_logic_vector(3 downto 0);
				Product : out std_logic_vector(7 downto 0);
				Start : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Done : out  STD_LOGIC);
          END COMPONENT;
		-- our signals
          signal Multiplier,Multiplicand :	std_logic_vector(3 downto 0) := (others => '0');
			 signal Product:			std_logic_vector(7 downto 0);
			 signal Start,Clk:	STD_LOGIC := '0';
			 signal Done:			STD_LOGIC;
  BEGIN

  -- Component Instantiation
          uut: MultTop PORT MAP(
			 Multiplier => Multiplier,
			 Multiplicand => Multiplicand,
			 Product => Product,
			 Start => Start,
			 Clk => Clk,
			 Done => Done);
		
		Clk <= not Clk after 10 ns;		-- 20ns period clock
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			for i in 15 downto 0 loop
				Multiplier <= std_logic_vector(to_unsigned(i,4));
				for j in 15 downto 0 loop
					Multiplicand <= std_logic_vector(to_unsigned(j,4));
					Start <= '0','1' after 5 ns, '0' after 40 ns;
					wait for 50 ns;
					wait until Done = '1';
					assert(to_integer(UNSIGNED(Product)) = (i*j))
								report "Incorrect product" severity NOTE;
					wait for 50 ns;
				end loop;
			end loop;
     END PROCESS tb;
  --  End Test Bench 

  END;

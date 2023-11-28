library IEEE;
use IEEE.STD_LOGIC_1164. ALL;
use IEEE.STD_LOGIC_ARITH. ALL;
use IEEE.STD_LOGIC_UNSIGNED. ALL;

entity mult4X4 is
  port (Clk, St: in std_logic;
  Mplier, Mcand : in std_logic_vector(3 downto 0);
  Done: out std_logic;
  Product: out std_logic_vector (7 downto 0));
end mult4X4;

  architecture behave1 of mult4X4 is
    signal State: integer range 0 to 9;
    signal ACC: std_logic_vector(8 downto 0); -- accumulator
    alias M: std_logic is ACC(0); -- M is bit 0 of ACC
    begin
      Product <= ACC (7 downto 0);
      process (Clk)
      begin
        if Clk’event and Clk = ‘1’ then -- executes on rising edge of clock
          case State is
          when 0 => --initial State
            if St = ‘1’ then
              ACC(8 downto 4) <= “00000”; -- clear upper ACC
              ACC(3 downto 0) <= Mplier; -- load the multiplier
              State <= 1;
            end if;
          when 1 | 3 | 5 | 7 => -- “add/shift” State
            if M = ‘1’ then -- Add multiplicand to ACC
              ACC(8 downto 4) <= (‘0’& ACC(7 downto 4)) + Mcand;
              State <= State + 1;
            else ACC <= ‘0’ & ACC(8 downto 1); -- Shift accumulator right
              State <= State + 2;
            end if;
          when 2 | 4 | 6 | 8 => -- “shift” State
            ACC <= ‘0’ & ACC(8 downto 1); -- Right shift
            State <= State + 1;
          when 9 => -- end of cycle
            State <= 0;
          end case;
        end if;
      end process;
      Done <= ‘1’ when State = 9 else ‘0’;
    end behave1;

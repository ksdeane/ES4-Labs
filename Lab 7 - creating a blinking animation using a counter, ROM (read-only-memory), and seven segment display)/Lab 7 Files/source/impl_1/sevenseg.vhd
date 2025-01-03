
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sevenseg is
  port(
	  S : in unsigned(3 downto 0);
	  segments : out std_logic_vector(6 downto 0)
  );
end sevenseg;

architecture synth of sevenseg is
begin
  process(S)
   begin
      case S is
        when "0000" => segments <= "0000001"; --0
        when "0001" => segments <= "1001111"; --1
        when "0010" => segments <= "0010010"; --2
        when "0011" => segments <= "0000110"; --3
        when "0100" => segments <= "1001100"; --4
        when "0101" => segments <= "0100100"; --5
        when "0110" => segments <= "0100000"; --6
        when "0111" => segments <= "0001111"; --7
        when "1000" => segments <= "0000000"; --8
        when "1001" => segments <= "0001100"; --9
        when others => segments <= "1111111"; -- All segments off invalid input
      end case;
   end process;

end;



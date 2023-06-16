library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.all;

entity MP_ROM is
    Port (
	adr:in std_logic_vector(4 downto 0);
	 data_out : out std_logic_vector(15 downto 0)

    );
end MP_ROM; 

architecture behaviour_MP_ROM of MP_ROM is

                    

Begin


mprom_process : process(adr)
  begin
 if  adr = "00000" then
    data_out <= x"2018";

  elsif  adr = "00100" then
    data_out <= x"2018";

  elsif  adr = "01000" then
    data_out <= x"8018";

  elsif  adr = "10000" then
    data_out <= x"1811";

  elsif  adr = "10001" then
    data_out <= x"6018";

  elsif  adr = "10100" then
    data_out <= x"8815";

  elsif  adr = "10101" then
    data_out <= x"0118";

  elsif  adr = "11000" then
    data_out <= x"0419";

  elsif  adr = "11001" then
    data_out <= x"021A";

  elsif  adr = "11010" then
    data_out <= x"005C";

  elsif  adr = "11011" then
    data_out <= x"0020";

  elsif  adr = "11100" then
    data_out <= x"009B";
  else
    data_out <= x"0000";
  end if;

  end process mprom_process;


end behaviour_MP_ROM;
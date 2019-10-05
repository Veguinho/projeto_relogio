library IEEE;
use IEEE.std_logic_1164.all;
entity mux3 is
port(
  a1      : in  std_logic_vector(7 downto 0);
  a2      : in  std_logic_vector(7 downto 0);
  a3      : in  std_logic_vector(7 downto 0);     
  sel     : in  std_logic_vector(1 downto 0);
  b       : out std_logic_vector(7 downto 0));
end mux3;

architecture rtl of mux3 is
  -- declarative part: empty
begin
  with sel select
    b <= a1 when "00",
       a2 when "01",
       a3 when "10",
		 a3 when "11";
end rtl;
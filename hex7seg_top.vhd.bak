library IEEE;
use ieee.std_logic_1164.all;

entity top_level is
	generic(
	largura_dados : natural := 8
	);
  port (
  
	 KEY : in std_logic_vector(3 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture top_level_architecture of top_level is
begin

	display7 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX7, dadoHex => not KEY, apaga => '0', overFlow => '0', negativo => '0');
		 
	
end architecture;
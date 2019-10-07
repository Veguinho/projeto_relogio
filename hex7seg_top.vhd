library IEEE;
use ieee.std_logic_1164.all;

entity hex7seg_top is
  port (
    clk : in std_logic;
	 dado_reg0, dado_reg1, dado_reg2, dado_reg3, dado_reg4, dado_reg5, dado_reg6, dado_reg7: in std_logic_vector(3 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture hex7seg of hex7seg_top is

	signal reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out: std_logic_vector(3 downto 0);

begin

	reg0: entity work.reg4 port map(reg4_i => dado_reg0, clk => clk, reg4_o => reg0_out);
	
	reg1: entity work.reg4 port map(reg4_i => dado_reg1, clk => clk, reg4_o => reg1_out);
	
	reg2: entity work.reg4 port map(reg4_i => dado_reg2, clk => clk, reg4_o => reg2_out);
	
	reg3: entity work.reg4 port map(reg4_i => dado_reg3, clk => clk, reg4_o => reg3_out);
	
	reg4: entity work.reg4 port map(reg4_i => dado_reg4, clk => clk, reg4_o => reg4_out);
	
	reg5: entity work.reg4 port map(reg4_i => dado_reg5, clk => clk, reg4_o => reg5_out);
	
	reg6: entity work.reg4 port map(reg4_i => dado_reg6, clk => clk, reg4_o => reg6_out);
	
	reg7: entity work.reg4 port map(reg4_i => dado_reg7, clk => clk, reg4_o => reg7_out);

	display0 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX0, dadoHex => not reg0_out, apaga => '0', overFlow => '0', negativo => '0');

	display1 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX1, dadoHex => not reg1_out, apaga => '0', overFlow => '0', negativo => '0');

	display2 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX2, dadoHex => not reg2_out, apaga => '0', overFlow => '0', negativo => '0');
		 
	display3 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX3, dadoHex => not reg3_out, apaga => '0', overFlow => '0', negativo => '0');

	display4 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX4, dadoHex => not reg4_out, apaga => '0', overFlow => '0', negativo => '0');

	display5 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX5, dadoHex => not reg5_out, apaga => '0', overFlow => '0', negativo => '0');

	display6 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX6, dadoHex => not reg6_out, apaga => '0', overFlow => '0', negativo => '0');

	display7 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX7, dadoHex => not reg7_out, apaga => '0', overFlow => '0', negativo => '0');
		 
end architecture;
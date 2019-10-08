 LIBRARY ieee;
   USE ieee.std_logic_1164.ALL;
   use ieee.numeric_std.all;
	
entity decodificador is
	generic 
	(
	largura : natural := 8
	);
	port
	(
   entrada: in STD_LOGIC_VECTOR((largura-1) downto 0);
	rw : in STD_LOGIC_VECTOR(1 downto 0);
	habilitasu : out std_logic;
	habilitasd : out std_logic;
	habilitamu : out std_logic;
	habilitamd : out std_logic;
	habilitahu : out std_logic;
	habilitahd : out std_logic;
	habilitabot : out std_logic;
	basetempo : out std_logic
	);
end entity;

architecture su of decodificador is
    begin
		  habilitasu <= '1' when entrada = "00000000" and rw = "01" else '0'; --Escrever no display unidade de segundos
		  habilitasd <= '1' when entrada = "00000001" and rw = "01" else '0'; --Escrever no display dezena de segundos
		  habilitamu <= '1' when entrada = "00000010" and rw = "01" else '0'; --Escrever no display unidade de minutos
		  habilitamd <= '1' when entrada = "00000011" and rw = "01" else '0'; --Escrever no display dezena de minutos
		  habilitahu <= '1' when entrada = "00000100" and rw = "01" else '0'; --Escrever no display unidade de horas
		  habilitahd <= '1' when entrada = "00000101" and rw = "01" else '0'; --Escrever no display dezena de horas
		  habilitabot <= '1' when entrada = "00000110"and rw = "10" else '0'; --Habilitar leitura dos botoes
		  basetempo <= '1' when entrada = "00010000" and rw = "10" else '0'; --Habilitar leitura da base de tempo
end architecture;


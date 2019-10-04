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
	rw : in std_logic;
	habilitasu : out std_logic;
	habilitasd : out std_logic;
	habilitamu : out std_logic;
	habilitamd : out std_logic;
	habilitahu : out std_logic;
	habilitahd : out std_logic;
	habilitabot1 : out std_logic;
	habilitabot2 : out std_logic;
	habilitabot3 : out std_logic;
	habilitareset : out std_logic;
	basetempo : out std_logic
	);
end entity;

architecture su of decodificador is
    begin
		  habilitasu <= '1' when entrada = "00000000" and rw = '1' else '0';
		  habilitasd <= '1' when entrada = "00000001" and rw = '1' else '0';
		  habilitamu <= '1' when entrada = "00000010" and rw = '1' else '0';
		  habilitamd <= '1' when entrada = "00000011" and rw = '1' else '0';
		  habilitahu <= '1' when entrada = "00000100" and rw = '1' else '0';
		  habilitahd <= '1' when entrada = "00000101" and rw = '1' else '0';
		  habilitabot1 <= '1' when entrada = "00000111" and rw = '0' else '0';
		  habilitabot2 <= '1' when entrada = "00001000" and rw = '0' else '0';
		  habilitabot3 <= '1' when entrada = "00001001" and rw = '0' else '0';
		  habilitareset <= '1' when entrada = "00001010" and rw = '0' else '0';
		  basetempo <= '1' when entrada = "00001011" and rw = '0' else '0';
end architecture;


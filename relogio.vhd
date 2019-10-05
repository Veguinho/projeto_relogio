library ieee;
use ieee.std_logic_1164.all;

-- PALAVRA DE INSTUCAO 21 BITS
--		OPCODE|REGS1|REGS2|ENDW|IMEDIATO
--		 XXXX | XXX | XXX | XXX| XXXXXX

entity relogio is
	generic(
	word : natural := 21;
	dados : natural := 8;
	addr_width : natural := 8
	);
		port(
		datain :      in std_logic_vector(dados-1 downto 0);
		clk :         in std_logic;     
		rw :          out std_logic_vector(1 downto 0);     
		dataout :     out std_logic_vector(dados-1 downto 0);   
		addr :        out std_logic_vector(addr_width-1 downto 0)
	);
end entity;

architecture relogio_top of relogio is

	signal rom_data: std_logic_vector(word-1 downto 0);
	signal rom_addr: std_logic_vector(addr_width-1 downto 0);
	

	begin
	
	processador: entity work.processador
		port map(
		datain => datain,
		rom_in => rom_data, 
		clk => clk,
		rom_addr => rom_addr,
		rw => rw,     
		dataout => dataout,   
		addr => addr
		);
			
	rom: entity work.rom
	port map(
		q => rom_data, 
		addr => rom_addr
	);
end relogio_top;
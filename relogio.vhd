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
		clk : in std_logic;
		KEY : in  std_logic_vector(3 downto 0)
	);
end entity;

architecture relogio_top of relogio is

	signal habilitasu, habilitasd, habilitamu, habilitamd, habilitahu, habilitahd, habilitabot, basetempo, datain_unprocessed_basetempo: std_logic;
	signal rw : std_logic_vector(1 downto 0);        
	signal rom_data: std_logic_vector(word-1 downto 0);
	signal addr,rom_addr: std_logic_vector(addr_width-1 downto 0);
	signal datain_unprocessed_botoes: std_logic_vector(3 downto 0);
	signal datain, dataout : std_logic_vector(dados-1 downto 0);
	
	begin
	
	processador: entity work.processador
		port map(
		datain => ("000" & (datain_unprocessed_basetempo & datain_unprocessed_botoes)),
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
	
	decoficador: entity work.decodificador
	port map(
	entrada => addr,
	rw => rw,
	habilitasu => habilitasu,
	habilitasd => habilitasd,
	habilitamu => habilitamu,
	habilitamd => habilitamd,
	habilitahu => habilitahu,
	habilitahd => habilitahd,
	habilitabot => habilitabot,
	basetempo => basetempo
	);
	
	hex7seg: entity work.hex7seg_top
	port map(
	clk => clk,
	dado_reg0 => dataout(3 downto 0),
	dado_reg1 => dataout(3 downto 0),
	dado_reg2 => dataout(3 downto 0), 
	dado_reg3 => dataout(3 downto 0), 
	dado_reg4 => dataout(3 downto 0), 
	dado_reg5 => dataout(3 downto 0), 
	dado_reg6 => dataout(3 downto 0), 
	dado_reg7 => dataout(3 downto 0)
--  HEX0, 
--	HEX1, 
--	HEX2, 
--	HEX3, 
--	HEX4, 
--	HEX5, 
--	HEX6, 
--	HEX7
	);
	
	botoes: entity work.botoes
	port map(
	KEY => KEY,
   habilita_botoes => habilitabot,
   saida => datain_unprocessed_botoes
	);
	
	base_tempo: entity work.divisorGenerico
	port map(
		clk => clk,
      saida_clk => datain_unprocessed_basetempo
	);
	
	
end relogio_top;
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
		SW : in std_logic_vector(17 downto 0);
		CLOCK_50 : in std_logic;
		KEY : in  std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
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
		clk => CLOCK_50,
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
	clk =>  CLOCK_50,
	dado_reg0 => dataout(3 downto 0),
	dado_reg1 => dataout(3 downto 0),
	dado_reg2 => dataout(3 downto 0), 
	dado_reg3 => dataout(3 downto 0), 
	dado_reg4 => dataout(3 downto 0), 
	dado_reg5 => dataout(3 downto 0), 
	habilita0 => habilitasu, 
	habilita1 => habilitasd, 
	habilita2 => habilitamu, 
	habilita3 => habilitamd, 
	habilita4 => habilitahu, 
	habilita5 => habilitahd,
   HEX0 => HEX0, 
	HEX1 => HEX1, 
	HEX2 => HEX2, 
	HEX3 => HEX3, 
	HEX4 => HEX4, 
	HEX5 => HEX5
	);
	
	botoes: entity work.botoes
	port map(
	clk => CLOCK_50,
	KEY => KEY,
   habilita_botoes => habilitabot,
   saida => datain_unprocessed_botoes
	);
	
	base_tempo: entity work.divisorGenerico
	port map(
		sw_in_0 => SW(0),
		sw_in_1 => SW(1),
		reset => basetempo,
		clk =>  CLOCK_50,
      saida_clk => datain_unprocessed_basetempo
	);
	
	
end relogio_top;
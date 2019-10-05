library ieee;
use ieee.std_logic_1164.all;

-- PALAVRA DE INSTUCAO 21 BITS
--		OPCODE|REGS1|REGS2|ENDW|IMEDIATO
--		 XXXX | XXX | XXX | XXX| XXXXXX

entity top_level is
	generic(
	word : natural := 21;
	dados : natural := 8
	);
end entity;

architecture relogio_top of top_level is

	signal clk, rw, habilitasu,
		habilitasd,
		habilitamu,
		habilitamd,
		habilitahu,
		habilitahd,
		habilitabot1,
		habilitabot2,
		habilitabot3,
		habilitareset,
		basetempo;
	signal rw : std_logic_vector(1 downto 0);
	signal rom_data, up_addr: std_logic_vector(word-1 downto 0) ;
	signal dout, din, rom_addr, entrada_dec: std_logic_vector(dados-1 downto 0);

	begin
	
	processador: entity work.processador
		port map(
		datain => din,
		rom_in => rom_data, 
		clk => clk,
		rom_addr => rom_addr,
		rw => rw,     
		dataout => dout,   
		addr => up_addr
		);
			

	dec_end: entity work.decodificador
		port map(
		entrada: in STD_LOGIC_VECTOR((largura-1) downto 0);
		rw;
		habilitasu => habilitasu;
		habilitasd => habilitasd;
		habilitamu => habilitamu;
		habilitamd => habilitamd;
		habilitahu => habilitahu;
		habilitahd => habilitahd;
		habilitabot1 => habilitabot1;
		habilitabot2 => habilitabot2;
		habilitabot3 => habilitabot3;
		habilitareset => habilitareset;
		basetempo => basetempo	
		);
			
	seg7: entity work.hex7seg_top
		port map(
		
		
		);
end relogio_top;
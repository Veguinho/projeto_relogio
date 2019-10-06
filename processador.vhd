library ieee;
use ieee.std_logic_1164.all;


entity processador is
   generic 
	(
		ROM_DATA_WIDTH : natural := 21;
		ADDR_WIDTH : natural := 8;
		DATA_WIDTH : natural := 8;
		ROM_ADDR_W : natural := 8
	);

	-- Processador
	port(
		datain :      in std_logic_vector(DATA_WIDTH-1 downto 0);
		rom_in :      in std_logic_vector(ROM_DATA_WIDTH-1 downto 0); 
		clk :         in std_logic;     
		rom_addr :    out std_logic_vector(ROM_ADDR_W-1 downto 0);
		rw :          out std_logic_vector(1 downto 0);     
		dataout :     out std_logic_vector(DATA_WIDTH-1 downto 0);   
		addr :        out std_logic_vector(ADDR_WIDTH-1 downto 0)
	);
		  
end entity;

-- 		PALAVRA DE INSTUCAO 21 BITS
--		OPCODE|REGS1|REGS2|ENDW|IMEDIATO
--		 XXXX | XXX | XXX | XXX|XXXXXXXX

architecture description of processador is

	signal flag_uc, select_mux1, we_uc, muxDOutSel  :std_logic;
	signal ula_instr ,select_mux2 : std_logic_vector(1 downto 0);
	signal mux1_out,mux2_out,addr_out,s1,s2,ula_out, muxDOut_out: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal pc_out : std_logic_vector(ROM_ADDR_W-1 downto 0);
	
	begin
	
	uc: entity work.uc
		port map(
		  op => rom_in(ROM_DATA_WIDTH-1 downto 17),                    --instrucao opcode
        mux1 => select_mux1,--instrucao para a ULA
		  muxDataOut=> muxDOutSel,
		  opr=>ula_instr,
		  mux2 =>select_mux2,  
        we =>we_uc,                  					--Write enable no banco de registradores
		  rw =>rw,		  --Write ou read
		  flag => flag_uc
		);
		
	ula: entity work.ula
		port map(
			clk=>clk,
			IN_mux=>mux2_out,
			IN_banco=>s2,
			OP=>ula_instr,
			S=>ula_out,
			FLAG=>flag_uc
		);
		
	mux2: entity work.mux2
		port map(
			A=>addr_out,
			B=>rom_in(7 downto 0), 
			Sel=>select_mux1, 
			Y=>mux1_out
		);

		
	somadorGenerico: entity work.somadorGenerico
		port map(
			entradaA=>pc_out,
			saida=>addr_out
		);
	
	mux3: entity work.mux3
		port map(
		  a1=>s1,
		  a0=>datain,
		  a2=>rom_in(7 downto 0),
		  sel=>select_mux2,
		  b=>mux2_out
		);
		
	muxDataOut: entity work.mux2
	port map(
			A=>ula_out,
			B=>s2, 
			Sel=>muxDOutSel, 
			Y=>dataout
		);
	bancoRegistradores: entity work.bancoRegistradores
		port map(
			clk=>clk,
			enderecoA=>rom_in(16 downto 14),
			enderecoB=>rom_in(13 downto 11),
			enderecoC=>rom_in(10 downto 8),
			dadoEscritaC=>ula_out,
			escreveC=>we_uc,
			saidaA=>s1,
			saidaB=>s2
	  );
	  
	pc: entity work.pc
		port map(
			pc_i=>mux1_out,
			clk=>clk,
			pc_o=>pc_out
		);
		
	
	rom_addr <= pc_out;
	--dataout <= muxDOut_out;
	addr <= rom_in(7 downto 0);
	
end description;
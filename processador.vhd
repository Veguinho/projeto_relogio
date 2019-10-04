library ieee;
use ieee.std_logic_1164.all;


entity processador is
   generic 
	(
		DATA_WIDTH : natural := 21;
		ADDR_WIDTH : natural := 8
	);

	-- Processador
	port(
		datain :      in std_logic_vector(DATA_WIDTH-1 downto 0);
		rom_in :      in std_logic_vector(DATA_WIDTH-1 downto 0); 
		clk :         in std_logic;     
		rom_addr :    out std_logic_vector(DATA_WIDTH-1 downto 0);
		rw :          out std_logic_vector(1 downto 0);     
		dataout :     out std_logic_vector(DATA_WIDTH-1 downto 0);   
		addr :        out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
		  
end entity;

architecture description of processador is

	signal enable_uc , flag_uc, select_mux1, we_uc  :std_logic;
	signal ula_instr ,select_mux2 : std_logic_vector(1 downto 0);
	signal mux1_out,mux2_out,addr_out,s1,s2,ula_out: std_logic_vector(ADDR_WIDTH-1 downto 0) ;
	signal pc_out : std_logic_vector(ADDR_WIDTH-1 downto 0);
	begin
	
	uc: entity work.uc
		port map(
		  clk => clk,
		  op => rom_in(ADDR_WIDTH-1 downto 17),                    --instrucao opcode
        mux1 => select_mux1,									--instrucao para a ULA
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
	
end description;
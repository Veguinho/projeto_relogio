library ieee;
use ieee.std_logic_1164.all;


entity processador is                                          -- Processador
	port(
		datain :      in std_logic_vector(20 downto 0);
		rom_in :      in std_logic_vector(20 downto 0); 
		rom_addr :    in std_logic_vector(20 downto 0);
		clk :         out std_logic;     
		rw :          out std_logic;     
		dataout :     out std_logic_vector(20 downto 0);   
		addr :        out std_logic_vector(20 downto 0)
	);
		  
end entity;

architecture description of processador is

	signal enable_uc , flag_uc, select_mux1  :std_logic;
	signal ula_instr ,select_mux2out : std_logic_vector(1 downto 0);
	
	
	
	
	
	
	
	
end description;
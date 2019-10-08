library ieee;
use ieee.std_logic_1164.all;

entity uc is                                          -- Unidade de Controle
    port(
        flag :      in std_logic;
		  op :        in std_logic_vector(3 downto 0);    --instrucao opcode
        mux1, muxDataOut :      out std_logic;
		  opr,mux2,rw :  out std_logic_vector(1 downto 0);   --instrucao para a ULA -- seletor mux2 -- read enable write enable
        we :        out std_logic                    --Write enable no banco de registradores
		  );
end entity;

architecture description of uc is
	signal resultadoMux1 : boolean;

	constant instr_add : std_logic_vector(3 downto 0) := "0001";
	
begin
	resultadoMux1 <= (flag = '1') and (op = "0011"); --JE QUANDO COMP RETORNA FLAG=1
	
	mux1 <= '1' when resultadoMux1 or op = "0100" else '0';
	
	muxDataOut <= '1' when op = "1100" else '0';
		
	with op select
		mux2 <= "10" when "0000", -- MOV
		"10" when instr_add, --ADD
		"10" when "0010", --COMP 
		"10" when "0110", --COMPI
		"00" when "0101", --READ
		"00" when "0100",  --JMP
		"00" when "0011", --JE
		"01" when others; --COMPR e WRITE
		
	with op select	
		we <= '1' when "0101", --READ
		'1' when "0110", --COMPI
		'1' when "0001",  --ADD
		'1' when "0000",  -- MOV
		'0' when others;
		
	with op select
		rw <= "10" when "0101", --READ
		"01" when "1100", --WRITE
		"00" when others;
		
	with op select
		opr <= "01" when "0001", --ADD,
		"10" when "0010", --COMP
		"10" when "1110", --COMPR
		"10" when "0110", --COMPI
		"00" when others;
		

end description;

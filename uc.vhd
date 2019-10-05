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
	resultadoMux1 <= (flag = '1') and (op = "0011");
	
	mux1 <= '1' when resultadoMux1 or op = "0100" else '0';
	
	muxDataOut <= '1' when op = "1100" else '0';
		
	with op select
		mux2 <= "10" when "0000", -- MOV
		"10" when instr_add, --ADD
		"10" when "0010", --COMP 
		"00" when "0110", --COMPI
		"00" when "0101", --READ
		"11" when "0100",  --JMP
		"11" when "0011", --JE
		"01" when others; --COMPR e WRITE
		
	with op select	
		we <= '1' when "0101", --READ
		'1' when "0110", --COMPI
		'1' when "0001",  --ADD
		'0' when others;
		
	with op select
		rw <= "10" when "0101", --READ
		"01" when "1100", --WRITE
		"00" when others;
		
	with op select
		opr <= "01" when "0001", --ADD,
		"10" when "0010", --COMP
		"10" when "1110", --COMPR
		"11" when "0110", --COMPI
		"00" when others;
		
		
--			elsif (op = "0011") then -- JE
--				if(flag='1')then	
--					mux2<="11";
--					mux1<='1';
--					we<=  '0';
--					rw<=  "00";
--					opr<="00";
--				elsif(flag='0') then
--					mux2<="11";
--					mux1<='0';
--					we<=  '0';
--					rw<=  "00";
--					opr<="00";	
--				end if;
--			
--			elsif (op = "0100") then -- JMP
--				mux2<="11";
--				mux1<='1';
--				we<=  '0';
--				rw<=  "00";
--				opr<="00";
--			
--			elsif (op = "0110") then -- COMPI
--				we<=  '1';
--				mux1<='0';
--				mux2<="00";
--				rw<=  "00";
--				opr<="11";
--
--			elsif (op = "0101") then -- READ
--				rw<=  "10";
--				we<=  '1';
--				mux1<='0';
--				mux2<="00";
--				opr<="00";
--				
--			elsif (op = "1100") then -- WRITE/STORE
--				opr<="00";
--				rw<=  "01";
--				we<=  '0';
--				mux1<='0';
--				mux2<="01";
--				
--			elsif (op = "1110") then -- COMPR
--				we<=  '0';
--				mux1<='0';
--				mux2<="01";
--				rw<=  "00";
--				opr<="10";
--
--			end if;

end description;

library ieee;
use ieee.std_logic_1164.all;

entity uc is                                          -- Unidade de Controle
    port(
        clk :       in std_logic;
        flag :      in std_logic;
		  op :        in std_logic_vector(3 downto 0);    --instrucao opcode
        mux1 :      out std_logic;
		  opr,mux2,rw :  out std_logic_vector(1 downto 0);   --instrucao para a ULA -- seletor mux2 -- read enable write enable
        we :        out std_logic                    --Write enable no banco de registradores
		  );
end entity;

architecture description of uc is

begin
	process(op)
	begin

		if (rising_edge(clk)) then
			
			if (op = "0000") then  -- MOV
				mux1<='0';
				mux2<="10";
				we<=  '0';
				rw<=  "00";
				opr<="00";
				
			elsif (op = "0001") then  -- ADD
				mux1<='0';
				mux2<="10";
				we<=  '1';
				rw<=  "00";
				opr<="01";
			
			
			elsif (op = "0010") then -- COMP
				mux2<="10";
				mux1<='0';
				we<=  '0';
				rw<=  "00";
				opr<="10";
			
			
			elsif (op = "0011") then -- JE
				if(flag='1')then	
					mux2<="11";
					mux1<='1';
					we<=  '0';
					rw<=  "00";
					opr<="00";
				elsif(flag='0') then
					mux2<="11";
					mux1<='0';
					we<=  '0';
					rw<=  "00";
					opr<="00";	
				end if;
			
			elsif (op = "0100") then -- JMP
				mux2<="11";
				mux1<='1';
				we<=  '0';
				rw<=  "00";
				opr<="00";
			
			elsif (op = "0110") then -- COMPI
				we<=  '1';
				mux1<='0';
				mux2<="00";
				rw<=  "01";
				opr<="10";

			elsif (op = "0101") then -- READ
				rw<=  "10";
				we<=  '1';
				mux1<='0';
				mux2<="00";
				opr<="00";
				
			elsif (op = "1100") then -- WRITE/STORE
				opr<="00";
				rw<=  "01";
				we<=  '0';
				mux1<='0';
				mux2<="01";

			end if;
						
		end if;
	end process;

end description;

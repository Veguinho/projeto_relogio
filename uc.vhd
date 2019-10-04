library ieee;
use ieee.std_logic_1164.all;

entity uc is                                          -- Unidade de Controle
    port(
        clk :       in std_logic;
        enable :    in std_logic;
        flag :      in std_logic;
		  op :        in std_logic_vector(3 downto 0);    --instrucao opcode
        mux1 :      out std_logic;
		  opr,mux2 :  out std_logic_vector(1 downto 0);   --instrucao para a ULA
        we :        out std_logic;                    --Write enable no banco de registradores
		  rw :        out std_logic                     --Write our read
		  );
end entity;

architecture description of uc is

begin
	process(op)
	begin

		if (enable = '1') then
			
			if (op = "1000") then  -- Posicao 1 para mux1
				mux1<='1';
				mux2<="11";
				we<=  '0';
				rw<=  '0';
				opr<="00";
				
			elsif (op = "0111") then  -- Posicao 0 para mux1
				mux1<='0';
				mux2<="11";
				we<=  '0';
				rw<=  '0';
				opr<="00";
			
			
			elsif (op = "0100") then -- Posicao 1 para mux2
				mux2<="10";
				mux1<='0';
				we<=  '0';
				rw<=  '0';
				opr<="00";
				
			elsif (op = "0100") then -- Posicao 1 para mux2
				mux2<="01";
				mux1<='0';
				we<=  '0';
				rw<=  '0';
				opr<="00";
				
			elsif (op = "0110") then -- Posicao 0 para mux2
				mux2<="00";
				mux1<='0';
				we<=  '0';
				rw<=  '0';
				opr<="00";
			
			elsif (op = "0010") then -- Write Enable
				we<=  '1';
				mux1<='0';
				mux2<="11";
				rw<=  '0';
				opr<="00";
				
--			elsif (op = "1010") then -- Posicao 1 para mux 1
--				we<=  '0';
--				mux1<='0';
--				mux2<='0';
--				rw<=  '0';
--				opr<="00";

			elsif (op = "0001") then 
				rw<=  '1';
				we<=  '0';
				mux1<='0';
				mux2<="11";
				opr<="00";
				
--			elsif (op = "0011") then 
--				rw<=  '0';
--				we<=  '0';
--				mux1<='0';
--				mux2<='0';
--				opr<="XX";
				
			elsif (op = "1100") then 
				opr<="01";
				rw<=  '0';
				we<=  '0';
				mux1<='0';
				mux2<="11";
				
			elsif (op = "1011") then 
				opr<="11";
				rw<=  '0';
				we<=  '0';
				mux1<='0';
				mux2<="11";
				
			elsif (op = "1001") then
				opr<="10";
				rw<=  '0';
				we<=  '0';
				mux1<='0';
				mux2<="11";
				
--			elsif (op = "0000") then
--				opr<="00";
--				rw<=  '0';
--				we<=  '0';
--				mux1<='0';
--				mux2<='0';
--			
			end if;
						
		end if;
	end process;

end description;

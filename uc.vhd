library ieee;
use ieee.std_logic_1164.all;

entity uc is                                          -- Unidade de Controle
    port(
        clk :       in std_logic;
        enable :    in std_logic;
        flag :      in std_logic;
		  inst :      in std_logic_vector(19 downto 0); --Instrucao
        mux1,mux2 : out std_logic;
        we :        out std_logic                     --Write enable
		  );
end entity;

architecture description of uc is

begin

	if enable = '1' then
		
		with inst select
		
		mux1<='1' when "00000000000000000000000000000000000000",
				'0' when others;
				
		with inst select
		
		mux2<='1' when "00000000000000000000000000000000000000",
				'0' when others;
		
		with inst select
				
		we<=  '1' when "00000000000000000000000000000000000000",
			   '0' when others;
				
	end if;

end description;

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ULA is
	generic
		 (
			  addr : natural := 8;
			  op_code : natural:= 2
		 );
	port(
			clk: in std_logic;
			IN_mux, IN_banco: in unsigned (addr-1 downto 0);
			OP: in std_logic_vector  (op_code-1 downto 0);
			
			S: out std_logic_vector (addr-1 downto 0);
			FLAG: out std_logic
			);

end entity ULA;

architecture ula1 of ULA is
begin
	process (clk) is
		begin
			if (rising_edge(clk)) then
					if(OP = "00") then S <= std_logic_vector(IN_mux); --MOV 
					end if;
					
					if(OP = "01") then S <= std_logic_vector(IN_mux + IN_banco); --ADD
					end if;
					
					if(OP = "10") then 
							if(IN_mux = IN_banco) then FLAG <= '1'; --COMP e COMPI
							else FLAG <= '0';
							end if;
					end if;
			end if;
	end process;
end architecture;
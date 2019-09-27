library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ULA is
	generic
		 (
			  addr : natural := 8;
			  op_code : natural:= 3
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
					if(OP = "000") then S <= std_logic_vector(IN_mux); --MOV 
					end if;
					
					if(OP = "001") then S <= std_logic_vector(IN_mux + IN_banco); --ADD
					end if;
					
					if(OP = "010") then 
							if(IN_mux = IN_banco) then FLAG <= '1'; --COMP
							else FLAG <= '0';
							end if;
					end if;
					
					if(OP = "110") then 
							if(IN_mux = IN_banco) then FLAG <= '1'; S <= "00000001"; --COMPi
							else FLAG <= '0'; S <= "00000000";
							end if;
					end if;
			end if;
	end process;
end architecture;
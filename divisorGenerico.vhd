 LIBRARY ieee;
   USE ieee.std_logic_1164.ALL;
   use ieee.numeric_std.all;

   entity divisorGenerico is
    generic
    (divisor : natural := 250000000);
       port(
			  reset : in std_logic;
           clk      :   in std_logic;
           saida_clk :   out std_logic
           );
   end entity;

	architecture divInteiro of divisorGenerico is
        signal tick : std_logic := '0';
        signal contador : integer range 0 to divisor+1 := 0;
   begin
        process(clk)
        begin
            if rising_edge(clk) then
                if contador = divisor then
						if reset = '1' then
                    contador <= 0;
                    tick <= not tick;
						end if;
                else
                    contador <= contador + 1;
                end if;
            end if;
        end process;
    saida_clk <= tick;
    end architecture divInteiro;
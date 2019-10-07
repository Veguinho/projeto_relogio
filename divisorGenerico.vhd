LIBRARY ieee;
   USE ieee.std_logic_1164.ALL;
   use ieee.numeric_std.all;

   entity divisorGenerico is
    generic
    (v_normal : natural := 50000000);
       port(
			  sw_in_0 : in std_logic;
			  sw_in_1 : in std_logic;
			  reset : in std_logic;
           clk : in std_logic;
           saida_clk : out std_logic
           );
   end entity;

	architecture divInteiro of divisorGenerico is
        signal tick : std_logic := '0';
        signal contador : integer range 0 to v_normal + 1 := 0;
		  signal divisor : natural := 50000000;
		  signal concat : std_logic_vector(1 downto 0);
   begin
		concat <= sw_in_0 & sw_in_1;
		with concat select
		divisor <= v_normal/100 when "10",
					  v_normal/500 when "01",
		           v_normal/5000 when "11",
					  v_normal when others;

        process(clk)
        begin
			if rising_edge(clk) then
				if tick = '1' then
					if reset = '1' then
						contador <= 0;
						tick <= '0';
					end if;
					
				elsif contador >= divisor then
					tick <= '1';
					
				else
					contador <= contador + 1;
				end if;
			end if;
        end process;
    saida_clk <= tick;
    end architecture divInteiro;
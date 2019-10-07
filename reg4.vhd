library IEEE;
use ieee.std_logic_1164.all;

entity reg4 is
	generic
    (
        data : natural := 4
    );
        port
        (
            -- Input ports
            reg4_i : in  std_logic_vector(data-1 downto 0);
            clk : in  std_logic;
            -- Output ports
            reg4_o : out std_logic_vector(data-1 downto 0)
        );
    end entity reg4;

-- Update the register output on the clock's rising edge
architecture reg4_1 of reg4 is
begin
	process(clk) is
		begin
			if (rising_edge(clk)) then
				reg4_o <= reg4_i;
			end if;
	end process;
end architecture;
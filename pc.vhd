library IEEE;
use ieee.std_logic_1164.all;

component PC is
        port
        (
            -- Input ports
            pc_i : in  std_logic_vector(3 downto 0);
            clk : in  std_logic;
            -- Output ports
            pc_o : out std_logic_vector(6 downto 0)
        );
    end component conversorHex7Seg;

-- Update the register output on the clock's rising edge
process (clk)
begin
	if (rising_edge(clk) then
		pc_o <= pc_i;
	end if;
end process;

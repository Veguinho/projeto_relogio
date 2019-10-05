-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

	generic 
	(
		DATA_WIDTH : natural := 21;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		addr	: in std_logic_vector (ADDR_WIDTH - 1 downto 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of rom is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	function init_rom
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
		
		begin
        -- Inicializa os endereços:
        tmp(0) := b"0000_000_000_001_01010101";
        tmp(1) := b"0000_000_000_010_10101010";
        tmp(2) := b"0001_000_001_001_00000001";
        tmp(3) := b"0001_000_010_010_00000001";
        tmp(4) := b"1100_000_001_000_00000000";
--        tmp(5) := ;
--        tmp(6) := ;
--        tmp(7) := ;
        return tmp;
	end init_rom;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;

begin
		q <= rom(to_integer(unsigned(addr)));
end rtl;

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
		  tmp(0) := b"0000_000_000_000_00000001";
        tmp(1) := b"1100_000_000_000_00000010";
        tmp(2) := b"0100_000_000_000_00000000"; 
--        tmp(3) := b"0010_000_000_000_01010110";
--        tmp(4) := b"0000_000_000_010_00000010";
--		  tmp(5) := b"0010_000_010_000_00000010";
--        tmp(6) := b"1100_000_010_000_00000000";
--		  tmp(7) := b"0110_000_010_001_00000010";
--		  tmp(8) := b"0010_000_001_000_11111111";
--		  tmp(9) := b"0000_000_000_010_11111111";
--		  tmp(10) := b"1110_010_001_000_00000000";
--		  tmp(11) := b"0011_000_000_000_00000000";


        return tmp;
	end init_rom;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;

begin
		q <= rom(to_integer(unsigned(addr)));
end rtl;

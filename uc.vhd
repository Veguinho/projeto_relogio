library ieee;
use ieee.std_logic_1164.all;

entity uc is
    port(
        clk : in std_logic;
        enable : in std_logic;
        flag : in std_logic;
		  inst : in std_logic_vector(19 downto 0);
        mux1, mux2 : out std_logic;
        we : out std_logic
		  );
end entity;

architecture description of uc is

begin

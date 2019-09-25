library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 8;
        larguraEndBancoRegs : natural := 3
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0); --Entrada A escolhe qual registrador vai sair para a saida A
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0); --Entrada B Entrada B escolhe qual registrador vai sair para a saida B
        enderecoC   : in std_logic_vector((larguraEndBancoRegs-1) downto 0);  --Entrada do end escrita C
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);  --Entrada do dado de escrita C
--
        escreveC      : in std_logic := '1'; --Enable
--
        saidaA          : out std_logic_vector((larguraDados -1) downto 0); 
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC; --Escreve o dado da entrada C no registrador
            end if;
        end if;
    end process;
	 --Escolhe qual a saida desejada
	saidaA <= registrador(to_integer(unsigned(enderecoA))); 
	saidaB <= registrador(to_integer(unsigned(enderecoB)));

end architecture;
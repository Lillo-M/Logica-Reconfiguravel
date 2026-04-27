library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------------------------------
entity bram is
  port( 
    clk      : in  std_logic;
    wr_en    : in  std_logic;
    address  : in  unsigned(10 downto 0);
    dado_in  : in  unsigned(7 downto 0);
    dado_out : out unsigned(7 downto 0) 
    );
end entity bram;
------------------------------------------------------------------------
architecture a_bram of bram is
  type mem is array (0 to 2047) of unsigned(7 downto 0);
  signal conteudo_bram : mem;
begin
  process(clk,wr_en)
  begin
    if rising_edge(clk) then
      if wr_en='1' then
        conteudo_bram(to_integer(address)) <= dado_in;
      end if;
    end if;
  end process;
  dado_out <= conteudo_bram(to_integer(address));
end architecture a_bram;

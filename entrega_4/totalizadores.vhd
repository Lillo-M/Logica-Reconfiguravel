library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity totalizadores is
  port (
    clk    : in    std_logic;
    en     : in    std_logic;
    rst    : in    std_logic;
    clr    : in    std_logic;
    input  : in   std_logic_vector(4 downto 0);
    tot_a  : out   std_logic_vector(2 downto 0);
    tot_b1 : out   std_logic_vector(2 downto 0);
    tot_b2 : out   std_logic_vector(2 downto 0);
    tot_b3 : out   std_logic_vector(2 downto 0);
    tot_b4 : out   std_logic_vector(2 downto 0);
    tot_b5 : out   std_logic_vector(2 downto 0);
    tot_b6 : out   std_logic_vector(2 downto 0)
    );
end entity totalizadores;


architecture totalizadores_arch of totalizadores is
begin


  tot_A : component totalizadores_A
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      input  => input,
      output => tot_a
      );
  tots_B : component totalizadores_B
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      input  => input,
      tot1   => tot_b1,
      tot2   => tot_b2,
      tot3   => tot_b3,
      tot4   => tot_b4,
      tot5   => tot_b5,
      tot6   => tot_b6
      );

end architecture totalizadores_arch;

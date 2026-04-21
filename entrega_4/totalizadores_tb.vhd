library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity totalizadores_tb is
end entity totalizadores_tb;

architecture totalizadores_tb_arch of totalizadores_tb is

  signal   finished    : std_logic;
  signal   clk         : std_logic;
  signal   en          : std_logic;
  signal   rst         : std_logic;
  signal   clr         : std_logic;
  signal   input       : std_logic_vector(4 downto 0);
  constant period_time : time := 20 ns;

  signal output_A : std_logic_vector (2 downto 0);

  signal tot1 : std_logic_vector (2 downto 0);

  signal tot2 : std_logic_vector (2 downto 0);

  signal tot3 : std_logic_vector (2 downto 0);

  signal tot4 : std_logic_vector (2 downto 0);

  signal tot5 : std_logic_vector (2 downto 0);

  signal tot6 : std_logic_vector (2 downto 0);

  signal tot7 : std_logic_vector (2 downto 0);


  component totalizadores_A is
    port (
      clk    : in    std_logic;
      en     : in    std_logic;
      rst    : in    std_logic;
      clr    : in    std_logic;
      input  : in    std_logic_vector(4 downto 0);
      output   : out   std_logic_vector(2 downto 0)
      );
  end component totalizadores_A;

  component totalizadores_B is
    port (
      clk    : in    std_logic;
      en     : in    std_logic;
      rst    : in    std_logic;
      clr    : in    std_logic;
      input  : in    std_logic_vector(4 downto 0);
      tot1   : out   std_logic_vector(2 downto 0);
      tot2   : out   std_logic_vector(2 downto 0);
      tot3   : out   std_logic_vector(2 downto 0);
      tot4   : out   std_logic_vector(2 downto 0);
      tot5   : out   std_logic_vector(2 downto 0);
      tot6   : out   std_logic_vector(2 downto 0);
      tot7   : out   std_logic_vector(2 downto 0)
      );
  end component totalizadores_B;
  
begin

  input <= "10101";

  
  tot_A : component totalizadores_A
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      input  => input,
      output => output_A
      );
  tots_B : component totalizadores_B
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      input  => input,
      tot1   => tot1,
      tot2   => tot2,
      tot3   => tot3,
      tot4   => tot4,
      tot5   => tot5,
      tot6   => tot6,
      tot7   => tot7
      );

  finish : process is
  begin

    finished <= '0';
    wait for 10 sec;
    finished <= '1';
    wait;

  end process finish;

  clock : process is
  begin

    clk <= '0';
    wait for 15 ns;

    while finished = '0' loop

      clk <= '0';
      wait for period_time / 2;
      clk <= '1';
      wait for period_time / 2;

    end loop;

    wait;

  end process clock;

  reset : process is
  begin

    rst <= '1';
    wait for 15 ns;
    rst <= '0';
    wait;

  end process reset;

  enable : process is
  begin

    en <= '1';
    wait;

  end process enable;

  clear : process is
  begin

    clr <= '0';
    wait;

  end process clear;

end architecture totalizadores_tb_arch;

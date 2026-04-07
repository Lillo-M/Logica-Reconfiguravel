library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.cont_75;

entity cont_75_tb is
end entity cont_75_tb;

architecture cont_75_tb_arch of cont_75_tb is

  signal   finished    : std_logic;
  signal   clk         : std_logic;
  signal   en          : std_logic;
  signal   rst         : std_logic;
  signal   clr         : std_logic;
  signal   output      : std_logic_vector(6 downto 0);
  constant period_time : time := 20 ns;

  component cont_75 is
    port (
      clk    : in    std_logic;
      en     : in    std_logic;
      rst    : in    std_logic;
      clr    : in    std_logic;
      output : out   std_logic_vector(6 downto 0)
    );
  end component cont_75;

begin

  counter : component cont_75
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      output => output
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

end architecture cont_75_tb_arch;

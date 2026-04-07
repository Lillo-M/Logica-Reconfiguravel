library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.cont4;

entity cont4_tb is
end entity cont4_tb;

architecture cont4_tb_arch of cont4_tb is

  signal   finished    : std_logic;
  signal   clk         : std_logic;
  signal   en          : std_logic;
  signal   rst         : std_logic;
  signal   clr         : std_logic;
  signal   output      : std_logic_vector(3 downto 0);
  constant period_time : time := 20 ns;

  component cont4 is
    port (
      clk    : in    std_logic;
      en     : in    std_logic;
      rst    : in    std_logic;
      clr    : in    std_logic;
      output : out   std_logic_vector(3 downto 0)
    );
  end component cont4;

begin

  counter : component cont4
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
    wait for 300 ns;
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
    wait for 185 ns;
    en <= '0';
    wait;

  end process enable;

  clear : process is
  begin

    clr <= '0';
    wait for 75 ns;
    clr <= '1';
    wait for 20 ns;
    clr <= '0';
    wait for 30 ns;
    clr <= '1';
    wait for 20 ns;
    clr <= '0';
    wait;

  end process clear;

end architecture cont4_tb_arch;

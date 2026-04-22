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

  signal tot_b1 : std_logic_vector (2 downto 0);

  signal tot_b2 : std_logic_vector (2 downto 0);

  signal tot_b3 : std_logic_vector (2 downto 0);

  signal tot_b4 : std_logic_vector (2 downto 0);

  signal tot_b5 : std_logic_vector (2 downto 0);

  signal tot_b6 : std_logic_vector (2 downto 0);

  signal tot_a  : std_logic_vector (2 downto 0);

  component totalizadores is
    port (
      clk    : in    std_logic;
      en     : in    std_logic;
      rst    : in    std_logic;
      clr    : in    std_logic;
      input  : in    std_logic_vector(4 downto 0);
      tot_a  : out   std_logic_vector(2 downto 0);
      tot_b1 : out   std_logic_vector(2 downto 0);
      tot_b2 : out   std_logic_vector(2 downto 0);
      tot_b3 : out   std_logic_vector(2 downto 0);
      tot_b4 : out   std_logic_vector(2 downto 0);
      tot_b5 : out   std_logic_vector(2 downto 0);
      tot_b6 : out   std_logic_vector(2 downto 0)
      );
  end component totalizadores;

begin

  input <= "10101";
  
  tots : component totalizadores
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clr,
      input  => input,
      tot_a  => tot_a,
      tot_b1 => tot_b1,
      tot_b2 => tot_b2,
      tot_b3 => tot_b3,
      tot_b4 => tot_b4,
      tot_b5 => tot_b5,
      tot_b6 => tot_b6
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

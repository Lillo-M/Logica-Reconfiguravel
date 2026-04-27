library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.bram;

entity bram_tb is
end entity bram_tb;

architecture bram_tb_arch of bram_tb is

  signal   finished    : std_logic;
  signal   clk         : std_logic;
  signal   wr_en       : std_logic;
  signal   rst         : std_logic;
  signal   clr         : std_logic;
  signal   dado_in     : unsigned (7 downto 0);
  signal   dado_out    : unsigned (7 downto 0);
  signal   address     : unsigned (10 downto 0);
  constant period_time : time := 20 ns;

  component bram is
    port(
      clk      : in  std_logic;
      wr_en    : in  std_logic;
      address  : in  unsigned(10 downto 0);
      dado_in  : in  unsigned(7 downto 0);
      dado_out : out unsigned(7 downto 0) 
      );
  end component bram;
begin
  ram : component bram
    port map (
      clk      => clk,
      wr_en    => wr_en,
      address  => address,
      dado_in  => dado_in,
      dado_out => dado_out
      );

  data_filling : process(clk) is
    variable i : integer range 0 to 256 := 0;
    variable j : integer range 0 to 256 := 0;
  begin
    if (clk'EVENT and clk = '1') then
      if(i < 256) then
        wr_en <= '1';
        address <= to_unsigned(i, address'LENGTH);
        dado_in <= to_unsigned(i, dado_in'LENGTH);
        i := i + 1;
      elsif (j < 256) then
        wr_en <= '0';
        address <= to_unsigned(j, address'LENGTH);
        j := j + 1;
      end if;
    end if;
  end process data_filling;

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

  clear : process is
  begin

    clr <= '0';
    wait;

  end process clear;

end architecture bram_tb_arch;

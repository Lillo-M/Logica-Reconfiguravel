library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fifo;

entity fifo_tb is
end entity fifo_tb;

architecture fifo_tb_arch of fifo_tb is

  signal finished      : std_logic;
  signal clk           : std_logic;
  signal rst           : std_logic;
  signal clr           : std_logic;
  signal wr_en         : std_logic;
  signal rd_en         : std_logic;
  signal dado_in       : std_logic_vector (7 downto 0);
  signal dado_out      : std_logic_vector (7 downto 0);
  signal count         : std_logic_vector (9 downto 0);
  signal isEmpty       : std_logic;
  signal isAlmostEmpty : std_logic;
  signal isFull        : std_logic;
  signal isAlmostFull  : std_logic;

  constant period_time : time := 20 ns;


  component fifowz is
    port
      (
        clock        : in  std_logic;
        data         : in  std_logic_vector (7 downto 0);
        rdreq        : in  std_logic;
        wrreq        : in  std_logic;
        almost_empty : out std_logic;
        almost_full  : out std_logic;
        empty        : out std_logic;
        full         : out std_logic;
        q            : out std_logic_vector (7 downto 0);
        usedw        : out std_logic_vector (9 downto 0)
        );
  end component fifowz;

begin
  ram : component fifowz
    port map (
      clock        => clk,
      rdreq        => rd_en,
      wrreq        => wr_en,
      data         => dado_in,
      q            => dado_out,
      usedw        => count,
      full         => isFull,
      almost_full  => isAlmostFull,
      almost_empty => isAlmostEmpty,
      empty        => isEmpty
      );

  data_filling : process(clk) is
    variable i : integer range 0 to 1024 := 0;
    variable j : integer range 0 to 1024 := 0;
  begin
    if (clk'event and clk = '1') then
      if(i < 1024) then
        rd_en   <= '0';
        wr_en   <= '1';
        dado_in <= std_logic_vector(to_unsigned(i, dado_in'length));
        i       := i + 1;
      elsif (j < 1024) then
        wr_en <= '0';
        rd_en <= '1';
        j     := j + 1;
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

end architecture fifo_tb_arch;

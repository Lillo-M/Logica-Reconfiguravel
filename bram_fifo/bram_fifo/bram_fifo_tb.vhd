library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_fifo_tb is
end entity bram_fifo_tb;

architecture bram_fifo_tb_arch of bram_fifo_tb is

  signal loaded        : std_logic             := '0';
  signal load_wr_en    : std_logic             := '0';
  signal load_address  : unsigned(10 downto 0) := (others => '0');
  signal load_data     : unsigned(7 downto 0);
  signal load_en       : std_logic             := '0';
  signal finished      : std_logic             := '0';
  signal clk           : std_logic             := '0';
  signal wr_en         : std_logic             := '0';
  signal rst           : std_logic             := '0';
  signal clr           : std_logic             := '0';
  constant period_time : time                  := 20 ns;

  component bram_fifo is
    port(
      clk          : in  std_logic;
      clr          : in  std_logic;
      rst          : in  std_logic;
      loaded       : in  std_logic;
      load_wr_en   : in  std_logic;
      load_data    : in  unsigned(7 downto 0);
      load_address : in  unsigned(10 downto 0);
      load_en      : out std_logic
      );
  end component bram_fifo;
begin
  ram_fifo : component bram_fifo
    port map (
      clk          => clk,
      clr          => clr,
      rst          => rst,
      loaded       => loaded,
      load_wr_en   => load_wr_en,
      load_data    => load_data,
      load_address => load_address,
      load_en      => load_en
      );

  data_filling : process(clk) is
    variable i : integer range 0 to 2049 := 0;
  begin
    if (clk'event and clk = '1') then
      if(i < 2048) then
        if (load_en = '1') then
          load_wr_en   <= '1';
          load_address <= to_unsigned(i, load_address'length);
          load_data    <= to_unsigned(i, load_data'length);
          i            := i + 1;
        end if;
      elsif (i = 2048) then
        i      := i + 1;
        loaded <= '1';
      else
        loaded     <= '0';
        load_wr_en <= '0';
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

end architecture bram_fifo_tb_arch;

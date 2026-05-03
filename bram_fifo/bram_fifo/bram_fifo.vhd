library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bram_fifo is
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
end entity bram_fifo;

architecture a_bram_fifo of bram_fifo is
  component fifo is
    port(
      clk          : in  std_logic;
      rst          : in  std_logic;
      clr          : in  std_logic;
      wr_en        : in  std_logic;
      rd_en        : in  std_logic;
      data_in      : in  unsigned(7 downto 0);
      data_out     : out unsigned(7 downto 0);
      cnt          : out unsigned(10 downto 0);
      full         : out std_logic;
      almost_full  : out std_logic;
      empty        : out std_logic;
      almost_empty : out std_logic
      );
  end component fifo;

  component bram is
    port(
      clk      : in  std_logic;
      wr_en    : in  std_logic;
      address  : in  unsigned(10 downto 0);
      dado_in  : in  unsigned(7 downto 0);
      dado_out : out unsigned(7 downto 0)
      );
  end component bram;

  signal send_wr_en       : std_logic;
  signal send_dado_out    : unsigned (7 downto 0);
  signal intern_send_addr : unsigned (10 downto 0);
  signal send_address     : unsigned (10 downto 0);

  signal intern_rec_wr_en : std_logic;
  signal rec_wr_en        : std_logic;
  signal rec_rd_en        : std_logic;
  signal rec_dado_in      : unsigned (7 downto 0);
  signal rec_dado_out     : unsigned (7 downto 0);
  signal rec_address      : unsigned (10 downto 0);

  signal fifo_wr_en         : std_logic;
  signal intern_fifo_rd_en  : std_logic;
  signal fifo_rd_en         : std_logic;
  signal fifo_count         : unsigned (10 downto 0);
  signal fifo_isEmpty       : std_logic;
  signal fifo_isAlmostEmpty : std_logic;
  signal fifo_isFull        : std_logic;
  signal fifo_isAlmostFull  : std_logic;

  type t_write_state is (RESET, LOAD_BRAM, WR_FIFO, WR_WAIT);
  type t_read_state is (RESET, RD_FIFO, RD_UPDATE_FIFO, RD_WAIT);
  signal WriteState : t_write_state;
  signal ReadState  : t_read_state;

  constant C_FIFO_SIZE : integer := 1024;
  constant C_BRAM_SIZE : integer := 2048;


  signal rec_clk_en : std_logic;

begin

  intern_send_addr
    <= send_address when WriteState /= LOAD_BRAM else
    load_address;

  send_wr_en <= '0' when WriteState /= LOAD_BRAM else
                load_wr_en;

  bram_send : component bram
    port map (
      clk      => clk,
      wr_en    => send_wr_en,
      address  => intern_send_addr,
      dado_in  => load_data,
      dado_out => send_dado_out
      );

  intern_rec_wr_en <= rec_wr_en and rec_clk_en;

  bram_out : component bram
    port map (
      clk      => clk,
      wr_en    => intern_rec_wr_en,
      address  => rec_address,
      dado_in  => rec_dado_in,
      dado_out => rec_dado_out
      );

  intern_fifo_rd_en <= fifo_rd_en and rec_clk_en;

  queue : component fifo
    port map (
      clk          => clk,
      rst          => rst,
      clr          => clr,
      rd_en        => intern_fifo_rd_en,
      wr_en        => fifo_wr_en,
      data_in      => send_dado_out,
      data_out     => rec_dado_in,
      cnt          => fifo_count,
      full         => fifo_isFull,
      almost_full  => fifo_isAlmostFull,
      almost_empty => fifo_isAlmostEmpty,
      empty        => fifo_isEmpty
      );

  write_machine : process(clk, rst, loaded) is
    variable sent_values : integer range 0 to C_BRAM_SIZE;
  begin
    if (rst = '1') then
      WriteState <= RESET;
      load_en    <= '0';
      fifo_wr_en <= '0';
    elsif (clk'event and clk = '1') then
      case WriteState is

        when RESET =>

          fifo_wr_en   <= '0';
          sent_values  := 0;
          send_address <= (others => '0');
          WriteState   <= LOAD_BRAM;

        when LOAD_BRAM =>

          sent_values := 0;
          load_en     <= '1';
          if (loaded = '1') then
            load_en      <= '0';
            send_address <= (others => '0');
            fifo_wr_en   <= '1';
            WriteState   <= WR_FIFO;
          end if;

        when WR_FIFO =>

          send_address <= send_address + 1;

          sent_values := sent_values + 1;

          if (sent_values >= C_BRAM_SIZE) then

            WriteState <= LOAD_BRAM;
            fifo_wr_en <= '0';
          elsif (to_integer(fifo_count) >= C_FIFO_SIZE*3/4) then

            WriteState <= WR_WAIT;
            fifo_wr_en <= '0';
          end if;

        when WR_WAIT =>
          if (to_integer(fifo_count) <= C_FIFO_SIZE/2) then

            WriteState <= WR_FIFO;
            fifo_wr_en <= '1';
          end if;
      end case;
    end if;
  end process write_machine;

  read_machine : process(clk, rst) is
  begin
    if (rst = '1') then
      ReadState <= RESET;
    elsif (clk'event and clk = '1') then
      if (rec_clk_en = '1') then
        case ReadState is
          when RESET =>
            rec_address <= (others => '0');
            rec_wr_en   <= '0';
            fifo_rd_en  <= '0';

            if (fifo_isEmpty = '1') then

              ReadState  <= RD_WAIT;
              fifo_rd_en <= '0';
              rec_wr_en  <= '0';
            else

              fifo_rd_en <= '1';
              rec_wr_en  <= '1';
              ReadState  <= RD_UPDATE_FIFO;
            end if;


          when RD_FIFO =>

            rec_address <= rec_address + 1;
            if (fifo_isEmpty = '1') then
              ReadState  <= RD_WAIT;
              fifo_rd_en <= '0';
              rec_wr_en  <= '0';
            end if;

          when RD_UPDATE_FIFO =>

            ReadState <= RD_FIFO;

          when RD_WAIT =>

            if (fifo_isEmpty = '0') then

              fifo_rd_en <= '1';
              rec_wr_en  <= '1';
              ReadState  <= RD_UPDATE_FIFO;
            end if;

        end case;
      end if;
    end if;
  end process read_machine;


  clock_enable_divider : process(clk, rst) is
    variable clock_counter : integer range 0 to 6;
  begin
    if rst = '1' then
      clock_counter := 0;
    elsif(clk'event and clk = '1') then
      if (clock_counter = 6) then
        rec_clk_en    <= '1';
        clock_counter := 0;
      else
        clock_counter := clock_counter + 1;
        rec_clk_en    <= '0';
      end if;
    end if;

  end process clock_enable_divider;


end architecture a_bram_fifo;

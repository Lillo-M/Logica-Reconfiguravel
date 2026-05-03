library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
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
end entity fifo;

architecture a_fifo of fifo is
  type buff is array (0 to 1023) of unsigned(7 downto 0);
  signal conteudo_bram : buff;
  signal tail          : unsigned (9 downto 0);
  signal head          : unsigned (9 downto 0);
  signal count         : unsigned (10 downto 0);
  signal isEmpty       : std_logic;
  signal isAlmostEmpty : std_logic;
  signal isFull        : std_logic;
  signal isAlmostFull  : std_logic;

  constant C_EMPTY        : unsigned(count'range) := to_unsigned(0, count'length);
  constant C_ALMOST_EMPTY : unsigned(count'range) := to_unsigned(1, count'length);
  constant C_ALMOST_FULL  : unsigned(count'range) := to_unsigned(1023, count'length);

begin


  isAlmostEmpty <= '1' when count = C_ALMOST_EMPTY else '0';
  isEmpty       <= '1' when count = C_EMPTY        else '0';
  isAlmostFull  <= '1' when count = C_ALMOST_FULL  else '0';
  isFull        <= std_logic(count(10));
  head          <= tail + count (9 downto 0);
  cnt           <= count;
  full          <= isFull;
  almost_full   <= isAlmostFull;
  empty         <= isEmpty;
  almost_empty  <= isAlmostEmpty;

  process(clk, rst)
  begin
    if (rst = '1') then
      tail  <= (others => '0');
      count <= (others => '0');
    elsif (clk'event and clk = '1') then
      if (clr = '1') then
        tail  <= (others => '0');
        count <= (others => '0');
      else
        if wr_en = '1' and isFull = '0' and rd_en = '0' then
          conteudo_bram(to_integer(head)) <= data_in;
          count                           <= count + 1;
        elsif rd_en = '1' and isEmpty = '0' and wr_en = '0' then
          data_out <= conteudo_bram(to_integer(tail));
          count    <= count - 1;
          tail     <= tail + 1;
        elsif wr_en = '1' and rd_en = '1' then
          conteudo_bram(to_integer(head)) <= data_in;
          data_out                        <= conteudo_bram(to_integer(tail));
          conteudo_bram(to_integer(tail)) <= (others => 'U');
          tail                            <= tail + 1;
        end if;

      end if;
    end if;
  end process;
end architecture a_fifo;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
  port( 
    clk      : in  std_logic;
    rst      : in  std_logic;
    clr      : in  std_logic;
    wr_en    : in  std_logic;
    rd_en    : in  std_logic;
    data_in  : in  unsigned(7 downto 0);
    data_out : out unsigned(7 downto 0);
    cnt      : out unsigned(10 downto 0)
    );
end entity fifo;

architecture a_fifo of fifo is
  type buff is array (0 to 1023) of unsigned(7 downto 0);
  signal conteudo_bram : buff;
  signal tail     : unsigned (9 downto 0);
  signal head     : unsigned (9 downto 0);
  signal count    : unsigned (10 downto 0);
  signal isEmpty  : std_logic;
  signal isFull   : std_logic;
begin

  isEmpty <= '1' when count = "000" & x"00" else '0';
  isFull  <= '1' when count = "100" & x"00" else '0';
  head    <= tail + count (9 downto 0);
  cnt     <= count;
  
  process(clk, rst)
  begin
    if (rst = '1') then
      tail  <= (others => '0');
      count <= (others => '0');      
    elsif (clk'EVENT and clk = '1') then
      if (clr = '1') then

      else
        if wr_en='1' and isFull = '0' then
          conteudo_bram(to_integer(head)) <= data_in;
          count <= count + 1;
        end if;
        if rd_en='1' and isEmpty = '0' then
          data_out <= conteudo_bram(to_integer(tail));
          count    <= count - 1;
          tail     <= tail + 1;
        end if;
      end if;
    end if;
  end process;
end architecture a_fifo;

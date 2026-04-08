library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity cont_75 is
  port (
    clk    : in    std_logic;
    en     : in    std_logic;
    rst    : in    std_logic;
    clr    : in    std_logic;
    output : out   std_logic_vector(6 downto 0) -- log(89) ~= 7
  );
end entity cont_75;

architecture cont_75_arch of cont_75 is

  signal cont_5_downto_4 : std_logic_vector(2 downto 0);

  signal cont_3_downto_0 : std_logic_vector(3 downto 0);

  signal cont_8_downto_4_temp : std_logic_vector(3 downto 0);

  signal counter : std_logic_vector(6 downto 0);

  signal counter_hit_limit : std_logic;

  signal clear_counters : std_logic;

  signal cont_not_bit_3 : std_logic;

  signal counter_sum : unsigned(6 downto 0);
  
  signal counter_prev : std_logic_vector(3 downto 0);

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

  cont_not_bit_3 <=  '1' when cont_3_downto_0 = x"0" and counter_prev = x"F" else '0';
  
  previous_lsc : process (cont_3_downto_0, clk)
	begin
		 if (clk'EVENT and clk = '1') then
			  counter_prev <= cont_3_downto_0;
		 end if;
	end process previous_lsc;

  counter_bit_8_downto_4 : component cont4
    port map (
      clk    => cont_not_bit_3,
      en     => en,
      rst    => rst,
      clr    => clear_counters,
      output => cont_8_downto_4_temp
    );

  cont_5_downto_4 <= cont_8_downto_4_temp (2 downto 0);

  counter_bit_3_downto_0 : component cont4
    port map (
      clk    => clk,
      en     => en,
      rst    => rst,
      clr    => clear_counters,
      output => cont_3_downto_0
    );

  counter (6 downto 0) <= cont_5_downto_4 & cont_3_downto_0;

  counter_hit_limit <= '1' when counter (6 downto 0) = "1001011" and counter_prev = "1010" else
                       '0';

  clear_counters <= clr or counter_hit_limit;

  counter_sum <= UNSIGNED(counter) + x"F";

  output <= STD_LOGIC_VECTOR(counter_sum);

end architecture cont_75_arch;

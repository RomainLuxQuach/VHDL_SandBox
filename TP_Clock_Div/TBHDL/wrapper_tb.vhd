library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_tb is
end;

architecture bench of wrapper_tb is

  component wrapper
    port (
      clk : in std_logic;
      rst : in std_logic;
      en : in std_logic;
      clk_en : out std_logic
    );
  end component;

  -- Clock period
  constant clk_period : time := 5 ns;
  -- Generics

  -- Ports
  signal clk : std_logic;
  signal rst : std_logic;
  signal en : std_logic;
  signal clk_en : std_logic;

begin

  wrapper_inst : wrapper
    port map (
      clk => clk,
      rst => rst,
      en => en,
      clk_en => clk_en
    );

  clk_process : process
  begin
    clk <= '1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2;
  end process clk_process;

  stimulus : process
  begin
    rst <= '1';
    en  <= '0';
    wait for 20 ns;

    rst <= '0';
    en  <= '1';

    wait for 300 ns;
    std.env.finish;    
  end process;

end;

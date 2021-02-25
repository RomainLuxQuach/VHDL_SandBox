library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity wrapper is
    port (
        clk            : in std_logic;
        rst            : in std_logic;
        en             : in std_logic;
        clk_en         : out std_logic
    );
end entity;

architecture rtl of wrapper is

constant CLK_DIV  : integer range 0 to 10 := 10;

begin

instance_clk_div : entity work.timer
generic map (
    MAX  => CLK_DIV
)
port map (
    clk         => clk,
    rst         => rst,
    en          => en,
    timer_out   => clk_en
);



end architecture;
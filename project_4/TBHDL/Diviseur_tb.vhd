library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Diviseur is
--  Port ( );
generic (n : integer range 1 to 64 := 16;
         d : integer range 1 to 16 := 10);
end Test_Diviseur;

architecture Behavioral of Test_Diviseur is

component Diviseur is
 generic (n : integer range 1 to 64 := 16;
         d : integer range 1 to 16 := 4);
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           --SEL : in STD_LOGIC_VECTOR (n-1 downto 0);
           s : out STD_LOGIC_VECTOR (n-1 downto 0);
           Clk_div : out STD_LOGIC);
end component Diviseur;

signal s_clk, s_rst, s_clk_div : std_logic;
--signal s_sel : std_logic_vector (n-1 downto 0);
signal s_S: std_logic_vector (n-1 downto 0);

begin

U0: Diviseur

generic map (n =>n, d => d )
port map (  clk => s_clk,
            rst => s_rst,
            s => s_s,
            clk_div => s_clk_div);
 
 Clock : process
 
 begin
    s_clk <= '0';
    wait for 5 ns;
    s_clk <= '1';
    wait for 5 ns;
 end process;
 
 Stimuli : process
 begin
    s_rst <= '1';
    --s_sel <= X"000A";
    wait for 50 ns;
    s_rst <= '0';
    wait;
 end process;



end Behavioral;

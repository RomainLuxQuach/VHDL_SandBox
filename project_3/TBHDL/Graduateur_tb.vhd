library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Gaduateur is
--  Port ( );
generic (m : integer range 1 to 64 := 16);
end Test_Gaduateur;

architecture Behavioral of Test_Gaduateur is
component Gradateur is
    generic ( n : integer range 1 to 64 := 16);
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           MLI : out STD_LOGIC;
           SEUIL : in std_logic_vector (m-1 downto 0);
           A : out STD_LOGIC_VECTOR (m-1 downto 0));
end component Gradateur;

signal s_clk, s_mli, s_rst : std_logic;
signal s_seuil : std_logic_vector (m-1 downto 0 );
signal s_A : std_logic_vector (m-1 downto 0 );

begin
U0 :  Gradateur
    generic map (n => m)
    port map (
        A => s_A,
        CLK => s_CLK,
        MLI => s_MLI,
        Seuil => s_seuil,
        rst => s_rst
      );

Clock : process
begin
    s_clk <= '0';
    wait for 5 ns;
    s_clk <= '1';
    wait for 5 ns;
end process;


process
begin
    s_rst <= '1';
    s_seuil <= X"01FF";
    wait for 100 ns;
    s_rst <= '0';
    wait;
    
end process;



end Behavioral;

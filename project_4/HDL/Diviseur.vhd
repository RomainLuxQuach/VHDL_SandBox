


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Diviseur is
generic (n : integer range 1 to 64 := 16;
         d : integer range 1 to 16 := 4);
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           --SEL : in STD_LOGIC_VECTOR (n-1 downto 0);
           s : out STD_LOGIC_VECTOR (n-1 downto 0);
           Clk_div : out STD_LOGIC);
end Diviseur;

architecture Behavioral of Diviseur is

component Compteur is
    generic (N : integer range 1 to 64 := 64); -- Taille du vecteur de sortie
    Port ( Fosc : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end component Compteur;

component MuxNv1 is
    generic ( n : integer range 1 to 64 := 4; -- Largeur de l'entée 
              d : integer range 1 to 16 := 4); -- Coef de division (2^d)
    Port ( --SEL : in STD_LOGIC_VECTOR (n-1 downto 0);
           E : in STD_LOGIC_VECTOR (n-1 downto 0);
           S : out STD_LOGIC);
end component MuxNv1;

signal tmp : std_logic_vector (n-1 downto 0);

begin

U0 : compteur
generic map ( n => n)
port map (  Fosc => clk,
            rst => rst,
            q => tmp );

s <= tmp;
U1 : MuxNv1
generic map ( n => n, d => d)
port map(   --sel => sel,
            E=> tmp,
            S => clk_div);


end Behavioral;






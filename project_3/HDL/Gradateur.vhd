library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Gradateur is
    generic ( n : integer range 1 to 64 := 16);
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           MLI : out STD_LOGIC;
           SEUIL : in std_logic_vector (n-1 downto 0);
           A : out STD_LOGIC_VECTOR (n-1 downto 0));
end Gradateur;

architecture Archi of Gradateur is

component Compteur is
    generic (N : integer range 1 to 64 := 64); -- Taille du vecteur de sortie
    Port ( Fosc : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end component Compteur;

component Comparateur is
generic (N : integer range 1 to 64 := 8);
    Port ( A : in STD_LOGIC_VECTOR (N-1 downto 0);
           B : in STD_LOGIC_VECTOR (N-1 downto 0);
           A_inf_B : out STD_LOGIC);
end component Comparateur;

signal tmp : std_logic_vector (n-1 downto 0);

begin

U0 : Compteur
    generic map ( N => n)
    port map (  Fosc => CLK, 
                rst => rst,
                Q => tmp );

A <= tmp;

U1 : Comparateur 

generic map ( n => n)
port map (  A => tmp,
            B => seuil,
            A_inf_B => mli);




end Archi;

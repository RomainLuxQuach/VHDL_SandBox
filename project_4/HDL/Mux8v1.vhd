library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux8v1 is
    Port ( SEL : in STD_LOGIC_VECTOR (2 downto 0);
           E : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC);
end Mux8v1;

architecture Archi of Mux8v1 is

begin

with sel select
    S <=    E(0) when "000",
            E(1) when "001",
            E(2) when "010",
            E(3) when "011",
            E(4) when "100",
            E(5) when "101",
            E(6) when "110",
            E(7) when "111",
            '-' when others;
           

end Archi;

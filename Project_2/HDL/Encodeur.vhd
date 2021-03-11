----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2021 14:17:53
-- Design Name: 
-- Module Name: Encodeur - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encodeur is
    Port ( Q : in STD_LOGIC_VECTOR (2 downto 0);
           --PA : out STD_LOGIC_VECTOR (3 downto 0);
           PA1 : out STD_LOGIC;
           PA2 : out STD_LOGIC;
           PB1 : out STD_LOGIC;
           PB2 : out STD_LOGIC;
           INH : in STD_LOGIC);
end Encodeur;

architecture Behavioral of Encodeur is
signal data : std_logic_vector (3 downto 0);

begin

process (INH, Q)
begin
if ( INH = '0') then
    data <= (others => '0');
else
    case Q is 
    when "000" => data <= "0101";
    when "001" => data <= "0111";
    when "010" => data <= "0110";
    when "011" => data <= "1110";
    when "100" => data <= "1010";
    when "101" => data <= "1011";
    when "110" => data <= "1001";
    when "111" => data <= "1101";
    when others => data <= "----";
    
    end case;

end if;


end process;

pa1 <= data(0);
pa2 <= data(1);
pb1 <= data(2);
pb2 <= data(3);


end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2021 13:17:42
-- Design Name: 
-- Module Name: registre_decalage - Behavioral
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



entity shift_register is
    Port ( SR : in STD_LOGIC;
           RAZ : in STD_LOGIC;
           SL : in STD_LOGIC;
           SENS : in STD_LOGIC;
           H : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end shift_register;

architecture Behavioral of shift_register is
signal data : std_logic_vector (3 downto 0);
begin

shift : process (H,RAZ)
begin
if (RAZ ='1') then 
    data <= "0000";
else if ( H' event and H = '1') then 
    if (sens ='1') then
        data <= SR & data(3 downto 1);
    else
        data <= data(2 downto 0) & SL;
     end if;
    
    end if;
end if;    

end process ;

Q <= data;

end Behavioral;
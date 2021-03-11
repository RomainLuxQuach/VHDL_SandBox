----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 16:34:59
-- Design Name: 
-- Module Name: Comp_8bits - Behavioral
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

entity Comp_8bits is
    Port ( A8 : in STD_LOGIC_VECTOR (7 downto 0);
           B8 : in STD_LOGIC_VECTOR (7 downto 0);
           inf : out STD_LOGIC;
           sup : out STD_LOGIC;
           eg : out STD_LOGIC);
end Comp_8bits;

architecture Behavioral of Comp_8bits is

component Comp_4bits is
    Port ( A            : in STD_LOGIC_VECTOR (3 downto 0);
           B            : in STD_LOGIC_VECTOR (3 downto 0);
           A_inf_B_in   : in STD_LOGIC;
           A_eg_B_in    : in STD_LOGIC;
           A_sup_B_in   : in STD_LOGIC;
           A_inf_B_out  : out STD_LOGIC;
           A_eg_B_out   : out STD_LOGIC;
           A_sup_B_out  : out STD_LOGIC);
end component Comp_4bits;
signal tmp1, tmp2, tmp3 : std_logic;

begin
U0 : comp_4bits
port map ( A            => A8 ( 3 downto 0),
           B            => B8 ( 3 downto 0),
           A_inf_B_in   => tmp1,
           A_eg_B_in    => tmp2,
           A_sup_B_in   => tmp3,
           A_inf_B_out  => inf,
           A_eg_B_out   => eg,
           A_sup_B_out  => sup
           );
            

U1 : comp_4bits
port map ( A            => A8 ( 7 downto 4),
           B            => B8 ( 7 downto 4),
           A_inf_B_in   => '0',
           A_eg_B_in    => '1',
           A_sup_B_in   => '0',
           A_inf_B_out  => tmp1,
           A_eg_B_out   => tmp2,
           A_sup_B_out  => tmp3
           );




end Behavioral;


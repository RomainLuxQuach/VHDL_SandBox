----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2021 15:09:40
-- Design Name: 
-- Module Name: Test_design - Behavioral
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

entity Test_design is
--  Port ( );
end Test_design;

architecture Behavioral of Test_design is
component design_1_wrapper is
  port (
    H : in STD_LOGIC;
    INH : in STD_LOGIC;
    RAZ : in STD_LOGIC;
    PA1 : out STD_LOGIC;
    PA2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
 
  );
end component design_1_wrapper;
signal s_h, s_inh, s_raz : std_logic;
signal s_pa1, s_pa2, s_pb1, s_pb2 : std_logic;
signal s_q : STD_LOGIC_VECTOR ( 2 downto 0 );

begin

U0: design_1_wrapper

port map ( H => s_h,
           inh => s_inh,
           raz => s_raz,
           pa1 => s_pa1,
           pa2 => s_pa2,
           pb1 => s_pb1,
           pb2 => s_pb2,
           q => s_q
           );

Horloge : process
begin 
    s_h <= '0';
    wait for 5 ns;
    s_h <= '1';
    wait for 5 ns;
end process;

stimuli : process
begin

s_inh <= '0';
s_raz <= '1';
wait for 100ns;
s_inh <= '1'; 
s_raz <= '0';
wait;
end process;


end Behavioral;

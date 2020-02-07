----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Create Date: 07.02.2020 22:49:47
-- Module Name: Turn_on_LEDs - Behavioral
-- Project Name: Turn-on-LEDs
-- Target Devices: Basys3
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Turn_on_LEDs is
  Generic (
    SWITCH_NUM  : integer:= 16);
  
  Port (
    sw          : in std_logic_vector(SWITCH_NUM - 1 downto 0);
    led         : out std_logic_vector(SWITCH_NUM - 1 downto 0));
         
end Turn_on_LEDs;

architecture Behavioral of Turn_on_LEDs is

begin

    led <= sw;

end Behavioral;

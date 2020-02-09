----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Create Date: 07.02.2020 22:49:47
-- Module Name: Example 1 - Behavioral
-- Project Name: Example 1
-- Target Devices: Basys3
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example1 is
  Generic (
    SWITCH_NUM  : integer:= 16);
  
  Port (
    sw          : in std_logic_vector(SWITCH_NUM - 1 downto 0);
    led         : out std_logic_vector(SWITCH_NUM - 1 downto 0));
end example1;

architecture Behavioral of example1 is
begin
    led <= sw;
end Behavioral;

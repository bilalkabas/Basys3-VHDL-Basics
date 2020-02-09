----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Create Date: 07.02.2020 22:49:47
-- Module Name: Example 2 - Behavioral
-- Project Name: Example 2
-- Target Devices: Basys3
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example2 is
    Generic (
        LED_NUM : integer:= 16);
      
      Port (
        switch    : in std_logic;
        btnC      : in std_logic;
        led       : out std_logic_vector(LED_NUM - 1 downto 0));
end example2;

architecture Behavioral of example2 is
begin
    process (switch, btnC)
    begin
    if (switch = '1') XOR (btnC = '1') then
        led <= "1111111111111111";
    else
        led <= "0000000000000000";
    end if;
    end process;
end Behavioral;

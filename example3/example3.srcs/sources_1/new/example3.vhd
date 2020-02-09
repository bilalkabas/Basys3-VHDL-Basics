----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Create Date: 07.02.2020 22:49:47
-- Module Name: Example 3 - Behavioral
-- Project Name: Example 3
-- Target Devices: Basys3
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example3 is
    Port ( sw      : in std_logic_vector(3 downto 0);
           an      : out std_logic_vector(3 downto 0);
           an_conf : in std_logic_vector(3 downto 0);
           seg     : out std_logic_vector(6 downto 0));
end example3;

architecture Behavioral of example3 is
begin
    process (sw)
    begin
        an <= an_conf;
        case sw is
            when "0000" => seg <= "1000000"; -- 0
            when "0001" => seg <= "1001111"; -- 1
            when "0010" => seg <= "0100100"; -- 2
            when "0011" => seg <= "0110000"; -- 3
            when "0100" => seg <= "0011001"; -- 4
            when "0101" => seg <= "0010010"; -- 5
            when "0110" => seg <= "0000010"; -- 6
            when "0111" => seg <= "1111000"; -- 7
            when "1000" => seg <= "0000000"; -- 8
            when "1001" => seg <= "0010000"; -- 9
            when others => seg <= "1111111";
        end case;
    end process;
end Behavioral;

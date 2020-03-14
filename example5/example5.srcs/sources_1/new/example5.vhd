----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Module Name: Example 5 - Behavioral
-- Project Name: Example 5
-- Target Devices: Basys3
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity example5 is
    Generic (speed : integer := 18);
    Port ( clk : in std_logic;
           an : out std_logic_vector(3 downto 0);
           seg : out std_logic_vector(6 downto 0);
           sw : in std_logic_vector(15 downto 0) );
end example5;

architecture Behavioral of example5 is
signal counter : std_logic_vector(speed downto 0) := (others => '0');
signal sel : std_logic_vector(1 downto 0) := (others => '0');
signal num : std_logic_vector(3 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            counter <= counter + 1;
        end if;
    end process;
    
    process(counter(speed))
    begin
        if counter(speed)'event and counter(speed) = '1' then
            sel <= sel + 1;
        end if;
    end process;
    
    process(sel)
    begin
        case sel is
            when "00" => an <= "1110";
                         num <= sw(3 downto 0);
            when "01" => an <= "1101";
                         num <= sw(7 downto 4);
            when "10" => an <= "1011";
                         num <= sw(11 downto 8);
            when "11" => an <= "0111";
                         num <= sw(15 downto 12);
            when others => null;
        end case;
    end process;
    
    process(sw)
    begin
        case num is
            when "0000" => seg <= "1000000"; -- 0
            when "0001" => seg <= "1111001"; -- 1
            when "0010" => seg <= "0100100"; -- 2
            when "0011" => seg <= "0110000"; -- 3
            when "0100" => seg <= "0011001"; -- 4
            when "0101" => seg <= "0010010"; -- 5
            when "0110" => seg <= "0000010"; -- 6
            when "0111" => seg <= "1111000"; -- 7
            when "1000" => seg <= "0000000"; -- 8
            when others => seg <= "0010000"; -- 9
        end case;
    end process;
end Behavioral;

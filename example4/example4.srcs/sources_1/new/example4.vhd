----------------------------------------------------------------------------------
-- Company: Abdullah Gul University
-- Engineer: Bilal KABAS
-- 
-- Module Name: Example 4 - Behavioral
-- Project Name: Example 4
-- Target Devices: Basys3
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity example4 is
    Generic ( speed : integer := 20 );
    Port    ( clk   : in std_logic;
              led   : buffer std_logic_vector(15 downto 0) := "0000000000000001" );
end example4;

architecture Behavioral of example4 is
signal counter : std_logic_vector(speed downto 0) := (others => '0');
signal direction : std_logic := '0';

begin
    -- Clock divider
    process (clk)
    begin
        if clk'event and clk = '1' then
                counter <= counter + 1;
        end if;
    end process;
    
    -- Main Process
    process (counter(speed))
    begin
        if counter(speed)'event and counter(speed) = '1' then
            if direction = '0' then
                if led(15) = '0' then
                    led <= led(14 downto 0) & '0';
                else 
                    direction <= '1';
                end if;
            else
                if led(0) = '0' then
                    led <= '0' & led(15 downto 1);
                else 
                    direction <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;

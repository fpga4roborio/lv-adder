----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2024 01:29:22 PM
-- Design Name: 
-- Module Name: AdderWrapper - Behavioral
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

entity AdderWrapper is
    Port ( clk : in STD_LOGIC;
           cEn : in STD_LOGIC;
           aReset : in STD_LOGIC;
           dataInA : in STD_LOGIC_VECTOR (7 downto 0);
           dataInB : in STD_LOGIC_VECTOR (7 downto 0);
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end AdderWrapper;

architecture Behavioral of AdderWrapper is

component Adder 
    port ( clk : in STD_LOGIC;
           cEn : in STD_LOGIC;
           aReset : in STD_LOGIC;
           dataInA : in STD_LOGIC_VECTOR(7 downto 0);
           dataInB : in STD_LOGIC_VECTOR(7 downto 0);
           dataOut : out STD_LOGIC_VECTOR(7 downto 0));
end component;

begin

Adder_x : Adder 
    port map (
        clk => clk,
        cEn => cEn,
        aReset => aReset,
        dataInA => dataInA,
        dataInB => dataInB,
        dataOut => dataOut);

end Behavioral;

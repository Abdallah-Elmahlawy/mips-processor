----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:42:01 04/22/2016
-- Design Name: 
-- Module Name:    decoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end decoder;
architecture Behavioral of decoder is
begin
O <= "00000000000000000000000000000001" when I = "00000" else
	  "00000000000000000000000000000010" when I = "00001" else
	  "00000000000000000000000000000100" when I = "00010" else
	  "00000000000000000000000000001000" when I = "00011" else
	  "00000000000000000000000000010000" when I = "00100" else
	  "00000000000000000000000000100000" when I = "00101" else
	  "00000000000000000000000001000000" when I = "00110" else
	  "00000000000000000000000010000000" when I = "00111" else
	  "00000000000000000000000100000000" when I = "01000" else
	  "00000000000000000000001000000000" when I = "01001" else
	  "00000000000000000000010000000000" when I = "01010" else
	  "00000000000000000000100000000000" when I = "01011" else
	  "00000000000000000001000000000000" when I = "01100" else
	  "00000000000000000010000000000000" when I = "01101" else
	  "00000000000000000100000000000000" when I = "01110" else 
	  "00000000000000001000000000000000" when I = "01111" else
	  "00000000000000010000000000000000" when I = "10000" else
	  "00000000000000100000000000000000" when I = "10001" else
	  "00000000000001000000000000000000" when I = "10010" else
	  "00000000000010000000000000000000" when I = "10011" else
	  "00000000000100000000000000000000" when I = "10100" else
	  "00000000001000000000000000000000" when I = "10101" else
	  "00000000010000000000000000000000" when I = "10110" else 
	  "00000000100000000000000000000000" when I = "10111" else
	  "00000001000000000000000000000000" when I = "11000" else
	  "00000010000000000000000000000000" when I = "11001" else
	  "00000100000000000000000000000000" when I = "11010" else
	  "00001000000000000000000000000000" when I = "11011" else
	  "00010000000000000000000000000000" when I = "11100" else
	  "00100000000000000000000000000000" when I = "11101" else 
	  "01000000000000000000000000000000" when I = "11110" else 
	  "10000000000000000000000000000000" when I = "11111" else
	  "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end Behavioral;

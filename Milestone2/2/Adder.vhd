----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:03:01 04/22/2016
-- Design Name: 
-- Module Name:    Adder - Behavioral 
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
use IEEE.STD_LOGIC_Unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           O : out  STD_LOGIC;
           cin : in  STD_LOGIC;
           C : out  STD_LOGIC);
end Adder;

architecture Behavioral of Adder is

signal Temp : STD_LOGIC_VECTOR (1 downto 0);
begin
Temp <= ('0'& A) + ('0'& B) + ('0'& cin);
O <= Temp (0);
C <= Temp (1);

end Behavioral;

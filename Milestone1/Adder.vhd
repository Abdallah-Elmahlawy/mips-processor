----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:51:42 03/31/2016 
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

    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
			  o : out  STD_LOGIC);

end Adder;

architecture Behavioral of Adder is
signal tmp : STD_LOGIC_VECTOR (1 downto 0);
begin
tmp <= ('0'& a) + ('0'& b) + ('0'& cin);
o <= tmp (0);
cout <= tmp (1);

end Behavioral;


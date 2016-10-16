----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:03:01 04/22/2016
-- Design Name: 
-- Module Name:    controlCircuit - Behavioral 
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

entity controlCircuit is
    Port ( fun : in  STD_LOGIC_VECTOR (5 downto 0);
           outp : out  STD_LOGIC_VECTOR (3 downto 0));
end controlCircuit;

architecture Behavioral of controlCircuit is

begin
outp <= "0000" when fun = "100100" else
		  "0001" when fun = "100101" else
		  "0010" when fun = "100000" else
		  "0110" when fun = "100010" else
		  "0111" when fun = "101010" else
		  "1100" when fun = "100111";

end Behavioral;

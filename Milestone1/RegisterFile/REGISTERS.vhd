----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:15:34 04/01/2016 
-- Design Name: 
-- Module Name:    REGISTERS - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--....................................................................

entity REGISTERS is
   Port (
	        I : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           ld : in  STD_LOGIC;
           inc : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           O : OUT  STD_LOGIC_VECTOR (31 downto 0));
end REGISTERS;
--.....................................................................

architecture Behavioral of REGISTERS is
--.....................................................................

SIGNAL temp: STD_LOGIC_VECTOR (31 DOWNTO 0) := (others =>'0');
--.....................................................................
BEGIN

PROCESS(clk)
	
	BEGIN
	
	IF(clk'event AND clk='1')THEN
	
		IF(lD ='1') THEN
		
			temp <= I;
			
		ELSIF (inc='1')THEN
		
			temp <= temp +'1';
			
		ELSIF(clr='1') THEN
		
			temp <=(others =>'0');
			
		END IF;
		
	END IF;
	
END PROCESS;

	O <= temp;
--......................................................................
end Behavioral;


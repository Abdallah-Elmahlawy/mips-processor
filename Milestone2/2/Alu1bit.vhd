----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:31:01 04/22/2016
-- Design Name: 
-- Module Name:    Alu1bit - Behavioral 
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
use work.AluPac.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu1bit is
    Port ( less : in STD_LOGIC;
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end Alu1bit;

architecture Behavioral of Alu1bit is

signal andr : std_logic;
signal orr : std_logic;
signal data_out : std_logic;
signal rb : std_logic;
signal ra : std_logic;

begin


andr <= A and B;
orr <= A or B;
m2 : Mux2 port map (B, NOT (B), mode(2), rb);
m3 : Mux2 port map (A, NOT (A), mode(3), ra);
add : Adder port map (ra, rb, data_out, cin, cout);
m4 : Mux4 port map (andr, orr, data_out, less, mode(1 downto 0), R);

end Behavioral;

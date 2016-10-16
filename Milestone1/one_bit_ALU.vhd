----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:50 03/31/2016 
-- Design Name: 
-- Module Name:    one_bit_ALU - Behavioral 
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
use work.ALU_package.All;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_bit_ALU is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
			  mode : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
           result : out  STD_LOGIC);
end one_bit_ALU;

architecture Behavioral of one_bit_ALU is

signal anded :std_logic ;
signal ored :std_logic ;
signal tmp_a : std_logic;
signal tmp_b : std_logic;
signal data_out :std_logic ;

begin

anded<= a and b;
ored<= a or b ;
choice_b : multiplexer_2 port map (b,not (b),mode(2),tmp_b);
choice_a : multiplexer_2 port map (a,not (a),mode(3),tmp_a);
addd : Adder port map (tmp_a,tmp_b,carry_in,carry_out,data_out);
mux_4 : Multiplexer_4 port map ( anded,ored,data_out,data_out,mode(1 downto 0),result);

end Behavioral;


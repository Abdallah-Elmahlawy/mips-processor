----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:15:01 04/22/2016
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.AluPac.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
 Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal res : STD_LOGIC_VECTOR (31 downto 0);
signal carry : STD_LOGIC_VECTOR (31 downto 0);
signal set : STD_LOGIC;

begin

ALU1  : Alu1bit port map (set, data1(0), data2(0), cin, aluop, carry(0), res(0));
ALU2  : Alu1bit port map ('0', data1(1), data2(1), carry(0), aluop, carry(1), res(1));
ALU3  : Alu1bit port map ('0', data1(2), data2(2), carry(1), aluop, carry(2), res(2));
ALU4  : Alu1bit port map ('0', data1(3), data2(3), carry(2), aluop, carry(3), res(3));
ALU5  : Alu1bit port map ('0', data1(4), data2(4), carry(3), aluop, carry(4), res(4));
ALU6  : Alu1bit port map ('0', data1(5), data2(5), carry(4), aluop, carry(5), res(5));
ALU7  : Alu1bit port map ('0', data1(6), data2(6), carry(5), aluop, carry(6), res(6));
ALU8  : Alu1bit port map ('0', data1(7), data2(7), carry(6), aluop, carry(7), res(7));
ALU9  : Alu1bit port map ('0', data1(8), data2(8), carry(7), aluop, carry(8), res(8));
ALU10 : Alu1bit port map ('0', data1(9), data2(9), carry(8), aluop, carry(9), res(9));
ALU11 : Alu1bit port map ('0', data1(10), data2(10), carry(9), aluop, carry(10), res(10));
ALU12 : Alu1bit port map ('0', data1(11), data2(11), carry(10), aluop, carry(11), res(11));
ALU13 : Alu1bit port map ('0', data1(12), data2(12), carry(11), aluop, carry(12), res(12));
ALU14 : Alu1bit port map ('0', data1(13), data2(13), carry(12), aluop, carry(13), res(13));
ALU15 : Alu1bit port map ('0', data1(14), data2(14), carry(13), aluop, carry(14), res(14));
ALU16 : Alu1bit port map ('0', data1(15), data2(15), carry(14), aluop, carry(15), res(15));
ALU17 : Alu1bit port map ('0', data1(16), data2(16), carry(15), aluop, carry(16), res(16));
ALU18 : Alu1bit port map ('0', data1(17), data2(17), carry(16), aluop, carry(17), res(17));
ALU19 : Alu1bit port map ('0', data1(18), data2(18), carry(17), aluop, carry(18), res(18));
ALU20 : Alu1bit port map ('0', data1(19), data2(19), carry(18), aluop, carry(19), res(19));
ALU21 : Alu1bit port map ('0', data1(20), data2(20), carry(19), aluop, carry(20), res(20));
ALU22 : Alu1bit port map ('0', data1(21), data2(21), carry(20), aluop, carry(21), res(21));
ALU23 : Alu1bit port map ('0', data1(22), data2(22), carry(21), aluop, carry(22), res(22));
ALU24 : Alu1bit port map ('0', data1(23), data2(23), carry(22), aluop, carry(23), res(23));
ALU25 : Alu1bit port map ('0', data1(24), data2(24), carry(23), aluop, carry(24), res(24));
ALU26 : Alu1bit port map ('0', data1(25), data2(25), carry(24), aluop, carry(25), res(25));
ALU27 : Alu1bit port map ('0', data1(26), data2(26), carry(25), aluop, carry(26), res(26));
ALU28 : Alu1bit port map ('0', data1(27), data2(27), carry(26), aluop, carry(27), res(27));
ALU29 : Alu1bit port map ('0', data1(28), data2(28), carry(27), aluop, carry(28), res(28));
ALU30 : Alu1bit port map ('0', data1(29), data2(29), carry(28), aluop, carry(29), res(29));
ALU31 : Alu1bit port map ('0', data1(30), data2(30), carry(29), aluop, carry(30), res(30));
ALU32 : Alu1bit32 port map ('0', data1(31), data2(31), carry(30), aluop, carry(31), res(31), set);

dataout <= res; 
cflag <= carry(31);
oflag <= carry(31) xor carry(30);
zflag <= not (res(0) or res(1) or res(2) or res(3) or res(4) or res(5) or res(6) or res(7) or res(8) or res(9) or res(10) or res(11) or res(12) or res(13) or res(14) or res(15) or res(16) or res(17) or res(18) or res(19) or res(20) or res(21) or res(22) or res(23) or res(24) or res(25) or res(26) or res(27) or res(28) or res(29) or res(30) or res(31));

end Behavioral;

--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package pack is

COMPONENT decoder is
    Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT mux32 is
GENERIC(n:NATURAL:= 32);
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I8 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I9 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I10 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I11 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I12 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I13 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I14 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I15 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I16 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I17 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I18 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I19 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I20 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I21 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I22 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I23 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I24 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I25 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I26 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I27 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I28 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I29 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I30 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I31 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  O : out  STD_LOGIC_VECTOR (n-1 downto 0));  
end COMPONENT;

COMPONENT reg IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END COMPONENT;

COMPONENT PC_reg IS
	GENERIC(n:NATURAL :=32);
	PORT (I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			CLK, LOD, INC, CLR: IN STD_LOGIC;
			O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END COMPONENT;

COMPONENT reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END COMPONENT;

end pack;
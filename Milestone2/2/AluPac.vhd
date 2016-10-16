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

package AluPac is

COMPONENT Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           O : out  STD_LOGIC;
           cin : in  STD_LOGIC;
           C : out  STD_LOGIC);
end COMPONENT;

COMPONENT Mux2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end COMPONENT;

COMPONENT Mux4 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end COMPONENT;

COMPONENT Alu1bit is
    Port ( less : in STD_LOGIC;
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC;
           R : out  STD_LOGIC);
end COMPONENT;

COMPONENT Alu1bit32 is
    Port ( less : in STD_LOGIC;
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC;
           R : out  STD_LOGIC;
			  set : out STD_LOGIC);
end COMPONENT;

end AluPac;
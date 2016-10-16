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

package MainModulePack is

COMPONENT adder is
port (A : in std_logic ;
		B : in std_logic ;
		O : out std_logic ;
		cin : in std_logic ;
		C : out std_logic );
end COMPONENT;

COMPONENT RegisterFile is
Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
       read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
       write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
       write_ena : in  STD_LOGIC;
       clk : in  STD_LOGIC;
       write_data : in  STD_LOGIC_VECTOR (31 downto 0);
       data1 : out  STD_LOGIC_VECTOR (31 downto 0);
       data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(LoadIt: in Std_logic ;
		 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
		 ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
		 CLK: in STD_LOGIC);
end COMPONENT;

COMPONENT ALU is
Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
       data2 : in  STD_LOGIC_VECTOR (31 downto 0);
       aluop : in  STD_LOGIC_VECTOR (3 downto 0);
       cin : in  STD_LOGIC;
       dataout : out  STD_LOGIC_VECTOR (31 downto 0);
       cflag : out  STD_LOGIC;
       zflag : out  STD_LOGIC;
       oflag : out  STD_LOGIC);
end COMPONENT;

COMPONENT MUX32 is
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

COMPONENT MUX4 is
Port (I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
			  S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end COMPONENT;

COMPONENT Alu1bit32 is
Port ( less : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC;
			  R : out  STD_LOGIC;
           set : out  STD_LOGIC);
end COMPONENT;

COMPONENT Alu1bit is
Port ( less : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC;
			  R : out  STD_LOGIC);
end COMPONENT;

COMPONENT Mux2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end COMPONENT;

COMPONENT GenericReg IS
GENERIC(n:NATURAL);
	PORT ( I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
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

COMPONENT controlCircuit is
    Port ( fun : in  STD_LOGIC_VECTOR (5 downto 0);
           outp : out  STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;


COMPONENT decoder IS
Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
       O : out  STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

end MainModulePack;
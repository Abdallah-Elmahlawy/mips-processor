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

package ALU_package is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

COMPONENT Adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
			  o : out  STD_LOGIC);
end COMPONENT;

COMPONENT multiplexer_2 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end COMPONENT;

COMPONENT Multiplexer_4 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC);
end COMPONENT;

COMPONENT one_bit_ALU is
   Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
			   mode : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
           result : out  STD_LOGIC);
end COMPONENT;





end ALU_package;

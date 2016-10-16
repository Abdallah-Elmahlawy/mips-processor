--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--
--.............................................................................................................
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package PACKOFCOMPONENTS is

component ANDGATE is              --AND COMPONENT
PORT(
 a : in std_logic ; 
 b : in std_logic ; 
 x : out std_logic 

);
end component;
--.............................................................................................................

component REGISTERS is                                                    --( REGISTER COMPONENT )
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           ld : in  STD_LOGIC;
           inc : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           O : OUT  STD_LOGIC_VECTOR (31 downto 0));
end component;
--..............................................................................................................

component DECODER is
Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);                          --( DECODER COMPONENT )
         E : in  STD_LOGIC;                            
           D : out  STD_LOGIC_VECTOR (31 downto 0));   -- D0 D1 ........D31
end component ;
--- .............................................................................................................
 component MUX is
GENERIC(n:NATURAL :=32);                                                   -- ( MULTIPLIXER COMPONENT ) 
PORT(
I31: IN STD_LOGIC_vector(n-1 downto 0);
I30: IN STD_LOGIC_vector(n-1 downto 0);
I29: IN STD_LOGIC_vector(n-1 downto 0);
I28: IN STD_LOGIC_vector(n-1 downto 0);
I27: IN STD_LOGIC_vector(n-1 downto 0);
I26: IN STD_LOGIC_vector(n-1 downto 0);
I25: IN STD_LOGIC_vector(n-1 downto 0);
I24: IN STD_LOGIC_vector(n-1 downto 0);
I23: IN STD_LOGIC_vector(n-1 downto 0);
I22: IN STD_LOGIC_vector(n-1 downto 0);
I21: IN STD_LOGIC_vector(n-1 downto 0);
I20: IN STD_LOGIC_vector(n-1 downto 0);
I19: IN STD_LOGIC_vector(n-1 downto 0);
I18: IN STD_LOGIC_vector(n-1 downto 0);
I17: IN STD_LOGIC_vector(n-1 downto 0);
I16: IN STD_LOGIC_vector(n-1 downto 0);
I15: IN STD_LOGIC_vector(n-1 downto 0);
I14: IN STD_LOGIC_vector(n-1 downto 0);
I13: IN STD_LOGIC_vector(n-1 downto 0);
I12: IN STD_LOGIC_vector(n-1 downto 0);
I11: IN STD_LOGIC_vector(n-1 downto 0);
I10: IN STD_LOGIC_vector(n-1 downto 0);
I9: IN STD_LOGIC_vector(n-1 downto 0);
I8: IN STD_LOGIC_vector(n-1 downto 0);
I7: IN STD_LOGIC_vector(n-1 downto 0);
I6: IN STD_LOGIC_vector(n-1 downto 0);
I5: IN STD_LOGIC_vector(n-1 downto 0);
I4: IN STD_LOGIC_vector(n-1 downto 0);
I3: IN STD_LOGIC_vector(n-1 downto 0);
I2: IN STD_LOGIC_vector(n-1 downto 0);
I1: IN STD_LOGIC_vector(n-1 downto 0);
I0: IN STD_LOGIC_vector(n-1 downto 0);
S:IN STD_LOGIC_VECTOR ( 4 downto 0);
O:OUT STD_LOGIC_vector(n-1 downto 0));
end component;

--...................................................................................................
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

end PACKOFCOMPONENTS;

package body PACKOFCOMPONENTS is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end PACKOFCOMPONENTS;

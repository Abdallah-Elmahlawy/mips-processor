----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:01 04/22/2016
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MainModulePack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
port (START : in STD_LOGIC;
		CLK : in STD_LOGIC;
		RegFileOut1 : out STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2 : out STD_LOGIC_VECTOR(31 downto 0);
		ALUOut : out STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is

signal pcout : std_logic_vector (5 downto 0);
signal mult : std_logic_vector (31 downto 0);
signal INSTRMEMORYY : std_logic_vector (31 downto 0);
signal circuit : std_logic_vector (3 downto 0);
signal op : std_logic;
signal aluu : std_logic_vector(31 downto 0);
signal d1 : std_logic_vector(31 downto 0);
signal d2 : std_logic_vector(31 downto 0);
signal cflag : std_logic;
signal zflag : std_logic;
signal oflag : std_logic;

begin 

pc : PC_reg Generic map(6) port map("000000", CLK, '0', START, NOT(START), pcout);
mult <= "000000000000000000000000" & pcout & "00";
memo : INSTRMEMORY port map(NOT(START), INSTRMEMORYY, mult, CLK);
circuitt : controlCircuit  port map(INSTRMEMORYY(5 downto 0), circuit);
op <= NOT(INSTRMEMORYY(31) or INSTRMEMORYY(30) or INSTRMEMORYY(29) or INSTRMEMORYY(28) or INSTRMEMORYY(27) or INSTRMEMORYY(26));
regfile : RegisterFile port map(INSTRMEMORYY(25 downto 21), INSTRMEMORYY(20 downto 16), INSTRMEMORYY(15 downto 11), op, CLK, aluu, d1, d2);
aluuu : ALU port map (d1, d2, circuit, circuit(2), aluu, cflag, zflag, oflag);
RegFileOut1 (31 downto 0) <= d1(31 downto 0);
RegFileOut2 (31 downto 0) <= d2(31 downto 0);
ALUOut (31 downto 0) <= aluu (31 downto 0);

end Behavioral;

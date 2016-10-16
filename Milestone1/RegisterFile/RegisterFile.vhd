----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:01:21 04/01/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use Work.PACKOFCOMPONENTS.All;

--..........................................................
--THE MAIN FILE REGITERFILE (READ AND WRITE)
--..........................................................

entity RegisterFile is
    Port (
	        read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end RegisterFile;
--.........................................................

architecture Behavioral of RegisterFile is
--.........................................................

-- SIGNALS OF REGISTER  (MUX) 
--.........................................................
signal Register_0 : std_logic_vector (31 downto 0);
signal Register_1 : std_logic_vector (31 downto 0);
signal Register_2 : std_logic_vector (31 downto 0);
signal Register_3 : std_logic_vector (31 downto 0);
signal Register_4 : std_logic_vector (31 downto 0);
signal Register_5 : std_logic_vector (31 downto 0);
signal Register_6 : std_logic_vector (31 downto 0);
signal Register_7 : std_logic_vector (31 downto 0);
signal Register_8 : std_logic_vector (31 downto 0);
signal Register_9 : std_logic_vector (31 downto 0);
signal Register_10 : std_logic_vector (31 downto 0);
signal Register_11 : std_logic_vector (31 downto 0);
signal Register_12 : std_logic_vector (31 downto 0);
signal Register_13 : std_logic_vector (31 downto 0);
signal Register_14 : std_logic_vector (31 downto 0);
signal Register_15 : std_logic_vector (31 downto 0);
signal Register_16 : std_logic_vector (31 downto 0);
signal Register_17 : std_logic_vector (31 downto 0);
signal Register_18 : std_logic_vector (31 downto 0);
signal Register_19 : std_logic_vector (31 downto 0);
signal Register_20 : std_logic_vector (31 downto 0);
signal Register_21 : std_logic_vector (31 downto 0);
signal Register_22  : std_logic_vector (31 downto 0);
signal Register_23  : std_logic_vector (31 downto 0);
signal Register_24  : std_logic_vector (31 downto 0);
signal Register_25  : std_logic_vector (31 downto 0);
signal Register_26  : std_logic_vector (31 downto 0);
signal Register_27  : std_logic_vector (31 downto 0);
signal Register_28  : std_logic_vector (31 downto 0);
signal Register_29  : std_logic_vector (31 downto 0);
signal Register_30  : std_logic_vector (31 downto 0);
signal Register_31  : std_logic_vector (31 downto 0);
--.....................................................................................

--DECODER SIGNAL 32 BIT OUTPUT After writing
--..........................................
signal  MAIN_DECDODER_OUTPUT : std_logic_vector (31 downto 0);  --REGISTER DATA
--......................................................................................
begin

--INSTANCE FROM DECODER COMPONENT From Package PACKOFCOMPONENT
--......................................................................................

MAIN_DECDODER: DECODER PORT MAP (write_sel,write_ena,MAIN_DECDODER_OUTPUT);

--......................................................................................

--MUX INSTANCE FROM MUX COMPONENT .
 --......................................................................................
 
--MULTIPLIXER1
--..............
MULTIPLIXER1: MUX PORT MAP (Register_31,Register_30,Register_29,Register_28,Register_27,Register_26,Register_25,Register_24,Register_23,Register_22,
Register_21,Register_20,Register_19,Register_18,Register_17,Register_16,Register_15,Register_14,Register_13,Register_12,Register_11,Register_10,Register_9,
Register_8,Register_7,Register_6,Register_5,Register_4,Register_3,Register_2,Register_1,Register_0,read_sel1,data1);
--........................................................................................

--MULTIPLIXER2
--.............
MULTIPLIXER2: MUX PORT MAP (Register_31,Register_30,Register_29,Register_28,Register_27,Register_26,Register_25,Register_24,Register_23,Register_22,
Register_21,Register_20,Register_19,Register_18,Register_17,Register_16,Register_15,Register_14,Register_13,Register_12,Register_11,Register_10,Register_9,
Register_8,Register_7,Register_6,Register_5,Register_4,Register_3,Register_2,Register_1,Register_0,read_sel2,data2);
--........................................................................................

--32 GENERAL PURPOSE REGISTARS (32 BITS)
--......................................................................................
REG0:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(0),'0','0',Register_0);
REG1:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(1),'0','0',Register_1);
REG2:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(2),'0','0',Register_2);
REG3:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(3),'0','0',Register_3);
REG4:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(4),'0','0',Register_4);
REG5:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(5),'0','0',Register_5);
REG6:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(6),'0','0',Register_6);
REG7:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(7),'0','0',Register_7);
REG8:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(8),'0','0',Register_8);
REG9:  REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(9),'0','0',Register_9);
REG10: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(10),'0','0',Register_10);
REG11: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(11),'0','0',Register_11);
REG12: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(12),'0','0',Register_12);
REG13: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(13),'0','0',Register_13 );
REG14: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(14),'0','0',Register_14);
REG15: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(15),'0','0',Register_15);
REG16: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(16),'0','0',Register_16);
REG17: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(17),'0','0',Register_17);
REG18: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(18),'0','0',Register_18);
REG19: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(19),'0','0',Register_19);
REG20: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(20),'0','0',Register_20);
REG21: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(21),'0','0',Register_21);
REG22: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(22),'0','0',Register_22);
REG23: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(23),'0','0',Register_23);
REG24: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(24),'0','0',Register_24);
REG25: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(25),'0','0',Register_25);
REG26: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(26),'0','0',Register_26);
REG27: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(27),'0','0',Register_27);
REG28: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(28),'0','0',Register_28);
REG29: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(29),'0','0',Register_29);
REG30: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(30),'0','0',Register_30);
REG31: REGISTERS PORT MAP(write_data,clk,MAIN_DECDODER_OUTPUT(31),'0','0',Register_31);
--.......................................................................................

end Behavioral;


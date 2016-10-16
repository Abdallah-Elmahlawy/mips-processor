----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:30:01 04/22/2016
-- Design Name: 
-- Module Name:    RegFile - Behavioral 
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
use work.pack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

signal dc_out: STD_LOGIC_VECTOR (31 downto 0);
signal load: STD_LOGIC_VECTOR (31 downto 0);
signal r1out: STD_LOGIC_VECTOR (31 downto 0);
signal r2out: STD_LOGIC_VECTOR (31 downto 0);
signal r3out: STD_LOGIC_VECTOR (31 downto 0);
signal r4out: STD_LOGIC_VECTOR (31 downto 0);
signal r5out: STD_LOGIC_VECTOR (31 downto 0);
signal r6out: STD_LOGIC_VECTOR (31 downto 0);
signal r7out: STD_LOGIC_VECTOR (31 downto 0);
signal r8out: STD_LOGIC_VECTOR (31 downto 0);
signal r9out: STD_LOGIC_VECTOR (31 downto 0);
signal r10out: STD_LOGIC_VECTOR (31 downto 0);
signal r11out: STD_LOGIC_VECTOR (31 downto 0);
signal r12out: STD_LOGIC_VECTOR (31 downto 0);
signal r13out: STD_LOGIC_VECTOR (31 downto 0);
signal r14out: STD_LOGIC_VECTOR (31 downto 0);
signal r15out: STD_LOGIC_VECTOR (31 downto 0);
signal r16out: STD_LOGIC_VECTOR (31 downto 0);
signal r17out: STD_LOGIC_VECTOR (31 downto 0);
signal r18out: STD_LOGIC_VECTOR (31 downto 0);
signal r19out: STD_LOGIC_VECTOR (31 downto 0);
signal r20out: STD_LOGIC_VECTOR (31 downto 0);
signal r21out: STD_LOGIC_VECTOR (31 downto 0);
signal r22out: STD_LOGIC_VECTOR (31 downto 0);
signal r23out: STD_LOGIC_VECTOR (31 downto 0);
signal r24out: STD_LOGIC_VECTOR (31 downto 0);
signal r25out: STD_LOGIC_VECTOR (31 downto 0);
signal r26out: STD_LOGIC_VECTOR (31 downto 0);
signal r27out: STD_LOGIC_VECTOR (31 downto 0);
signal r28out: STD_LOGIC_VECTOR (31 downto 0);
signal r29out: STD_LOGIC_VECTOR (31 downto 0);
signal r30out: STD_LOGIC_VECTOR (31 downto 0);
signal r31out: STD_LOGIC_VECTOR (31 downto 0);
signal r32out: STD_LOGIC_VECTOR (31 downto 0);

begin

dec:Decoder port map (write_sel,dc_out);

load(0) <= dc_out(0) and write_ena;
load(1) <= dc_out(1) and write_ena;
load(2) <= dc_out(2) and write_ena;
load(3) <= dc_out(3) and write_ena;
load(4) <= dc_out(4) and write_ena;
load(5) <= dc_out(5) and write_ena;
load(6) <= dc_out(6) and write_ena;
load(7) <= dc_out(7) and write_ena;
load(8) <= dc_out(8) and write_ena;
load(9) <= dc_out(9) and write_ena;
load(10) <= dc_out(10) and write_ena;
load(11) <= dc_out(11) and write_ena;
load(12) <= dc_out(12) and write_ena;
load(13) <= dc_out(13) and write_ena;
load(14) <= dc_out(14) and write_ena;
load(15) <= dc_out(15) and write_ena;
load(16) <= dc_out(16) and write_ena;
load(17) <= dc_out(17) and write_ena;
load(18) <= dc_out(18) and write_ena;
load(19) <= dc_out(19) and write_ena;
load(20) <= dc_out(20) and write_ena;
load(21) <= dc_out(21) and write_ena;
load(22) <= dc_out(22) and write_ena;
load(23) <= dc_out(23) and write_ena;
load(24) <= dc_out(24) and write_ena;
load(25) <= dc_out(25) and write_ena;
load(26) <= dc_out(26) and write_ena;
load(27) <= dc_out(27) and write_ena;
load(28) <= dc_out(28) and write_ena;
load(29) <= dc_out(29) and write_ena;
load(30) <= dc_out(30) and write_ena;
load(31) <= dc_out(31) and write_ena;

R1: PC_reg GENERIC MAP (32) PORT MAP (write_data,clk,load(0),'0','0',r1out);
R2: reg32_1 PORT MAP (write_data,clk,load(1),'0','0',r2out);
R3: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(2),'0','0',r3out);
R4: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(3),'0','0',r4out);
R5: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(4),'0','0',r5out);
R6: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(5),'0','0',r6out);
R7: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(6),'0','0',r7out);
R8: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(7),'0','0',r8out);
R9: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(8),'0','0',r9out);
R10: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(9),'0','0',r10out);
R11: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(10),'0','0',r11out);
R12: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(11),'0','0',r12out);
R13: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(12),'0','0',r13out);
R14: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(13),'0','0',r14out);
R15: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(14),'0','0',r15out);
R16: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(15),'0','0',r16out);
R17: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(16),'0','0',r17out);
R18: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(17),'0','0',r18out);
R19: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(18),'0','0',r19out);
R20: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(19),'0','0',r20out);
R21: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(20),'0','0',r21out);
R22: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(21),'0','0',r22out);
R23: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(22),'0','0',r23out);
R24: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(23),'0','0',r24out);
R25: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(24),'0','0',r25out);
R26: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(25),'0','0',r26out);
R27: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(26),'0','0',r27out);
R28: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(27),'0','0',r28out);
R29: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(28),'0','0',r29out);
R30: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(29),'0','0',r30out);
R31: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(30),'0','0',r31out);
R32: reg GENERIC MAP (32) PORT MAP (write_data,clk,load(31),'0','0',r32out);

mux1 : mux32 GENERIC MAP (32) port map(read_sel1,r1out,r2out,r3out,r4out,r5out,r6out,r7out,r8out,r9out,r10out,r11out,r12out,r13out,r14out,r15out,r16out,r17out,r18out,r19out,r20out,r21out,r22out,r23out,r24out,r25out,r26out,r27out,r28out,r29out,r30out,r31out,r32out,data1);
mux2 : mux32 GENERIC MAP (32) port map(read_sel2,r1out,r2out,r3out,r4out,r5out,r6out,r7out,r8out,r9out,r10out,r11out,r12out,r13out,r14out,r15out,r16out,r17out,r18out,r19out,r20out,r21out,r22out,r23out,r24out,r25out,r26out,r27out,r28out,r29out,r30out,r31out,r32out,data2);

end Behavioral;

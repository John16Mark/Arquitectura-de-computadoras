----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:15 05/08/2024 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end ROM;

architecture Behavioral of ROM is

begin

	-- .def temp = r16
	-- .def cont1 = r17
	-- .def cont2 = r18
	-- .def cont3 = r19
	-- .def uno = r20

	-- .cseg
	-- .org 0

	O <=	x"e041" when A=x"0000" else	-- 	ldi uno, $01
			x"e800" when A=x"0001" else	-- main:	ldi temp, $80
			x"b905" when A=x"0002" else	-- 	out portb, temp
			x"d005" when A=x"0003" else	-- 	rcall delay_125m
			x"9506" when A=x"0004" else	-- a:	lsr temp
			x"f3d9" when A=x"0005" else	-- 	breq main
			x"b905" when A=x"0006" else	-- 	out portb, temp
			x"d001" when A=x"0007" else	-- 	rcall delay_125m
			x"cffb" when A=x"0008" else	-- 	rjmp a
			x"e119" when A=x"0009" else	-- delay_125m:	ldi cont1, 25
			x"ec28" when A=x"000a" else	-- lazo3:	ldi cont2, 200
			x"ef3a" when A=x"000b" else	-- lazo2:	ldi cont3, 250
			x"0000" when A=x"000c" else	-- lazo1:	nop
			x"0000" when A=x"000d" else	-- 	nop
			x"0000" when A=x"000e" else	-- 	nop
			x"0000" when A=x"000f" else	-- 	nop
			x"0000" when A=x"0010" else	-- 	nop
			x"0000" when A=x"0011" else	-- 	nop
			x"0000" when A=x"0012" else	-- 	nop
			x"0000" when A=x"0013" else	-- 	nop
			x"1b34" when A=x"0014" else	-- 	sub cont3, uno
			x"f7b1" when A=x"0015" else	-- 	brne lazo1
			x"1b24" when A=x"0016" else	-- 	sub cont2, uno
			x"f799" when A=x"0017" else	-- 	brne lazo2
			x"1b14" when A=x"0018" else	-- 	sub cont1, uno
			x"f781" when A=x"0019" else	-- 	brne lazo3
			x"9508" when A=x"001a" else	-- 	ret
			x"ffff";

end Behavioral;


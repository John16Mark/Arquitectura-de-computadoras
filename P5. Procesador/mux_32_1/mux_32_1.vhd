----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:21:37 04/18/2024 
-- Design Name: 
-- Module Name:    mux_32_1 - Behavioral 
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

entity mux_32_1 is
	 generic ( N : integer := 8);
    Port ( sel_read : in  STD_LOGIC_VECTOR (4 downto 0);
           I : in  STD_LOGIC_VECTOR ((N*32)-1 downto 0);
           O : out  STD_LOGIC_VECTOR (N-1 downto 0));
end mux_32_1;

architecture Behavioral of mux_32_1 is

begin

	O <=	I((1*N-1) downto 0*N) when sel_read = "00000" else
			I((2*N-1) downto 1*N) when sel_read = "00001" else
			I((3*N-1) downto 2*N) when sel_read = "00010" else
			I((4*N-1) downto 3*N) when sel_read = "00011" else
			I((5*N-1) downto 4*N) when sel_read = "00100" else
			I((6*N-1) downto 5*N) when sel_read = "00101" else
			I((7*N-1) downto 6*N) when sel_read = "00110" else
			I((8*N-1) downto 7*N) when sel_read = "00111" else
			I((9*N-1) downto 8*N) when sel_read = "01000" else
			I((10*N-1) downto 9*N) when sel_read = "01001" else
			I((11*N-1) downto 10*N) when sel_read = "01010" else
			I((12*N-1) downto 11*N) when sel_read = "01011" else
			I((13*N-1) downto 12*N) when sel_read = "01100" else
			I((14*N-1) downto 13*N) when sel_read = "01101" else
			I((15*N-1) downto 14*N) when sel_read = "01110" else
			I((16*N-1) downto 15*N) when sel_read = "01111" else
			I((17*N-1) downto 16*N) when sel_read = "10000" else
			I((18*N-1) downto 17*N) when sel_read = "10001" else
			I((19*N-1) downto 18*N) when sel_read = "10010" else
			I((20*N-1) downto 19*N) when sel_read = "10011" else
			I((21*N-1) downto 20*N) when sel_read = "10100" else
			I((22*N-1) downto 21*N) when sel_read = "10101" else
			I((23*N-1) downto 22*N) when sel_read = "10110" else
			I((24*N-1) downto 23*N) when sel_read = "10111" else
			I((25*N-1) downto 24*N) when sel_read = "11000" else
			I((26*N-1) downto 25*N) when sel_read = "11001" else
			I((27*N-1) downto 26*N) when sel_read = "11010" else
			I((28*N-1) downto 27*N) when sel_read = "11011" else
			I((29*N-1) downto 28*N) when sel_read = "11100" else
			I((30*N-1) downto 29*N) when sel_read = "11101" else
			I((31*N-1) downto 30*N) when sel_read = "11110" else
			I((32*N-1) downto 31*N);

end Behavioral;


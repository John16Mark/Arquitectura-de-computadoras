----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:41 05/08/2024 
-- Design Name: 
-- Module Name:    ext_sig_relative - Behavioral 
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

entity ext_sig_relative is
    Port ( Irel : in  STD_LOGIC_VECTOR (15 downto 0);
           Orel : out  STD_LOGIC_VECTOR (15 downto 0));
end ext_sig_relative;

architecture Behavioral of ext_sig_relative is

begin

	Orel(11 downto 0) <= Irel(11 downto 0);
	Orel(12) <= Irel(11);
	Orel(13) <= Irel(11);
	Orel(14) <= Irel(11);
	Orel(15) <= Irel(11);

end Behavioral;


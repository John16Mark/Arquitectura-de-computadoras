----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:30:51 05/08/2024 
-- Design Name: 
-- Module Name:    ext_sig_branch - Behavioral 
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

entity ext_sig_branch is
    Port ( Ibr : in  STD_LOGIC_VECTOR (15 downto 0);
           Obr : out  STD_LOGIC_VECTOR (15 downto 0));
end ext_sig_branch;

architecture Behavioral of ext_sig_branch is

begin

	Obr(6 downto 0) <= Ibr(9 downto 3);
	Obr(7) <= Ibr(9);
	Obr(8) <= Ibr(9);
	Obr(9) <= Ibr(9);
	Obr(10) <= Ibr(9);
	Obr(11) <= Ibr(9);
	Obr(12) <= Ibr(9);
	Obr(13) <= Ibr(9);
	Obr(14) <= Ibr(9);
	Obr(15) <= Ibr(9);

end Behavioral;


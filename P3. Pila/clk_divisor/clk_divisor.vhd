----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:34 04/05/2024 
-- Design Name: 
-- Module Name:    clk_divisor - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_divisor is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q_27 : out  STD_LOGIC);
end clk_divisor;

architecture Behavioral of clk_divisor is

-- Señal auxiliar
signal q_aux: STD_LOGIC_VECTOR (27 downto 0);

begin

	process (clk, clr)
	begin
		if(clr = '1') then
			q_aux <= (others => '0');
		elsif (clk'event and clk = '1') then
			q_aux <= q_aux + 1;
		end if;
	end process;
	
	q_27 <= q_aux(27);

end Behavioral;


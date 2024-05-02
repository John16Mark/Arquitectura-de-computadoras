----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:37 04/05/2024 
-- Design Name: 
-- Module Name:    stack_pointer - Behavioral 
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

entity stack_pointer is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (2 downto 0);
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end stack_pointer;

architecture Behavioral of stack_pointer is

-- Señal auxiliar
signal q_aux: STD_LOGIC_VECTOR (2 downto 0);

begin

	process (clk, clr)
	begin
		if (clr = '1') then
			q_aux <= "111";
		elsif (clk'event and clk = '1') then
			q_aux <= I;
		end if;
	end process;
	
	Q <= q_aux;

end Behavioral;


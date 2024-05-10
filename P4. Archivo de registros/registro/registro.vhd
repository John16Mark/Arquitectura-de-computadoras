----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:16:04 04/18/2024 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
	 generic ( N : integer := 4);
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end registro;

architecture Behavioral of registro is

-- Señal auxiliar
signal q_aux : std_logic_vector (N-1 downto 0);

begin

	process (clr, clk, en)
	begin
		if(clr = '1') then
			q_aux <= "0000";
		elsif (clk'event and clk = '1' and en = '1') then
			q_aux <= I;
		end if;
	end process;
	
	Q <= q_aux;

end Behavioral;


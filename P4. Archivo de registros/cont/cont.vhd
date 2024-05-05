----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:51:42 04/18/2024 
-- Design Name: 
-- Module Name:    cont - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cont is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sal : OUT  STD_LOGIC_VECTOR (4 downto 0));
end cont;

architecture Behavioral of cont is

--Señal auxiliar
signal cont_aux : STD_LOGIC_VECTOR (4 downto 0) := "00000";

begin

	process(clr, clk)
	begin
		if(clr = '1') then
			cont_aux <= "00000";
		elsif(clk'event and clk = '1') then
			cont_aux <= cont_aux+1;
		end if;
	end process;
	
	sal <= cont_aux;

end Behavioral;


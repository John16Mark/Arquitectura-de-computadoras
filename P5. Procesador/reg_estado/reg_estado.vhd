----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:08 03/19/2024 
-- Design Name: 
-- Module Name:    reg_estado - Behavioral 
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

entity reg_estado is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           ent : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end reg_estado;

architecture Behavioral of reg_estado is

-- Señal auxiliar
signal q_aux : STD_LOGIC;

begin

	process (clk, clr, en)
	begin
		if(clr = '1') then
			q_aux <= '0';
		elsif(clk'event and clk = '1') then
			if(en = '1') then	-- Carga
				q_aux <= ent;
			else 						-- Retención
				q_aux <= q_aux;
			end if;
		end if;
	end process;

	sal <= q_aux;

end Behavioral;


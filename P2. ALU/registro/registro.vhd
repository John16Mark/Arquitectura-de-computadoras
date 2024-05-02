----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:53 03/07/2024 
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
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
			  sel : in std_logic_vector (1 downto 0);
			  I : in std_logic_vector (3 downto 0);
			  Q : out std_logic_vector (3 downto 0));
end registro;

architecture Behavioral of registro is

-- Señal auxiliar
signal q_aux : std_logic_vector (3 downto 0);

begin

	process (clr,clk)
	begin
		if(clr = '1') then
			q_aux <= "0000";
		elsif (clk'event and clk = '1') then
			case sel is
				when "00" =>	-- Carga
					q_aux <= I;
				when "01" =>	-- Corrimiento a la izquierda
					q_aux(3 downto 1) <=  q_aux(2 downto 0);
					q_aux(0) <= '0';
				when "10" =>	-- Corrimiento a la derecha
					q_aux(2 downto 0) <= q_aux(3 downto 1);
					q_aux(3) <= '0';
				when others =>	-- Retención
					q_aux <= q_aux;
			end case;
		end if;
	end process;
	
	Q <= q_aux;

end Behavioral;


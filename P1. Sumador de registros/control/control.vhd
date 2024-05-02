----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:50 03/07/2024 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           sd : out  STD_LOGIC_VECTOR (1 downto 0);
           sr : out  STD_LOGIC_VECTOR (1 downto 0);
           sel : out  STD_LOGIC);
end control;

architecture Behavioral of control is

-- Estados
type estados is (carga, suma, final);
-- Señal auxiliar
signal edo_pres, edo_sig: estados;

begin

	process (edo_pres, inicio)
	begin
		case edo_pres is
			when carga =>		-- Registros destino y fuente en carga
				sd <= "00";
				sr <= "00";
				sel <= '0';
				if (inicio = '1') then	-- Si presionamos boton de inicio, pasamos a suma
					edo_sig <= suma;
				else							-- Si no presionamos, nos quedamos en carga
					edo_sig <= carga;
				end if;

			when suma =>		-- Registro destino en carga, registro fuente en retención
				edo_sig <= final;
				sd <= "00";
				sr <= "11";
				sel <= '1';

			when others =>		-- Registros destino y fuente en retención
				edo_sig <= final;
				sd <= "11";
				sr <= "11";
				sel <= '0';
		end case;
	end process;
	
	process (clk, clr)
	begin
		if(clr = '1') then
			edo_pres <= carga;
		elsif(clk'event and clk = '1') then
			edo_pres <= edo_sig;
		end if;
	end process;

end Behavioral;


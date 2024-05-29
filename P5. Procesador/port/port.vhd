----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:07 05/08/2024 
-- Design Name: 
-- Module Name:    port - Behavioral 
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

entity port_b is
	 generic ( N : integer := 8 );
    Port ( clk : in  STD_LOGIC;
			  clr : in  STD_LOGIC;
			  en : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (N-1 downto 0);
           O : out  STD_LOGIC_VECTOR (N-1 downto 0));
end port_b;

architecture Behavioral of port_b is

-- Señal auxiliar
signal o_aux : STD_LOGIC_VECTOR (N-1 downto 0);

begin

	process(clk, clr, en)
	begin
		if(clr = '1') then
			o_aux <= "00000000";
		elsif(clk'event and clk = '1' and en = '1') then
			o_aux <= I;
		end if;
	end process;

	O <= o_aux;

end Behavioral;


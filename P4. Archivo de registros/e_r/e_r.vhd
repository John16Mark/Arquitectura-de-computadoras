----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:39:29 04/18/2024 
-- Design Name: 
-- Module Name:    e_r - Behavioral 
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

entity e_r is
    Port ( ent : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end e_r;

architecture Behavioral of e_r is

-- Señales auxiliares de los Flip-Flops
signal q0, q1, q2 : STD_LOGIC;

begin
	process(clr, clk)
	begin
		if(clr = '1') then
			q2 <= '0';
			q1 <= '0';
			q0 <= '0';
		elsif(clk'event and clk = '1')then
			q2 <= ent;
			q1 <= q2;
			q0 <= q1;
		end if;
	end process;

	sal <= (q2 and q1 and (not q0));

end Behavioral;


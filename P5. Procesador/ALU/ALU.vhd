----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:26 03/19/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
	 generic ( N : integer := 8 );
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (N-1 downto 0);
           Z : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

-- Se�al auxiliar
signal F_aux, A_aux, B_aux: STD_LOGIC_VECTOR (N downto 0);

begin

	A_aux <= '0'&A;
	B_aux <= '0'&B;
	
	process (A_aux, B_aux, sel)
	begin
		case sel is
			when "000" =>	-- Suma
				F_aux <= (A_aux + B_aux);
			when "001" =>	-- Resta
				F_aux <= (A_aux - B_aux);
			when "010" =>	-- and
				F_aux <= (A_aux and B_aux);
			when "011" =>	-- or
				F_aux <= (A_aux or B_aux);
			when "100" =>	-- xor
				F_aux <= (A_aux xor B_aux);
			when "101" =>	-- not
				F_aux <= not(A_aux);
			when "110" =>	-- Corrimiento a la izquierda
				F_aux(N downto 1) <= A_aux(N-1 downto 0);
				F_aux(0) <= '0';
			when others =>	-- Corrimiento a la derecha
				F_aux(N-2 downto 0) <= A_aux(N-1 downto 1);
				F_aux(N-1) <= '0';
				F_aux(N) <= A_aux(0);
		end case;
	end process;
	
	-- Cero
	--Z <= not(F_aux(3) or F_aux(2) or F_aux(1) or F_aux(0));
	Z <= not(F_aux(7) or F_aux(6) or F_aux(5) or F_aux(4) or F_aux(3) or F_aux(2) or F_aux(1) or F_aux(0));
	
	F <= F_aux(N-1 downto 0);

end Behavioral;


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
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0);
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

-- Señal auxiliar
signal F_aux, A_aux, B_aux: STD_LOGIC_VECTOR (4 downto 0);

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
				F_aux(4 downto 1) <= A_aux(3 downto 0);
				F_aux(0) <= '0';
			when others =>	-- Corrimiento a la derecha
				F_aux(2 downto 0) <= A_aux(3 downto 1);
				F_aux(3) <= '0';
				F_aux(4) <= A_aux(0);
		end case;
	end process;
	
	-- Número negativo
	N <= F_aux(3);
	-- Cero
	Z <= not(F_aux(3) or F_aux(2) or F_aux(1) or F_aux(0));
	-- Acarreo
	C <= F_aux(4);
	
	F <= F_aux(3 downto 0);

end Behavioral;


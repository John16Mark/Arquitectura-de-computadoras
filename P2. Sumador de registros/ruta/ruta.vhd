----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:50:50 02/26/2024 
-- Design Name: 
-- Module Name:    ruta - Behavioral 
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

entity ruta is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           rd : in  STD_LOGIC_VECTOR (1 downto 0);
           rr : in  STD_LOGIC_VECTOR (1 downto 0);
           s : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC_VECTOR (3 downto 0);
           suma : out  STD_LOGIC_VECTOR (3 downto 0);
           banderas: out STD_LOGIC_VECTOR (2 downto 0));
end ruta;

architecture Behavioral of ruta is

-- Componente registro
component  registro is
 Port ( clk : in  STD_LOGIC;
		  clr : in  STD_LOGIC;
		  sel : in  STD_LOGIC_VECTOR (1 downto 0);
		  I : in  STD_LOGIC_VECTOR (3 downto 0);
		  Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

-- Componente registro de estado (banderas)
component  reg_estado is
 Port ( clk : in  STD_LOGIC;
		  clr : in  STD_LOGIC;
		  sel : in  STD_LOGIC;
		  I : in  STD_LOGIC_VECTOR (2 downto 0);
		  Q : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

-- Señales auxiliares
signal mux_aux: STD_LOGIC_VECTOR(3 downto 0);
signal d_aux, r_aux, suma_aux: STD_LOGIC_VECTOR(4 downto 0);
signal flags: STD_LOGIC_VECTOR (2 downto 0);

begin

	d_aux(4) <= '0';
	r_aux(4) <= '0'; 

	-- sel indica si hacemos la operación o si estamos en carga
	mux_aux <=	D	when s = '0' else
					suma_aux(3 downto 0);

	-- Seleccionar la operación a realizar
	suma_aux <= (d_aux + r_aux);
	--suma_aux <= (d_aux - r_aux);
	--suma_aux <= (d_aux and r_aux);
	--suma_aux <= (d_aux or r_aux);
	--suma_aux <= (d_aux xor r_aux);
	
	-- numero negativo
	flags(2) <= suma_aux(3);
	-- cero
	flags(1) <= not(suma_aux(3) or suma_aux(2) or suma_aux(1) or suma_aux(0));
	-- acarreo
	flags(0) <= suma_aux(4);

	reg_d: registro
	Port map (	clk => clk,
					clr => clr,
					sel => rd,
					I => mux_aux,
					Q => d_aux(3 downto 0));	

	reg_r: registro
	Port map (	clk => clk,
					clr => clr,
					sel => rr,
					I => R,
					Q => r_aux(3 downto 0));
					
	reg_flags: reg_estado
	Port map (	clk => clk,
					clr => clr,
					sel => rd(0),
					I => flags,
					Q => banderas);

	suma <= d_aux(3 downto 0);

end Behavioral;


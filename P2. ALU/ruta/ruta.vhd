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
           resultado : out  STD_LOGIC_VECTOR (3 downto 0);
			  operacion: in STD_LOGIC_VECTOR (2 downto 0);
           banderas: out STD_LOGIC_VECTOR (2 downto 0));
end ruta;

architecture Behavioral of ruta is

-- Componente Unidad Arimético-Lógica
component  ALU is
 Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
		  B : in  STD_LOGIC_VECTOR (3 downto 0);
		  sel : in  STD_LOGIC_VECTOR (2 downto 0);
		  F : out  STD_LOGIC_VECTOR (3 downto 0);
		  N : out  STD_LOGIC;
		  Z : out  STD_LOGIC;
		  C : out  STD_LOGIC);
end component;

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
signal d_aux, r_aux, mux_aux, res_aux: STD_LOGIC_VECTOR(3 downto 0);
signal flags: STD_LOGIC_VECTOR (2 downto 0);

begin

	-- sel indica si hacemos la operaci?n o si estamos en carga
	mux_aux <=	D	when s = '0' else
					res_aux;

	UAL: ALU
	Port map ( 	A => d_aux,
					B => r_aux,
					sel => operacion,
					F => res_aux,
					N => flags(2),
					Z => flags(1),
					C => flags(0) );

	reg_d: registro
	Port map (	clk => clk,
					clr => clr,
					sel => rd,
					I => mux_aux,
					Q => d_aux );	

	reg_r: registro
	Port map (	clk => clk,
					clr => clr,
					sel => rr,
					I => R,
					Q => r_aux );
					
	reg_flags: reg_estado
	Port map (	clk => clk,
					clr => clr,
					sel => rd(0),
					I => flags,
					Q => banderas );

	resultado <= d_aux;

end Behavioral;


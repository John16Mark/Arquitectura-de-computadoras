----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:24 02/28/2024 
-- Design Name: 
-- Module Name:    top_instruccion - Behavioral 
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

entity top_instruccion is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           R : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           resultado : out  STD_LOGIC_VECTOR (3 downto 0);
			  operacion: in STD_LOGIC_VECTOR (2 downto 0);
			  banderas: out STD_LOGIC_VECTOR (2 downto 0));
end top_instruccion;

architecture Behavioral of top_instruccion is

-- Componente ruta
component ruta is
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
end component;

-- Componente control
component control is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           sd : out  STD_LOGIC_VECTOR (1 downto 0);
           sr : out  STD_LOGIC_VECTOR (1 downto 0);
           sel : out  STD_LOGIC);
end component;

-- Señales auxiliares
signal rd_aux, rr_aux: std_logic_vector(1 downto 0);
signal s_aux: std_logic;

begin

	cto1: ruta
	Port map (	clk => clk,
					clr => clr,
					rd => rd_aux,
					rr => rr_aux,
					s => s_aux,
					D => D,
					R => R,
					resultado => resultado,
					operacion => operacion,
					banderas => banderas);

	cto2: control
	Port map ( 	clk => clk,
					clr => clr,
					inicio => inicio, 
					sd => rd_aux,
					sr => rr_aux,
					sel => s_aux);
			  
end Behavioral;


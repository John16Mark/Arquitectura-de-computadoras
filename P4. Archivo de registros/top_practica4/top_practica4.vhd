----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:49 04/18/2024 
-- Design Name: 
-- Module Name:    top_practica4 - Behavioral 
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

entity top_practica4 is
    Port (	clk: in STD_LOGIC;
				clr : in STD_LOGIC;
				clr0 : in  STD_LOGIC;
				clr1 : in  STD_LOGIC;
				clr2 : in  STD_LOGIC;
				btn0 : in  STD_LOGIC;
				btn1 : in  STD_LOGIC;
				btn2 : in  STD_LOGIC;
				en_w : in  STD_LOGIC;
				O_r : out  STD_LOGIC_VECTOR (3 downto 0);
				O_d : out  STD_LOGIC_VECTOR (3 downto 0);
				dato_I : in  STD_LOGIC_VECTOR (3 downto 0));
end top_practica4;

architecture Behavioral of top_practica4 is

component clk_divisor is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q_18 : out  STD_LOGIC);
end component;

component cont is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sal : OUT  STD_LOGIC_VECTOR (4 downto 0));
end component;

component e_r is
    Port ( ent : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end component;

component archivo_registro is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           en_w : in  STD_LOGIC;
           dato_I : in  STD_LOGIC_VECTOR (3 downto 0);
           o_r : out  STD_LOGIC_VECTOR (3 downto 0);
           o_d : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

-- Señales auxiliares
signal clk_aux : STD_LOGIC;
signal sal_aux0, sal_aux1, sal_aux2 : STD_LOGIC;
signal sel_w_d_aux, sel_r_d_aux, sel_r_r_aux : STD_LOGIC_VECTOR (4 downto 0);

begin

	clk_div: clk_divisor
	Port Map(	clk => clk,
					clr => clr,
					q_18 => clk_aux);

	e_r0: e_r
	Port map(	ent => btn0,
						clk => clk_aux,
						clr => clr0,
						sal => sal_aux0);

	e_r1: e_r
	Port map(	ent => btn1,
						clk => clk_aux,
						clr => clr1,
						sal => sal_aux1);

	e_r2: e_r
	Port map(	ent => btn2,
						clk => clk_aux,
						clr => clr2,
						sal => sal_aux2);
						
	cont0: cont
   Port Map(	clk => sal_aux0,
					clr => clr0,
					sal => sel_w_d_aux);
					
	cont1: cont
   Port Map(	clk => sal_aux1,
					clr => clr1,
					sal => sel_r_d_aux);
	
	cont2: cont
    Port Map(	clk => sal_aux2,
					clr => clr2,
					sal => sel_r_r_aux);
					
	arch_reg: archivo_registro
   Port Map ( 	clk => clk_aux,
					clr => clr,
					sel_read_d => sel_r_d_aux,
					sel_read_r => sel_r_r_aux,
					sel_w_d => sel_w_d_aux,
					en_w => en_w,
					dato_I => dato_I,
					o_r => O_r,
					o_d => O_d);

end Behavioral;


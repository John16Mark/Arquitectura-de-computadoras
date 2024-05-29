----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:05 04/18/2024 
-- Design Name: 
-- Module Name:    archivo_registro - Behavioral 
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

entity archivo_registro is
	 generic ( N : integer := 8 );
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_write_d : in  STD_LOGIC_VECTOR (4 downto 0);
           en_w : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (N-1 downto 0);
           R : out  STD_LOGIC_VECTOR (N-1 downto 0);
           D : out  STD_LOGIC_VECTOR (N-1 downto 0));
end archivo_registro;

architecture Behavioral of archivo_registro is

component d_5a32 is
    Port ( en_w : in  STD_LOGIC;
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux_32_1 is
	 generic ( N: integer := 8);
    Port ( sel_read : in  STD_LOGIC_VECTOR (4 downto 0);
           I : in  STD_LOGIC_VECTOR ((N*32)-1 downto 0);
           O : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;

component registro is
	 generic ( N : integer := 8);
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;

-- Señales auxiliares
signal en_aux : STD_LOGIC_VECTOR (31 downto 0);
signal q_aux : STD_LOGIC_VECTOR ((N*32)-1 downto 0);
	
begin

	decodificador: d_5a32
	Port Map (	en_w => en_w,
					sel_w_d => sel_write_d,
					O => en_aux);
	
	instanciar_componentes: for i in 0 to 31 generate
		registros : registro
			Port Map (	clk => clk,
							clr => clr,
							en => en_aux(i),
							I => dato,
							Q => q_aux(((i+1)*N)-1 downto i*N));
	end generate instanciar_componentes;

	mux_r: mux_32_1
	Port Map (	sel_read => sel_read_r,
					I => q_aux,
					O => R);

	mux_d: mux_32_1
	Port Map (	sel_read => sel_read_d,
					I => q_aux,
					O => D);

end Behavioral;


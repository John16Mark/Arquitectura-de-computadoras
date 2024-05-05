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
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           en_w : in  STD_LOGIC;
           dato_I : in  STD_LOGIC_VECTOR (3 downto 0);
           o_r : out  STD_LOGIC_VECTOR (3 downto 0);
           o_d : out  STD_LOGIC_VECTOR (3 downto 0));
end archivo_registro;

architecture Behavioral of archivo_registro is

component d_5a32 is
    Port ( en_w : in  STD_LOGIC;
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux_32_1 is
	 generic ( N: integer := 4);
    Port ( sel_read : in  STD_LOGIC_VECTOR (4 downto 0);
           I : in  STD_LOGIC_VECTOR (127 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end component;

component registro is
	 generic ( N: integer := 4);
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;

-- Señales auxiliares
signal o_aux : STD_LOGIC_VECTOR (31 downto 0);
signal q_aux : STD_LOGIC_VECTOR (127 downto 0);
	
begin

	decodificador: d_5a32
	Port Map (	en_w => en_w,
					sel_w_d => sel_w_d,
					O => o_aux);

	reg0: registro Port Map(clk => clk, clr => clr, en => o_aux(0), I => dato_I, Q => q_aux (3 downto 0));
	reg1: registro Port Map(clk => clk, clr => clr, en => o_aux(1), I => dato_I, Q => q_aux (7 downto 4));
	reg2: registro Port Map(clk => clk, clr => clr, en => o_aux(2), I => dato_I, Q => q_aux (11 downto 8));
	reg3: registro Port Map(clk => clk, clr => clr, en => o_aux(3), I => dato_I, Q => q_aux (15 downto 12));
	
	reg4: registro Port Map(clk => clk, clr => clr, en => o_aux(4), I => dato_I, Q => q_aux (19 downto 16));
	reg5: registro Port Map(clk => clk, clr => clr, en => o_aux(5), I => dato_I, Q => q_aux (23 downto 20));
	reg6: registro Port Map(clk => clk, clr => clr, en => o_aux(6), I => dato_I, Q => q_aux (27 downto 24));
	reg7: registro Port Map(clk => clk, clr => clr, en => o_aux(7), I => dato_I, Q => q_aux (31 downto 28));
	
	reg8: registro Port Map(clk => clk, clr => clr, en => o_aux(8), I => dato_I, Q => q_aux (35 downto 32));
	reg9: registro Port Map(clk => clk, clr => clr, en => o_aux(9), I => dato_I, Q => q_aux (39 downto 36));
	reg10: registro Port Map(clk => clk, clr => clr, en => o_aux(10), I => dato_I, Q => q_aux (43 downto 40));
	reg11: registro Port Map(clk => clk, clr => clr, en => o_aux(11), I => dato_I, Q => q_aux (47 downto 44));
	
	reg12: registro Port Map(clk => clk, clr => clr, en => o_aux(12), I => dato_I, Q => q_aux (51 downto 48));
	reg13: registro Port Map(clk => clk, clr => clr, en => o_aux(13), I => dato_I, Q => q_aux (55 downto 52));
	reg14: registro Port Map(clk => clk, clr => clr, en => o_aux(14), I => dato_I, Q => q_aux (59 downto 56));
	reg15: registro Port Map(clk => clk, clr => clr, en => o_aux(15), I => dato_I, Q => q_aux (63 downto 60));
	
	reg16: registro Port Map(clk => clk, clr => clr, en => o_aux(16), I => dato_I, Q => q_aux (67 downto 64));
	reg17: registro Port Map(clk => clk, clr => clr, en => o_aux(17), I => dato_I, Q => q_aux (71 downto 68));
	reg18: registro Port Map(clk => clk, clr => clr, en => o_aux(18), I => dato_I, Q => q_aux (75 downto 72));
	reg19: registro Port Map(clk => clk, clr => clr, en => o_aux(19), I => dato_I, Q => q_aux (79 downto 76));
	
	reg20: registro Port Map(clk => clk, clr => clr, en => o_aux(20), I => dato_I, Q => q_aux (83 downto 80));
	reg21: registro Port Map(clk => clk, clr => clr, en => o_aux(21), I => dato_I, Q => q_aux (87 downto 84));
	reg22: registro Port Map(clk => clk, clr => clr, en => o_aux(22), I => dato_I, Q => q_aux (91 downto 88));
	reg23: registro Port Map(clk => clk, clr => clr, en => o_aux(23), I => dato_I, Q => q_aux (95 downto 92));
	
	reg24: registro Port Map(clk => clk, clr => clr, en => o_aux(24), I => dato_I, Q => q_aux (99 downto 96));
	reg25: registro Port Map(clk => clk, clr => clr, en => o_aux(25), I => dato_I, Q => q_aux (103 downto 100));
	reg26: registro Port Map(clk => clk, clr => clr, en => o_aux(26), I => dato_I, Q => q_aux (107 downto 104));
	reg27: registro Port Map(clk => clk, clr => clr, en => o_aux(27), I => dato_I, Q => q_aux (111 downto 108));
	
	reg28: registro Port Map(clk => clk, clr => clr, en => o_aux(28), I => dato_I, Q => q_aux (115 downto 112));
	reg29: registro Port Map(clk => clk, clr => clr, en => o_aux(29), I => dato_I, Q => q_aux (119 downto 116));
	reg30: registro Port Map(clk => clk, clr => clr, en => o_aux(30), I => dato_I, Q => q_aux (123 downto 120));
	reg31: registro Port Map(clk => clk, clr => clr, en => o_aux(31), I => dato_I, Q => q_aux (127 downto 124));

	mux_r: mux_32_1
	Port Map (	sel_read => sel_read_r,
					I => q_aux,
					O => o_r);

	mux_d: mux_32_1
	Port Map (	sel_read => sel_read_d,
					I => q_aux,
					O => o_d);

end Behavioral;


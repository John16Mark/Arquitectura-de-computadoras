--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_instruccion_map.vhd
-- /___/   /\     Timestamp: Tue Mar 19 23:00:55 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf top_instruccion.pcf -rpw 100 -tpw 0 -ar Structure -tm top_instruccion -w -dir netgen/map -ofmt vhdl -sim top_instruccion_map.ncd top_instruccion_map.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: top_instruccion_map.ncd
-- Output file	: C:\Documents and Settings\Juan Molina\Mis documentos\Arquitectura\Practica1\top_instruccion\netgen\map\top_instruccion_map.vhd
-- # of Entities	: 1
-- Design Name	: top_instruccion
-- Xilinx	: E:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top_instruccion is
  port (
    clk : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    inicio : in STD_LOGIC := 'X'; 
    R : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    operacion : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    suma : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    banderas : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end top_instruccion;

architecture Structure of top_instruccion is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal D_1_IBUF_0 : STD_LOGIC; 
  signal operacion_1_IBUF_0 : STD_LOGIC; 
  signal operacion_0_IBUF_0 : STD_LOGIC; 
  signal operacion_2_IBUF_0 : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd1_335 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd2_342 : STD_LOGIC; 
  signal D_2_IBUF_0 : STD_LOGIC; 
  signal cto1_reg_flags_sel_inv : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal cto1_Mmux_suma_aux42 : STD_LOGIC; 
  signal inicio_IBUF_0 : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd3_357 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal D_0_IBUF_0 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal D_3_IBUF_0 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal R_1_IBUF_0 : STD_LOGIC; 
  signal R_2_IBUF_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal R_0_IBUF_0 : STD_LOGIC; 
  signal R_3_IBUF_0 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal inicio_IBUF_3 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_6 : STD_LOGIC; 
  signal clr_IBUF_9 : STD_LOGIC; 
  signal D_0_IBUF_12 : STD_LOGIC; 
  signal D_1_IBUF_15 : STD_LOGIC; 
  signal D_2_IBUF_18 : STD_LOGIC; 
  signal D_3_IBUF_23 : STD_LOGIC; 
  signal operacion_0_IBUF_28 : STD_LOGIC; 
  signal operacion_1_IBUF_33 : STD_LOGIC; 
  signal R_0_IBUF_36 : STD_LOGIC; 
  signal operacion_2_IBUF_39 : STD_LOGIC; 
  signal R_1_IBUF_42 : STD_LOGIC; 
  signal R_2_IBUF_45 : STD_LOGIC; 
  signal R_3_IBUF_48 : STD_LOGIC; 
  signal cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_3_Q : STD_LOGIC; 
  signal N41_pack_7 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_3_Q : STD_LOGIC; 
  signal cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal cto1_reg_r_q_aux_0_pack_8 : STD_LOGIC; 
  signal cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal cto1_reg_r_q_aux_1_pack_6 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N11_pack_4 : STD_LOGIC; 
  signal N29_pack_5 : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd1_In : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd2_In : STD_LOGIC; 
  signal cto2_edo_pres_FSM_FFd3_In : STD_LOGIC; 
  signal cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal cto1_reg_d_q_aux : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cto1_reg_r_q_aux : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cto1_Mmux_suma_aux1_rs_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal cto1_reg_flags_q_aux : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal cto1_Mmux_suma_aux1_rs_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal cto1_Mmux_suma_aux4_split : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal cto1_flags : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => clk_BUFGP
    );
  inicio_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      O => inicio_IBUF_3,
      I => inicio
    );
  ProtoComp24_IMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => inicio_IBUF_3,
      O => inicio_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_6,
      I => clk
    );
  ProtoComp24_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_6,
      O => clk_BUFGP_IBUFG_0
    );
  clr_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_9,
      I => clr
    );
  ProtoComp24_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => clr_IBUF_9,
      O => clr_IBUF_0
    );
  D_0_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      O => D_0_IBUF_12,
      I => D(0)
    );
  ProtoComp24_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      I => D_0_IBUF_12,
      O => D_0_IBUF_0
    );
  D_1_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => D_1_IBUF_15,
      I => D(1)
    );
  ProtoComp24_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => D_1_IBUF_15,
      O => D_1_IBUF_0
    );
  D_2_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      O => D_2_IBUF_18,
      I => D(2)
    );
  ProtoComp24_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      I => D_2_IBUF_18,
      O => D_2_IBUF_0
    );
  banderas_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => cto1_reg_flags_q_aux(0),
      O => banderas(0)
    );
  D_3_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => D_3_IBUF_23,
      I => D(3)
    );
  ProtoComp24_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => D_3_IBUF_23,
      O => D_3_IBUF_0
    );
  banderas_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => cto1_reg_flags_q_aux(1),
      O => banderas(1)
    );
  operacion_0_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => operacion_0_IBUF_28,
      I => operacion(0)
    );
  ProtoComp24_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => operacion_0_IBUF_28,
      O => operacion_0_IBUF_0
    );
  banderas_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => cto1_reg_flags_q_aux(2),
      O => banderas(2)
    );
  operacion_1_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => operacion_1_IBUF_33,
      I => operacion(1)
    );
  ProtoComp24_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => operacion_1_IBUF_33,
      O => operacion_1_IBUF_0
    );
  R_0_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => R_0_IBUF_36,
      I => R(0)
    );
  ProtoComp24_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => R_0_IBUF_36,
      O => R_0_IBUF_0
    );
  operacion_2_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      O => operacion_2_IBUF_39,
      I => operacion(2)
    );
  ProtoComp24_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      I => operacion_2_IBUF_39,
      O => operacion_2_IBUF_0
    );
  R_1_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => R_1_IBUF_42,
      I => R(1)
    );
  ProtoComp24_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => R_1_IBUF_42,
      O => R_1_IBUF_0
    );
  R_2_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => R_2_IBUF_45,
      I => R(2)
    );
  ProtoComp24_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => R_2_IBUF_45,
      O => R_2_IBUF_0
    );
  R_3_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      O => R_3_IBUF_48,
      I => R(3)
    );
  ProtoComp24_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      I => R_3_IBUF_48,
      O => R_3_IBUF_0
    );
  suma_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => cto1_reg_d_q_aux(0),
      O => suma(0)
    );
  suma_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => cto1_reg_d_q_aux(1),
      O => suma(1)
    );
  suma_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => cto1_reg_d_q_aux(2),
      O => suma(2)
    );
  suma_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => cto1_reg_d_q_aux(3),
      O => suma(3)
    );
  cto1_Mmux_suma_aux44_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FCF5F0F5F0F5FCF5"
    )
    port map (
      ADR0 => D_3_IBUF_0,
      ADR1 => operacion_2_IBUF_0,
      ADR2 => cto2_edo_pres_FSM_FFd2_342,
      ADR3 => cto2_edo_pres_FSM_FFd1_335,
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => cto1_reg_d_q_aux(3),
      O => N19
    );
  cto1_Mmux_suma_aux44_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FFF5F3F5F3F5FFF5"
    )
    port map (
      ADR0 => D_3_IBUF_0,
      ADR1 => operacion_2_IBUF_0,
      ADR2 => cto2_edo_pres_FSM_FFd2_342,
      ADR3 => cto2_edo_pres_FSM_FFd1_335,
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => cto1_reg_d_q_aux(3),
      O => N20
    );
  cto1_reg_d_q_aux_2_cto1_reg_d_q_aux_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N41_pack_7,
      O => N41
    );
  cto1_reg_d_mux611 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y3"
    )
    port map (
      IA => N44,
      IB => N45,
      O => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_2_Q,
      SEL => N22
    );
  cto1_reg_d_mux611_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFCCFCC33300300"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto2_edo_pres_FSM_FFd2_342,
      ADR2 => cto2_edo_pres_FSM_FFd1_335,
      ADR3 => D_2_IBUF_0,
      ADR4 => N39,
      ADR5 => cto1_reg_d_q_aux(3),
      O => N44
    );
  cto1_reg_d_q_aux_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_2_Q,
      O => cto1_reg_d_q_aux(2),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_d_mux611_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFCCFCC33300300"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto2_edo_pres_FSM_FFd2_342,
      ADR2 => cto2_edo_pres_FSM_FFd1_335,
      ADR3 => D_2_IBUF_0,
      ADR4 => N41,
      ADR5 => cto1_reg_d_q_aux(3),
      O => N45
    );
  cto1_Mmux_suma_aux43_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0FF8F8030FF8F803"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => cto1_reg_d_q_aux(2),
      ADR5 => '1',
      O => N39
    );
  cto1_Mmux_suma_aux43_SW1_G : X_LUT5
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0CFBFB00"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => cto1_reg_d_q_aux(2),
      O => N41_pack_7
    );
  cto1_reg_d_q_aux_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_3_Q,
      O => cto1_reg_d_q_aux(3),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_d_mux711 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0027D8FF00728DFF"
    )
    port map (
      ADR0 => operacion_1_IBUF_0,
      ADR1 => N2,
      ADR2 => cto1_Mmux_suma_aux1_rs_lut(3),
      ADR3 => N20,
      ADR4 => N19,
      ADR5 => N11,
      O => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_3_Q
    );
  cto1_reg_r_q_aux_3_cto1_reg_r_q_aux_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cto1_reg_r_q_aux_0_pack_8,
      O => cto1_reg_r_q_aux(0)
    );
  cto1_reg_r_q_aux_3_cto1_reg_r_q_aux_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => cto1_reg_r_q_aux_1_pack_6,
      O => cto1_reg_r_q_aux(1)
    );
  cto1_Mmux_suma_aux43_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"CC0CCFFF0333FF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => operacion_0_IBUF_0,
      ADR2 => cto1_reg_r_q_aux(0),
      ADR3 => cto1_reg_d_q_aux(0),
      ADR4 => cto1_reg_r_q_aux(1),
      ADR5 => cto1_reg_d_q_aux(1),
      O => N22
    );
  cto1_Mmux_suma_aux43 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0CFBFB000FF8F803"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => cto1_reg_d_q_aux(2),
      ADR5 => N22,
      O => cto1_Mmux_suma_aux4_split(2)
    );
  cto1_reg_r_q_aux_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => cto2_edo_pres_FSM_FFd3_357,
      CLK => clk_BUFGP,
      I => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_3_Q,
      O => cto1_reg_r_q_aux(3),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_r_mux711 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cto2_edo_pres_FSM_FFd3_357,
      ADR4 => R_3_IBUF_0,
      ADR5 => '1',
      O => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_3_Q
    );
  cto1_reg_r_mux411 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => R_0_IBUF_0,
      ADR2 => cto1_reg_r_q_aux(1),
      ADR3 => cto2_edo_pres_FSM_FFd3_357,
      ADR4 => '1',
      O => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_0_Q
    );
  cto1_reg_r_q_aux_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => cto2_edo_pres_FSM_FFd3_357,
      CLK => clk_BUFGP,
      I => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_0_Q,
      O => cto1_reg_r_q_aux_0_pack_8,
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_r_q_aux_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => cto2_edo_pres_FSM_FFd3_357,
      CLK => clk_BUFGP,
      I => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_2_Q,
      O => cto1_reg_r_q_aux(2),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_r_mux611 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"F3F3C0C0F3F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto2_edo_pres_FSM_FFd3_357,
      ADR2 => R_2_IBUF_0,
      ADR3 => '1',
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => '1',
      O => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_2_Q
    );
  cto1_reg_r_mux511 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"BB88BB88"
    )
    port map (
      ADR0 => R_1_IBUF_0,
      ADR1 => cto2_edo_pres_FSM_FFd3_357,
      ADR2 => '1',
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => '1',
      O => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_1_Q
    );
  cto1_reg_r_q_aux_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      CE => cto2_edo_pres_FSM_FFd3_357,
      CLK => clk_BUFGP,
      I => cto1_reg_r_sel_1_q_aux_3_wide_mux_0_OUT_1_Q,
      O => cto1_reg_r_q_aux_1_pack_6,
      RST => clr_IBUF_0,
      SET => GND
    );
  N2_N2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  cto1_Mmux_suma_aux44_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFFFFF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => operacion_0_IBUF_0,
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => cto1_reg_d_q_aux(3),
      O => N2
    );
  cto1_Mmux_suma_aux44_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"CCCF13101310FCFF"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_2_IBUF_0,
      ADR2 => operacion_1_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => cto1_reg_d_q_aux(3),
      O => N28
    );
  cto1_Mmux_suma_aux1_rs_lut_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => operacion_0_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_reg_d_q_aux(3),
      ADR5 => '1',
      O => cto1_Mmux_suma_aux1_rs_lut(3)
    );
  cto1_Mmux_suma_aux44_SW4 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"32EDED10"
    )
    port map (
      ADR0 => operacion_1_IBUF_0,
      ADR1 => operacion_2_IBUF_0,
      ADR2 => operacion_0_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_reg_d_q_aux(3),
      O => N17
    );
  N14_N14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  cto1_Mmux_suma_aux422_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => N36,
      IB => N37,
      O => N14,
      SEL => cto1_reg_r_q_aux(1)
    );
  cto1_Mmux_suma_aux422_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"03005555FFF05555"
    )
    port map (
      ADR0 => D_1_IBUF_0,
      ADR1 => operacion_0_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => operacion_1_IBUF_0,
      ADR4 => cto2_edo_pres_FSM_FFd1_335,
      ADR5 => cto1_reg_d_q_aux(1),
      O => N36
    );
  cto1_Mmux_suma_aux422_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"FF00555500305555"
    )
    port map (
      ADR0 => D_1_IBUF_0,
      ADR1 => operacion_0_IBUF_0,
      ADR2 => operacion_1_IBUF_0,
      ADR3 => operacion_2_IBUF_0,
      ADR4 => cto2_edo_pres_FSM_FFd1_335,
      ADR5 => cto1_reg_d_q_aux(1),
      O => N37
    );
  cto1_reg_flags_q_aux_2_cto1_reg_flags_q_aux_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N29_pack_5,
      O => N29
    );
  cto1_reg_flags_q_aux_2_cto1_reg_flags_q_aux_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N11_pack_4,
      O => N11
    );
  cto1_Mmux_suma_aux44_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"F10606FDF10606FD"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_reg_d_q_aux(3),
      ADR5 => '1',
      O => N27
    );
  cto1_Mmux_suma_aux44_SW9 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"F20505FE"
    )
    port map (
      ADR0 => operacion_0_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_2_IBUF_0,
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_reg_d_q_aux(3),
      O => N29_pack_5
    );
  cto1_reg_flags_q_aux_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_Mmux_suma_aux4_split(3),
      O => cto1_reg_flags_q_aux(2),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_Mmux_suma_aux44 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0C3F00CC0C3F33FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto1_reg_d_q_aux(2),
      ADR2 => N29,
      ADR3 => N28,
      ADR4 => cto1_Mmux_suma_aux1_rs_cy(1),
      ADR5 => N27,
      O => cto1_Mmux_suma_aux4_split(3)
    );
  cto1_Mmux_suma_aux1_rs_lut_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"F00F0FF0F00F0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cto1_reg_d_q_aux(2),
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => operacion_0_IBUF_0,
      ADR5 => '1',
      O => cto1_Mmux_suma_aux1_rs_lut(2)
    );
  cto1_Mmux_suma_aux44_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"3F03033F"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto1_Mmux_suma_aux1_rs_cy(1),
      ADR2 => cto1_reg_d_q_aux(2),
      ADR3 => cto1_reg_r_q_aux(2),
      ADR4 => operacion_0_IBUF_0,
      O => N11_pack_4
    );
  cto1_reg_flags_q_aux_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_flags(1),
      O => cto1_reg_flags_q_aux(1),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_flags_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0000000500000011"
    )
    port map (
      ADR0 => cto1_Mmux_suma_aux4_split(0),
      ADR1 => N16,
      ADR2 => N17_0,
      ADR3 => cto1_Mmux_suma_aux4_split(1),
      ADR4 => cto1_Mmux_suma_aux4_split(2),
      ADR5 => N11,
      O => cto1_flags(1)
    );
  cto1_reg_flags_sel_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => cto2_edo_pres_FSM_FFd2_342,
      O => cto1_reg_flags_sel_inv
    );
  cto2_edo_pres_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => cto2_edo_pres_FSM_FFd3_In,
      O => cto2_edo_pres_FSM_FFd3_357,
      SET => clr_IBUF_0,
      RST => GND
    );
  cto2_edo_pres_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cto2_edo_pres_FSM_FFd3_357,
      ADR4 => '1',
      ADR5 => inicio_IBUF_0,
      O => cto2_edo_pres_FSM_FFd3_In
    );
  cto2_edo_pres_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => cto2_edo_pres_FSM_FFd2_In,
      O => cto2_edo_pres_FSM_FFd2_342,
      RST => clr_IBUF_0,
      SET => GND
    );
  cto2_edo_pres_FSM_FFd2_In1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => cto2_edo_pres_FSM_FFd3_357,
      O => cto2_edo_pres_FSM_FFd2_In
    );
  cto2_edo_pres_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => cto2_edo_pres_FSM_FFd1_In,
      O => cto2_edo_pres_FSM_FFd1_335,
      RST => clr_IBUF_0,
      SET => GND
    );
  cto2_edo_pres_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => inicio_IBUF_0,
      ADR5 => cto2_edo_pres_FSM_FFd3_357,
      O => cto2_edo_pres_FSM_FFd1_In
    );
  cto1_reg_d_q_aux_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_1_Q,
      O => cto1_reg_d_q_aux(1),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_d_mux511 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"C0C0C0F3F3C0F3F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto2_edo_pres_FSM_FFd2_342,
      ADR2 => cto1_reg_d_q_aux(2),
      ADR3 => cto1_Mmux_suma_aux42,
      ADR4 => N13_0,
      ADR5 => N14_0,
      O => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_1_Q
    );
  cto1_reg_d_q_aux_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_0_Q,
      O => cto1_reg_d_q_aux(0),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_reg_d_mux411 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"FFFCCFCC33300300"
    )
    port map (
      ADR0 => '1',
      ADR1 => cto2_edo_pres_FSM_FFd2_342,
      ADR2 => cto2_edo_pres_FSM_FFd1_335,
      ADR3 => D_0_IBUF_0,
      ADR4 => cto1_Mmux_suma_aux4_split(0),
      ADR5 => cto1_reg_d_q_aux(1),
      O => cto1_reg_d_sel_1_q_aux_3_wide_mux_0_OUT_0_Q
    );
  cto1_Mmux_suma_aux411 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"00F0FFCFFFCF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => operacion_0_IBUF_0,
      ADR2 => operacion_1_IBUF_0,
      ADR3 => operacion_2_IBUF_0,
      ADR4 => cto1_reg_r_q_aux(0),
      ADR5 => cto1_reg_d_q_aux(0),
      O => cto1_Mmux_suma_aux4_split(0)
    );
  cto1_Mmux_suma_aux451 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y2"
    )
    port map (
      IA => N42,
      IB => N43,
      O => cto1_Mmux_suma_aux4_split(4),
      SEL => cto1_Mmux_suma_aux1_rs_lut(2)
    );
  cto1_Mmux_suma_aux451_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0100110111101000"
    )
    port map (
      ADR0 => operacion_2_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => cto1_reg_d_q_aux(3),
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_reg_d_q_aux(2),
      ADR5 => operacion_0_IBUF_0,
      O => N42
    );
  cto1_reg_flags_q_aux_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => cto1_reg_flags_sel_inv,
      CLK => clk_BUFGP,
      I => cto1_Mmux_suma_aux4_split(4),
      O => cto1_reg_flags_q_aux(0),
      RST => clr_IBUF_0,
      SET => GND
    );
  cto1_Mmux_suma_aux451_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0100110111101000"
    )
    port map (
      ADR0 => operacion_2_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => cto1_reg_d_q_aux(3),
      ADR3 => cto1_reg_r_q_aux(3),
      ADR4 => cto1_Mmux_suma_aux1_rs_cy(1),
      ADR5 => operacion_0_IBUF_0,
      O => N43
    );
  cto1_Mmux_suma_aux1_rs_cy_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FF3FFCCC3000CC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => operacion_0_IBUF_0,
      ADR2 => cto1_reg_r_q_aux(0),
      ADR3 => cto1_reg_d_q_aux(0),
      ADR4 => cto1_reg_r_q_aux(1),
      ADR5 => cto1_reg_d_q_aux(1),
      O => cto1_Mmux_suma_aux1_rs_cy(1)
    );
  cto1_Mmux_suma_aux44_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00CFFFF0FFF00003"
    )
    port map (
      ADR0 => '1',
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_0_IBUF_0,
      ADR3 => operacion_2_IBUF_0,
      ADR4 => cto1_reg_r_q_aux(3),
      ADR5 => cto1_reg_d_q_aux(3),
      O => N16
    );
  cto1_Mmux_suma_aux422 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"5F5BF1B14E4AE0A0"
    )
    port map (
      ADR0 => operacion_2_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => cto1_reg_d_q_aux(1),
      ADR3 => operacion_0_IBUF_0,
      ADR4 => cto1_reg_r_q_aux(1),
      ADR5 => cto1_Mmux_suma_aux42,
      O => cto1_Mmux_suma_aux4_split(1)
    );
  cto1_Mmux_suma_aux421 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"30C0CF3FCF3F30C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => operacion_0_IBUF_0,
      ADR2 => cto1_reg_r_q_aux(0),
      ADR3 => cto1_reg_d_q_aux(0),
      ADR4 => cto1_reg_r_q_aux(1),
      ADR5 => cto1_reg_d_q_aux(1),
      O => cto1_Mmux_suma_aux42
    );
  N13_N13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  cto1_Mmux_suma_aux422_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y3"
    )
    port map (
      IA => N34,
      IB => N35,
      O => N13,
      SEL => cto1_reg_r_q_aux(1)
    );
  cto1_Mmux_suma_aux422_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"003F5555FFFF5555"
    )
    port map (
      ADR0 => D_1_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_0_IBUF_0,
      ADR3 => operacion_2_IBUF_0,
      ADR4 => cto2_edo_pres_FSM_FFd1_335,
      ADR5 => cto1_reg_d_q_aux(1),
      O => N34
    );
  cto1_Mmux_suma_aux422_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FF335555003F5555"
    )
    port map (
      ADR0 => D_1_IBUF_0,
      ADR1 => operacion_1_IBUF_0,
      ADR2 => operacion_0_IBUF_0,
      ADR3 => operacion_2_IBUF_0,
      ADR4 => cto2_edo_pres_FSM_FFd1_335,
      ADR5 => cto1_reg_d_q_aux(1),
      O => N35
    );
  NlwBlock_top_instruccion_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_top_instruccion_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;



# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name top_instruccion -dir "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica1/top_instruccion/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "top_instruccion.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../reg_estado/reg_estado.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../registro/registro.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../ruta/ruta.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../control/control.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {top_instruccion.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top top_instruccion $srcset
add_files [list {top_instruccion.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3

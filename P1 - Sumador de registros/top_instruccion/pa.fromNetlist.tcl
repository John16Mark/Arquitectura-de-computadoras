
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name top_instruccion -dir "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica1/top_instruccion/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica1/top_instruccion/top_instruccion.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica1/top_instruccion} }
set_property target_constrs_file "top_instruccion.ucf" [current_fileset -constrset]
add_files [list {top_instruccion.ucf}] -fileset [get_property constrset [current_run]]
link_design

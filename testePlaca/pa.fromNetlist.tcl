
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name a -dir "C:/Users/franc/Documents/neander/a/planAhead_run_4" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/franc/Documents/neander/a/n.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/franc/Documents/neander/a} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "n.ucf" [current_fileset -constrset]
add_files [list {n.ucf}] -fileset [get_property constrset [current_run]]
link_design

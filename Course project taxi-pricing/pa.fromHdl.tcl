
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Big_homework -dir "D:/FPGA/IEEE/Big_homework/planAhead_run_2" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "taxi.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {taxi.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top taxi $srcset
add_files [list {taxi.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5

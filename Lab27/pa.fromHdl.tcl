
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Lab27 -dir "D:/FPGA/IEEE/Lab27/planAhead_run_1" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "stopwatch.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {stopwatch.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top stopwatch $srcset
add_files [list {stopwatch.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5

open_project -project {E:\Verilog_1st_year\I2C\designer\I2C\I2C_fp\I2C.pro}
enable_device -name {M2S050} -enable 1
set_programming_file -name {M2S050} -file {E:\Verilog_1st_year\I2C\designer\I2C\I2C.ppd}
set_programming_action -action {PROGRAM} -name {M2S050} 
run_selected_actions
save_project
close_project

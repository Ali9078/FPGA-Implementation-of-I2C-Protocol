new_project \
         -name {I2C} \
         -location {E:\Verilog_1st_year\I2C\designer\I2C\I2C_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S050} \
         -name {M2S050}
enable_device \
         -name {M2S050} \
         -enable {TRUE}
save_project
close_project

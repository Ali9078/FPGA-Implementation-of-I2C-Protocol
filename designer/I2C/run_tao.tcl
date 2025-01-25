set_device -family {SmartFusion2} -die {M2S050} -speed {STD}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\work\I2C_sb\CCC_0\I2C_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\work\I2C_sb\FABOSC_0\I2C_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\work\I2C_sb_MSS\I2C_sb_MSS.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\work\I2C_sb\I2C_sb.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\hdl\i2c_master.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\hdl\i2c_top.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\I2C\component\work\I2C\I2C.v}
set_top_level {I2C}
map_netlist
check_constraints {E:\Verilog_1st_year\I2C\constraint\synthesis_sdc_errors.log}
write_fdc {E:\Verilog_1st_year\I2C\designer\I2C\synthesis.fdc}

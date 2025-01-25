# Written by Synplify Pro version map202209actsp2, Build 145R. Synopsys Run ID: sid1731250662 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {I2C_sb_CCC_0_FCCC|GL0_net_inferred_clock} [get_pins {I2C_sb_0/CCC_0/CCC_INST/GL0}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {i2c_master|i2c_clk_inferred_clock} [get_pins {i2c_top_0/uut/i2c_clk/Q}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list I2C_sb_CCC_0_FCCC|GL0_net_inferred_clock]
set Inferred_clkgroup_1 [list i2c_master|i2c_clk_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {I2C_sb_CCC_0_FCCC|GL0_net_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {i2c_master|i2c_clk_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {I2C_sb_FABOSC_0_OSC|RCOSC_25_50MHZ_CCC_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 


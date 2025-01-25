set_component I2C_sb_FABOSC_0_OSC
# Microsemi Corp.
# Date: 2024-Nov-04 20:38:34
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports {KEY*}]
set_property PACKAGE_PIN M13 [get_ports {KEY1}]
set_property PACKAGE_PIN K14 [get_ports {KEY2}]
set_property PACKAGE_PIN K13 [get_ports {KEY3}]

set_property IOSTANDARD LVCMOS33 [get_ports {LED*}]
set_property PACKAGE_PIN F19 [get_ports {LED1}]

#时钟约束50MHz
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS18 } [get_ports {sys_clk_p}]; 
create_clock -add -name sys_clk_pin -period 5.00 -waveform {0 2.5} [get_ports {sys_clk_p}];

#差分时钟输入
set_property PACKAGE_PIN E19 [get_ports sys_clk_p]
set_property IOSTANDARD LVDS [get_ports sys_clk_p]
set_property PACKAGE_PIN E18 [get_ports sys_clk_n]
set_property IOSTANDARD LVDS [get_ports sys_clk_n]

# 复位引脚
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst]
set_property PACKAGE_PIN AV40 [get_ports sys_rst]

# 程序执行完毕指示引脚，LED0
set_property IOSTANDARD LVCMOS18 [get_ports over]
set_property PACKAGE_PIN AM39 [get_ports over]

# 程序执行成功指示引脚，LED1
set_property IOSTANDARD LVCMOS18 [get_ports succ]
set_property PACKAGE_PIN AN39 [get_ports succ]

# CPU停住指示引脚，LED2
set_property IOSTANDARD LVCMOS18 [get_ports halted_ind]
set_property PACKAGE_PIN AR37 [get_ports halted_ind]

# 串口下载使能引脚，DIP-SW0
set_property IOSTANDARD LVCMOS18 [get_ports uart_debug_pin]
set_property PACKAGE_PIN AV30 [get_ports uart_debug_pin]

# 串口发送引脚
set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_pin]
set_property PACKAGE_PIN AU36 [get_ports uart_tx_pin]

# 串口接收引脚
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_pin]
set_property PACKAGE_PIN AU33 [get_ports uart_rx_pin]

# GPIO0引脚
set_property IOSTANDARD LVCMOS18 [get_ports {gpio[0]}]
set_property PACKAGE_PIN AM22 [get_ports {gpio[0]}]

# GPIO1引脚
set_property IOSTANDARD LVCMOS18 [get_ports {gpio[1]}]
set_property PACKAGE_PIN AL22 [get_ports {gpio[1]}]

# LED7
set_property IOSTANDARD LVCMOS18 [get_ports {led_out}]
set_property PACKAGE_PIN AU39 [get_ports {led_out}]

# LED6
set_property IOSTANDARD LVCMOS18 [get_ports {uart_debug_tst}]
set_property PACKAGE_PIN AP42 [get_ports {uart_debug_tst}]

# JTAG TCK引脚 DIP_SW3
set_property IOSTANDARD LVCMOS18 [get_ports jtag_TCK]
set_property PACKAGE_PIN AR40 [get_ports jtag_TCK]

create_clock -name jtag_clk_pin -period 300 [get_ports {jtag_TCK}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets jtag_TCK]

# JTAG TMS引脚 DIP_SW4
set_property IOSTANDARD LVCMOS18 [get_ports jtag_TMS]
set_property PACKAGE_PIN AU38 [get_ports jtag_TMS]

# JTAG TDI引脚 DIP_SW5
set_property IOSTANDARD LVCMOS18 [get_ports jtag_TDI]
set_property PACKAGE_PIN AP40 [get_ports jtag_TDI]

# JTAG TDO引脚 USER_SMA_GPIO_P
set_property IOSTANDARD LVCMOS18 [get_ports jtag_TDO]
set_property PACKAGE_PIN AK22 [get_ports jtag_TDO]

# SPI MISO引脚,DIP_SW1
set_property IOSTANDARD LVCMOS18 [get_ports spi_miso]
set_property PACKAGE_PIN AW40 [get_ports spi_miso]

# SPI MOSI引脚,LED5
set_property IOSTANDARD LVCMOS18 [get_ports spi_mosi]
set_property PACKAGE_PIN AL20 [get_ports spi_mosi]

# SPI SS引脚
set_property IOSTANDARD LVCMOS18 [get_ports spi_ss]
set_property PACKAGE_PIN AK20 [get_ports spi_ss]

# SPI CLK引脚,USER_SMA_GPIO_N
set_property IOSTANDARD LVCMOS18 [get_ports spi_clk]
set_property PACKAGE_PIN AK23 [get_ports spi_clk]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]  
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown  [current_design]
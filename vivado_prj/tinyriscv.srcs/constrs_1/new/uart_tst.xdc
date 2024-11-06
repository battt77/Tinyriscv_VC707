#时钟约束50MHz
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS18 } [get_ports {sys_clk_p}]; 
create_clock -add -name sys_clk_pin -period 5.00 -waveform {0 2.5} [get_ports {sys_clk_p}];


#差分时钟输入
set_property PACKAGE_PIN E19 [get_ports sys_clk_p]
set_property IOSTANDARD LVDS [get_ports sys_clk_p]
set_property PACKAGE_PIN E18 [get_ports sys_clk_n]
set_property IOSTANDARD LVDS [get_ports sys_clk_n]

# 复位引脚
set_property IOSTANDARD LVCMOS18 [get_ports rst]
set_property PACKAGE_PIN AV40 [get_ports rst]

# LED7
set_property IOSTANDARD LVCMOS18 [get_ports {led_out}]
set_property PACKAGE_PIN AU39 [get_ports {led_out}]

# 串口发送引脚
set_property IOSTANDARD LVCMOS18 [get_ports uart_txd]
set_property PACKAGE_PIN AU36 [get_ports uart_txd]

# 串口接收引脚
set_property IOSTANDARD LVCMOS18 [get_ports uart_rxd]
set_property PACKAGE_PIN AU33 [get_ports uart_rxd]

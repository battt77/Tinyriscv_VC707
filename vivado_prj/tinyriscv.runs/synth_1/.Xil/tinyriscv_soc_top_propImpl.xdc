set_property SRC_FILE_INFO {cfile:g:/tinyriscv/vivado_prj/tinyriscv.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../tinyriscv.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_high_to_low/inst} [current_design]
set_property SRC_FILE_INFO {cfile:G:/tinyriscv/vivado_prj/tinyriscv.srcs/constrs_1/imports/constrs/tinyriscv.xdc rfile:../../../tinyriscv.srcs/constrs_1/imports/constrs/tinyriscv.xdc id:2} [current_design]
current_instance clk_high_to_low/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.050
current_instance
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS18 } [get_ports {sys_clk_p}];
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E19 [get_ports sys_clk_p]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E18 [get_ports sys_clk_n]
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV40 [get_ports sys_rst]
set_property src_info {type:XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM39 [get_ports over]
set_property src_info {type:XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AN39 [get_ports succ]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AR37 [get_ports halted_ind]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV30 [get_ports uart_debug_pin]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU36 [get_ports uart_tx_pin]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU33 [get_ports uart_rx_pin]
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM22 [get_ports {gpio[0]}]
set_property src_info {type:XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AL22 [get_ports {gpio[1]}]
set_property src_info {type:XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU39 [get_ports {led_out}]
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AP42 [get_ports {uart_debug_tst}]
set_property src_info {type:XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AR40 [get_ports jtag_TCK]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU38 [get_ports jtag_TMS]
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AP40 [get_ports jtag_TDI]
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK22 [get_ports jtag_TDO]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AW40 [get_ports spi_miso]
set_property src_info {type:XDC file:2 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AL20 [get_ports spi_mosi]
set_property src_info {type:XDC file:2 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK20 [get_ports spi_ss]
set_property src_info {type:XDC file:2 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK23 [get_ports spi_clk]

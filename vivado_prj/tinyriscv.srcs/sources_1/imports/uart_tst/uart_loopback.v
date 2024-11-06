//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�http://www.openedv.com/forum.php
//�Ա����̣�https://zhengdianyuanzi.tmall.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2023-2033
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           uart_loopback
// Created by:          ����ԭ��
// Created date:        2023��2��16��14:20:02
// Version:             V1.0
// Descriptions:        ���ڻػ�ʵ��
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module uart_loopback(
    input wire sys_clk_p,
    input wire sys_clk_n,
    // input            sys_clk  ,   //�ⲿ50MHzʱ��
    input            rst,   //ϵ�ⲿ��λ�źţ�����Ч
    
    output reg  led_out,

    //UART�˿�    
    input            uart_rxd ,   //UART���ն˿�
    output           uart_txd     //UART���Ͷ˿�
    );

wire sys_rst_n; 
assign sys_rst_n = ~rst;
//parameter define
parameter CLK_FREQ = 50000000;    //����ϵͳʱ��Ƶ��
parameter UART_BPS = 115200  ;    //���崮�ڲ�����

    //����źźϲ�
wire sys_clk_ibufg;
IBUFGDS #
(
    .DIFF_TERM("FALSE"),
    .IBUF_LOW_PWR("FALSE")
)u_ibufg_sys_clk(
    .I  (sys_clk_p),
    .IB (sys_clk_n),
    .O  (sys_clk_ibufg)
);
wire sys_clk;
//200MZHz -> 50MHz
clk_wiz_0 clk_high_to_low
(
// Clock out ports
    .clk_out1(sys_clk), // output clk_out1&nbsp;&nbsp;5MHZ&nbsp;&nbsp;
    // Status and control signals
    .reset(rst), // input reset
    .locked(), // output locked
    // Clock in ports
    .clk_in1(sys_clk_ibufg)
    );

    reg [ 26: 0] count;
    always@(posedge sys_clk or posedge rst)begin
        if(rst)begin
            count <= 0;
            led_out <= 1'b1;
        end
        else begin
            if( count == 26'd2499999)begin
                count <= 0;
                led_out <= ~led_out;
            end
            else begin
                count <= count+ 1;
            end
        end
    end


//wire define
wire         uart_rx_done;    //UART��������ź�
wire  [7:0]  uart_rx_data;    //UART��������

//*****************************************************
//**                    main code
//*****************************************************

//���ڽ���ģ��
uart_rx #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BPS  (UART_BPS)
    )    
    u_uart_rx(
    .clk           (sys_clk     ),
    .rst_n         (sys_rst_n   ),
    .uart_rxd      (uart_rxd    ),
    .uart_rx_done  (uart_rx_done),
    .uart_rx_data  (uart_rx_data)
    );

//���ڷ���ģ��
uart_tx #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BPS  (UART_BPS)
    )    
    u_uart_tx(
    .clk          (sys_clk     ),
    .rst_n        (sys_rst_n   ),
    .uart_tx_en   (uart_rx_done),
    .uart_tx_data (uart_rx_data),
    .uart_txd     (uart_txd    ),
    .uart_tx_busy (            )
    );
    
endmodule

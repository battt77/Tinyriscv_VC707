# Tinyriscv  VC707

### 概述：

- 本工程完成了**Tinyriscv**软核在VC707开发板的初步实验，工程见于vivado_prj，**vivado版本为2024.1**

- **Tinyriscv**使用方法可见，作者写得很全面：[https://github.com/liangkangnan/tinyriscv](https://github.com/liangkangnan/tinyriscv)

### 踩过的坑：

- 虽然复位端口命名为**rst**，但电路**实际使用的是低电平复位**，移植到**物理高电平复位**的开发板时需注意此点

### 注：

- 本工程仅作为实验工程的学习记录


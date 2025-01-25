//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Nov 10 20:26:42 2024
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// I2C
module I2C(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD,
    data,
    // Outputs
    MMUART_0_TXD,
    data_out,
    read_data,
    ready,
    scl,
    // Inouts
    sda
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        MMUART_0_RXD;
input  [7:0] data;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       MMUART_0_TXD;
output [7:0] data_out;
output       read_data;
output       ready;
output       scl;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        sda;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0] data;
wire   [7:0] data_out_net_0;
wire         DEVRST_N;
wire         I2C_sb_0_FAB_CCC_GL0;
wire         MMUART_0_RXD;
wire         MMUART_0_TXD_net_0;
wire         read_data_net_0;
wire         ready_net_0;
wire         scl_net_0;
wire         sda;
wire         MMUART_0_TXD_net_1;
wire         scl_net_1;
wire         ready_net_1;
wire         read_data_net_1;
wire   [7:0] data_out_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
assign scl_net_1          = scl_net_0;
assign scl                = scl_net_1;
assign ready_net_1        = ready_net_0;
assign ready              = ready_net_1;
assign read_data_net_1    = read_data_net_0;
assign read_data          = read_data_net_1;
assign data_out_net_1     = data_out_net_0;
assign data_out[7:0]      = data_out_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------I2C_sb
I2C_sb I2C_sb_0(
        // Inputs
        .MMUART_0_RXD     ( MMUART_0_RXD ),
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .MMUART_0_TXD     ( MMUART_0_TXD_net_0 ),
        .POWER_ON_RESET_N (  ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      ( I2C_sb_0_FAB_CCC_GL0 ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ) 
        );

//--------i2c_top
i2c_top i2c_top_0(
        // Inputs
        .clk       ( I2C_sb_0_FAB_CCC_GL0 ),
        .rst       ( GND_net ),
        .en        ( VCC_net ),
        .rw        ( GND_net ),
        // Outputs
        .scl       ( scl_net_0 ),
        .data_out  ( data_out_net_0 ),
        .ready     ( ready_net_0 ),
        .read_data ( read_data_net_0 ),
        // Inouts
        .sda       ( sda ) 
        );


endmodule

module i2c_top(
inout sda,
    output scl,
    
    input logic clk,
    input logic rst,
    //input logic[6:0] addr,
//    input logic[7:0] data,
    input logic en,
    input logic rw,
    
    output reg[7:0] data_out,
    output logic ready,
    output logic read_data
    );
    
logic[6:0] addr = 7'b1100010;
logic[7:0] data = 8'b10111010;
i2c_master uut(sda,scl,clk,rst,addr,data,en,rw,data_out,ready,read_data);

endmodule

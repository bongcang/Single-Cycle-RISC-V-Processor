`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2022 05:28:32 PM
// Design Name: 
// Module Name: DataMem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DataMem(MemRead, MemWrite, addr, write_data, read_data);

input wire [8:0] addr;
input wire [31:0] write_data;
input wire MemWrite, MemRead;
output reg [31:0] read_data;

reg [31:0] mem [0:127];
integer i;

initial begin
    read_data <= 0;
    for (i = 0; i < 128; i = i + 1) begin
        mem[i] = i;
    end
end

always @(addr) begin
    if (MemWrite == 1'b1) begin
        mem[addr[8:2]] <= write_data;
    end
    
    if (MemRead == 1'b1) begin
        read_data <= mem[addr[8:2]];
    end
end

endmodule

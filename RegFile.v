`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 04:33:47 PM
// Design Name: 
// Module Name: RegFile
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


module RegFile(
    input clk, reset, rg_wrt_en,
    input [4:0] rg_wrt_addr, 
    input [4:0] rg_rd_addr1,
    input [4:0] rg_rd_addr2, 
    input [31:0] rg_wrt_data,
    output wire [31:0] rg_rd_data1,
    output wire [31:0] rg_rd_data2
    );
    
    // Write your code
    reg [31:0] rg_file [0:31];
    
    assign rg_rd_data1 = rg_file[rg_rd_addr1];
    assign rg_rd_data2 = rg_file[rg_rd_addr2];
    
    integer i;
    
    always @(posedge clk) begin
        if (reset) begin
            for (i = 0; i < 32; i = i + 1) begin
                rg_file[i] <= 0;
            end
        end else begin
            if (rg_wrt_en) rg_file[rg_wrt_addr] <= rg_wrt_data;
        end
    end
endmodule

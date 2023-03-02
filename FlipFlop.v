`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 04:33:47 PM
// Design Name: 
// Module Name: FlipFlop
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


module FlipFlop(clk, reset, d, q);
    
    input [7:0] d;
    input clk, reset;
    output reg [7:0] q;
    
    always @(posedge clk)
    begin
        //if reset, change q to 0 to start over
        if(reset)
            q <= 0;
        //else, do flip flop
        else
            q <= d;
    end
    
endmodule

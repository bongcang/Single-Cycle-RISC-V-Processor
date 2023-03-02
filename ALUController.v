`timescale 1ns / 1ps

module ALUController (
    ALUOp, Funct7, Funct3, Operation
    );
    
    input [1:0] ALUOp;
    input [6:0] Funct7;
    input [2:0] Funct3;
    output [3:0] Operation;
    
    wire [9:0] ALUControlIn;
    assign ALUControlIn = {Funct7, Funct3, ALUOp};
    
endmodule

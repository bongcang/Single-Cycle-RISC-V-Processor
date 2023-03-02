`timescale 1ns / 1ps

module Controller (
    Opcode,
    ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,
    ALUOp
    );
    
    input [6:0] Opcode;
    output reg ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite;
    output reg [1:0] ALUOp;
    
    always @(*)
    begin
        case(Opcode)
        7'b0000011:
            begin
                MemtoReg = 1;
                MemWrite = 0;
                MemRead = 1;
                ALUSrc = 1;
                RegWrite = 1;
                ALUOp = 2'b01;
            end
        7'b0100011:
            begin
                MemtoReg = 0;
                MemWrite = 1;
                MemRead = 0;
                ALUSrc = 1;
                RegWrite = 0;
                ALUOp = 2'b01;
            end
        7'b0110011:
            begin
                MemtoReg = 0;
                MemWrite = 0;
                MemRead = 0;
                ALUSrc = 0;
                RegWrite = 1;
                ALUOp = 2'b10;
            end
        7'b0010011:
            begin
                MemtoReg = 0;
                MemWrite = 0;
                MemRead = 0;
                ALUSrc = 1;
                RegWrite = 1;
                ALUOp = 2'b00;
            end
        endcase
    end
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:30:32 PM
// Design Name: 
// Module Name: controller
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

module controller(input [6:0]opcode, func7, input [2:0]func3,output reg [1:0]ResultSrc,output reg MemWrite,ALUSrc,RegWrite,
output reg [3:0] ALUSel,output reg JumpD,BranchD );
always@(*)begin
ResultSrc=2'b00;MemWrite=0;ALUSrc=0;RegWrite=1;ALUSel=3'd0;JumpD=1'b0;BranchD=1'b0;
if(opcode==7'b0110011) begin
    ResultSrc=2'b00;MemWrite=0;ALUSrc=0;RegWrite=1;JumpD=1'b0;BranchD=1'b0;
    case (func3)
        3'b000:begin
               if(func7==0)
                    ALUSel=4'b0000;
               else if(func7==7'b0100000)
                    ALUSel=4'b0001;
               end
        3'b001: ALUSel=4'b0100; //SLL
        3'b100: ALUSel=4'b1010; //XOR
        3'b110: ALUSel=4'b1001; //OR 
        3'b111: ALUSel=4'b1000; //AND
    endcase
  end
  else if(opcode==7'b0010011)begin
    RegWrite=1;ALUSrc=1;ResultSrc=2'b00;MemWrite=0;JumpD=1'b0;BranchD=1'b0;
    case(func3)
    3'b000: ALUSel=4'b0000; //ADDI
    3'b100: ALUSel=4'b1010; //XORI
    3'b110: ALUSel=4'b1001; //ORI
    3'b001: ALUSel=4'b0100; //SLLI
    3'b111: ALUSel=4'b1000; //ANDI
    endcase
    end
    else if(opcode==7'b1100011)begin
            ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;JumpD=1'b0;BranchD=1'b1;
            end
    else if(opcode==7'b0000011)begin
             ResultSrc=2'b01;MemWrite=0;ALUSel=4'b0000;ALUSrc=1;RegWrite=1'b1;JumpD=1'b0;BranchD=1'b0;
             end
    else if(opcode==7'b0100011)begin
            ResultSrc=2'b01;MemWrite=1;ALUSel=4'b0000;ALUSrc=1;RegWrite=1'b0;JumpD=1'b0;BranchD=1'b0;
            end

//  else if(opcode==7'b1100011)begin
//        if(LT==1&func3==3'b100)begin
//        PCSrc=1;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//        if(LT==0 &func3==3'b100)begin
//        PCSrc=0;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//        if(GT==1&func3==3'b101)begin
//        PCSrc=1;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//        if(GT==0 &func3==3'b101) begin
//        PCSrc=0;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//        if(ZeroOut==1 & func3==3'b000)begin
//        PCSrc=1;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//        if(ZeroOut==0 & func3==3'b000)begin
//        PCSrc=0;ResultSrc=2'b00;MemWrite=0;ALUSel=4'b0001;ALUSrc=0;RegWrite=0;
//        end
//    end
// else if(opcode==1101111)begin
 
//// end   
//assign JumpD = (opcode == 7'b1100111) | (opcode == 7'b1101111);
//assign BranchD = (opcode == 7'b1100011);
end
endmodule



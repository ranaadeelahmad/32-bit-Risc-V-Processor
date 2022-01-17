`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:36:26 PM
// Design Name: 
// Module Name: reg_alu
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

module reg_alu(input [31:0]RD1,RD2,input [4:0]rd,input [31:0]immext,PCPlus4D,pcD,input [4:0]Rs1,Rs2,input clk,input rst,input[1:0] ResultSrcD,MemWriteD,ALUSrcD,RegWriteD,input [3:0] ALUSelD,input FlushE,output reg[31:0] RD1E,RD2E,output reg [4:0]rdE,output reg[31:0]immextE,PCPlus4E,pcE,MemWriteE,ALUSrcE,RegWriteE,output reg [1:0]ResultSrcE,output reg [3:0] ALUSelE,output reg [4:0]Rs1E,Rs2E,input JumpD,BranchD,output reg JumpE,BranchE,input [2:0]func3,output reg[2:0] func3E);

 always @(posedge clk)
 begin
if (rst || FlushE)
begin
pcE<= 32'b00;
RD1E<=32'b00;
RD2E<=32'b00;
rdE<=5'b00;
immextE<=32'b00;
PCPlus4E<=32'b00;
Rs1E<=5'b00000;
Rs2E<=5'b00000;
func3E<=3'b000;
//controller signals
JumpE<=1'b0;
BranchE<=1'b0;
ResultSrcE<=2'b00;
MemWriteE<=1'b0;
ALUSrcE<=1'b0;
RegWriteE<=1'b0;
ALUSelE<=4'b0000;
end 
else 
begin
Rs1E<=Rs1;
Rs2E<=Rs2;
pcE<= pcD;
RD1E<=RD1;
RD2E<=RD2;
rdE<=rd;
immextE<=immext;
PCPlus4E<=PCPlus4D;
func3E<=func3;
//control signals
JumpE<=JumpD;
BranchE<=BranchD;
ResultSrcE<=ResultSrcD;
MemWriteE<=MemWriteD;
ALUSrcE<=ALUSrcD;
RegWriteE<=RegWriteD;
ALUSelE<=ALUSelD;
end
end
endmodule

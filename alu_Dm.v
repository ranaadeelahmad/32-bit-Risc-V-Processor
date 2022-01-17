`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:40:12 PM
// Design Name: 
// Module Name: alu_Dm
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


module alu_Dm(input [31:0]ALU_Result,RD2E,PCPlus4E,input [4:0]rdE,input clk,input rst,input MemWriteE,RegWriteE,input [1:0]ResultSrcE,output reg [31:0]ALU_ResultM,writedataM,PCPlus4M,output reg [4:0]rdM,output reg MemWriteM,RegWriteM,output reg [1:0]ResultSrcM);
 always @(posedge clk)
 if (rst)
 begin
 ALU_ResultM<=32'b00;
 writedataM<=32'b00;
 PCPlus4M<=32'b00;
 rdM<=0;
 MemWriteM<=0;
 ResultSrcM<=0;
 RegWriteM<=0;
 end 
 else 
 begin
  ALU_ResultM<=ALU_Result;
  writedataM<=RD2E;
  PCPlus4M<=PCPlus4E;
  rdM<=rdE; 
  MemWriteM<=MemWriteE;
  ResultSrcM<=ResultSrcE;
  RegWriteM<=RegWriteE;
end
endmodule

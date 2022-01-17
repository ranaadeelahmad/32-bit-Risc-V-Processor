`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:42:15 PM
// Design Name: 
// Module Name: DM_WB
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


module DM_WB(input [31:0]ALU_ResultM,ReadData,PCPlus4M,input [4:0]rdM,input clk,input rst,input [1:0]ResultSrcM,input RegWriteM, output reg [31:0] ALU_ResultW,ReadDataW,PCPlus4W,output reg [4:0]rdW,output reg[1:0]ResultSrcW,output reg RegWriteW);
 always @(posedge clk)
 if (rst)
 begin
 ALU_ResultW<=32'b00;
 ReadDataW<=32'b00;
 PCPlus4W<=32'b00;
 rdW<=0; 
 RegWriteW<=0;
 ResultSrcW<=0;
 end 
 else 
 begin
  ALU_ResultW<=ALU_ResultM;
  ReadDataW<=ReadData;
  PCPlus4W<=PCPlus4M;
  rdW<=rdM;
  ResultSrcW<=ResultSrcM;
  RegWriteW<=RegWriteM; 
end
 endmodule

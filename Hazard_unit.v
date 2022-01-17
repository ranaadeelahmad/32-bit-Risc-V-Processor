`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:44:12 PM
// Design Name: 
// Module Name: Hazard_unit
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
module Hazard_unit(input [4:0]Rs1E,RdM,Rs2E,RdW,RdE,Rs1D,Rs2D,input[1:0]ResultSrcE,input PCSrcE ,input RegWriteM,RegWriteW,output reg [1:0] ForwardAE,ForwardBE,output reg FlushE,FlushD,StallD,StallF,lwStall);
//hazard unit for resolving data hazard
always@(*)begin
if (((Rs1E == RdM)&& RegWriteM) && (Rs1E != 0))begin // Forward from Memory stage
 ForwardAE = 2'b10;
 end
else if (((Rs1E == RdW) && RegWriteW) && (Rs1E != 0))begin // Forward from Writeback stage
 ForwardAE = 2'b01;
 end 
else begin
 ForwardAE = 2'b00;
 end // No forwarding (use RF output)
 //forwadBE condition for Rs2
 if (((Rs2E == RdM)&& RegWriteM) && (Rs2E != 0))begin // Forward from Memory stage
  ForwardBE = 2'b10;
  end
 else if (((Rs2E == RdW) && RegWriteW) && (Rs2E != 0))begin // Forward from Writeback stage
  ForwardBE = 2'b01;
  end 
 else begin
  ForwardBE = 2'b00;
  end // No forwarding (use RF output)
  //In case of Load instruction and having data dependency
  lwStall = ResultSrcE[0] & ((Rs1D == RdE) | (Rs2D == RdE));
  StallF = lwStall;
  StallD = lwStall;
  FlushD = PCSrcE;
  FlushE = lwStall || PCSrcE;
  
end 
endmodule

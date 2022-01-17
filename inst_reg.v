`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:32:42 PM
// Design Name: 
// Module Name: inst_reg
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


module inst_reg(input [31:0] pc,Instruction,PCPlus4,input FlushD,input StallD, input clk,
input rst, output reg [31:0] pcD,InstructionD,PCPlus4D);

 always @(posedge clk)
 begin
 if (rst || FlushD)
 begin
 pcD= 32'b00;
 InstructionD=32'b00;
 PCPlus4D=32'b00;
  end
else if(!StallD)
begin
 pcD<=pc;
 InstructionD<=Instruction;
 PCPlus4D<=PCPlus4;
end
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:43:06 PM
// Design Name: 
// Module Name: register
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

module register(input [31:0] D, input clk,
input rst, input StallF,output reg [31:0] Q);
 always @(posedge clk)
 if (rst)
 begin
 Q <= 32'b00;
 end 
 else if(!StallF)
 begin
 Q <= D;
 end
endmodule
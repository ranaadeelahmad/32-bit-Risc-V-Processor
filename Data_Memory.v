`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:41:15 PM
// Design Name: 
// Module Name: Data_Memory
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

module Data_Memory(output [31:0] Data_Out, input [31:0] Data_In, input [31:0] WD, input WE,input clk);
reg [31:0] Mem [31:0];
//always@(*)
//begin
//     Data_Out = Mem[Data_In];
//end
always @(posedge clk)
begin			// Data Memory
    if(WE==1)begin
      Mem[Data_In]<=WD;
      end
end      
assign Data_Out = Mem[Data_In];
endmodule



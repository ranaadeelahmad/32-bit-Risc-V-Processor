`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:33:57 PM
// Design Name: 
// Module Name: Instruction_fetch
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


module Instruction_fetch (instruction,  rst, clk,
 opcode,rd,rs1,rs2,func3,func7,imm );
input [31:0] instruction;
input rst;
input clk;
output  reg [6:0]opcode;
output reg [4:0]rd,rs1,rs2;
output reg [2:0]func3;
output reg [6:0]func7;
output reg [31:0]imm;            


always @(*)
begin
     opcode =  instruction[6:0];
     func3 = instruction[14:12];
     rs1=instruction[19:15];
     func7 = instruction[31:25];
     rd = instruction[11:7];
     rs2 = instruction[24:20];       
             
      // S- TYPE INSRTUCTION   
             if (opcode == 7'b0100011 )
            begin 
             imm = {{20{ instruction[31]}},  instruction[31:25],  instruction[11:7]};            
            end
      // I type instruction 
            else if (opcode == 7'b0010011 || opcode == 7'b0000011  ) 
                begin 
                imm = {{20{ instruction[31]}},  instruction[31:20]};
                end 
     //SB-Type 
            else if (opcode == 7'b1100011 )
            begin 
            imm = {{20{instruction[31]}}, instruction[7],  instruction[30:25], instruction[11:8], 1'b0};
            end 
      // j-type
            else if(opcode==1101111)
             begin
                imm = {{11{instruction[31]}},instruction[19:12], instruction[20],  instruction[30:21], 1'b0};
             end
end

endmodule

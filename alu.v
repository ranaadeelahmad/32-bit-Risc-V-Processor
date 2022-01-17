`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:39:32 PM
// Design Name: 
// Module Name: alu
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

/* ALU Arithmetic and Logic Operations
----------------------------------------------------------------------
|ALU_Sel|   ALU Operation
----------------------------------------------------------------------
| 0000  |   ALU_Out = A + B;
----------------------------------------------------------------------
| 0001  |   ALU_Out = A - B;
----------------------------------------------------------------------
| 0010  |   ALU_Out = A * B;
----------------------------------------------------------------------
| 0011  |   ALU_Out = A / B;
----------------------------------------------------------------------
| 0100  |   ALU_Out = A << B;
----------------------------------------------------------------------
| 0101  |   ALU_Out = A >> A;
----------------------------------------------------------------------
| 0110  |   ALU_Out = A rotated left by 1;
----------------------------------------------------------------------
| 0111  |   ALU_Out = A rotated right by 1;
----------------------------------------------------------------------
| 1000  |   ALU_Out = A and B;
----------------------------------------------------------------------
| 1001  |   ALU_Out = A or B;
----------------------------------------------------------------------
| 1010  |   ALU_Out = A xor B;
----------------------------------------------------------------------
| 1011  |   ALU_Out = A nor B;
----------------------------------------------------------------------
| 1100  |   ALU_Out = A nand B;
----------------------------------------------------------------------
| 1101  |   ALU_Out = A xnor B;
----------------------------------------------------------------------
| 1110  |   ALU_Out = 1 if A>B else 0;
----------------------------------------------------------------------
| 1111  |   ALU_Out = 1 if A=B else 0;
----------------------------------------------------------------------*/
module alu(
           input [31:0] A,B,  // ALU 8-bit Inputs
           input [3:0] ALU_Sel,// ALU Selection
           output [31:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
            ,output Zeroflag ,GT,LT,input JumpE,BranchE,output  PCSrcE,input [2:0]func3E,output reg ZeroOut);	// Zero Flag
		   
    reg [31:0] ALU_Result;
    wire [32:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[32]; // Carryout flag
	assign Zeroflag = (ALU_Result == 0 || A==B)?1'b1:1'b0;
	assign GT=(A>B)?1'b1:1'b0;
	assign LT=(A<B)?1'b1:1'b0;
	
	assign PCSrcE=(ZeroOut && BranchE)||JumpE;
	always @(*)
	begin
	   case(func3E)
	       3'b000: ZeroOut = Zeroflag;
	       3'b100: ZeroOut = LT;
	       3'b101: ZeroOut = GT | Zeroflag;
	       3'b001: ZeroOut = !Zeroflag;
	   endcase
	end
	 // Zero Flag
    always @(*)
    begin
        case(ALU_Sel)
        4'b0000: // Addition
           ALU_Result = A + B ;
        4'b0001: // Subtraction
           ALU_Result = A - B ;
        4'b0010: // Multiplication
           ALU_Result = A * B;
        4'b0011: // Division
           ALU_Result = A/B;
        4'b0100: // Logical shift left
           ALU_Result = A<<B;
         4'b0101: // Logical shift right
           ALU_Result = A>>B;
         4'b0110: // Rotate left
           ALU_Result = {A[30:0],A[31]};
         4'b0111: // Rotate right
           ALU_Result = {A[0],A[31:1]};
          4'b1000: //  Logical and
           ALU_Result = A & B;
          4'b1001: //  Logical or
           ALU_Result = A | B;
          4'b1010: //  Logical xor
           ALU_Result = A ^ B;
          4'b1011: //  Logical nor
           ALU_Result = ~(A | B);
          4'b1100: // Logical nand
           ALU_Result = ~(A & B);
          4'b1101: // Logical xnor
           ALU_Result = ~(A ^ B);
          4'b1110: // Greater comparison
           ALU_Result = (A>B)?32'd1:32'd0 ;
          4'b1111: // Equal comparison
            ALU_Result = (A==B)?32'd1:32'd0 ;
          default: ALU_Result = A + B ;
        endcase
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:49:27 PM
// Design Name: 
// Module Name: DC
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


module DC(clk,rst,finalresult);
input clk,rst;
wire rg_wrt_en,ALUSrc,MemWrite;
wire [1:0]ResultSrc;
wire [3:0]ALU_Control;
wire[1:0] ForwardAE,ForwardBE;
wire [4:0]rs1,rs2,rdE,rdM,rdW,Rs1E,Rs2E;
wire RegWriteM,RegWriteW,PCSrcE;
wire [1:0]ResultSrcE;
wire [6:0]opcode;
wire [2:0]func3;
wire [6:0]func7;
wire [4:0]RdM,RdW,RdE,Rs1D,Rs2D;
wire StallF,FlushD,StallD,FlushE,lwStall;
wire BranchD,JumpD;
output [31:0]finalresult;
datapath DUT(.clk(clk),.rst(rst),.rg_wrt_en(rg_wrt_en),.ALUSrc(ALUSrc),.MemWrite(MemWrite),.ResultSrc(ResultSrc),.ALU_Control(ALU_Control),.opcode(opcode),.func3(func3),.func7(func7),.finalresult(finalresult),.ForwardAE(ForwardAE),.ForwardBE(ForwardBE),.rs1(rs1),.rs2(rs2),.rdE(rdE),.rdM(rdM),.rdW(rdW),.Rs1E(Rs1E),.Rs2E(Rs2E),.RegWriteM(RegWriteM),.RegWriteW(RegWriteW),.ResultSrcE(ResultSrcE),.PCSrcE(PCSrcE),.StallF(StallF),.FlushD(FlushD),.StallD(StallD),.FlushE(FlushE),.JumpD(JumpD),.BranchD(BranchD));
controller DUT2(.opcode(opcode),.func7(func7),.func3(func3),.ResultSrc(ResultSrc),.MemWrite(MemWrite),.ALUSrc(ALUSrc),.RegWrite(rg_wrt_en),.ALUSel(ALU_Control), .JumpD(JumpD),.BranchD(BranchD));
Hazard_unit DUT3(.Rs1E(Rs1E),.RdM(rdM),.Rs2E(Rs2E),.RdW(rdW),.RdE(rdE),.Rs1D(rs1),.Rs2D(rs2),.ResultSrcE(ResultSrcE),.PCSrcE(PCSrcE),.RegWriteM(RegWriteM),.RegWriteW(RegWriteW),.ForwardAE(ForwardAE),.ForwardBE(ForwardBE),.FlushE(FlushE),.FlushD(FlushD),.StallD(StallD),.StallF(StallF),.lwStall(lwStall));
endmodule

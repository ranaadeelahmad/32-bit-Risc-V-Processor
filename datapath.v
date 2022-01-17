`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 04:48:12 PM
// Design Name: 
// Module Name: datapath
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

module datapath(clk,rst,rg_wrt_en,ALUSrc,MemWrite,ResultSrc,ALU_Control,opcode,func3,func7,finalresult,ForwardAE,ForwardBE,rs1,rs2,rdE,rdM,rdW,Rs1E,Rs2E,RegWriteM,RegWriteW,ResultSrcE,PCSrcE,StallF,FlushD,StallD,FlushE,JumpD,BranchD);
input clk,rst;
wire [31:0] pc,PCPlus4;
output [6:0]opcode;
wire [31:0] pcD,InstructionD,PCPlus4D,RD1E,RD2E,ResultW,immextE,PCPlus4E,pcE,ALU_ResultM,writedataM,PCPlus4M,ALU_ResultW,ReadDataW,PCPlus4W;
wire [31:0]Instruction;
wire [31:0]h,SrcAE;
wire [31:0]rg_wrt_data,RD1,RD2,immext,SrcB,ReadData,PCNext;
wire MemWriteD,ALUSrcD,RegWriteD,MemWriteE,ALUSrcE,RegWriteE,MemWriteM;
wire [1:0]ResultSrcD,ResultSrcM,ResultSrcW;
wire [3:0]ALUSelD,ALUSelE;
assign h=32'h4;
output PCSrcE;
output [1:0]ResultSrcE;

wire [31:0]PC_Target;
wire [31:0] ALU_Result;
input [1:0] ForwardAE,ForwardBE;
input [1:0]ResultSrc;
input rg_wrt_en,ALUSrc,MemWrite;
wire Z_flag,C,GT,LT;
input [3:0]ALU_Control;
input StallF,FlushD,StallD,FlushE;
wire [4:0]rd;
wire [31:0]ForwardB_out;
output RegWriteM,RegWriteW;
output [4:0]rs1,rs2,rdE,rdM,rdW;
output [4:0]Rs1E,Rs2E;
output [2:0]func3;
output [6:0]func7;
output [31:0]finalresult;
input JumpD,BranchD;
wire JumpE,BranchE;
wire [2:0]func3E;
wire ZeroOut;
//datapath block connection
adder A1(.a(pc),.b(h),.y(PCPlus4));

Instruction_Memory A2(.pc(pc),.Instruction(Instruction));

inst_reg R1(.pc(pc),.Instruction(Instruction),.PCPlus4(PCPlus4),.FlushD(FlushD),.StallD(StallD),.clk(clk),.rst(rst),.pcD(pcD),.InstructionD(InstructionD),.PCPlus4D(PCPlus4D));

Instruction_fetch A3(.instruction(InstructionD),.rst(rst),.clk(clk),.opcode(opcode),.rd(rd),.rs1(rs1),.rs2(rs2),.func3(func3),.func7(func7),.imm(immext) );

RegFile A4(.clk(clk),.rst(rst),.rg_wrt_en(RegWriteW),.rg_wrt_dest(rdW),.rg_rd_addr1(rs1),.rg_rd_addr2(rs2),.rg_wrt_data(ResultW),.rg_rd_data1(RD1),.rg_rd_data2(RD2),.finalresult(finalresult));

//extend A4(.instr(Instruction[31:7]),.immsrc(immsrc),.immext(immext));

reg_alu R2(.RD1(RD1),.RD2(RD2),.rd(rd),.immext(immext),.PCPlus4D(PCPlus4D),.pcD(pcD),.Rs1(rs1),.Rs2(rs2),.clk(clk),.rst(rst),.ResultSrcD(ResultSrc),.MemWriteD(MemWrite),.ALUSrcD(ALUSrc),.RegWriteD(rg_wrt_en),.ALUSelD(ALU_Control),.FlushE(FlushE),.RD1E(RD1E),.RD2E(RD2E),.rdE(rdE),.immextE(immextE),.PCPlus4E(PCPlus4E),.pcE(pcE),.MemWriteE(MemWriteE),.ALUSrcE(ALUSrcE),.RegWriteE(RegWriteE),.ResultSrcE(ResultSrcE),.ALUSelE(ALUSelE),.Rs1E(Rs1E),.Rs2E(Rs2E),.JumpD(JumpD),.BranchD(BranchD),.JumpE(JumpE),.BranchE(BranchE),.func3(func3),.func3E(func3E));

mux3 m2(.d0(RD2E),.d1(ResultW),.d2(ALU_ResultM),.s(ForwardBE),.y(ForwardB_out));

mux2 A5(.d0(ForwardB_out),.d1(immextE),.s(ALUSrcE),.y(SrcB));

mux3 m1(.d0(RD1E),.d1(ResultW),.d2(ALU_ResultM),.s(ForwardAE),.y(SrcAE));

alu  A6(.A(SrcAE),.B(SrcB),.ALU_Sel(ALUSelE),.ALU_Out(ALU_Result),.CarryOut(C),.Zeroflag(Z_flag),.GT(GT),.LT(LT),.JumpE(JumpE),.BranchE(BranchE),.PCSrcE(PCSrcE),.func3E(func3E),.ZeroOut(ZeroOut));

alu_Dm R3(.ALU_Result(ALU_Result),.RD2E(RD2E),.PCPlus4E(PCPlus4E),.rdE(rdE),.clk(clk),.rst(rst),.MemWriteE(MemWriteE),.RegWriteE(RegWriteE),.ResultSrcE(ResultSrcE),.ALU_ResultM(ALU_ResultM),.writedataM(writedataM),.PCPlus4M(PCPlus4M),.rdM(rdM),.MemWriteM(MemWriteM),.RegWriteM(RegWriteM),.ResultSrcM(ResultSrcM));

Data_Memory A7(.Data_Out(ReadData),.Data_In(ALU_ResultM),.WD(writedataM),.WE(MemWriteM),.clk(clk));

DM_WB R4(ALU_ResultM,ReadData,PCPlus4M,rdM,clk,rst,ResultSrcM,RegWriteM,ALU_ResultW,ReadDataW,PCPlus4W,rdW,ResultSrcW,RegWriteW);

mux3 A8(.d0(ALU_ResultW),.d1(ReadDataW),.d2(PCPlus4W),.s(ResultSrcW),.y(ResultW));

adder A9(.a(pcE),.b(immextE),.y(PC_Target)); 

mux2 A10(.d0(PCPlus4),.d1(PC_Target),.s(PCSrcE),.y(PCNext));

register A11(.D(PCNext),.StallF(StallF),.clk(clk),.rst(rst),.Q(pc));
//datapath ends



endmodule

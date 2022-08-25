`timescale 1ns/1ns

module IDEX (
    input clk,
    input WB_RegWriteIn,
    input WB_MemtoRegIn,
    input M_BranchIn,
    input M_MemReadIn,
    input M_MemWriteIn,
    input EX_RegDstIn,
    input [2:0] EX_ALUOpIn,
    input EX_ALUSrcIn,
    input [31:0] AdderIn,
    input [31:0] ReadData1In,
    input [31:0] ReadData2In,
    input [31:0] SignExtendIn,
    input [4:0] SegInst1In,
    input [4:0] SegInst2In,
    //nuevas entradas para jump
    input jumpIn,
    input [25:0] segmentacionIn,
    //finalizan entradas para jump
    output reg [31:0] AdderOut,
    output reg [31:0] ReadData1Out,
    output reg [31:0] ReadData2Out,
    output reg [31:0] SignExtendOut,
    output reg [4:0] SegInst1Out,
    output reg [4:0] SegInst2Out,
    output reg WB_RegWriteOut,
    output reg WB_MemtoRegOut,
    output reg M_BranchOut,
    output reg M_MemReadOut,
    output reg M_MemWriteOut,
    output reg EX_RegDstOut,
    output reg [2:0] EX_ALUOpOut,
    output reg EX_ALUSrcOut,
    //nuevas salidas para jump
    output reg jumpOut,
    output reg [25:0] segmentacionOut

);
// initial begin
//     #200;
// end

always @(negedge clk, WB_RegWriteIn, WB_MemtoRegIn, M_BranchIn, M_MemReadIn, M_MemWriteIn, EX_RegDstIn, EX_ALUOpIn, AdderIn, ReadData1In, ReadData2In, SignExtendIn, SegInst1In, SegInst2In)
    begin
        WB_RegWriteOut <= WB_RegWriteIn;
        WB_MemtoRegOut <= WB_MemtoRegIn;
        M_BranchOut <= M_BranchIn;
        M_MemReadOut <= M_MemReadIn;
        M_MemWriteOut <= M_MemWriteIn;
        EX_RegDstOut <= EX_RegDstIn;
        EX_ALUOpOut <= EX_ALUOpIn;
        EX_ALUSrcOut <= EX_ALUSrcIn;
        AdderOut <= AdderIn;
        ReadData1Out <= ReadData1In;
        ReadData2Out <= ReadData2In;
        SignExtendOut <= SignExtendIn;
        SegInst1Out <= SegInst1In;
        SegInst2Out <= SegInst2In;
        jumpOut <= jumpIn;
        segmentacionOut <= segmentacionIn;
    end
    
endmodule
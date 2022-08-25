`timescale 1ns/1ns

module EXMEM (
    input clk,
    input WB_RegWriteIn,
    input WB_MemtoRegIn,
    input M_BranchIn,
    input M_MemReadIn,
    input M_MemWriteIn,
    input [31:0] AdderIn,
    input [31:0] ALURIn,
    input [31:0] ReadData2In,
    input ZeroFlagIn,
    input [4:0] MuxIn,
    //entradas para j
    input jumpIn,
    input [27:0] NewShiftIn, 
    //fin entradas j
    output reg [31:0] AdderOut,
    output reg [31:0] ALUROut,
    output reg [31:0] ReadData2Out,
    output reg ZeroFlagOut,
    output reg [4:0] MuxOut,
    output reg WB_RegWriteOut,
    output reg WB_MemtoRegOut,
    output reg M_BranchOut,
    output reg M_MemReadOut,
    output reg M_MemWriteOut,
    //salidas para j
    output reg jumpOut,
    output reg [27:0] NewShiftOut

);

// initial begin
//     #300;
// end

always @(negedge clk, WB_RegWriteIn, WB_MemtoRegIn, M_BranchIn, M_MemReadIn, M_MemWriteIn, AdderIn, ALURIn, ReadData2In, ZeroFlagIn, MuxIn)
    begin
        WB_RegWriteOut <= WB_RegWriteIn;
        WB_MemtoRegOut <= WB_MemtoRegIn;
        M_BranchOut <= M_BranchIn;
        M_MemReadOut <= M_MemReadIn;
        M_MemWriteOut <= M_MemWriteIn;
        AdderOut <= AdderIn;
        ALUROut <= ALURIn;
        ReadData2Out <= ReadData2In;
        ZeroFlagOut <= ZeroFlagIn;
        MuxOut <= MuxIn;
        jumpOut <= jumpIn;
        NewShiftOut <= NewShiftIn;
    end

    
    
endmodule
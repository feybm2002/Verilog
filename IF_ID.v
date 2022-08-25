`timescale 1ns/1ns

module IFID (
    input clk,
    input [31:0] AdderIn,
    input [31:0] MemoryInstruction,
    output reg [31:0] AdderOut,
    output reg [31:0] Instruction
);
// initial begin
//     #100;
// end

always @(negedge clk, AdderIn, MemoryInstruction)
    begin
        AdderOut <= AdderIn;
        Instruction <= MemoryInstruction;
    end

    
endmodule
`timescale 1ns/1ns

module MEMWB (
    input clk,
    input WB_RegWriteIn,
    input WB_MemtoRegIn,
    input [31:0] ReadDataIn,
    input [31:0] ALURIn,
    input [4:0] MuxIn,
    output reg WB_RegWriteOut,
    output reg WB_MemtoRegOut,
    output reg [31:0]ReadDataOut,
    output reg [31:0] ALUROut,
    output reg [4:0]  MuxOut
);
always @(negedge clk, WB_RegWriteIn, WB_MemtoRegIn, ReadDataIn, ALURIn, MuxIn) 
//always @(negedge clk and (WB_RegWriteIn or WB_MemtoRegIn or ReadDataIn or ALURIn or MuxIn)) 
    begin
    WB_RegWriteOut <= WB_RegWriteIn;
    WB_MemtoRegOut <= WB_MemtoRegIn;
    ReadDataOut <= ReadDataIn;
    ALUROut <= ALURIn;
    MuxOut <= MuxIn;
end
    
endmodule
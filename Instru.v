// Instruction
// Fase 2

`timescale 1ns/1ns

module Instruction(
    input [31:0]Dir,
    output reg [31:0]instruction);

    reg [7:0]memoriain[0:1000];

    always @* begin
        instruction={memoriain[Dir], memoriain[Dir+1], memoriain[Dir+2], memoriain[Dir+3]};
    end
    initial begin
        $readmemb("TestF2_MemInst2.mem",memoriain);
    end
    
endmodule

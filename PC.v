// PC
// Fase 2

`timescale 1ns/1ns

module PC(
    input clk,
    input [31:0]suma,
    output reg [31:0] PCout);

    initial begin
        PCout = 32'd0;
    end

    always @(negedge clk) begin
        PCout = suma;
        
    end
    
endmodule



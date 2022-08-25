// ADD
// Fase 2

`timescale 1ns/1ns

module ADD(
    input [31:0]PCout,
    output [31:0]salida);

    assign salida = PCout + 32'd4;
    
endmodule

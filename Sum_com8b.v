// Maria Fernanda Barroso Monroy 
// Actividad 4 


`timescale 1ns/1ns

module Sum_com8(
    input [7:0]A,
    input [7:0]B,
    output [8:0]C);
    assign C = A + B;

endmodule
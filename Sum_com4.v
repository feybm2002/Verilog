// Maria Fernanda Barroso Monroy 
// Actividad 4

`timescale 1ns/1ns

module Sum_com4(
    input [3:0]A,
    input [3:0]B,
    output [4:0]C);
    assign C = A + B;

endmodule

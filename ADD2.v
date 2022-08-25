// ADD
// Fase 2

`timescale 1ns/1ns

module ADD2(
    input [31:0]outADD1,
    input [31:0]outShiftleft,
    output [31:0]ADD_R);

    assign ADD_R = outADD1 + outShiftleft ;
    
endmodule


// Multiplexor  A, B, C
// Fase 2

`timescale 1ns/1ns

module Mux(
    input sel,
    input [31:0]int0,
    input [31:0]int1,
    output reg [31:0]out);

    always @*
     begin
         case(sel)
         1'b0:
         begin
             out = int0;
         end
         1'b1:
         begin
             out = int1;
         end
         endcase 
    end
    
endmodule

// Multiplexor D
// Fase 2

`timescale 1ns/1ns

module Mux_D(
    input sel,
    input [4:0] int0,
    input [4:0] int1,
    output reg [4:0]out);

    always @*
     begin
         case (sel)
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


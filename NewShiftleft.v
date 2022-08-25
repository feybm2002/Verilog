`timescale 1ns/1ns

module NewShifter (
    input [25:0] Input,
    output reg [27:0] Output
);
assign Output = Input << 2;     
endmodule
`timescale 1ns/1ns
module shiftleft (
    input [31:0]signextend,
    output [31:0]shiftleft
);
    
assign shiftleft = signextend << 2;


endmodule

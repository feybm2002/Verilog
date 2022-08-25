// ALU 
// Fase 1

`timescale 1ns/1ns

module ALU(
    input [2:0] sel,
    input [31:0] op1,
    input [31:0] op2,
    output reg ZF,
    output reg [31:0] res);

    always @* begin
        case (sel)
            3'b000:
            begin
                res = op1 + op2;
            end 
            3'b010:
            begin 
                res = op1 - op2;
            end
            3'b011: 
            begin
                res = op1||op2;
            end
            3'b100:
            begin 
                res = op1 & op2;
            end 
            3'b101:
            begin
               res =(op1<op2)?1:0;
            end
            3'b110: 
            begin
                res = op1 * op2;
            end
            3'b111:
            begin
                res = 0;
            end 
        endcase
            if(res==0)
            begin
                ZF = 1'd1;
            end
            else
            begin
                ZF = 1'd0;
            end
    end
endmodule

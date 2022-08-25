// ALU control 
// Fase 2

`timescale 1ns/1ns

module ALUCONTROL(
    input [2:0]ALUop,
    input [5:0]func,
    output reg [2:0] op);

    always @* begin
        case (ALUop)
            3'b111: // Type R
                case (func)
                    6'b100000: // ADD
                    begin
                        op = 3'b000;
                    end
                    6'b100100: // AND
                    begin
                        op = 3'b100;
                    end
                    6'b100010: // SUB
                    begin
                        op = 3'b010;
                    end
                    6'b100101: // OR
                    begin
                        op = 3'b011;
                    end
                    6'b101010: // STL
                    begin
                        op = 3'b101;
                    end
                    6'b000000: // NOP
                    begin
                        op = 3'b111;
                    end
                    6'b011000: // MUL 
                    begin
                        op = 3'b110;
                    end

                endcase
            3'b101: //addi
            begin
                op = 3'b000;
            end
            3'b100: //slti
            begin
                op = 3'b101;
            end
            3'b011://andi
            begin
                op = 3'b100;
            end
            3'b010://ori
            begin
                op = 3'b011;
            end
            3'b001://lw y sw
            begin
                op = 3'b000;
            end
            3'b000://beq
            begin
                op = 3'b010;
            end
        endcase
        
    end
    
endmodule


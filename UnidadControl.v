//Unidad de Control prueba
//Fase 2
`timescale 1ns/1ns

module UnidadControl(
    input [5:0] Op,
    output reg regdst,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg [2:0]ALUop,
    output reg memtowrite,
    output reg ALUsrc,
    output reg regwrite,
    output reg Jump
    );

always @* begin
    case (Op)
        6'b000000://Type R
        begin
            regdst = 1;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 3'b111;
            memtowrite = 0;
            ALUsrc = 0;
            regwrite = 1;
            Jump = 0;
        end
        6'b001000: //Addi
        begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 3'b101;
            memtowrite = 0;
            ALUsrc = 1;
            regwrite = 1;
            Jump = 0;
        end
        6'b001010: //slti
        begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 3'b100;
            memtowrite = 0;
            ALUsrc = 1;
            regwrite = 1;  
            Jump = 0;
        end
        6'b001100://andi
        begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 3'b011;
            memtowrite = 0;
            ALUsrc = 1;
            regwrite = 1;  
            Jump = 0;
        end
        6'b001101: //ori
        begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 3'b010;
            memtowrite = 0;
            ALUsrc = 1;
            regwrite = 1;  
            Jump = 0;
        end
        6'b101011://sw
        begin
            regdst = 1'dx;
            branch = 0;
            memread = 0;
            memtoreg = 1'dx;
            ALUop = 3'b001;
            memtowrite = 1;
            ALUsrc = 1;
            regwrite = 0;  
            Jump = 0;
        end
        6'b100011://lw
        begin
            regdst = 0;
            branch = 0;
            memread = 1;
            memtoreg = 1;
            ALUop = 3'b001;
            memtowrite = 0;
            ALUsrc = 1;
            regwrite = 1;  
            Jump = 0;
        end
        6'b000100://beq
        begin
            regdst = 1'dx;
            branch = 1;
            memread = 1;
            memtoreg = 1'dx;
            ALUop = 3'b000;
            memtowrite = 0;
            ALUsrc = 0;
            regwrite = 0; 
            Jump = 0;
        end
        6'b000010://Jump
        begin
            regdst = 1'dx;
            branch = 1'dx;
            memread = 1'dx;
            memtoreg = 1'dx;
            ALUop = 3'b000;
            memtowrite = 1'dx;
            ALUsrc = 1'dx;
            regwrite = 1'dx; 
            Jump = 1;
        end
    endcase
end
endmodule

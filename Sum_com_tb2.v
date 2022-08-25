// Maria Fernanda Barroso Monroy 
// Actividad 4 

`timescale 1ns/1ns
module Sum_com_tb2;
    reg [7:0]A_tb;
    reg [7:0]B_tb;
    wire [8:0]C_tb;

 initial begin
        $dumpfile("Sum_com_tb2.vcd");
        $dumpvars(0,Sum_com_tb2);
        A_tb = 4'b1010;
        B_tb = 4'b0010;
        #100;
        A_tb = 4'b0100;
        B_tb = 4'b1111;
        #100;
        A_tb = 4'b0000;
        B_tb = 4'b0101;
        #100;
        A_tb = 4'b0101;
        B_tb = 4'b0101;
        #100;
        A_tb = 4'b0001;
        B_tb = 4'b0101;
        #100;
        $finish; 
    end

    Sum_com8 uut(.A(A_tb), .B(B_tb), .C(C_tb));

endmodule
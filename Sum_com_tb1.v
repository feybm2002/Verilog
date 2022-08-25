// Maria Fernanda Barroso Monroy 
// Actividad 4 

`timescale 1ns/1ns
module Sum_com_tb1;
    reg [3:0]A_tb;
    reg [3:0]B_tb;
    wire [4:0]C_tb;
   
    initial begin
        $dumpfile("Sum_com_tb1.vcd");
        $dumpvars(0,Sum_com_tb1);
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

    Sum_com4 uut(.A(A_tb), .B(B_tb), .C(C_tb));

endmodule
// Fase 3 TB

`timescale 1ns/1ns

module ModuloF3_tb();

reg clk_tb;

Fase3 TestBench(
    .clk(clk_tb)
);

initial begin
    $dumpfile("ModuloF3_tb.vcd");
    $dumpvars(0, ModuloF3_tb);
    // clk_tb = 1'b0;
    // #100;
    // clk_tb = 1'b1;
    // #100;
    //     clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
    clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;
        clk_tb = 1'b0;
    #100;
    clk_tb = 1'b1;
    #100;

    $stop;
end   
endmodule


// Memoria 
// Fase 2

`timescale 1ns/1ns

module  Mem(
    input [31:0]ad,
    input [31:0]wr,
    input memtowrite,
    input memtoread,
    output reg [31:0]read);

reg [31:0]mem [0:100];
initial begin
    mem[0]<=32'd4;
    mem[1]<=32'd6;
    mem[2]<=32'd9;
    mem[3]<=32'd2;
    mem[4]<=32'd7;
    mem[5]<=32'd8;
    mem[6]<=32'd1;
    mem[7]<=32'd3;
    mem[8]<=32'd5;
    mem[9]<=32'd10;
    mem[10]<=32'd0;
    mem[11]<=32'd0;
    mem[12]<=32'd0;
    mem[13]<=32'd4;
    mem[14]<=32'd6;
    mem[15]<=32'd9;
    mem[16]<=32'd2;
    mem[17]<=32'd7;
    mem[18]<=32'd8;
    mem[19]<=32'd1;
    mem[20]<=32'd777;
    mem[21]<=32'd777;
    mem[22]<=32'd777;
    mem[23]<=32'd777;
    mem[24]<=32'd777;
    mem[25]<=32'd777;
    mem[26]<=32'd777;
    mem[27]<=32'd777;
    mem[28]<=32'd777;
    mem[29]<=32'd777;
    mem[30]<=32'd777;
    mem[31]<=32'd777;
    mem[32]<=32'd777;
    mem[33]<=32'd777;
    mem[34]<=32'd777;
    mem[35]<=32'd777;
    mem[36]<=32'd777;
    mem[37]<=32'd777;
    mem[38]<=32'd777;
    mem[39]<=32'd777;
    mem[40]<=32'd777;
    mem[41]<=32'd777;
    mem[42]<=32'd777;
    mem[43]<=32'd777;
    mem[44]<=32'd777;
    mem[45]<=32'd777;
    mem[46]<=32'd777;
    mem[47]<=32'd777;
    mem[48]<=32'd777;
    mem[49]<=32'd777;
    mem[50]<=32'd0;
    mem[51]<=32'd1;
    mem[52]<=32'd2;
    mem[53]<=32'd3;
    mem[54]<=32'd4;
    mem[55]<=32'd5;
    mem[56]<=32'd6;
    mem[57]<=32'd7;
    mem[58]<=32'd8;
    mem[59]<=32'd9;
    mem[60]<=32'd10;
    mem[61]<=32'd0;
    mem[62]<=32'd0;
    mem[63]<=32'd0;
end
    always @* begin
    if(memtowrite)
    begin
        mem[ad] = wr;
    end
    else if(memtoread)
    begin
        read = mem[ad];
    end
    else
    begin
        read = 32'dx;
    end
end
    
endmodule

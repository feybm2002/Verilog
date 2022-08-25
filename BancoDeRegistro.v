// Banco de Registro
// Fase 2

`timescale 1ns/1ns

module BancoReg( 
				 input [31:0] wd, 
				 input [4:0] rr1, 
				 input [4:0] rr2,
				 input [4:0] wr,
				 input Re,  
				 output reg [31:0]rd1,
				 output reg [31:0]rd2);

	reg [31:0]memoriain[0:32];

		initial 
		begin
			$readmemb("TestF1_Breg1.mem",memoriain);
		end
		always @*
		begin
		if(Re)
		begin
			memoriain[wr]=wd;
		end
		rd1=memoriain[rr1];
		rd2=memoriain[rr2];
		end
     
endmodule



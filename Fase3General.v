`timescale 1ns/1ns

module Fase3 (
    input clk
);

// buffer IF/ID Entradas
wire [31:0] ADDFour; // De la ADD de 4 bits al IF/ID y al Mux como opcion 0
wire [31:0] MinstOut;   // De memoria de instrucciones a IF/ID
// buffer IF/ID Salidas
wire [31:0] ADDFourOutput; //Salida del adder de 4 bits en IF/ID
wire [31:0] InstIFIDOut; //salida de la instruccion del buffer IF/ID
//----------------Cables PC----------------\\
wire [31:0] PCADD; // De la PC a la ADD y de la PC a la inst
//----------------Cables MuxC----------------\\
wire [31:0] MuxPC; // Del Mux a PC

//buffer ID/EX entradas y salidas de WB1, M1, EX1
//WB, M y EX son buffers y estas son sus entradas
wire RegWriteWB1In; //entrada de WB1 de RegWrite
wire MemtoRegWB1In; //Mem to reg a WB1
wire BranchM1In; //Branch a M1
wire MemWriteM1In; //MemWrite a M1
wire MemReadM1In; //MemRead a M1 
wire RegDstEXIn; // RegDst a EX
wire [2:0] ALUOpEXIn; //ALUOp a EX
wire ALUSrcEXIn; //ALUSrc a Ex

//wb, m y ex estas son sus salidas
wire RegWriteWB1Out;//salida de WB1 de RegWrite
wire MemtoRegWB1Out; //salida de WB1 de Memtoreg
wire BranchM1Out; //salida de M1 de branch
wire MemWriteM1Out; //salida de M1 de memwrite
wire MemReadM1Out; //salida de M1 de memread
wire RegDstEXOut; //salida de EX de RegDst
wire [2:0] ALUOpEXOut; //salida de EX de aluop
wire ALUSrcEXOut; //salida de EX de alusrc

//buffer ID/EX entradas generales
wire [31:0] ReadData1Out; // Read data 1 a ID/EX
wire [31:0] ReadData2Out; // Read data 2 a ID/EX
wire [31:0] SignExtendOut; // De SignExtend a ID/EX 
wire [4:0]InstructionSeg1Out; // primera segmentacion de salida de la instruccion, dle ID/EX a mux como elemnto 0
wire [4:0] InstructionSeg2Out; // segunda segmentacion de salida de la instruccion, dle ID/EX a mux como elemento 1
//buffer ID/EX salidas generales
wire [31:0] ReadData1buffout; // salida de ID/EX de read data 1
wire [31:0] ReadData2buffout; // salida de ID/EX de read data 2
wire [31:0] SignExtendbuffout; // salida de ID/EX de SignExtend 
wire [4:0] InstructionSeg1buffout; // salida de ID/EX, primera segmentacion de instruccion (20:16)
wire [4:0] InstructionSeg2buffout; // salida de ID/EX, primera segmentacion de instruccion (20:16)
wire [31:0] Add32Out; 

//buffer EX/MEM salidas de WB2 y M2
wire RegWriteWB2Out;//salida de WB2 de RegWrite
wire MemtoRegWB2Out; //salida de WB2 de Memtoreg
wire BranchM2Out; //salida de M2 de branch
wire MemWriteM2Out; //salida de M2 de memwrite
wire MemReadM2Out; //salida de M2 de memread

//mem salidas de modulos y entradas
wire [31:0] MuxToALU;
wire [31:0] shiftleftOut; // salida de shiftleft y es entrada del sumador
//entradas generales de buffer EX/MEM y una salida de alucontrol a alu
wire [31:0] AddShiftOut; // salida de la suma de shift left y el otro adder, es entrada de EX/MEM
wire [31:0] ALUResOut; //salida de ALU hacia EX/MEM
wire ZeroFlagOut; // salida de ZeroFlag hacia EX/MEM
wire [2:0] ALUControlToALU; //de alucontrol hacia ALU
wire [4:0] Mux_DOut; //del MuxD de 5 bits de entradas hacia EX/MEM

//salidas generales de EX/MEM
wire [31:0] AddShiftbuffout; // salida de EX/MEM del adder que suma con shift left
wire [31:0] ALUResbuffout; // salida de EX/MEM del resultado de ALU
wire ZeroFlagbuffout; // salida de EX/MEM de ZeroFlag
wire [4:0] Mux_Dbuffout; //salida de EX/MEM del mux D
wire [31:0] ReadDataEXMEMbuffout; //salida de EX/MEM de read data

//--------------------MEM
wire BranchANDZero; // este es pcsrc
assign BranchANDZero = ZeroFlagbuffout & BranchM2Out; // AND Gate en fase de mem, entre branch y ZeroFlag

//salida de MEM/WB de WB3
wire RegWriteWB3Out;
wire MemtoRegWB3Out;
//entradas generales de MEM/WB
wire [31:0] ReadDataMemOut;
//salidas generales de MEM/WB
wire [31:0] ReadDataMembuffout;
wire [31:0] ALURMEMWBbuffout;
wire [4:0] MuxMEMWBbuffout;

//last wire, salida del ultimo mux
wire [31:0] LastMuxOUT;

// nuevos cables para Jump
wire [31:0] concatenacion;
wire CableJumpSalidaDeControl;
wire CableJumpSalidaIDEX;
wire CableJumpSalidaEXMEM;
wire [25:0] cable26bits;
wire [27:0] cable28bits1;
wire [27:0] cable28bits2;
wire [31:0] MuxFinalOut;
//Fetch
Mux MuxFetch(
    .sel(BranchANDZero),
    .int0(ADDFour),
    .int1(AddShiftbuffout),
    .out(MuxPC)
);
PC pc(
    .clk(clk),
    .suma(MuxFinalOut),
    .PCout(PCADD)
);
ADD adder_fetch(
    .PCout(PCADD),
    .salida(ADDFour)
);
Instruction instruction(
    .Dir(PCADD),
    .instruction(MinstOut)
);

IFID fetch_decode(
    .clk(clk),
    .AdderIn(ADDFour),
    .MemoryInstruction(MinstOut),
    .AdderOut(ADDFourOutput),
    .Instruction(InstIFIDOut)
);
Mux MuxJ(
    .sel(CableJumpSalidaEXMEM),
    .int0(MuxPC),
    .int1({ADDFour[31:28],cable28bits2}),
    .out(MuxFinalOut)
);
//Decode
//[31:26]
BancoReg bancoreg(
    .wd(LastMuxOUT),
    .rr1(InstIFIDOut[25:21]),
    .rr2(InstIFIDOut[20:16]),
    .wr(MuxMEMWBbuffout),
    .Re(RegWriteWB3Out),
    .rd1(ReadData1Out),
    .rd2(ReadData2Out)
);
sign_ext signextend(
    .in16(InstIFIDOut[15:0]),
    .out32(SignExtendOut)
);
UnidadControl controlunit(
    .Op(InstIFIDOut[31:26]),
    .regdst(RegDstEXIn),
    .branch(BranchM1In),
    .memread(MemReadM1In),
    .memtoreg(MemtoRegWB1In),
    .ALUop(ALUOpEXIn),
    .memtowrite(MemWriteM1In),
    .ALUsrc(ALUSrcEXIn),
    .regwrite(RegWriteWB1In),
    //nueva salida de Jump
    .Jump(CableJumpSalidaDeControl)
);
IDEX decodeexecute(
    .clk(clk),
    .WB_RegWriteIn(RegWriteWB1In),
    .WB_MemtoRegIn(MemtoRegWB1In),
    .M_BranchIn(BranchM1In),
    .M_MemReadIn(MemReadM1In),
    .M_MemWriteIn(MemWriteM1In),
    .EX_RegDstIn(RegDstEXIn),
    .EX_ALUOpIn(ALUOpEXIn),
    .EX_ALUSrcIn(ALUSrcEXIn),
    .AdderIn(ADDFourOutput),
    .ReadData1In(ReadData1Out),
    .ReadData2In(ReadData2Out),
    .SignExtendIn(SignExtendOut),
    .SegInst1In(InstIFIDOut[20:16]),
    .SegInst2In(InstIFIDOut[15:11]),
    .AdderOut(Add32Out),
    .ReadData1Out(ReadData1buffout),
    .ReadData2Out(ReadData2buffout),
    .SignExtendOut(SignExtendbuffout),
    .SegInst1Out(InstructionSeg1buffout),
    .SegInst2Out(InstructionSeg2buffout),
    .WB_RegWriteOut(RegWriteWB1Out),
    .WB_MemtoRegOut(MemtoRegWB1Out),
    .M_BranchOut(BranchM1Out),
    .M_MemReadOut(MemReadM1Out),
    .M_MemWriteOut(MemWriteM1Out),
    .EX_RegDstOut(RegDstEXOut),
    .EX_ALUOpOut(ALUOpEXOut),
    .EX_ALUSrcOut(ALUSrcEXOut),
    //nuevas entradas y salidas para Jump
    .jumpIn(CableJumpSalidaDeControl),
    .jumpOut(CableJumpSalidaIDEX),
    .segmentacionIn(InstIFIDOut[25:0]),
    .segmentacionOut(cable26bits)
);
//Execute
NewShifter newshiftleft (
    .Input(cable26bits),
    .Output(cable28bits1)
);
shiftleft shifter2places(
    .signextend(SignExtendbuffout),
    .shiftleft(shiftleftOut)
);
ADD2 addershiftout(
    .outADD1(Add32Out),
    .outShiftleft(shiftleftOut),
    .ADD_R(AddShiftOut)
);
ALU alu(
    .sel(ALUControlToALU),
    .op1(ReadData1buffout),
    .op2(MuxToALU),
    .ZF(ZeroFlagOut),
    .res(ALUResOut)
);
ALUCONTROL alucontrol(
    .ALUop(ALUOpEXOut),
    .func(SignExtendbuffout[5:0]),
    .op(ALUControlToALU)
);
Mux MuxbeforeAlu(
    .sel(ALUSrcEXOut),
    .int0(ReadData2buffout),
    .int1(SignExtendbuffout),
    .out(MuxToALU)
);
Mux_D Muxbetweensegment(
    .sel(RegDstEXOut),
    .int0(InstructionSeg1buffout),
    .int1(InstructionSeg2buffout),
    .out(Mux_DOut)
);
EXMEM execmem(
    .clk(clk),
    .WB_RegWriteIn(RegWriteWB1Out),
    .WB_MemtoRegIn(MemtoRegWB1Out),
    .M_BranchIn(BranchM1Out),
    .M_MemReadIn(MemReadM1Out),
    .M_MemWriteIn(MemWriteM1Out),
    .AdderIn(AddShiftOut),
    .ALURIn(ALUResOut),
    .ReadData2In(ReadData2buffout),
    .ZeroFlagIn(ZeroFlagOut),
    .MuxIn(Mux_DOut),
    .AdderOut(AddShiftbuffout),
    .ALUROut(ALUResbuffout),
    .ReadData2Out(ReadDataEXMEMbuffout),
    .ZeroFlagOut(ZeroFlagbuffout),
    .MuxOut(Mux_Dbuffout),
    .WB_RegWriteOut(RegWriteWB2Out),
    .WB_MemtoRegOut(MemtoRegWB2Out),
    .M_BranchOut(BranchM2Out),
    .M_MemReadOut(MemReadM2Out),
    .M_MemWriteOut(MemWriteM2Out),
    //nuevas conexiones para Jump
    .jumpIn(CableJumpSalidaIDEX),
    .jumpOut(CableJumpSalidaEXMEM),
    .NewShiftIn(cable28bits1),
    .NewShiftOut(cable28bits2)
);
//MEM
Mem memoria(
    .ad(ALUResbuffout),
    .wr(ReadDataEXMEMbuffout),
    .memtowrite(MemWriteM2Out),
    .memtoread(MemReadM2Out),
    .read(ReadDataMemOut)
);
MEMWB memwriteback(
    .clk(clk),
    .WB_RegWriteIn(RegWriteWB2Out),
    .WB_MemtoRegIn(MemtoRegWB2Out), // wb_memtoregwb2
    .ReadDataIn(ReadDataMemOut),
    .ALURIn(ALUResbuffout), // aqui hay un problema
    .MuxIn(Mux_Dbuffout),
    .WB_RegWriteOut(RegWriteWB3Out),
    .WB_MemtoRegOut(MemtoRegWB3Out),
    .ReadDataOut(ReadDataMembuffout),
    .ALUROut(ALURMEMWBbuffout),
    .MuxOut(MuxMEMWBbuffout)
);
//Write Back
Mux finalmux(
    .sel(MemtoRegWB3Out),
    .int0(ALURMEMWBbuffout), //ALURMEMWBbuffout
    .int1(ReadDataMembuffout), //ReadDataMembuffout 
    .out(LastMuxOUT)
);

endmodule
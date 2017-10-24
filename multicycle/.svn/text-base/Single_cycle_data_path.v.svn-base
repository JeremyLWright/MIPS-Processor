`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:30 10/29/2007 
// Design Name: 
// Module Name:    Single_cycle_data_path 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Single_cycle_data_path(Clk_t,PC,NextPC);

output reg Clk_t;

output [31:0] PC;
input [31:0] NextPC;
reg [31:0] PC;
wire [31:0] Instruction;
wire [31:0] ReadData1, ReadData2;
wire [4:0] WriteRegister;
wire [31:0] WriteData;
wire ALUSrc, Zero, BranchZ, GoBranch, Jump, MemRead, MemWrite, RegWrite, StoreSH, Negative, BNEControl;
wire [1:0] MemtoReg;
wire [1:0] RegDst;
wire [31:0] SignExtended;
wire [31:0] B_ALU;
wire [2:0] ALUOp;
wire [3:0] ALUctl;
wire [31:0] ALUOut;
wire [31:0] ReadData;
//wire [31:0] MemtoReg;
wire [31:0] PC_plus_4;
wire [31:0] PC_plus_8;
wire [31:0] SignExtendedShiftLeft2;
wire [31:0] BranchPC;
wire [31:0] NewPC1;
wire [31:0] NewPC2;
wire [31:0] JumpPC;
wire [31:0] SignExtenedLH;
wire [31:0] SignExtenedSH;
wire [31:0] StoreOut;

//Division Stuff
wire QuotientWrite;
wire RemainderWrite;
wire [31:0] Remainder;
//End division stuff

wire JumpRegControl; //Control Signal for the Jump Register Mux
wire [31:0] PCorJumpReg;




 

initial
	begin
		  PC <= 0;
		  //PC <= NewPC;
	end
	

//Instantiate the adder for PC + 8 for JAL.  Input PC and a constant 8. Output is put into reg 31.
Adder Adder_PC_add_8(PC, 8, PC_plus_8);

//Instantiate Instruction Memory   Input is pc and output is Instruction
InstructionMemory InstructionMemory1(PC, Clk_t, Instruction);
	
//Instantiate Main Control Input is Instruction[31:26] or Opcode.     Output is bits for control RegDst, RegWrite, etc...
Controller MainControl1(Instruction[31:26], RegDst, Jump, BranchZ, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite, StoreSH, Clk_t, BNEControl);


//Instantiate 5 bit 2 to 1 MUX for WriteRegister.  Input is Instruction[20:16] and Instruction[15:11] from IR and output is WriteRegister to the Register file
//assign RegDst = 1;
Mux5Bit3To1WriteReg Mux5Bit3To1WriteReg1(Instruction[20:16], Instruction[15:11], 31, RegDst, WriteRegister);


//Instantiate Register File Input is Instruction from IR and output is Read Data 1 and Read Data 2
//assign RegWrite = 1;
//assign WriteData = 3'b111;
RegisterFile RegisterFile1(Instruction[25:21], Instruction[20:16], WriteRegister, WriteData, RegWrite,  Clk_t, ReadData1, ReadData2, QuotientWrite, RemainderWrite, Remainder);
              
//Instantiate SignExtension for SH.  Input is ReadData2 from Register.  Output is SignExtened and halfed output for mem store.  
SignExtension SignExtensionSH(ReadData2, SignExtenedSH);

//Instantiate 32 bit 2 to 1 MUX for store to memory.  Input is ReadData2 and SignExtended from register and output is B input of ALU 
Mux32Bit2To1 Mux32Bit2To1SH(ReadData2, SignExtenedSH, StoreSH, StoreOut);

////Instantiate Sign Extender.  Input is Instruction[15:0] from IR and output is a Sign Extended version of Instruction[15:0].
SignExtension SignExtension1(Instruction[15:0], SignExtended);

//Instantiate 5 bit 2 to 1 MUX for ALU.  Input is ReadData2 and SignExtended from register and output is B input of ALU 
//assign ALUSrc = 0;
Mux32Bit2To1 Mux32Bit2To1ALU(ReadData2, SignExtended, ALUSrc, B_ALU);

//Instantiate ALUControl.  Input is ALUOp, Instruction[5:0] for function.  Output is ALUctl to manipulate the ALU.  
//assign ALUOp = 3'b011;
ALUControl ALUControl1(Instruction[5:0], ALUOp, ALUctl, QuotientWrite, RemainderWrite, JumpRegControl);

//Instantiate MIPSALU.  Input is ReadData1 and B_ALU from Mux32Bit2To1ALU output as well as ALUctl. Output is ALUOut and Zero for now.  
//assign ALUctl = 4'b0110;
MIPSALU MIPSALU1(ReadData1, B_ALU, Instruction[10:6], ALUctl, ALUOut, Zero, pos, Negative, Remainder);

//Instantiate DataMemory.  Input is ALUOut from MIPSALU1 and ReadData2 from register file as well as MemRead and MemWrite for control.  Output is ReadData.  
//assign MemWrite = 0;
//assign MemRead = 1;
DataMemory DataMemory1(ALUOut, StoreOut, MemRead, MemWrite, , ReadData); 

//Instantiate SignExtension for LH.  Input is ReadData from DataMemory.  Output is SignExtened and halfed output from mem.  
SignExtension SignExtensionLH(ReadData, SignExtenedLH); 

//Instantiate Mux32Bit2To1WriteData Register.  Input is ReadData from DataMemory and ALUOut from MIPSALU1 as well as MemtoReg control.  Output is WriteData on Reg.  
//assign MemtoReg = 10;
Mux32Bit2To1WriteData Mux32Bit2To1WriteData_1(ALUOut, ReadData, SignExtenedLH, PC_plus_8, MemtoReg, WriteData); 

//And gate for branching
ANDGate ANDGate_Branch(BranchZ, ZeroXOR_4BLTZ, GoBranch);

//Instantiate the adder for PC + 4.  Input PC and a constant 4. Output is New PC.
Adder Adder_PC_add_4(PC, 1, PC_plus_4);

//Instantiate the shift left for branching.  Input is SignExtend.  Output is SignExtend shifted left by 2.
ShiftLeft2 ShiftLeft21(SignExtended, SignExtendedShiftLeft2);

//Instantiate the adder Branch.  Input is PC_plus_4 and SignExtendedShiftLeft2.  Output is BranchPC.
Adder Adder_Branch(PC_plus_4, SignExtendedShiftLeft2, BranchPC);

//Instantiate Mux32Bit2To1NewPC to NewPC.  Input is PC_plus_4 from and BranchPC as well as output from AND gate for branching for control.  Output is NewPC.
Mux32Bit2To1 Mux32Bit2To1NewPC(PC_plus_4, BranchPC, GoBranch, NewPC1); 

//Instantiate shifting and cocatenation of PC+4 with jump address.  Input is PC_plus_4 and Instruction[25:0].  Output is address to jump to JumpPC.
JumpExtend JumpExtend1(Instruction[25:0], PC_plus_4, JumpPC);

//Instantiate Mux32Bit2To1JumpPC for decision of Jump or Branch/PC+4.  Input is JumpPC and NewPC1 and Jump for Control.  Output is NewPC2.
//assign Jump = 0;
Mux32Bit2To1Jump Mux32Bit2To1JumpPC(NewPC1, JumpPC, Jump, NewPC2);

XOR3to1 BranchXORGate (
		.a(Zero),
		.b(Neg_AND_NOT_B_ALU),
		.c(BNEControl),
		.XORResult(ZeroXOR_4BLTZ));
		
ANDGate ANDGate_BLTZ(Negative, ~B_ALU, Neg_AND_NOT_B_ALU);

Mux32Bit2To1 Mux32Bit2To2JumpReg(NewPC2, ALUOut, JumpRegControl, PCorJumpReg);//Place the new control signal here.
//module Mux32Bit2To1(a, b, op, result); 

//set up clock
always
   begin
      Clk_t <= 0;
      #25;
      Clk_t <= 1;
		PC <= PC + 1; //Enable the PC
		//PC <= NewPC2; //Uncommentto enable branches
      #25;
   end


endmodule

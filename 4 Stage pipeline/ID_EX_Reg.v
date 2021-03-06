`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:08 11/21/2007 
// Design Name: 
// Module Name:    ID_EX_Reg 
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
module ID_EX_Reg(PC_plus_4_in, ReadData1_in, ReadData2_in, ReadData1_out, ReadData2_out, SignExtend_in, SignExtend_out, PC_Plus_4_out, Instruction16to20_in, Instruction16to20_out, Instruction25to21_in, Instruction25to21_out, Clk, OpCode_in, OpCode_out, ALUOp, RegDst, ALUSrc, FlushRegisters);
    //Control Items
	 input [5:0] OpCode_in;
	 output reg [5:0] OpCode_out;
	 output reg [1:0] ALUOp;
	 output reg RegDst;
	 output reg ALUSrc;
	 input  FlushRegisters;
	 
	 // I/O Segment
	 input [31:0] PC_plus_4_in;
    input [31:0] ReadData1_in;
    input [31:0] ReadData2_in;
    output reg [31:0] ReadData1_out;
    output reg [31:0] ReadData2_out;
    input [31:0] SignExtend_in;
    output reg [31:0] SignExtend_out;
    output reg [31:0] PC_Plus_4_out;
	 input [4:0] Instruction25to21_in;
    output reg [4:0] Instruction25to21_out;
    input [4:0] Instruction16to20_in;
    output reg [4:0] Instruction16to20_out;
    input Clk;

	always @ (posedge Clk) //Reading Phase
	begin
	end
	
	always @ (negedge Clk) //Writing Phase
	begin
	if( FlushRegisters == 1)
	begin
		PC_Plus_4_out <= 0;
		ReadData1_out <= 0;
		ReadData2_out <= 0;
		SignExtend_out <= 0;
		Instruction16to20_out <= 0;
		Instruction25to21_out <= 0;
		OpCode_out <= 0;
		RegDst <= 0;
		ALUOp <= 0;
		ALUSrc <= 0;
	end
	else
	begin
		PC_Plus_4_out <= PC_plus_4_in;
		ReadData1_out <= ReadData1_in;
		ReadData2_out <= ReadData2_in;
		SignExtend_out <= SignExtend_in;
		Instruction16to20_out <= Instruction16to20_in;
		Instruction25to21_out <= Instruction25to21_in;
		OpCode_out <= OpCode_in;
		
		case(OpCode_in)
			6'b001000:	//Addi
							begin
								RegDst <= 0;
								ALUOp <= 2'b01;
								ALUSrc <= 1;
							end
			6'b000100: //Beq
							begin
								RegDst <= 0;
								ALUOp <= 2'b11;
								ALUSrc <= 0;
							end
			6'b000101: //Bne
							begin
								RegDst <= 0;
								ALUOp <= 2'b11;
								ALUSrc <= 0;
							end
			6'b000000: //Div
							begin
								RegDst <= 1;
								ALUOp <= 2'b10;
								ALUSrc <= 0;
							end
	/*		default:
				begin
					PC_Plus_4_out <= 0;
					ReadData1_out <= 0;
					ReadData2_out <= 0;
					SignExtend_out <= 0;
					Instruction16to20_out <= 0;
					Instruction25to21_out <= 0;
					OpCode_out <= 0;
					RegDst <= 0;
					ALUOp <= 0;
					ALUSrc <= 0;
				end*/
		endcase
		
	end
		$display("ID_EX_Reg Input: At t=%t / PC=%d / Reg_Data1=%d / Reg_Data2=%d / ALUOpCode=%b", $time, PC_plus_4_in, OpCode_in, FlushRegisters, ReadData1_in, ReadData2_in, SignExtend_in, Instruction25to21_in, Instruction16to20_in);
		$display("ID_EX_Reg Output: At t=%t / PC=%d / OpCode=%b / RegDst=%d / ALUSrc=%b / ReadData1=%b / ReadData2=%b / Inst.[25:21]=%b/ Inst.[20:16]=%b", $time, PC_Plus_4_out, OpCode_out, ALUOp, RegDst, ALUSrc, ReadData1_out, ReadData2_out, Instruction25to21_out, Instruction16to20_out);
	end
 
endmodule

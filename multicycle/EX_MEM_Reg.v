`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:57 11/21/2007 
// Design Name: 
// Module Name:    EX_MEM_Reg 
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
module EX_MEM_Reg(BranchTarget_in, BranchTarget_out, Zero_in, Zero_out, ALU_Result_in, ALU_Result_out, ReadData2_in, ReadData2_out, RegDst_Mux_Result_in, RegDst_Mux_Result_out, Clk, OpCode_in, RegWrite, WriteRemainder, Branch, Bne/*, FlushRegisters*/);
    //Control
	 input [5:0] OpCode_in;
	 output reg RegWrite;
	 output reg WriteRemainder;
	 output reg Branch;
	 output reg Bne;
	 //input FlushRegisters;
	 
	 
	 //I/O
	 input [31:0] BranchTarget_in;
    output reg [31:0] BranchTarget_out;
    input Zero_in;
    output reg Zero_out;
    input [31:0] ALU_Result_in;
    output reg [31:0] ALU_Result_out;
    input [31:0] ReadData2_in;
    output reg [31:0] ReadData2_out;
    input [4:0] RegDst_Mux_Result_in;
    output reg [4:0] RegDst_Mux_Result_out;
	 input Clk;
	

	always @ (posedge Clk) //Reading Phase
	begin
	end
	
	always @ (negedge Clk) //Writing Phase
	begin
	/*if(FlushRegisters == 1)
		begin
			BranchTarget_out <= 0;
			Zero_out <= 0;
			ALU_Result_out <= 0;
			RegDst_Mux_Result_out <= 0;
			ReadData2_out <= 0;
			RegWrite <= 0;
			WriteRemainder <= 0;
			Branch <= 0;
			Bne <= 0;
		end
	else
		begin*/
		BranchTarget_out <= BranchTarget_in;
		Zero_out <= Zero_in;
		ALU_Result_out <= ALU_Result_in;
		RegDst_Mux_Result_out <= RegDst_Mux_Result_in;
		ReadData2_out <= ReadData2_in;
		
		
		case (OpCode_in)
		6'b001000:	//Addi
							begin
								RegWrite <= 1;
								WriteRemainder <= 0;
								Branch <= 0;
								Bne <= 0;
							end
			6'b000100: //Beq
							begin
								RegWrite <= 0;
								WriteRemainder <= 0;
								Branch <= 1;
								Bne <= 0;
							end
			6'b000101: //Bne
							begin
								RegWrite <= 0;
								WriteRemainder <= 0;
								Branch <= 1;
								Bne <= 1;
							end
			6'b000000: //Div
							begin
								RegWrite <= 0;
								WriteRemainder <= 1;
								Branch <= 0;
								Bne <= 0;
							end
			default: begin
				//BranchTarget_out <= 0;
				//Zero_out <= 0;
				//ALU_Result_out <= 0;
				//RegDst_Mux_Result_out <= 0;
				//ReadData2_out <= 0;
				//RegWrite <= 0;
				//WriteRemainder <= 0;
				//Branch <= 0;
				Bne <= 0;
			end
			
		endcase
		end

endmodule

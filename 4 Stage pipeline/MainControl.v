`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:37 11/07/2007 
// Design Name: 
// Module Name:    Controller 
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
module Controller(OpCode, RegDst, Jump, BranchZ, MemRead, MemToReg, ALUOp, MemWrite, ALUSrc, RegWrite, StoreSrc, clk, BNEControl);
    input [5:0] OpCode;
	 input clk;
    output reg [1:0] RegDst;
    output reg Jump;
    output reg BranchZ;
//	 output reg BranchS;
    output reg MemRead;
    output reg [1:0] MemToReg;
    output reg [2:0] ALUOp;
    output reg MemWrite;
    output reg ALUSrc;
    output reg RegWrite;
	 output reg StoreSrc;
	 output reg BNEControl;
	 
	 always @ (OpCode)
	 begin

		if(OpCode == 6'b000001) //bgez, BLTZ
		begin
			ALUOp 	<= 1;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 1;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 0;
			StoreSrc <= 0;
//			BranchS  <= 1; 
			BNEControl <= 0;
			
		end
		else if(OpCode == 6'b000010) //Jump
		begin
			ALUOp 	<= 0;
			RegDst 	<= 0;
			Jump 		<= 1;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 0;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'd3) //jal
		begin
			ALUOp 	<= 0;
			RegDst 	<= 2;
			Jump 		<= 1;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 3;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 1;
			StoreSrc <= 0;			
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b000100) //beq
		begin
			ALUOp 	<= 1;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 1;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 0;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
			
		end
		else if(OpCode == 6'b000101) //bne
		begin
			ALUOp 	<= 1;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 1;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 0;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 1;
			
		end
		else if(OpCode == 6'b011100) //mul
		begin
			ALUOp 	<= 5;
			RegDst 	<= 1;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
//		else if(OpCode == 6'd0 || OpCode == 6'd9 || OpCode == 6'd37) // OpCode == 6'd9 || OpCode == 6'd37 Does not exist. 
		else if(OpCode == 6'b000000) //div and all R-Type
		begin
			ALUOp 	<= 2;
			RegDst 	<= 1;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 0;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b001000) // slti
		begin
			ALUOp 	<= 4;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b001010 ) // slti
		begin
			ALUOp 	<= 7;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end		
		else if(OpCode == 6'b001100) //ANDI
		begin
			ALUOp 	<= 3;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b001101) //ORI
		begin
			ALUOp 	<= 6;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b100011) //lw 
		begin
			ALUOp 	<= 0;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 1;
			MemToReg <= 1;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
			BNEControl <= 0;
		end
		else if(OpCode == 6'b100001) //lh
		begin
			ALUOp 	<= 0;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 1;
			MemToReg <= 2;
			MemWrite <= 0;
			ALUSrc	<= 1;
			RegWrite <= 1;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
		end
		else if(OpCode == 6'b101011) //sw, 
		begin
			ALUOp 	<= 0;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 1;
			ALUSrc	<= 1;
			RegWrite <= 0;
			StoreSrc <= 0;
//			BranchS  <= 0;
BNEControl <= 0;
			
			
		end
		else if(OpCode == 6'b101001) // sh  
		begin
			ALUOp 	<= 0;
			RegDst 	<= 0;
			Jump 		<= 0;
			BranchZ 	<= 0;
			MemRead 	<= 0;
			MemToReg <= 0;
			MemWrite <= 1;
			ALUSrc	<= 1;
			RegWrite <= 0;
			StoreSrc <= 1;
//			BranchS  <= 0;
BNEControl <= 0;
			
			
		end
		
	 end


endmodule

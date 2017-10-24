`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:47 11/21/2007 
// Design Name: 
// Module Name:    IF_ID_Reg 
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
module IF_ID_Reg(PC_Plus_4_in, Instruction_in, Instruction_out, Clk, PC_Plus_4_out, FlushRegisters);
    input [31:0] PC_Plus_4_in;
    input [31:0] Instruction_in;
    output reg [31:0] Instruction_out;
    input Clk;
    output reg [31:0] PC_Plus_4_out;
	 input FlushRegisters;

	always @ (negedge Clk) //Writing Phase
	begin
		if(FlushRegisters == 1)
		begin
			Instruction_out <= 0;
			PC_Plus_4_out <= 0;
		end
		else
		begin
			Instruction_out <= Instruction_in;
			PC_Plus_4_out <= PC_Plus_4_in;
		end
		
	end

endmodule

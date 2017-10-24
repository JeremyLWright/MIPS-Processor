`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jeremy Wright
// 
// Create Date:    21:25:24 09/09/2007 
// Design Name:  Homework 2
// Module Name:    MIPSALU 
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
module MIPSALU(A, B, ALUctl, ALUOut, Zero);
    
    input [31:0] A;
    input [31:0] B;
	 input [1:0] ALUctl;
    output reg [31:0] ALUOut;
    output Zero;

	assign Zero = (ALUOut == 0);

	always @(ALUctl, A, B) begin
		case (ALUctl)
			2'b01: ALUOut <= A + B; //add
			2'b11: ALUOut <= A - B;	//sub
			2'b10: ALUOut <= A % B;	//modulous
			default: ALUOut <= 0;
		endcase
	//Zero <= (ALUOut == 0);

	/*	if(ALUOut == 0)
			Zero <= 1;
		else
			Zero <= 0;*/
		end
		
		
		
endmodule

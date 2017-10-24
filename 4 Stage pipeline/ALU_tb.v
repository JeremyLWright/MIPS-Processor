`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:10 11/07/2007 
// Design Name: 
// Module Name:    ALU_tb 
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
module ALU_tb();

reg [31:0] A_t, B_t;
reg [3:0] ALUctl_t;

wire [31:0] ALUOut_t;
wire Zero_t;
wire pos_t;
wire neg_t;


//MIPSALU MIPSALU1(A_t, B_t, ALUctl_t, ALUOut_t, Zero_t, pos_t, neg_t);

initial
	begin
		  A_t <= 32'b10000000000000000000000000000001;
		  B_t <= 32'b0;
		  ALUctl_t = 2;
	end
	


endmodule

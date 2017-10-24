`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:11 11/13/2007 
// Design Name: 
// Module Name:    JumpExtend 
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
module JumpExtend(a, b, result);

input [25:0] a;   //LSB of jump 
input [31:0] b;	//MSB of pc+4
output [31:0] result;


  reg [27:0] a_shifted;
  reg [31:0] result;               // MSBs appended to a
  
//assign a_zeros = 0;
		
always @ (a,b)	//everytime a and b exists run this 					
	begin
		a_shifted = a*4;   // Shift left a 2 bits. 
		result = {b[31:28],a_shifted}; // Concatenate the 4 MSB of B to the 26 LSB of a
	end
endmodule


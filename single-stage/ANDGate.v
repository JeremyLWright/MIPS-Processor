`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:11 11/10/2007 
// Design Name: 
// Module Name:    ANDGate 
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
module ANDGate(A, B, result);

input A, B;
output reg result;


always @ (A, B)
	begin 
		result <= A & B;
	end
	
endmodule

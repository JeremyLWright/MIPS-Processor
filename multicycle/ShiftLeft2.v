`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:10 11/11/2007 
// Design Name: 
// Module Name:    ShiftLeft2 
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
module ShiftLeft2(a, result);

input [31:0] a;
output reg [31:0] result;

always @ (a)
	begin 
		result <= a*4;
	end
 
endmodule

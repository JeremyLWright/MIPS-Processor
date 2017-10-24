`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:58 10/09/2007 
// Design Name: 
// Module Name:    Mux32bit2to1 
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

//Structural Code
module Mux32Bit2To1(a, b, op, result); 

input [31:0] a, b; // input 
input op; // mux output select
//output [31:0] result; // output
output [31:0] result;

//assign result = (a & (~op)) | (b & op); //When mux select is 0 the output will be a
													 //When mux select is 1 the output will be b
reg [31:0] result;

//always @ (a, b, op) 
always @ (op or a or b) 
begin
	if (op == 0)
		result <= a;
		else if (op == 1)
		result <= b;
		
/*	case(op)
		1'b0: result[31:0] = a[31:0];
		1'b1: result[31:0] = b[31:0];
	endcase */
	
end

endmodule

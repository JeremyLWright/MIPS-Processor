`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:36 10/09/2007 
// Design Name: 
// Module Name:    Mux5Bit2To1 
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
module Mux5Bit2To1(a, b, op, result); 

input [4:0] a, b; // input 
input op; // mux output select
output [4:0] result; // output

//assign result = ((a & (~op)) | (b & op)); //When mux select is 0 the output will be a
													 //When mux select is 1 the output will be b
reg [4:0] result;
always @ (op, a, b) 
begin
	case(op)
		1'b0: result[4:0] = a[4:0];
		1'b1: result[4:0] = b[4:0];
	endcase
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:54:24 11/15/2007 
// Design Name: 
// Module Name:    OR_T 
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
module OR_T();

reg  a_t,b_t,c_t,d_t;
wire  result_t;

ORGate ORGate1(a_t, b_t, c_t, d_t, result_t);

initial 
	begin 
		a_t <= 0;
		b_t <= 0;
		c_t <= 1;
		d_t <= 0;
	end
	
endmodule


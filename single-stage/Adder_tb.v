`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:52 11/11/2007 
// Design Name: 
// Module Name:    Adder_tb 
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
module Adder_tb();

reg [31:0] a_t,b_t;
wire [31:0] result_t;

//Adder Adder_t(a_t, b_t, result_t);

initial 
	begin 
		a_t <= 1;
		b_t <= 2;
	end
	
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:45 11/13/2007 
// Design Name: 
// Module Name:    JumpExtend_t 
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
module JumpExtend_t();

reg [25:0] a_t;
reg [31:0] b_t;
wire [31:0] result_t;

JumpExtend JumpExtend1(a_t, b_t, result_t);

initial 
	begin 
		a_t <= 1;
		b_t <= 32'b01000000000000000000000000000000;
		
	end


endmodule

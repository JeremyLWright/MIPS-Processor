`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:37 11/15/2007 
// Design Name: 
// Module Name:    XOR3to1 
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
module XOR3to1(a, b, c, XORResult);
    input a;
    input b;
    input c;
    output XORResult;
	
	assign XORResult = a ^ b ^ c;

endmodule

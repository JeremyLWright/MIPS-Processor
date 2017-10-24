`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:21 11/15/2007 
// Design Name: 
// Module Name:    XOR2to1 
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
module XORGate(a, b, axorb);
    input a;
    input b;
    output reg axorb;
always @ (a, b)
begin
	axorb <= a ^ b;
end
endmodule

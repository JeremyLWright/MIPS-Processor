`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:32 11/23/2007 
// Design Name: 
// Module Name:    Mux5Bit3To1 
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
module Mux5Bit3To1(a, b, c, op, result);
    input [4:0] a;
    input [4:0] b;
    input [4:0] c;
    input [1:0] op;
    output reg [4:0] result;

always @ (op, a, b, c) 
begin
	case(op)
		2'b00: result = a;
		2'b10: result = b;
		2'b11: result = c;
	endcase
end

endmodule

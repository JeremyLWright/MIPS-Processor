`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:45 11/21/2007 
// Design Name: 
// Module Name:    PC 
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
module PC(Address_in, Address_out);
    input [31:0] Address_in;
    output reg [31:0] Address_out;
	
	always @ (Address_in)
	begin
		Address_out <= Address_in;
	end

endmodule

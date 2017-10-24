`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:43 11/23/2007 
// Design Name: 
// Module Name:    One_Cycle_Delay 
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
module One_Cycle_Delay(a, a_delayed, clk);
    input [4:0] a;
    output reg [4:0] a_delayed;
	 input clk;

	always @ (negedge clk)
	begin
		a_delayed <= a;
	end
	

endmodule

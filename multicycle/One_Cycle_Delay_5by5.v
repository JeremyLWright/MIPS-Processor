`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:42 11/28/2007 
// Design Name: 
// Module Name:    One_Cycle_Delay_5by5 
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
module One_Cycle_Delay_5by5(a, a_delayed, clk, FlushRegisters);
    input [5:0] a;
	 input FlushRegisters; //KC
    output reg [5:0] a_delayed;
    input clk;

	always @ (negedge clk)
	begin										//KC begin
		if(FlushRegisters == 1)
		begin
			a_delayed <= 0;
		end
		else									//KC End
	begin
		a_delayed <= a;
	end
	
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:31 11/23/2007 
// Design Name: 
// Module Name:    Forwarding_Unit 
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
module Forwarding_Unit(ForwardA, ForwardB, Rs, Rt, EX_MEM_RegisterRd);
    output reg ForwardA;
    output reg ForwardB;
    input [4:0] Rs;
    input [4:0] Rt;
    input [4:0] EX_MEM_RegisterRd;

always @ (Rs, Rt, EX_MEM_RegisterRd)
begin
	if (EX_MEM_RegisterRd == Rs)
	
		 ForwardA <= 1;
		 
		 else ForwardA <= 0;
		
	if (EX_MEM_RegisterRd == Rt)
	
		 ForwardB <= 1;
		 
		 else ForwardB <= 0;
end		

endmodule

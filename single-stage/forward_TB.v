`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:22 11/25/2007 
// Design Name: 
// Module Name:    forward_TB 
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
module forward_TB();

    wire ForwardA_t;
    wire ForwardB_t;
     reg [4:0] Rs_t;
     reg [4:0] Rt_t;
     reg [4:0] EX_MEM_RegisterRd_t;


//Forwarding_Unit Forward1(ForwardA_t, ForwardB_t, Rs_t, Rt_t, EX_MEM_RegisterRd_t);


	
initial
	begin
		Rs_t <= 1;
		Rt_t <= 2;
		EX_MEM_RegisterRd_t <= 1;
	end
	
		

endmodule

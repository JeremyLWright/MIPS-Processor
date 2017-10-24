`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:31 10/18/2007 
// Design Name: 
// Module Name:    SignExtender 
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
module SignExtension(a, result); 

input [15:0] a; // 16-bit input 
output [31:0] result; // 32-bit output

  reg [15:0] a_ext;                // potential MSBs of a 
  reg [31:0] result;               // MSBs appended to a
  
		
always @ (a)	//everytime a exists run this 					
	begin
		case(a[15])	
			1'b0: a_ext = 16'b0000000000000000;   //If 15th bit of a is 0 make all 16 bits of a_ext equal to 0
			1'b1: a_ext = 16'b1111111111111111;	  //If 15th bit of a is 1 make all 16 bits of a_ext equal to 1
		endcase		
			
			result = {a_ext,a};	// Append the 16 bit a_ext to the 16 bit a to make a 32 bit result
			
	end
endmodule
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:00:46 11/15/2007
// Design Name:   XOR2to1
// Module Name:   C:/Users/Jeremy/Documents/Fall 07/369/Project/Single_cycle_data_path/XOR2to1TB.v
// Project Name:  Single_cycle_data_path
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XOR2to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module XOR2to1TB_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire axorb;

	// Instantiate the Unit Under Test (UUT)
	XORGate uut (
		.a(a), 
		.b(b), 
		.axorb(axorb)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 1;
		#25;
		b = 1;
		#25;
		a = 0;
		#25
		b = 0;

	end
      
endmodule


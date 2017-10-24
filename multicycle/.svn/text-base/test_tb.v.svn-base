`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kevin Carr Jeremy Wright
// 
// Create Date:    10:54:32 10/07/2007 
// Design Name: 
// Module Name:    register_file_tb 
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
module register_file_tb();

//input stimuli
reg [4:0] ReadRegister1_t, ReadRegister2_t;
reg [4:0] WriteRegister_t;
reg [31:0] WriteData_t;
reg RegWrite_t;
reg Clk_t;

//output 
wire [31:0]  ReadData1_t, ReadData2_t;

//instantiate (aka make it happen) an instance of RegisterFile
//RegisterFile RegisterFile_1(ReadRegister1_t, ReadRegister2_t, WriteRegister_t, WriteData_t, RegWrite_t, Clk_t, ReadData1_t, ReadData2_t);

//set up clock
always
   begin
      Clk_t <= 0;
      #25;
      Clk_t <= 1;
      #25;
   end


// test register functionality
 initial
   begin

      //     Writes to all registers to make sure they work. 
		RegWrite_t <= 1;
		WriteRegister_t = 0;
		WriteData_t = 0;
		#27 WriteRegister_t = 1;
		#26 WriteData_t = 1;
		#27 WriteRegister_t = 2;
		#26 WriteData_t = 2;		
		#27 WriteRegister_t = 3;
		#26 WriteData_t = 3;	
		#27 WriteRegister_t = 4;
		#26 WriteData_t = 4;	
		#27 WriteRegister_t = 5;
		#26 WriteData_t = 5;	
		#27 WriteRegister_t = 6;
		#26 WriteData_t = 6;	
		#27 WriteRegister_t = 7;
		#26 WriteData_t = 7;
		#27 WriteRegister_t = 8;
		#26 WriteData_t = 8;
		#27 WriteRegister_t = 9;
		#26 WriteData_t = 9;	
		#27 WriteRegister_t = 10;
		#26 WriteData_t = 10;
		#27 WriteRegister_t = 11;
		#26 WriteData_t = 11;
		#27 WriteRegister_t = 12;
		#26 WriteData_t = 12;		
		#27 WriteRegister_t = 13;
		#26 WriteData_t = 13;	
		#27 WriteRegister_t = 14;
		#26 WriteData_t = 14;	
		#27 WriteRegister_t = 15;
		#26 WriteData_t = 15;	
		#27 WriteRegister_t = 16;
		#26 WriteData_t = 16;	
		#27 WriteRegister_t = 17;
		#26 WriteData_t = 17;
		#27 WriteRegister_t = 18;
		#26 WriteData_t = 18;
		#27 WriteRegister_t = 19;
		#26 WriteData_t = 19;	
		#27 WriteRegister_t = 20;
		#26 WriteData_t = 20;
		#27 WriteRegister_t = 21;
		#26 WriteData_t = 21;
		#27 WriteRegister_t = 22;
		#26 WriteData_t = 22;		
		#27 WriteRegister_t = 23;
		#26 WriteData_t = 23;	
		#27 WriteRegister_t = 24;
		#26 WriteData_t = 24;	
		#27 WriteRegister_t = 25;
		#26 WriteData_t = 25;	
		#27 WriteRegister_t = 26;
		#26 WriteData_t = 26;	
		#27 WriteRegister_t = 27;
		#26 WriteData_t = 27;
		#27 WriteRegister_t = 28;
		#26 WriteData_t = 28;
		#27 WriteRegister_t = 29;
		#26 WriteData_t = 29;	
		#27 WriteRegister_t = 30;
		#26 WriteData_t = 30;
		#27 WriteRegister_t = 31;
		#26 WriteData_t = 31;
		#25 RegWrite_t <= 0;
		#27 WriteRegister_t = 0;
		#26 WriteData_t = 31;
		
		
		//  Read out put 1
		#27 ReadRegister1_t = 0;
		#27 ReadRegister1_t = 1;
		#27 ReadRegister1_t = 2;
		#27 ReadRegister1_t = 3;


		// Read out put 2
		#27 ReadRegister2_t = 25;

		

   end

endmodule

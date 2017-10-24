`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:43 10/07/2007 
// Design Name: 
// Module Name:    register_file 
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
module RegisterFile(ReadRegister1, ReadRegister2, WriteRegister, WriteData, RegWrite, Clk, ReadData1, ReadData2, WriteRemainder);

input [4:0] ReadRegister1, ReadRegister2; // Two registers to be read
input [4:0] WriteRegister; // Register address to write into
input [31:0] WriteData; // Data to be written into WriteRegister
input RegWrite; 	// RegWrite control signal. Data is written
   					// only when this signal is enabled
						
//Division Stuff
input WriteRemainder;
//End Division Stuff
input Clk;
output [31:0] ReadData1, ReadData2; // Define outputs

reg [31:0]  ReadData1, ReadData2; // define output registers 
reg [31:0]  R00, R01, R02, R03, R04, R05, R06, R07, R08, R09, R10, R11, R12, R13, R14, R15, //Define internal registers
				R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31; //Define internal registers

initial
	begin
		 R00 <= 0; //d0

	end
	

//always @ (posedge Clk)  // Select register 1 and output on read data 1 This was dfor HW
always @ (ReadRegister1)  // Select register 1 and output on read data 1.  This is for Project.

   begin
     // if(RegWrite == 0)
			case(ReadRegister1)
				5'd0: ReadData1 = R00;
				5'd1: ReadData1 = R01;
				5'd2: ReadData1 = R02; 
				5'd3: ReadData1 = R03; 
				5'd4: ReadData1 = R04; 
				5'd5: ReadData1 = R05; 
				5'd6: ReadData1 = R06; 
				5'd7: ReadData1 = R07; 
				5'd8: ReadData1 = R08; 
				5'd9: ReadData1 = R09; 
				5'd10: ReadData1 = R10; 
				5'd11: ReadData1 = R11; 
				5'd12: ReadData1 = R12; 
				5'd13: ReadData1 = R13; 
				5'd14: ReadData1 = R14; 
				5'd15: ReadData1 = R15; 
				5'd16: ReadData1 = R16; 
				5'd17: ReadData1 = R17; 
				5'd18: ReadData1 = R18; 
				5'd19: ReadData1 = R19; 
				5'd20: ReadData1 = R20;		
				5'd21: ReadData1 = R21;					
    			5'd22: ReadData1 = R22;	
				5'd23: ReadData1 = R23;	
				5'd24: ReadData1 = R24;
				5'd25: ReadData1 = R25;
				5'd26: ReadData1 = R26;
				5'd27: ReadData1 = R27;				
				5'd28: ReadData1 = R28;				
				5'd29: ReadData1 = R29;
				5'd30: ReadData1 = R30;
				5'd31: ReadData1 = R31;
				default: ReadData1 = 0;
   endcase
end

//always @ (posedge Clk)  // Select register 2 and output on read data 2
always @ (ReadRegister2) 
   begin
		//if(RegWrite == 0)
			case(ReadRegister2)
				5'd0: ReadData2 = R00; 
				5'd1: ReadData2 = R01;
				5'd2: ReadData2 = R02;
				5'd3: ReadData2 = R03; 
				5'd4: ReadData2 = R04; 
				5'd5: ReadData2 = R05; 
				5'd6: ReadData2 = R06; 
				5'd7: ReadData2 = R07; 
				5'd8: ReadData2 = R08; 
				5'd9: ReadData2 = R09; 
				5'd10: ReadData2 = R10; 
				5'd11: ReadData2 = R11;
				5'd12: ReadData2 = R12;
				5'd13: ReadData2 = R13; 
				5'd14: ReadData2 = R14; 
				5'd15: ReadData2 = R15; 
				5'd16: ReadData2 = R16; 
				5'd17: ReadData2 = R17; 
				5'd18: ReadData2 = R18; 
				5'd19: ReadData2 = R19; 
				5'd20: ReadData2 = R20;		
				5'd21: ReadData2 = R21;			
    			5'd22: ReadData2 = R22;	
				5'd23: ReadData2 = R23;	
				5'd24: ReadData2 = R24;
				5'd25: ReadData2 = R25;
				5'd26: ReadData2 = R26;
				5'd27: ReadData2 = R27;				
				5'd28: ReadData2 = R28;				
				5'd29: ReadData2 = R29;
				5'd30: ReadData2 = R30;
				5'd31: ReadData2 = R31;
				default: ReadData2 = 0;
   endcase
end

				

always @ (WriteData, WriteRemainder, WriteRegister)
//always @ (negedge Clk)
   begin
      if(RegWrite == 1)
			case(WriteRegister)
				5'd0: R00 = WriteData; 
				5'd1: R01 = WriteData; 
				5'd2: R02 = WriteData; 
				5'd3: R03 = WriteData; 
				5'd4: R04 = WriteData; 
				5'd5: R05 = WriteData; 
				5'd6: R06 = WriteData; 
				5'd7: R07 = WriteData; 
				5'd8: R08 = WriteData; 
				5'd9: R09 = WriteData; 
				5'd10: R10 = WriteData; 
				5'd11: R11 = WriteData; 
				5'd12: R12 = WriteData; 
				5'd13: R13 = WriteData; 
				5'd14: R14 = WriteData; 
				5'd15: R15 = WriteData; 
				5'd16: R16 = WriteData; 
				5'd17: R17 = WriteData; 
				5'd18: R18 = WriteData; 
				5'd19: R19 = WriteData; 
				5'd20: R20 = WriteData;		
				5'd21: R21 = WriteData;					
    			5'd22: R22 = WriteData;	
				5'd23: R23 = WriteData;	
				5'd24: R24 = WriteData;
				5'd25: R25 = WriteData;
				5'd26: R26 = WriteData;
				5'd27: R27 = WriteData;				
				5'd28: R28 = WriteData;				
				5'd29: R29 = WriteData;
				5'd30: R30 = WriteData;
				5'd31: R31 = WriteData;
   endcase
	if(WriteRemainder == 1)
	begin
		R30 <= WriteData; //The Remainder
	end
end
/*
always @(WriteRemainder, WriteQuotient)
	if(WriteRemainder == 1 && WriteQuotient == 1)
	begin
		R29 <= Quotient;
		R30 <= Remainder;
	end
end*/

endmodule

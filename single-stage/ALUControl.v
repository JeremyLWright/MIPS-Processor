`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:22 09/09/2007 
// Design Name:  
// Module Name:    ALUControl 
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
module ALUControl(Function, ALUOp, ControlALU, WriteQuotient, WriteRemainder, JumpReg);
    input	[5:0] Function;			
	 input 	[2:0] ALUOp;
    output reg [3:0] ControlALU;
	 output reg WriteQuotient;
	 output reg WriteRemainder;
	 output reg JumpReg;
	 

	 
always @(ALUOp or Function)
begin
	case(ALUOp)
	3'b000:
				begin
					 assign ControlALU = 4'b0010; //LW, SW, LH, SH, and BGEZ uses Add
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b001:
				begin
					 assign ControlALU = 4'b0110; //BEQ, BNE, uses sub
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b011:
				begin
					 assign ControlALU = 4'b0000; //andi
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		 
	3'b100:
				begin
					 assign ControlALU = 4'b0010; //Addi
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b101:
				begin
					 assign ControlALU = 4'b0011; //MUL
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b110:
				begin
					 assign ControlALU = 4'b0001; //ori
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b111:
				begin
					 assign ControlALU = 4'b0111; //slti
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
	3'b010:
		begin 								//R-Type
			case(Function)
				6'b000000:
				begin
					 assign ControlALU = 4'b1001; //Shift Left Logical
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b000010:
				begin
					 assign ControlALU = 4'b1010; //Shift Right Logical
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100000:
				begin
					 assign ControlALU = 4'b0010; //add
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100001:
				begin
					 assign ControlALU = 4'b0010; //add unsigned
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100010:
				begin
					 assign ControlALU = 4'b0110; //subtract
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100011:
				begin
					 assign ControlALU = 4'b0110; //subtract unsigned
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100100:
				begin
					 assign ControlALU = 4'b0000; //and
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100101:
				begin
					 assign ControlALU = 4'b0001; //or
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b101010:
				begin
					 assign ControlALU = 4'b0111; //set on less than
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b100110:
				begin
					 assign ControlALU = 4'b0101; //xor
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end			
				6'b100111:
				begin
					 assign ControlALU = 4'b1100; //nor
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 0;
				end		
				6'b011010:
				begin
					assign ControlALU = 4'b1101; //divide
					assign WriteQuotient = 1;
					assign WriteRemainder = 1;
					assign JumpReg = 0;
				end
				6'b001000: //Jump Register
				begin
					assign ControlALU = 4'b1111; //Pass A through
					assign WriteQuotient = 0;
					assign WriteRemainder = 0;
					assign JumpReg = 1;
				end
			endcase
		 end
	endcase
end
endmodule





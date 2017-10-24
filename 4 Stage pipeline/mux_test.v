module mux_test(a, b, op, result); 
input [4:0] a, b; // 5-bit inputs 
input op; // one-bit selection input 
output [4:0] result; // 5-bit output
reg [4:0] result;
always @ (op) 
begin
	case(op)
		1'b0: result[4:0] = a[4:0];
		1'b1: result[4:0] = b[4:0];
	endcase
end
endmodule

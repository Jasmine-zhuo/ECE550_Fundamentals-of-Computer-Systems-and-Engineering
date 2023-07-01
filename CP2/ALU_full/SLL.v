module SLL(result,a,ctrl_shiftamt);
	input [31:0] a;
	input [4:0] ctrl_shiftamt;
	output [31:0] result;
	wire [31:0] result0, result1, result2, result3;
	
	
	assign result0 = ctrl_shiftamt[0] ? {a[30:0], 1'b0} : a;
	assign result1 = ctrl_shiftamt[1] ? {result0[29:0], 2'b00} : result0;
	assign result2 = ctrl_shiftamt[2] ? {result1[27:0], 4'h0} : result1;
	assign result3 = ctrl_shiftamt[3] ? {result2[23:0], 8'h00} : result2;
	assign result  = ctrl_shiftamt[4] ? {result3[15:0], 16'h0000} : result3;
	
endmodule
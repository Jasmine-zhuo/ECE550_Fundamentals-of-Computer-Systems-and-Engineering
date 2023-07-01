module SRA(result,a, ctrl_shiftamt);
	input [31:0] a;
	input [4:0] ctrl_shiftamt;
	output [31:0] result;
	wire [31:0] result0, result1, result2, result3, result4, result5, result6, result7, result8, result9;
	
	assign result0 = ctrl_shiftamt[0] ? {1'b0, a[31:1]} : a;
	assign result1 = ctrl_shiftamt[1] ? {2'b00, result0[31:2]} : result0;
	assign result2 = ctrl_shiftamt[2] ? {4'h0, result1[31:4]} : result1;
	assign result3 = ctrl_shiftamt[3] ? {8'h00, result2[31:8]} : result2;
	assign result4 = ctrl_shiftamt[4] ? {16'h0000, result3[31:16]} : result3;
	
	assign result5 = ctrl_shiftamt[0] ? {1'b1, a[31:1]} : a;
	assign result6 = ctrl_shiftamt[1] ? {2'b11, result5[31:2]} : result5;
	assign result7 = ctrl_shiftamt[2] ? {4'hf, result6[31:4]} : result6;
	assign result8 = ctrl_shiftamt[3] ? {8'hff, result7[31:8]} : result7;
	assign result9 = ctrl_shiftamt[4] ? {16'hffff, result8[31:16]} : result8;
	
	assign result = a[31] ? result9 : result4;
endmodule
module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	
	wire add_cin,sub_cin,add_cout,sub_cout,add_overflow,sub_overflow;
	//wire [31:0]deci;//depend on opcode
	wire [31:0] add_result, sub_result, AND_result, OR_result, SRA_result, SLL_result;
	
	
	
	//test code begins
 //output [31:0] add_result;
	//test code ends

   // YOUR CODE HERE //
	//MUX32 MUX32(deci[31:0], data_operandB[31:0],~data_operandB[31:0] ,ctrl_ALUopcode[0]);
	//mux mux1(1'b0,1'b1,ctrl_ALUopcode[0],cin);
	
	CSA_32 CSA_32(data_operandA[31:0],data_operandB[31:0],1'b0,add_result[31:0],add_cout);
	CSA_32 CSA_32_2(data_operandA[31:0],~data_operandB[31:0],1'b1,sub_result[31:0],sub_cout);
	
	xnor xnor0(add_overflow,data_operandA[31],data_operandB[31],add_cout,~add_result[31]);
	xnor xnor1(sub_overflow,data_operandA[31],~data_operandB[31],sub_cout,~sub_result[31]);
	//xnor xnor1(overflow,data_operandA[31],deci[31],cout,~data_result[31]);
	isNotEqual isnotequal(sub_result[31:0],isNotEqual);
	isLessThan islessthan(data_operandA[31], data_operandB[31],sub_result[31],isLessThan);
	
	bitwise_and AND(AND_result[31:0],data_operandA[31:0],data_operandB[31:0]);
	bitwise_or OR(OR_result[31:0],data_operandA[31:0],data_operandB[31:0]);
	
	SLL SLL0 (SLL_result[31:0], data_operandA[31:0], ctrl_shiftamt[4:0]);
   SRA SRA0 (SRA_result[31:0], data_operandA[31:0], ctrl_shiftamt[4:0]);
	
	assign data_result = ctrl_ALUopcode[2]? (ctrl_ALUopcode[1]? 32'h00000000:(ctrl_ALUopcode[0]? SRA_result:SLL_result)):(ctrl_ALUopcode[1]? (ctrl_ALUopcode[0]? OR_result:AND_result):(ctrl_ALUopcode[0]? sub_result:add_result) );
	assign overflow=ctrl_ALUopcode[0]? sub_overflow:add_overflow;
	endmodule
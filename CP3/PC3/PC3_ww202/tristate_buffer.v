module tristate_buffer(
in0, in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,
in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,
in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,
out,select
);

input [31:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31;
input [4:0] select;
output [31:0] out;

wire[31:0] temp0,temp1,temp2,temp3,count;

assign temp0 = select[0] ? 32'h00000002: 32'h00000001;
assign temp1 = select[1] ? {temp0[29:0], 2'b00} : temp0;
assign temp2 = select[2] ? {temp1[27:0], 4'h0} : temp1;
assign temp3 = select[3] ? {temp2[23:0], 8'h00} : temp2;
assign count  = select[4] ? {temp3[15:0], 16'h0000} : temp3;

//wire [31:0]buffer[31:0];

//assign buffer[0] = count[0] ? in0 : 32'bz;
//assign buffer[1] = count[1] ? in1 : 32'bz;
//assign buffer[2] = count[2] ? in2 : 32'bz;
//assign buffer[3] = count[3] ? in3 : 32'bz;
//assign buffer[4] = count[4] ? in4 : 32'bz;
//assign buffer[5] = count[5] ? in5 : 32'bz;
//assign buffer[6] = count[6] ? in6 : 32'bz;
//assign buffer[7] = count[7] ? in7 : 32'bz;
//assign buffer[8] = count[8] ? in8 : 32'bz;
//assign buffer[9] = count[9] ? in9 : 32'bz;
//assign buffer[10] = count[10] ? in10 : 32'bz;
//assign buffer[11] = count[11] ? in11 : 32'bz;
//assign buffer[12] = count[12] ? in12 : 32'bz;
//assign buffer[13] = count[13] ? in13 : 32'bz;
//assign buffer[14] = count[14] ? in14 : 32'bz;
//assign buffer[15] = count[15] ? in15 : 32'bz;
//assign buffer[16] = count[16] ? in16 : 32'bz;
//assign buffer[17] = count[17] ? in17 : 32'bz;
//assign buffer[18] = count[18] ? in18 : 32'bz;
//assign buffer[19] = count[19] ? in19 : 32'bz;
//assign buffer[20] = count[20] ? in20 : 32'bz;
//assign buffer[21] = count[21] ? in21 : 32'bz;
//assign buffer[22] = count[22] ? in22 : 32'bz;
//assign buffer[23] = count[23] ? in23 : 32'bz;
//assign buffer[24] = count[24] ? in24 : 32'bz;
//assign buffer[25] = count[25] ? in25 : 32'bz;
//assign buffer[26] = count[26] ? in26 : 32'bz;
//assign buffer[27] = count[27] ? in27 : 32'bz;
//assign buffer[28] = count[28] ? in28 : 32'bz;
//assign buffer[29] = count[29] ? in29 : 32'bz;
//assign buffer[30] = count[30] ? in30 : 32'bz;
//assign buffer[31] = count[31] ? in31 : 32'bz;
assign out = count[0] ? in0 : 32'bz;
assign out = count[1] ? in1 : 32'bz;
assign out = count[2] ? in2 : 32'bz;
assign out = count[3] ? in3 : 32'bz;
assign out = count[4] ? in4 : 32'bz;
assign out = count[5] ? in5 : 32'bz;
assign out = count[6] ? in6 : 32'bz;
assign out = count[7] ? in7 : 32'bz;
assign out = count[8] ? in8 : 32'bz;
assign out = count[9] ? in9 : 32'bz;
assign out = count[10] ? in10 : 32'bz;
assign out = count[11] ? in11 : 32'bz;
assign out = count[12] ? in12 : 32'bz;
assign out = count[13] ? in13 : 32'bz;
assign out = count[14] ? in14 : 32'bz;
assign out = count[15] ? in15 : 32'bz;
assign out = count[16] ? in16 : 32'bz;
assign out = count[17] ? in17 : 32'bz;
assign out = count[18] ? in18 : 32'bz;
assign out = count[19] ? in19 : 32'bz;
assign out = count[20] ? in20 : 32'bz;
assign out = count[21] ? in21 : 32'bz;
assign out = count[22] ? in22 : 32'bz;
assign out = count[23] ? in23 : 32'bz;
assign out = count[24] ? in24 : 32'bz;
assign out = count[25] ? in25 : 32'bz;
assign out = count[26] ? in26 : 32'bz;
assign out = count[27] ? in27 : 32'bz;
assign out = count[28] ? in28 : 32'bz;
assign out = count[29] ? in29 : 32'bz;
assign out = count[30] ? in30 : 32'bz;
assign out = count[31] ? in31 : 32'bz;

//assign out = buffer[select];

endmodule

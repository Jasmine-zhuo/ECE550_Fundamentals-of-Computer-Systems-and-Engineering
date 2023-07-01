module decoder(out, ctrl_writeReg, enable);
input [4:0]ctrl_writeReg;
input enable;
output [31:0]out;

wire [31:0] temp0,temp1,temp2,temp3,temp4;
assign temp0={31'b0000000000000000000000000000000,enable};
assign temp1= ctrl_writeReg[0]? {temp0[30:0],1'b0}:temp0;
assign temp2= ctrl_writeReg[1]? {temp1[29:0],2'b0}:temp1;
assign temp3= ctrl_writeReg[2]? {temp2[27:0],4'b0000}:temp2;
assign temp4= ctrl_writeReg[3]? {temp3[23:0],8'h00}:temp3;
assign out=ctrl_writeReg[4]? {temp4[15:0],16'h0000}:temp4;


endmodule

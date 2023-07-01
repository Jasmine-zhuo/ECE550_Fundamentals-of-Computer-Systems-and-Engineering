module regfile (//modelsim sim: select object and module, add to waveform, in waveform window, restart.
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
	//register(in, out,clk, en, clr);
	//dffe_ref(q, d, clk, en, clr);
	//decoder(out, ctrl_writeReg, enable);
	//tristate_buffer([31:0] in[31:0],out[31:0],select[4:0])
	
	//write
	wire [31:0] decoder_res;
   decoder deco(decoder_res, ctrl_writeReg, ctrl_writeEnable);
	wire[31:0] reg_out [31:0];
	assign reg_out[0]={16'h0000,16'h0000};
	
	genvar i;
   generate
     for (i = 1; i < 32; i = i + 1) begin:register_write
   	register regi_n(data_writeReg,reg_out[i], clock, decoder_res[i], ctrl_reset);
     end
   endgenerate
	
	//read
	tristate_buffer tristate_buffer1(reg_out[0],reg_out[1],reg_out[2],
	reg_out[3],reg_out[4],reg_out[5],reg_out[6],reg_out[7],reg_out[8],reg_out[9],reg_out[10],
	reg_out[11],reg_out[12],reg_out[13],reg_out[14],reg_out[15],reg_out[16],reg_out[17],reg_out[18],
	reg_out[19],reg_out[20],reg_out[21],reg_out[22],reg_out[23],reg_out[24],reg_out[25],reg_out[26],
	reg_out[27],reg_out[28],reg_out[29],reg_out[30],reg_out[31],data_readRegA, ctrl_readRegA);
	
	tristate_buffer tristate_buffer2(reg_out[0],reg_out[1],reg_out[2],
	reg_out[3],reg_out[4],reg_out[5],reg_out[6],reg_out[7],reg_out[8],reg_out[9],reg_out[10],
	reg_out[11],reg_out[12],reg_out[13],reg_out[14],reg_out[15],reg_out[16],reg_out[17],reg_out[18],
	reg_out[19],reg_out[20],reg_out[21],reg_out[22],reg_out[23],reg_out[24],reg_out[25],reg_out[26],
	reg_out[27],reg_out[28],reg_out[29],reg_out[30],reg_out[31],data_readRegB, ctrl_readRegB);


endmodule

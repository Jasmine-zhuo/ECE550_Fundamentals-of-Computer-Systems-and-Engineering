module CSA_16(a1,b1,cin,sum,cout);
	input [15:0] a1,b1;
	input cin;
	output [15:0] sum;
	output cout;
	
	wire [7:0] s0,s1;
	wire c0,c1;
	wire cs;
	
	//RCA(A,B,cin,s,cout);
	CSA_8 CSA_8_1(a1[7:0],b1[7:0],cin,sum[7:0],cs);
	CSA_8 CSA_8_2(a1[15:8],b1[15:8],1'b0,s0[7:0],c0);
	CSA_8 CSA_8_3(a1[15:8],b1[15:8],1'b1,s1[7:0],c1);
	
	//MUX MUX32(sum[7:4],s0[3:0],s1[3:0],cs);
	MUX8 MUX8_2(sum[15:8],s1[7:0],s0[7:0],cs);
	//mux mux_2(cout,cs,c1,c0);
	mux mux_2(c0,c1,cs,cout);
	

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
////////
// Company: verilog-code.blogspot.in
module fa(a, b, c, sum, carry);
input a;
input b;
input c;
output sum;
output carry;
wire d,e,f;
xor(sum,a,b,c);
and(d,a,b);
and(e,b,c);
and(f,a,c);
or(carry,d,e,f);
endmodule
	
//	module FA(A, B, Cin, Sum, Cout);
//		input A;
//		input B;
//		input Cin;
//		output Sum;
//		output Cout;
//		wire S1, T1, T2, T3;
//		
//		xor x1(S1, A, B);
//		xor x2(Sum, S1, Cin);
//		and A1(T3, A, B);
//		and A2(T2, B, Cin);
//		and A3(T1, A, Cin);
//		or O1(Cout, T1, T2, T3);
//	endmodule

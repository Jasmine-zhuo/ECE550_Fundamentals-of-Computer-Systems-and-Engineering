module RCA(A,B,cin,s,cout);

input [3:0] A,B;
input wire cin;
output [3:0] s;
output cout;

wire [3:0] c;
                  
fa fa_1(A[0],B[0],cin,s[0],c[1]);
fa fa_2(A[1],B[1],c[1],s[1],c[2]);
fa fa_3(A[2],B[2],c[2],s[2],c[3]);
fa fa_4(A[3],B[3],c[3],s[3],cout);


endmodule
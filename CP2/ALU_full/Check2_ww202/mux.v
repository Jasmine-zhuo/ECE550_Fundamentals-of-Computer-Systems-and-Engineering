
// Company: verilog-code.blogspot.in
module mux(
a,
b,
s,
q
);
input wire a;
input b;
input s;
output q;
wire q;
assign q=s?b:a;//true:b;false:a
endmodule
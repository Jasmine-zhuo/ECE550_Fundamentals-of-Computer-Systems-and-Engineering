module register(in, out,clk, en, clr);//dffe_ref(q, d, clk, en, clr);
//parameter N=32;
input clk,en,clr;
input [31:0] in;
output [31:0] out;

genvar j;
generate for(j=0; j<32; j=j+1) begin:register_dff
dffe_ref deff(out[j],in[j],clk,en,clr);
end
endgenerate
endmodule


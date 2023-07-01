module MUX32(X, A, B, S);
   parameter WIDTH=32;     // How many bits wide are the lines

   output [WIDTH-1:0] X;   // The output line

   input [WIDTH-1:0]  A;  // Input line with id 1'b1
   input [WIDTH-1:0]  B;  // Input line with id 1'b0
   input 	      S;  // Selection bit
   
	assign X = S ? A : B;
endmodule // multiplexer_2_1

//if S=0; select A
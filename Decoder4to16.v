// Verilog Code for 4 to 16 Decoder
// Structural  Style using Decoder3to8 Structure
module Decoder4to16(A,Y);

input [3:0]A;

output [15:0]Y;

Decoder3to8 D1(.A(A[2:0]),.E(A[3]),.Y(Y[15:8]));
wire w;
not N(w,A[3]);
Decoder3to8 D0(.A(A[2:0]),.E(w),.Y(Y[7:0]));
endmodule

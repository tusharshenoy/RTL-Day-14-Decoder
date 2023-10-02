//Verilog code for 2 to 4 Decoder
module Decoder2to4(A,E,Y);

input [1:0]A;
input E;
output [3:0]Y;

wire [1:0]w;
not N0(w[0],A[0]);
not N1(w[1],A[1]);


and A3(Y[3],A[0],A[1],E);
and A2(Y[2],A[1],w[0],E);
and A1(Y[1],A[0],w[1],E);
and A0(Y[0],w[0],w[1],E);

endmodule

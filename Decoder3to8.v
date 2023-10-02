//Verilog code for 3 to 8 Decoder
module Decoder3to8(A,E,Y);

input [2:0]A;
input E;
output [7:0]Y;

wire [2:0]w;
not N0(w[0],A[0]);
not N1(w[1],A[1]);
not N2(w[2],A[2]);


and A0(Y[0],w[2],w[1],w[0],E);
and A1(Y[1],w[2],w[1],A[0],E);
and A2(Y[2],w[2],A[1],w[0],E);
and A3(Y[3],w[2],A[1],A[0],E);
and A4(Y[4],A[2],w[1],w[0],E);
and A5(Y[5],A[2],w[1],A[0],E);
and A6(Y[6],A[2],A[1],w[0],E);
and A7(Y[7],A[2],A[1],A[0],E);

endmodule

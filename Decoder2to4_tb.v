// Testbench Code for 2 to 4 Decoder
module Decoder2to4_tb();

reg [1:0]A;
reg E;
wire [3:0]Y;

Decoder2to4 dut(.A(A),.E(E),.Y(Y));

initial begin
   E=1'b0;
   A=2'bxx;
#5 E=1'b1;
   A=2'b00;
#5 A=2'b01;
#5 A=2'b10;
#5 A=2'b11;
#5 $finish;
end

endmodule

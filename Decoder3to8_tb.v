// Testbench Code for 3 to 8 Decoder
module Decoder3to8_tb();

reg [2:0]A;
reg E;
wire [7:0]Y;

Decoder3to8 dut(.A(A),.E(E),.Y(Y));

initial begin
   E=1'b0;
   A=3'bxxx;
#5 E=1'b1;
   A=3'b000;
#5 A=3'b001;
#5 A=3'b010;
#5 A=3'b011;
#5 A=3'b100;
#5 A=3'b101;
#5 A=3'b110;
#5 A=3'b111;
#5 $finish;
end

endmodule

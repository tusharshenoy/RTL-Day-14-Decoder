// Testbench Code for 4 to 16 Decoder
module Decoder4to16_tb();

reg [3:0]A;
wire [15:0]Y;
integer i;
Decoder4to16 dut(.A(A),.Y(Y));

initial begin
   A=4'b1111;
  for(i=0;i<16;i=i+1)
  begin
  A=A+1;
  #5;
  end
$finish;
end

endmodule

`timescale 1ns / 1ps

module four_bit_2421_decade_counter_tb();
reg clk, x;
wire q0, q1, q2, q3, z;

four_bit_2421_decade_counter u_inv (
.CLK(clk),
.X(x),
.Q0(q0),
.Q1(q1),
.Q2(q2),
.Q3(q3),
.Z(z)
);

initial begin 
   clk = 0;
   x = 0;
end

always clk = #25 ~clk;
always x = #50 ~x;

initial begin
	#1000
	$finish;
end
endmodule
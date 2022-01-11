`timescale 1ns / 1ps

module two_bit_binary_counter_tb();
reg clk, x;
wire q0, q1, z;
    
two_bit_binary_counter u_inv (
.CLK(clk),
.X(x),
.Q0(q0),
.Q1(q1),
.Z(z)
);

initial begin 
   clk = 0;
   x = 0;
   x = #100 ~x;
   x = #200 ~x;
   x = #300 ~x;
   x = #400 ~x;
end

always clk = #50 ~clk;

initial begin
	#1000
	$finish;
end
endmodule
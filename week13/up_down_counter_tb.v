`timescale 1ns / 1ps

module up_down_counter_tb();
reg clk, up;
wire [3:0] q;
wire dig;

up_down_counter u_inv (
.CLK(clk),
.UP(up),
.Q(q),
.digit(dig)
);

initial begin 
   clk = 0;
   up = 1;
end

always clk = #25 ~clk;
always up = #400 ~up;

initial begin
	#1000
	$finish;
end
endmodule
`timescale 1ns / 1ps

module ring_counter_tb();
reg clk, r;
wire [3:0] q;

ring_counter u_inv (
.CLK(clk),
.R(r),
.Q(q)
);

initial begin 
    clk = 0;
    r = 1;
    r = #100 0;
end

always clk = #25 ~clk;

initial begin
	#1000
	$finish;
end
endmodule
`timescale 1ns / 1ps

module shift_register_tb();
reg clk, s, in, r;
wire [3:0] q;

shift_register u_inv (
.CLK(clk),
.S(s),
.In(in),
.R(r),
.Q(q)
);

initial begin 
   clk = 0;
   s = 1;
   in = 1;
   r = 0;
end

always clk = #25 ~clk;
always in = #200 ~in;
always r = #800 ~r;

initial begin
	#1000
	$finish;
end
endmodule
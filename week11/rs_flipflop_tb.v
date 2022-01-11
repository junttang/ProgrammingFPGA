`timescale 1ns / 1ps

module rs_flipflop_tb;

reg clk, r, s;
wire q, qc;

rs_flipflop u_inv (
.CLK(clk),
.R(r),
.S(s),
.Q(q),
.Qc(qc)
);

initial clk = 1'b0;
initial r = 1'b0;
initial s = 1'b0;

always r = #400 ~r;
always s = #200 ~s;
always clk = #100 ~clk;

initial begin
	#1000
	$finish;
end
endmodule
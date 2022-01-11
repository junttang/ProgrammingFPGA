`timescale 1ns / 1ps

module rs_latch_tb;

reg e, r, s;
wire q, qc;

rs_latch u_inv (
.E(e),
.R(r),
.S(s),
.Q(q),
.Qc(qc)
);

initial e = 1'b0;
initial r = 1'b0;
initial s = 1'b0;

always e = #400 ~e;
always r = #200 ~r;
always s = #100 ~s;

initial begin
	#1000
	$finish;
end
endmodule
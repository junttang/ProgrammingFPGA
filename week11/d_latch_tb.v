`timescale 1ns / 1ps

module d_latch_tb;

reg e, d;
wire q, qc;

d_latch u_inv (
.E(e),
.D(d),
.Q(q),
.Qc(qc)
);

initial e = 1'b0;
initial d = 1'b0;

always e = #400 ~e;
always d = #200 ~d;

initial begin
	#1000
	$finish;
end
endmodule
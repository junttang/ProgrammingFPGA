`timescale 1ns / 1ps

module d_flipflop_tb;

reg c, d;
wire q, qc;

d_flipflop u_inv (
.CLK(c),
.D(d),
.Q(q),
.Qc(qc)
);

initial c = 1'b0;
initial d = 1'b0;

always d = #400 ~d;
always c = #200 ~c;

initial begin
	#1000
	$finish;
end
endmodule
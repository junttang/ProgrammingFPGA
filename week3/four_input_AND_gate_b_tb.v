`timescale 1ns / 1ps

module four_input_AND_gate_b_tb;

reg aa,bb,cc,dd;
wire ee,ff,gg;

four_input_AND_gate_b u_inv (
.A (aa),
.B (bb),
.E (ee),
.C (cc),
.F (ff),
.D (dd),
.G (gg));

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #200 ~aa;
always bb = #100 ~bb;
always cc = #50 ~cc;
always dd = #25 ~dd;

initial begin
	#1000
	$finish;
end

endmodule
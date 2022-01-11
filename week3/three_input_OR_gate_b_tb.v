`timescale 1ns / 1ps

module three_input_OR_gate_b_tb;

reg aa,bb,cc;
wire dd,ee;

three_input_OR_gate_b u_inv (
.A (aa),
.B (bb),
.D (dd),
.C (cc),
.E (ee));

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #200 ~aa;
always bb = #100 ~bb;
always cc = #50 ~cc;

initial begin
	#1000
	$finish;
end

endmodule
`timescale 1ns / 1ps

module four_input_XOR_gate_b_tb;

reg a, b, c, d;
wire e, f, g;

four_input_XOR_gate_b u_inv (
.A(a),
.B(b),
.E(e),
.C(c),
.F(f),
.D(d),
.G(g));

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;
initial d = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always c = #50 ~c;
always d = #25 ~d;

initial begin
	#1000
	$finish;
end

endmodule
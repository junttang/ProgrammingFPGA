`timescale 1ns / 1ps

module four_to_one_mux_tb;

reg a, b, c, d, s0, s1;
wire x;

four_to_one_mux u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.S0(s0),
.S1(s1),
.X(x)
);

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;
initial d = 1'b0;
initial s0 = 1'b0;
initial s1 = 1'b0;

always a = #800 ~a;
always b = #400 ~b;
always c = #200 ~c;
always d = #100 ~d;
always s0 = #50 ~s0;
always s1 = #25 ~s1;

initial begin
	#1000
	$finish;
end

endmodule
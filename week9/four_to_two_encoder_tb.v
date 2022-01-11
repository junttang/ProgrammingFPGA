`timescale 1ns / 1ps

module four_to_two_encoder_tb;

reg a, b, c, d;
wire e0, e1;

four_to_two_encoder u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.E0(e0),
.E1(e1)
);

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
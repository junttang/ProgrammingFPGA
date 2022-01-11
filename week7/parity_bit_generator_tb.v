`timescale 1ns / 1ps

module parity_bit_generator_tb;

reg a, b, c, d;
wire p;

parity_bit_generator u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.P(p)
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
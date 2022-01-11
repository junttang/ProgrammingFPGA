`timescale 1ns / 1ps

module two_to_four_decoder_tb;

reg a, b;
wire d0, d1, d2, d3;

two_to_four_decoder u_niv(
.A(a),
.B(b),
.D0(d0),
.D1(d1),
.D2(d2),
.D3(d3)
);

initial a = 1'b0;
initial b = 1'b0;

always a = #200 ~a;
always b = #100 ~b;

initial begin
	#1000
	$finish;
end

endmodule
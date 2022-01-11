`timescale 1ns / 1ps

module two_bit_binary_comparator_tb;

reg a1, a2, b1, b2;
wire f1, f2, f3;

two_bit_binary_comparator u_niv(
.A1(a1),
.A2(a2),
.B1(b1),
.B2(b2),
.F1(f1),
.F2(f2),
.F3(f3)
);

initial a1 = 1'b0;
initial a2 = 1'b0;
initial b1 = 1'b0;
initial b2 = 1'b0;

always a1 = #200 ~a1;
always a2 = #100 ~a2;
always b1 = #50 ~b1;
always b2 = #25 ~b2;

initial begin
	#1000
	$finish;
end

endmodule
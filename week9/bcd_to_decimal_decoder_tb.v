`timescale 1ns / 1ps

module bcd_to_decimal_decoder_tb;

reg a3, a2, a1, a0;
wire d0, d1, d2, d3, d4, d5, d6, d7, d8, d9;

bcd_to_decimal_decoder u_niv(
.A3(a3),
.A2(a2),
.A1(a1),
.A0(a0),
.D0(d0),
.D1(d1),
.D2(d2),
.D3(d3),
.D4(d4),
.D5(d5),
.D6(d6),
.D7(d7),
.D8(d8),
.D9(d9)
);

initial a3 = 1'b0;
initial a2 = 1'b0;
initial a1 = 1'b0;
initial a0 = 1'b0;

always a3 = #200 ~a3;
always a2 = #100 ~a2;
always a1 = #50 ~a1;
always a0 = #25 ~a0;

initial begin
	#1000
	$finish;
end

endmodule
`timescale 1ns / 1ps

module seven_segment_display_tb;

reg a, b, c, d;
wire dp, sega, segb, segc, segd, sege, segf, segg, dig;

seven_segment_display u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.DP(dp),
.segA(sega),
.segB(segb),
.segC(segc),
.segD(segd),
.segE(sege),
.segF(segf),
.segG(segg)
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
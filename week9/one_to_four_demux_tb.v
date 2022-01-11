`timescale 1ns / 1ps

module one_to_four_demux_tb;

reg s0, s1, a;
wire o1, o2, o3, o4;

one_to_four_demux u_niv(
.S0(s0),
.S1(s1),
.A(a),
.O1(o1),
.O2(o2),
.O3(o3),
.O4(o4)
);

initial s0 = 1'b0;
initial s1 = 1'b0;
initial a = 1'b0;

always s0 = #400 ~s0;
always s1 = #200 ~s1;
always a = #100 ~a;

initial begin
	#1000
	$finish;
end

endmodule
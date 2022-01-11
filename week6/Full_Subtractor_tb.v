`timescale 1ns / 1ps

module Full_Subtractor_tb;

reg a, b, bi;
wire d, bo;

Full_Subtractor u_inv (
.A(a),
.B(b),
.Bin(bi),
.Diff(d),
.Bout(bo));

initial a = 1'b0;
initial b = 1'b0;
initial bi = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always bi = #50 ~bi;

initial begin
	#1000
	$finish;
end

endmodule
`timescale 1ns / 1ps

module Half_Subtractor_tb;

reg a, b;
wire d, bo;

Half_Subtractor u_inv(
.A(a),
.B(b),
.Diff(d),
.Bout(bo));

initial a = 1'b0;
initial b = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
    
initial begin
	#1000
	$finish;
end

endmodule
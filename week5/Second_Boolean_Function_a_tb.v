`timescale 1ns / 1ps

module Second_Boolean_Function_a_tb;

reg a, b, c;
wire d;

Second_Boolean_Function_a u_inv (
.A(a),
.B(b),
.C(c),
.D(d));

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always c = #50 ~c;

initial begin
	#1000
	$finish;
end

endmodule
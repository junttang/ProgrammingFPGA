`timescale 1ns / 1ps

module Full_Adder_tb;

reg a, b, ci;
wire s, co;

Full_Adder u_inv (
.A(a),
.B(b),
.Cin(ci),
.Sum(s),
.Cout(co));

initial a = 1'b0;
initial b = 1'b0;
initial ci = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always ci = #50 ~ci;

initial begin
	#1000
	$finish;
end

endmodule
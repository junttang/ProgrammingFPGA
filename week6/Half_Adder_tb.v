`timescale 1ns / 1ps

module Half_Adder_tb;

reg a, b;
wire c, s;

Half_Adder u_inv(
.A(a),
.B(b),
.Sum(s),
.Cout(c));
    
initial a = 1'b0;
initial b = 1'b0;

always a = #200 ~a;
always b = #100 ~b;

initial begin
	#1000
	$finish;
end

endmodule
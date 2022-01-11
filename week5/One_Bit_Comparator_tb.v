`timescale 1ns / 1ps

module One_Bit_Comparator_tb;

reg a, b;
wire c, d, e, f;

One_Bit_Comparator u_inv(
.A(a),
.B(b),
.C(c),
.D(d),
.E(e),
.F(f)
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
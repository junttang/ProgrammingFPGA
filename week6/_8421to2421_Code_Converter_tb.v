`timescale 1ns / 1ps

module _8421to2421_Code_Converter_tb;

reg a, b, c, d;
wire w, x, y, z;

_8421to2421_Code_Converter u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.W(w),
.X(x),
.Y(y),
.Z(z));

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;
initial d = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always c = #50 ~c;
always d = #25 ~d;

initial begin
	#250
	$finish;
end

endmodule
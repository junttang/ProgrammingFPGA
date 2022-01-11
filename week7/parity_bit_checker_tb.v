`timescale 1ns / 1ps

module parity_bit_checker_tb;

reg a, b, c, d, pin;
wire pec;

parity_bit_checker u_niv(
.A(a),
.B(b),
.C(c),
.D(d),
.Pin(pin),
.PEC(pec)
);

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;
initial d = 1'b0;
initial pin = 1'b0;

always a = #400 ~a;
always b = #200 ~b;
always c = #100 ~c;
always d = #50 ~d;
always pin = #25 ~pin;

initial begin
	#1000
	$finish;
end

endmodule
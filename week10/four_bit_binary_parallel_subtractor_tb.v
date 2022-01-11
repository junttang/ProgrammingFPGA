`timescale 1ns / 1ps

module four_bit_binary_parallel_subtractor_tb;

reg [3:0] a; 
reg [3:0] b; 
reg s;
wire [3:0] sum;
wire cout;

four_bit_binary_parallel_subtractor u_inv (
.A(a),
.B(b),
.S(s),
.Sum(sum),
.Cout(cout)
);

initial a[0] = 1'b0; initial a[1] = 1'b0; 
initial a[2] = 1'b0; initial a[3] = 1'b0;
initial b[0] = 1'b0; initial b[1] = 1'b0; 
initial b[2] = 1'b0; initial b[3] = 1'b0;
initial s = 1'b0;

always a[0] = #1000 ~a[0]; always a[1] = #500 ~a[1];
always a[2] = #250 ~a[2]; always a[3] = #125 ~a[3];
always b[0] = #62.5 ~b[0]; always b[1] = #31.25 ~b[1];
always b[2] = #15.625 ~b[2]; always b[3] = #7.8125 ~b[3];

initial begin
	#1000
	$finish;
end
endmodule
`timescale 1ns / 1ps

module mearly_seq_detector_tb();

reg clk, x, r;
wire a, b, z;

mearly_seq_detector u_inv (
.CLK(clk),
.X(x),
.A(a),
.B(b),
.R(r),
.Z(z)
);

initial begin 
   clk = 0;
   r = 0;
   x = 0;
end

always clk = #25 ~clk;

initial begin
    x = 1;
    #50
    x = 1;
    #50
    x = 0;
    #50
    x = 1;
    #50
    x = 1;
    #50
    x = 1;
    #50
    x = 0;
    #50
    x = 1;
    #50  
    x = 0;
    #50
    x = 0;
    #50
    x = 1;
    #50
    x = 1;
    #50
    x = 0;
    #50
    x = 0;
    #50
    x = 1;
    #50
    x = 1;
    #50  
    x = 0;
    #50
    x = 1;
    #50
    x = 1;
    #50
    x = 0;
    #50                                         
	#1000
	$finish;
end
endmodule

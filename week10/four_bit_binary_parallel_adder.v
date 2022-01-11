`timescale 1ns / 1ps

module four_bit_binary_parallel_adder(
    input [3:0] A, 
    input [3:0] B,
    input S,             // sign
    output [3:0] Sum,
    output Cout
    );
    wire C0, C1, C2;    // internal carry
    
    one_bit_full_adder FA0(A[0], B[0], S, Sum[0], C0);
    one_bit_full_adder FA1(A[1], B[1], C0, Sum[1], C1);
    one_bit_full_adder FA2(A[2], B[2], C1, Sum[2], C2);
    one_bit_full_adder FA3(A[3], B[3], C2, Sum[3], Cout);
endmodule

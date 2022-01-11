`timescale 1ns / 1ps

module one_bit_full_adder(
    input A, 
    input B, 
    input Cin,
    output Sum, 
    output Cout
    );
    
    assign Cout = A & B | Cin & (A ^ B);
    assign Sum = A ^ B ^ Cin;
endmodule

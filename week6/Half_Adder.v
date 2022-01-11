`timescale 1ns / 1ps

module Half_Adder(
    input A,
    input B,
    output Sum,
    output Cout
    );
    
    assign Sum = A ^ B;
    assign Cout = A & B;
endmodule
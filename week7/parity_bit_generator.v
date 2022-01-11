`timescale 1ns / 1ps

module parity_bit_generator(
    input A,
    input B,
    input C,
    input D,
    output P
    );
    
    assign P = A ^ B ^ C ^ D;
endmodule
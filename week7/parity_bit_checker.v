`timescale 1ns / 1ps

module parity_bit_checker(
    input A,
    input B,
    input C,
    input D,
    input Pin,
    output PEC
    );
    
    assign PEC = A ^ B ^ C ^ D ^ Pin;
endmodule
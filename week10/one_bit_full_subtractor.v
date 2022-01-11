`timescale 1ns / 1ps

module one_bit_full_subtractor(
    input A, 
    input B, 
    input Bin,
    output Diff, 
    output Bout
    );
    
    assign Bout = (Bin & (~A | B)) | (~A & B);
    assign Diff = A ^ B ^ Bin;
endmodule

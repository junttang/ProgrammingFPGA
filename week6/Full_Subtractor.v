`timescale 1ns / 1ps

module Full_Subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );
    
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & Bin) | (~A & B) | (B & Bin);
endmodule
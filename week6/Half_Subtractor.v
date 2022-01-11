`timescale 1ns / 1ps

module Half_Subtractor(
    input A,
    input B,
    output Diff,
    output Bout
    );
    
    assign Diff = A ^ B;
    assign Bout = ~A & B;
endmodule
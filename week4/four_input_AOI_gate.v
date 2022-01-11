`timescale 1ns / 1ps

module four_input_AOI_gate(
    input A,
    input B,
    output E,
    input C,
    input D,
    output F,
    output G
    );
    
    assign E = A & B;
    assign F = C & D;
    assign G = ~(E | F);
endmodule

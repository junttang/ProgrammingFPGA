`timescale 1ns / 1ps

module four_input_NOR_gate_b(
    input A,
    input B,
    output E,
    input C,
    output F,
    input D,
    output G
    );
    
    assign E = ~(A | B);
    assign F = ~(E | C);
    assign G = ~(F | D);
endmodule
`timescale 1ns / 1ps

module One_Bit_Comparator(
    input A,
    input B,
    output C,
    output D,
    output E,
    output F
    );
    // xor = AB' + A'B, xnor = AB + A'B'
    assign C = A ^ ~B; // equal
    assign D = A ^ B;  // not equal
    assign E = A & ~B; // A > B
    assign F = ~A & B; // A < B
endmodule
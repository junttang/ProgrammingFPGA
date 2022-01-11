`timescale 1ns / 1ps

module seven_segment_display(
    input A, 
    input B, 
    input C, 
    input D,
    output DP,
    output segA, 
    output segB, 
    output segC, 
    output segD, 
    output segE, 
    output segF, 
    output segG,
    output digit
    );

    assign DP = 1;
    assign segA = (B & C) | (~A & C) | (A & ~D) | (~B & ~D) | (~A & B & D) | (A & ~B & ~C);
    assign segB = (~B & ~C) | (~B & ~D) | (~A & C & D) | (A & ~C & D) | (~A & ~C & ~D);
    assign segC = (~C & D) | (~A & D) | (A & ~B) | (~A & B) | (~B & ~C);
    assign segD = (~B & C & D) | (~A & C & ~D) | (B & ~C & D) | (A & B & ~D) | (~B & ~C & ~D);
    assign segE = (A & C) | (A & B) | (C & ~D) | (~B & ~D);
    assign segF = (A & C) | (A & ~B) | (B & ~D) | (~C & ~D) | (~A & B & ~C);
    assign segG = (A & C) | (A & ~B) | (~B & C) | (~A & B & ~D) | (B & ~C & D) ;
    assign digit = segA | segB | segC | segD | segE | segF | segG | DP;
endmodule
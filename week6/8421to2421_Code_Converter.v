`timescale 1ns / 1ps

module _8421to2421_Code_Converter(   
    input A, 
    input B,
    input C,
    input D,
    output W,
    output X,
    output Y,
    output Z
    );
    
    assign W = ~(~A & ~(B & D) & ~(B & C));
    assign X = ~(~A & ~(B & ~D) & ~(B & C));
    assign Y = ~(~A & ~(B & ~C & D) & ~(~B & C));
    assign Z = D;
endmodule

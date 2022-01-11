`timescale 1ns / 1ps

module four_to_two_encoder(
    input A, 
    input B, 
    input C, 
    input D,
    output E0, 
    output E1
    );
    
    assign E0 = A | B;
    assign E1 = A | C;
endmodule
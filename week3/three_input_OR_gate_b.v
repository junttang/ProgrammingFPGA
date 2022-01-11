`timescale 1ns / 1ps

module three_input_OR_gate_b(
    input A,
    input B,
    output D,
    input C,
    output E
    );
    
    assign D = A | B;
    assign E = C | D;
endmodule
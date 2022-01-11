`timescale 1ns / 1ps

module First_Boolean_Function_b(
    input A,
    input B,
    input C,
    output D
    );
    
    assign D = ~((A & B) | C);
endmodule
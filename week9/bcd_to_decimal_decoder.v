`timescale 1ns / 1ps

module bcd_to_decimal_decoder(
    input A3, input A2, 
    input A1, input A0,
    output D0, output D1, 
    output D2, output D3, 
    output D4, output D5, 
    output D6, output D7, 
    output D8, output D9
    );
    
    assign D0 = ~A3 & ~A2 & ~A1 &~A0;
    assign D1 = ~A3 & ~A2 & ~A1 & A0;
    assign D2 = ~A3 & ~A2 & A1 & ~A0;
    assign D3 = ~A3 & ~A2 & A1 & A0;
    assign D4 = ~A3 & A2 & ~A1 & ~A0;
    assign D5 = ~A3 & A2 & ~A1 & A0;
    assign D6 = ~A3 & A2 & A1 & ~A0;
    assign D7 = ~A3 & A2 & A1 & A0;
    assign D8 = A3 & ~A2 & ~A1 & ~A0;
    assign D9 = A3 & ~A2 & ~A1 & A0;
endmodule

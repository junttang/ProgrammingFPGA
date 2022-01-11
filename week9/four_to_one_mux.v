module four_to_one_mux(
    input A, input B, 
    input C, input D, 
    input S1, input S0,
    output X
    );
    
    assign X = (A & ~S0 & ~S1) | (B & ~S0& S1) | 
                (C & S0 & ~S1) | (D & S0 & S1);
endmodule
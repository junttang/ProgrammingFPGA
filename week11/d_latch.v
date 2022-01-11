`timescale 1ns / 1ps

module d_latch(
  input E, 
  input D, 
  output Q, 
  output Qc
  );
  
  assign Q = ~(~(E & D) & Qc);
  assign Qc = ~(~(E & ~D) & Q);
endmodule
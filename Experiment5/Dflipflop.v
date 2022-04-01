`timescale 1ns / 1ps

module Dflipflop(Q, Q_inv, D, clock, reset);
    input D, clock, reset;
    output reg Q, Q_inv;
    always @(posedge clock or posedge reset)
    if (reset) begin
        Q <= 0;
        Q_inv <= 1; end
    else begin
        Q <= D;
        Q_inv <= ~D;
    end
    
endmodule

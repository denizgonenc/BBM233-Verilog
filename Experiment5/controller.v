`timescale 1ns / 1ps

`include "Dflipflop.v"

module controller(X, Y, F1, F0, clock, reset);
    input X, Y, clock, reset;
    output F1, F0;
    wire q_a, q_a_inv, q_b, q_b_inv, and_1, and_2, and_3, and_4, and_5, or_1, or_2;

    Dflipflop upper_ff(q_a, q_a_inv, or_1, clock, reset);
    Dflipflop lower_ff(q_b, q_b_inv, or_2, clock, reset);

    and(and_1, q_b, q_a_inv);
    and(and_2, q_a, X);
    or(or_1, and_1, and_2);
    and(and_3, q_a_inv, q_b, Y);
    and(and_4, q_a_inv, q_b_inv, X);
    and(and_5, X, Y);
    or(or_2, and_3, and_4, and_5);
    assign F1 = q_a;
    assign F0 = q_b;
endmodule

`timescale 1ns / 1ps

`include "controller.v"

module controller_tb();
    reg x, y, clock, reset;
    wire F1, F0;
    controller UUT(.X(x), .Y(y), .F1(F1), .F0(F0), .clock(clock), .reset(reset));
    
    always begin
        # 5 clock = 1;
        # 5 clock = 0;
    end
    
    initial begin
    reset = 1; clock = 0;
    #50 reset = 0; x = 0; y = 0;
    #50 y = 1;
    #50 x = 1; y = 0;
    #50 x = 0; y = 0;
    #50 x = 1; y = 1;
    #50 x = 1; y = 0;
    #50 x = 1; y = 1;
    #50 x = 0; y = 0;
    #10 x = 1; y = 1;
    #40 x = 0;
    #50 y = 0;
    #10 x = 1;
    #10 x = 0;
    #10 y = 1;
    #20 x = 0; y = 0;
    #10 x = 1;
    #10 x = 0; y = 1;
    

    
    #30 $finish;
    end
   
endmodule

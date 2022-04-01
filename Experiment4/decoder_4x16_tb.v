`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 23:28:32
// Design Name: 
// Module Name: decoder_4x16_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "decoder_4x16.v"

module decoder_4x16_tb;
    reg a,b,c,w; // Declaring  inputs  as regs
    wire [15:0] d; // Declaring  outputs  as nets
    
    decoder_4x16 UUT (.a(a), .b(b), .c(c), .w(w), .d(d)); // Instantiate  UUT
    
    initial // Generate stimuli
        begin
            a=0; b=0; c=0; w=0;
            #25 a=0; b=0; c=1;
            #25 a=0; b=1; c=0;
            #25 a=0; b=1; c=1;
            #25 a=1; b=0; c=0;
            #25 a=1; b=0; c=1;
            #25 a=1; b=1; c=0;
            #25 a=1; b=1; c=1;
            #25 a=0; b=0; c=0; w=1;
            #25 a=0; b=0; c=1;
            #25 a=0; b=1; c=0;
            #25 a=0; b=1; c=1;
            #25 a=1; b=0; c=0;
            #25 a=1; b=0; c=1;
            #25 a=1; b=1; c=0;
            #25 a=1; b=1; c=1;
            #25 $finish;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 22:31:22
// Design Name: 
// Module Name: decoder_3x8_tb
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

`include "decoder_3x8.v"

module decoder_3x8_tb;
    reg a,b,c,en; // Declaring inputs as regs
    wire [7:0] d; // Declaring outputs as nets
    decoder_3x8 UUT (.a(a), .b(b), .c(c), .en(en), .d(d)); //Instantiate UUT
    
    initial // Generating stimuli
        begin
        en=0; a=1; b=1; c=1;
        #100 en=1; a=0; b=0; c=0;
        #100 en=1; a=0; b=0; c=1;
        #100 en=1; a=0; b=1; c=0;
        #100 en=1; a=0; b=1; c=1;
        #100 en=1; a=1; b=0; c=0;
        #100 en=1; a=1; b=0; c=1;
        #100 en=1; a=1; b=1; c=0;
        #100 en=1; a=1; b=1; c=1;
        #100 $finish;
    end
endmodule

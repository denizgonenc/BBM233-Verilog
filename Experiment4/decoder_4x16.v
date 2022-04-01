`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 23:17:09
// Design Name: 
// Module Name: decoder_4x16
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

module decoder_4x16(a,b,c,w,d);
    //  Declare  input  and  output  ports
    input a,b,c,w;
    output [15:0] d;

    // Instantiate two 3x8 decoders
    decoder_3x8 C1(.a(a), .b(b), .c(c), .en(w), .d(d[15:8]));
    decoder_3x8 C2(.a(a), .b(b), .c(c), .en(~w), .d(d[7:0]));

endmodule

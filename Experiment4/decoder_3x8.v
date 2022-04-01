`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 22:32:40
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(a,b,c,en,d);
    // Declare input and output ports
    input a,b,c,en;
    output [7:0] d;
    
    // assign values to the outputs
    assign d[0] = en & ~a & ~b & ~c;
    assign d[1] = en & ~a & ~b & c;
    assign d[2] = en & ~a & b & ~c;
    assign d[3] = en & ~a & b & c;
    assign d[4] = en & a & ~b & ~c;
    assign d[5] = en & a & ~b & c;
    assign d[6] = en & a & b & ~c;
    assign d[7] = en & a & b & c;
    
endmodule

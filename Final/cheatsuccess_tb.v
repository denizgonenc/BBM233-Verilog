`timescale 1ms/1ps

`include "scp_079.v"

module allok_tb();
    //setting inputs and outputs
    reg green, yellow, red, clock;
    wire a1, a2, a3, cheat_out;
    wire [2:0] state;
    wire [5:0] timer;
    
    //Instantiate UUT
    scp_079 UUT(.clock(clock), .green(green), .yellow(yellow), .red(red), .state(state), .timer(timer), .a1(a1), .a2(a2), .a3(a3), .cheat_out(cheat_out));
    
    //clock
    always begin
        #500 clock = 0;
        #500 clock = 1;
    end
    
    initial begin
        //green in the beginning
        clock = 1; green = 1; yellow = 0; red = 0;
        //red during attack database state
        #40000 green = 0; red = 1;
        //back to ok, cheat successful
        #12000 green = 1; red = 0;
        $finish;
    end
        
endmodule
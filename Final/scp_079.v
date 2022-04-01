`timescale 1ms/1ps

module scp_079(clock, green, yellow, red, state, timer, a1, a2, a3, cheat_out);
    //setting inputs and outputs
    input clock, green, yellow, red;
    output reg a1 = 0, a2 = 0, a3 = 0, cheat_out = 0;
    output reg [2:0] state = 3'b0;
    output reg [5:0] timer = 6'b0;
    
    always @(posedge clock)begin
        timer <= timer + 1;
        
        //laylow to attack security transition
        if(state == 3'b0 && green && timer >= 6'b010100) begin
            state <= 3'b010;
            a1 <= 1;
            timer <= 6'b001;
        end
        
        //attack security to attack database transition
        if(state == 3'b010 && green && timer >= 6'b1010) begin
            state <= 3'b011;
            a2 <= 1;
            timer <= 6'b001;
        end
        
        //attack security to laylow transition
        if(state == 3'b010 && yellow) begin
            state <= 3'b000;
            a1 <= 0;
            timer <= 6'b001;
        end
        
        //attack database to connect transition
        if(state == 3'b011 && green && timer >= 6'b1010) begin
            state <= 3'b101;
            a3 <= 1;
            timer <= 6'b001;
        end
        
        //attack database to attack security transition
        if(state == 3'b011 && yellow) begin
            state <= 3'b010;
            a2 <= 0;
            timer <= 6'b001;
        end
        
        //cheat state transition
        if((state == 3'b000 || state == 3'b010 || state == 3'b011) && red) begin
            state <= 3'b001;
            cheat_out <= 1;
            timer <= 6'b001;
        end
        
        if(state == 3'b001 && timer >= 6'b001111) begin
            //cheat to fail transition
            if(red) begin
                state <= 3'b100;
                timer <= 6'b001;
            end
            //cheat to laylow transition
            else begin
                state <= 3'b0;
                a1 <= 0;
                a2 <= 0;
                a3 <= 0;
                cheat_out <= 0;
                timer <= 6'b001;
            end
        end
    end

endmodule

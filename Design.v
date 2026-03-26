`timescale 1ns / 1ps

module Design_1(
input clk,reset,
output reg [2:0] light
    );
    
    parameter G=2'b00, Y=2'b01, R=2'b10;
    reg [1:0] state, next;
    
    always @(posedge clk or posedge reset)
    if(reset) state <= G;
    else state <= next;
    
    always @(*) begin
    case(state)
    G: next=Y;
    Y: next=R;
    R: next=G;
    endcase
    end 
       
    always @(*) begin
    case(state)
    G: light=3'b001;
    Y: light=3'b010;
    R: light=3'b100;
    endcase
    end
    
endmodule

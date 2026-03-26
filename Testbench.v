`timescale 1ns / 1ps

module tb_1;
reg clk=0, reset;
wire [2:0] light;

Design_1 uut(.clk(clk), .reset(reset), .light(light));

always #5 clk=~clk;

initial begin
    $monitor("Time=%0t Light=%b", $time, light);

    reset=1; #10;
    reset=0;
    #100 
    $stop;
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2021 16:07:39
// Design Name: 
// Module Name: top
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


//module top(
//    input switch,
//    output reg led
//    );
    
//    always @(*) // posedge run everytime the switch changes
//        led = switch;
//endmodule


module top(
    input clk,
    input switch,
    output reg led);
    
    always @(posedge clk)
        led=switch;
endmodule
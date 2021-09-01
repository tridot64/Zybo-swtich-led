`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2021 22:06:29
// Design Name: 
// Module Name: bench
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


module bench;

    reg clk = 1;
    
    always #5 clk = ~clk;
    
    reg switch;
    wire led;
    
    top top (.clk(clk),.switch(switch), .led(led));
    
    always @(posedge clk) switch <= $random;
    
    initial
        begin
            repeat (1000) @(posedge clk);
            $finish;
        end
        
    reg expected;
    
    always @(posedge clk) expected = switch;
    
    integer num_checks = 0;
    integer num_error = 0;
    
    always @(posedge clk) 
        begin
            num_checks=num_checks+1;
            if (expected != led)
                begin
                    $display("ERROR: led not match on %0fns",$realtime);
                    num_error = num_error+1;
                end
        end
    

endmodule

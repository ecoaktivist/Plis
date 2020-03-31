`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2020 19:08:26
// Design Name: 
// Module Name: test_tb
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


module test_tb();

reg  [6:0] t_sw;
wire [6:0] t_led;

test DUT (
    .sw_i  ( t_sw ),
    .led_o ( t_led )
);

initial begin
    t_sw = 6'd0;
    repeat (64) begin
        #10;
        t_sw = t_sw + 1;
    end;
end;
endmodule

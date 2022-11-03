`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 06:35:46 PM
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


module top(inc,count,clk,rstn);
input inc,clk,rstn;
output wire [7:0]count;
wire but_o;
debouncer dy(.clk(clk),.rstn(rstn),.but_i(inc),.but_o(but_o));
ct do(.clk(clk),.rstn(rstn),.inc(but_o),.count(count));
endmodule

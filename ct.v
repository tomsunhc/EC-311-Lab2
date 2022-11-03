`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 06:04:49 PM
// Design Name: 
// Module Name: ct
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ct(input clk, rstn,inc,output reg [7:0]count);
always @ (posedge clk or negedge rstn)begin
if (rstn==1)begin
count<=0;
end else if  (inc==1) begin
count<=count+1;
end
end
endmodule

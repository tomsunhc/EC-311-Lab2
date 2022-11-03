`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 06:12:50 PM
// Design Name: 
// Module Name: ct_tb
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


module ct_tb;

    reg inc;
    reg clk;
    reg rstn;
    wire [7:0]count;
   

    ct uute(
        .clk(clk),
        .rstn(rstn),
        .count(count),
        .inc(inc)
        );


   initial begin
      clk =1;rstn=1;inc=0;
      #500 rstn=rstn+1'b1;
     
    end

always begin #5 clk = clk+1'b1;
end


always begin
#100 inc=inc+1'b1;
  end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 04:01:23 PM
// Design Name: 
// Module Name: db_tb
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


`timescale 1ns / 1ps
module tb;

    reg but_i;
    reg clk;
    reg rstn;
    wire but_o;

    debouncer uut (
        .clk(clk),
        .rstn(rstn),
        .but_i(but_i),
        .but_o(but_o)
    );

   initial begin
      clk =1;but_i=0;rstn=0;
      #500 rstn=rstn+1'b1;
     
    end

always begin #5 clk = clk+1'b1;
end



always begin
#100 but_i=but_i + 1'b1;
    end
  
endmodule
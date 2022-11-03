//`timescale 1ns / 1ps

module debouncer(clk, rstn,but_o,but_i);
input clk;
input but_i;
input rstn;
output reg but_o;
reg [3:0] count;
reg f_but;
always@ (posedge clk)begin
    if (rstn==1) begin
        f_but<=0;
        but_o=0;
        count<=0;
    end else begin
    if (!but_i)begin
        count<=0;
        f_but<=0;
        but_o=0;
    end else begin
    if ((count==5) && but_i==1) begin
        count<=count;
        f_but<=1;
    end else begin
        count<=count+1;
    end
    if (count==5)begin 
        if (f_but==0) begin
             but_o<=1;
        end else begin
             but_o<=0;
        end
    end
  end
  end
  end
  endmodule     
//module debounce_better_version(input pb_1,clk,output pb_out);
//wire slow_clk_en;
//wire Q1,Q2,Q2_bar,Q0;
//clock_enable u1(clk,slow_clk_en);
//my_dff_en d0(clk,slow_clk_en,pb_1,Q0);

//my_dff_en d1(clk,slow_clk_en,Q0,Q1);
//my_dff_en d2(clk,slow_clk_en,Q1,Q2);
//assign Q2_bar = ~Q2;
//assign pb_out = Q1 & Q2_bar;
//endmodule
//// Slow clock enable for debouncing button 
//module clock_enable(input Clk_100M,output slow_clk_en);
//    reg [26:0]counter=0;
//    always @(posedge Clk_100M)
//    begin
//       counter <= (counter>=249999)?0:counter+1;
//    end
//    assign slow_clk_en = (counter == 249999)?1'b1:1'b0;
//endmodule
//// D-flip-flop with clock enable signal for debouncing module 
//module my_dff_en(input DFF_CLOCK, clock_enable,D, output reg Q=0);
//    always @ (posedge DFF_CLOCK) begin
//  if(clock_enable==1) 
//           Q <= D;
//    end
//endmodule 
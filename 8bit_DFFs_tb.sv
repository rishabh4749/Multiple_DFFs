`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 23:49:01
// Design Name: 
// Module Name: 8bit_DFFs_tb
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


module eight_bit_DFFs_tb(

    );
    reg clk;
    reg [7:0] d;
    wire [7:0] q;
    eight_bit_DFF dut(.clk(clk),.d(d),.q(q));
    always #10 clk=~clk;
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%b q=%b",$time,d,q);
    #40 $finish;
    end
    initial
    begin
    clk<=0;
    #9;
    d<=8'b10101010;
    #19;
    d<=8'b01010101;
    end
    endmodule

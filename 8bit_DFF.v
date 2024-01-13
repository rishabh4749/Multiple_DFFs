`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 23:45:11
// Design Name: 
// Module Name: 8bit_DFF
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


module eight_bit_DFF(
    input clk,
    input [7:0] d,
    output reg [7:0] q
    );
    integer i;
    always @ (posedge clk)
    begin
    for(i=0;i<8;i=i+1)
    q[i]<=d[i];
    end
endmodule

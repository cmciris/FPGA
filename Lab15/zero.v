`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:19 12/13/2016 
// Design Name: 
// Module Name:    zero 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module zero(
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG,
    output DP,
    output [3:0] AN
    );
assign CA=0;
assign CB=0;
assign CC=0;
assign CD=0;
assign CE=0;
assign CF=0;
assign CG=1;
assign DP=1;
assign AN[0]=0;
assign AN[1]=0;
assign AN[2]=0;
assign AN[3]=0;

endmodule

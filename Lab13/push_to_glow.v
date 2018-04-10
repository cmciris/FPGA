`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:57 12/10/2016 
// Design Name: 
// Module Name:    push_to_glow 
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
module push_to_glow(
    input [3:0] BT,
    output [7:0] LD
    );
assign LD[0]=BT[0]|BT[1]|BT[2]|BT[3];
assign LD[1]=BT[0]|BT[1]|BT[2]|BT[3];
assign LD[2]=BT[0]|BT[1]|BT[2]|BT[3];
assign LD[3]=BT[0]|BT[1]|BT[2]|BT[3];
assign LD[4]=!LD[0];
assign LD[5]=!LD[0];
assign LD[6]=!LD[0];
assign LD[7]=!LD[0];
endmodule

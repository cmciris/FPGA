`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:52 12/10/2016 
// Design Name: 
// Module Name:    glow 
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
module glow(
    input [7:0] SW,
    output [7:0] LD
    );
assign LD[0]=SW[0];
assign LD[1]=SW[1];
assign LD[2]=SW[2];
assign LD[3]=SW[3];
assign LD[4]=SW[4];
assign LD[5]=SW[5];
assign LD[6]=SW[6];
assign LD[7]=SW[7];

endmodule

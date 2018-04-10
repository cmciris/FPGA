`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:19 12/03/2016 
// Design Name: 
// Module Name:    weightlifting_voter 
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
module weightlifting_voter(
    input SW0,
    input SW1,
    input SW2,
    output LD0
    );
assign LD0 = (SW0&SW2)|(SW0&SW1);

endmodule

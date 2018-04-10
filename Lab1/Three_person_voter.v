`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:04 12/02/2016 
// Design Name: 
// Module Name:    Three_person_voter 
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
module Three_person_voter(
    input A,
    input B,
    input C,
    output Y
    );

	assign Y=(A&B)|(A&C)|(B&C);

endmodule

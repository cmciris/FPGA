`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:25 12/13/2016 
// Design Name: 
// Module Name:    binary1 
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
module binary1(
    input [3:0] SW,
    output [7:0] DISP1,
    output [3:0] AN
    );
reg [7:0] DISP2;
always @ (*)
	begin
		if (SW[3]==0 & SW[2]==0 & SW[1]==0 & SW[0]==0)	//0
			assign DISP2 = 8'b11000000;
		if (SW[3]==0 & SW[2]==0 & SW[1]==0 & SW[0]==1)	//1
			assign DISP2 = 8'b11111001;
		if (SW[3]==0 & SW[2]==0 & SW[1]==1 & SW[0]==0)	//2
			assign DISP2 = 8'b10100100;
		if (SW[3]==0 & SW[2]==0 & SW[1]==1 & SW[0]==1)	//3
			assign DISP2 = 8'b10110000;
		if (SW[3]==0 & SW[2]==1 & SW[1]==0 & SW[0]==0)	//4
			assign DISP2 = 8'b10011001;
		if (SW[3]==0 & SW[2]==1 & SW[1]==0 & SW[0]==1)	//5
			assign DISP2 = 8'b10010010;
		if (SW[3]==0 & SW[2]==1 & SW[1]==1 & SW[0]==0)	//6
			assign DISP2 = 8'b10000010;
		if (SW[3]==0 & SW[2]==1 & SW[1]==1 & SW[0]==1)	//7
			assign DISP2 = 8'b11111000;
		if (SW[3]==1 & SW[2]==0 & SW[1]==0 & SW[0]==0)	//8
			assign DISP2 = 8'b10000000;
		if (SW[3]==1 & SW[2]==0 & SW[1]==0 & SW[0]==1)	//9
			assign DISP2 = 8'b10010000;
		if (SW[3]==1 & SW[2]==0 & SW[1]==1 & SW[0]==0)	//A
			assign DISP2 = 8'b00001000;
		if (SW[3]==1 & SW[2]==0 & SW[1]==1 & SW[0]==1)	//B
			assign DISP2 = 8'b00000000;
		if (SW[3]==1 & SW[2]==1 & SW[1]==0 & SW[0]==0)	//C
			assign DISP2 = 8'b01000110;
		if (SW[3]==1 & SW[2]==1 & SW[1]==0 & SW[0]==1)	//D
			assign DISP2 = 8'b01000000;
		if (SW[3]==1 & SW[2]==1 & SW[1]==1 & SW[0]==0)	//E
			assign DISP2 = 8'b00000110;
		if (SW[3]==1 & SW[2]==1 & SW[1]==1 & SW[0]==1)	//F
			assign DISP2 = 8'b00001110;
	end
assign AN[0]=0;
assign AN[1]=0;
assign AN[2]=0;
assign AN[3]=0;
assign DISP1=DISP2;
endmodule

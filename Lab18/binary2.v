`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:38 12/14/2016 
// Design Name: 
// Module Name:    binary2 
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
module binary2(
    output [7:0] DISP1,
    output [3:0] AN,
    input [3:0] SW,
	 input [3:0] BTN
    );
reg AN_tmp [3:0];
reg [7:0] DISP2;
always @ (*)
	begin
		AN_tmp[0]=!BTN[3];
		AN_tmp[1]=!BTN[2];
		AN_tmp[2]=!BTN[1];
		AN_tmp[3]=!BTN[0];
		case (SW)
			4'b0000: DISP2=8'b11000000;	//0
			4'b0001: DISP2=8'b11111001;	//1
			4'b0010: DISP2=8'b10100100;	//2
			4'b0011: DISP2=8'b10110000;	//3
			4'b0100: DISP2=8'b10011001;	//4
			4'b0101: DISP2=8'b10010010;	//5
			4'b0110: DISP2=8'b10000010;	//6
			4'b0111: DISP2=8'b11111000;	//7
			4'b1000: DISP2=8'b10000000;	//8
			4'b1001: DISP2=8'b10010000;	//9
			4'b1010: DISP2=8'b00001000;	//A
			4'b1011: DISP2=8'b00000000;	//B
			4'b1100: DISP2=8'b01000110;	//C
			4'b1101: DISP2=8'b01000000;	//D
			4'b1110: DISP2=8'b00000110;	//E
			4'b1111: DISP2=8'b00001110;	//F
		endcase
	end
assign AN[0]=AN_tmp[0];
assign AN[1]=AN_tmp[1];
assign AN[2]=AN_tmp[2];
assign AN[3]=AN_tmp[3];
assign DISP1=DISP2;
endmodule

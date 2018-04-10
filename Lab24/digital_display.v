`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:26 12/16/2016 
// Design Name: 
// Module Name:    digital_display 
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
module digital_display(
    input BTN,
	 input CLK,
    output [7:0] DISP1
    );
wire [31:0] N = 50000000;
reg [31:0] cnt;
reg [3:0] count=0;
reg [7:0] DISP2;
always @ (posedge CLK) begin
	if(cnt==N-1) begin
		cnt <= 0;
		case (count%16)
			0: DISP2=8'b11000000;	//0
			1: DISP2=8'b11111001;	//1
			2: DISP2=8'b10100100;	//2
			3: DISP2=8'b10110000;	//3
			4: DISP2=8'b10011001;	//4
			5: DISP2=8'b10010010;	//5
			6: DISP2=8'b10000010;	//6
			7: DISP2=8'b11111000;	//7
			8: DISP2=8'b10000000;	//8
			9: DISP2=8'b10010000;	//9
			10: DISP2=8'b00001000;	//A
			11: DISP2=8'b00000000;	//B
			12: DISP2=8'b01000110;	//C
			13: DISP2=8'b01000000;	//D
			14: DISP2=8'b00000110;	//E
			15: DISP2=8'b00001110;	//F
		endcase
		if (count == 15)
			count <= 0;
		else
			count <= count + 1;
	end
	else
		cnt <= cnt+1;
	if (BTN == 1)
		count <= 0;
end
assign DISP1 = DISP2;
endmodule

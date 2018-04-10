`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:50 12/16/2016 
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
    input CLK,
    output [7:0] DISP1,
    output [3:0] AN1
    );
wire [31:0] N = 35000;
wire [31:0] N2 = 50000000;
reg [31:0] cnt;
reg [31:0] cnt2;
reg [1:0] count=0;
reg [7:0] DISP2;
reg [3:0] AN2;
reg [7:0] list [15:0];
reg [3:0] one=0;
reg [3:0] two=0;
reg [3:0] three=0;
reg [3:0] four=0;
initial begin
	list[0] = 8'b11000000;	//0
	list[1] = 8'b11111001;	//1
	list[2] = 8'b10100100;	//2
	list[3] = 8'b10110000;	//3
	list[4] = 8'b10011001;	//4
	list[5] = 8'b10010010;	//5
	list[6] = 8'b10000010;	//6
	list[7] = 8'b11111000;	//7
	list[8] = 8'b10000000;	//8
	list[9] = 8'b10010000;	//9
	list[10] = 8'b00001000;	//A
	list[11] = 8'b00000000;	//B
	list[12] = 8'b01000110;	//C
	list[13] = 8'b01000000;	//D
	list[14] = 8'b00000110;	//E
	list[15] = 8'b00001110;	//F
end
always @ (posedge CLK) begin
	if (cnt2==N2-1) begin
		cnt2 <= 0;
		if (four == 15) begin
			four <= 0;
			if (three == 15) begin
				three <= 0;
				if (two == 15) begin
					two <= 0;
					if (one == 15) begin
						one <= 0;
					end
					else
						one <= one + 1;
				end
				else
					two <= two + 1;
			end
			else
				three <= three + 1;
		end
		else
			four <= four + 1;
	end
	else
		cnt2 <= cnt2+1;
end

always @ (posedge CLK) begin
	if(cnt==N-1) begin
		cnt <= 0;
		case (count%4)
			0: begin
					AN2 <= 4'b1110;
					DISP2 <= list[one];
				end//第一位
			1: begin
					AN2 <= 4'b1101;
					DISP2 <= list[two];
				end//第二位
			2: begin
					AN2 <= 4'b1011;
					DISP2 <= list[three];
				end//第三位
			3: begin
					AN2 <= 4'b0111;
					DISP2 <= list[four];
				end//第四位
		endcase
		if (count == 3)
			count <= 0;
		else
			count <= count + 1;
	end
	else
		cnt <= cnt+1;
end

assign AN1 = AN2;
assign DISP1 = DISP2;
endmodule
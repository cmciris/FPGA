`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:33 12/17/2016 
// Design Name: 
// Module Name:    stopwatch 
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
module stopwatch(
    input CLK,
	 input BTN2,
	 input BTN3,
    output [7:0] LD,
    output [7:0] DISP1,
    output [3:0] AN1
    );
wire [31:0] N1 = 35000;
wire [31:0] N2 = 500000;
reg [31:0] cnt1;
reg [31:0] cnt2;
reg [1:0] count=0;
reg [7:0] DISP2;
reg [3:0] AN2;
reg [7:0] list [9:0];
reg [3:0] one=0;
reg [3:0] two=0;
reg [3:0] three=0;
reg [3:0] four=0;
reg [7:0] total_second;
reg flag;
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
end
always @ (posedge BTN2) begin
	flag <= ~flag;
end
always @ (posedge CLK) begin
	if(cnt1==N1-1) begin
		cnt1 <= 0;
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
		cnt1 <= cnt1+1;
end
always @ (posedge CLK) begin
	if (!flag) begin
		if (cnt2==N2-1) begin
			cnt2 <= 0;
			if (two == 9) begin
				two <= 0;
				if (one == 5) begin
					one <= 0;
					if (four == 9) begin
						four <= 0;
						if (three == 5) begin
							three <= 0;
							if (total_second == 8'b1111_1111) begin
								total_second <= 8'b0000_0000;
							end
							else
								total_second <= total_second + 1;
						end
						else
							three <= three + 1;
					end
					else
						four <= four + 1;
				end
				else
					one <= one + 1;
			end
			else
				two <= two + 1;
		end
		else
			cnt2 <= cnt2+1;
	end
	if (BTN3 == 1) begin
		total_second <= 8'b0000_0000;
		one <= 0;
		two <= 0;
		three <= 0;
		four <= 0;
	end
end

assign AN1 = AN2;
assign DISP1 = DISP2;
assign LD = total_second;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:45 12/17/2016 
// Design Name: 
// Module Name:    taxi 
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
module taxi(
    input CLK, //时钟脉冲
	 input SW0,	//停车拨位开关
	 input [1:0] SW,
	 input BTN1,	//每日首次载客清零
	 input BTN2,	//显示日收入总额
	 input BTN3,	//完成交易or开始载客
	 output [1:0] LD6_7,
    output [7:0] DISP1, 
    output [3:0] AN1,
	 output [3:0] LD0_3,
	 output LD5
    );
wire [31:0] N1 = 10000;
wire [31:0] N2 = 125000;
wire [31:0] N_second = 5000000;
reg [31:0] cnt1;
reg [31:0] cnt2;
reg [31:0] cnt3;
reg [31:0] count;
reg [7:0] DISP2;
reg [3:0] AN2;
reg [7:0] list [9:0];
reg [31:0] glow [15:0];
reg [5:0] one;
reg [5:0] two;
reg [5:0] three;
reg [5:0] four;
reg [9:0] m;
reg [31:0] km;
reg [7:0] min;
reg [3:0] thousand;
reg [5:0] t_one;
reg [5:0] t_two;
reg [5:0] t_three;
reg [5:0] t_four;
reg [5:0] t_thousand;
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
	one = 0;
	two = 1;
	three = 0;
	four = 0;
	glow[0] = 4;
	glow[1] = 8;
	glow[2] = 12;
	glow[3] = 16; ///////////
	glow[4] = 1;
	glow[5] = 2;
	glow[6] = 4; 
	glow[7] = 8; //////////
	glow[8] = 2;
	glow[9] = 4;
	glow[10] = 8;
	glow[11] = 16; //////////
	glow[12] = 3;
	glow[13] = 6;
	glow[14] = 12;
	glow[15] = 24; //////////
end
always @ (posedge BTN3) begin
	if (BTN1) begin
		t_thousand <= 4'b0000;
		t_one <= 0;
		t_two <= 0;
		t_three <= 0;
		t_four <= 0;
	end
	if (!flag) begin
		if (t_four + four > 9) begin
			t_four <= t_four + four - 10;
			if (t_three + three + 1 > 9) begin
				t_three <= t_three + three - 9;
				if (t_two + two + 1 > 9) begin
					t_two <= t_two + two - 9;
					if (t_one + one + 1 > 9) begin
						t_one <= t_one + one - 9;
						if (t_thousand + thousand + 1 > 4'b1111) begin
							t_thousand <= t_thousand + thousand - 4'b1110;
						end
						else
							t_thousand <= t_thousand + thousand;
					end
					else t_one <= t_one + one + 1;
				end
				else t_two <= t_two + two + 1;
			end
			else t_three <= t_three + three + 1;
		end
		else begin
			t_four <= t_four + four;
			if (t_three + three > 9) begin
				t_three <= t_three + three - 10;
				if (t_two + two + 1 > 9) begin
					t_two <= t_two + two - 9;
					if (t_one + one + 1 > 9) begin
						t_one <= t_one + one - 9;
						if (t_thousand + thousand + 1 > 4'b1111) begin
							t_thousand <= t_thousand + thousand - 4'b1110;
						end
						else
							t_thousand <= t_thousand + thousand;
					end
					else t_one <= t_one + one + 1;
				end
				else t_two <= t_two + two + 1;
			end
			else begin
				t_three <= t_three + three;
				if (t_two + two > 9) begin
					t_two <= t_two + two - 10;
					if (t_one + one + 1 > 9) begin
						t_one <= t_one + one - 9;
						if (t_thousand + thousand + 1 > 4'b1111) begin
							t_thousand <= t_thousand + thousand - 4'b1110;
						end
						else
							t_thousand <= t_thousand + thousand;
					end
					else t_one <= t_one + one + 1;
				end
				else begin
					t_two <= t_two + two;
					if (t_one + one > 9) begin
						t_one <= t_one + one - 10;
						if (t_thousand + thousand + 1 > 4'b1111) begin
							t_thousand <= t_thousand + thousand - 4'b1110;
						end
						else
							t_thousand <= t_thousand + thousand;
					end
					else begin
						t_one <= t_one + one;
						if (t_thousand + thousand > 4'b1111) begin
							t_thousand <= t_thousand + thousand - 4'b1111;
						end
						else
							t_thousand <= t_thousand + thousand;
					end
				end
			end
		end
	end
	flag <= ~flag;
end
always @ (posedge CLK) begin
		if(cnt1 >= N1 - 1) begin
			cnt1 <= 0;
			if (SW == 2'b00) begin //00
				if (!BTN2) begin
					case (count%4)
						0: begin
								if (!flag) begin
									if (one == 0) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1110;
										DISP2 <= list[one];
									end
								end
								else begin
									AN2 <= 4'b1110;
									DISP2 <= 8'b1011_1111;
								end
							end//第一位
						(glow[4+SW]): begin
								if (!flag) begin
									if ((one == 0)&&(two == 0)) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1101;
										DISP2 <= list[two];
									end
								end
								else begin
									AN2 <= 4'b1101;
									DISP2 <= 8'b1011_1111;
								end
							end//第二位
						(glow[8+SW]): begin
								if (!flag) begin
									AN2 <= 4'b1011;
									DISP2 <= list[three]&8'b01111111;
								end
								else begin
									AN2 <= 4'b1011;
									DISP2 <= 8'b1011_1111;
								end
							end//第三位
						(glow[12+SW]): begin
								if (!flag) begin
									AN2 <= 4'b0111;
									DISP2 <= list[four];
								end
								else begin
									AN2 <= 4'b0111;
									DISP2 <= 8'b1011_1111;
								end
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
				else begin
					case (count%4)
						0: begin
								if (t_one == 0) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1110;
									DISP2 <= list[t_one];
								end
							end//第一位
						(glow[4+SW]): begin
								if ((t_one == 0)&&(t_two == 0)) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1101;
									DISP2 <= list[t_two];
								end
							end//第二位
						(glow[8+SW]): begin
								AN2 <= 4'b1011;
								DISP2 <= list[t_three]&8'b01111111;
							end//第三位
						(glow[12+SW]): begin
								AN2 <= 4'b0111;
								DISP2 <= list[t_four];
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
			end
			if (SW == 2'b01) begin //01
				if (!BTN2) begin
					case (count%8)
						0: begin
								if (!flag) begin
									if (one == 0) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1110;
										DISP2 <= list[one];
									end
								end
								else begin
									AN2 <= 4'b1110;
									DISP2 <= 8'b1011_1111;
								end
							end//第一位
						(glow[4+SW]): begin
								if (!flag) begin
									if ((one == 0)&&(two == 0)) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1101;
										DISP2 <= list[two];
									end
								end
								else begin
									AN2 <= 4'b1101;
									DISP2 <= 8'b1011_1111;
								end
							end//第二位
						(glow[8+SW]): begin
								if (!flag) begin
									AN2 <= 4'b1011;
									DISP2 <= list[three]&8'b01111111;
								end
								else begin
									AN2 <= 4'b1011;
									DISP2 <= 8'b1011_1111;
								end
							end//第三位
						(glow[12+SW]): begin
								if (!flag) begin
									AN2 <= 4'b0111;
									DISP2 <= list[four];
								end
								else begin
									AN2 <= 4'b0111;
									DISP2 <= 8'b1011_1111;
								end
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
				else begin
					case (count%8)
						0: begin
								if (t_one == 0) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1110;
									DISP2 <= list[t_one];
								end
							end//第一位
						(glow[4+SW]): begin
								if ((t_one == 0)&&(t_two == 0)) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1101;
									DISP2 <= list[t_two];
								end
							end//第二位
						(glow[8+SW]): begin
								AN2 <= 4'b1011;
								DISP2 <= list[t_three]&8'b01111111;
							end//第三位
						(glow[12+SW]): begin
								AN2 <= 4'b0111;
								DISP2 <= list[t_four];
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
			end
			if (SW == 2'b10) begin //10
				if (!BTN2) begin
					case (count%16)
						0: begin
								if (!flag) begin
									if (one == 0) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1110;
										DISP2 <= list[one];
									end
								end
								else begin
									AN2 <= 4'b1110;
									DISP2 <= 8'b1011_1111;
								end
							end//第一位
						(glow[4+SW]): begin
								if (!flag) begin
									if ((one == 0)&&(two == 0)) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1101;
										DISP2 <= list[two];
									end
								end
								else begin
									AN2 <= 4'b1101;
									DISP2 <= 8'b1011_1111;
								end
							end//第二位
						(glow[8+SW]): begin
								if (!flag) begin
									AN2 <= 4'b1011;
									DISP2 <= list[three]&8'b01111111;
								end
								else begin
									AN2 <= 4'b1011;
									DISP2 <= 8'b1011_1111;
								end
							end//第三位
						(glow[12+SW]): begin
								if (!flag) begin
									AN2 <= 4'b0111;
									DISP2 <= list[four];
								end
								else begin
									AN2 <= 4'b0111;
									DISP2 <= 8'b1011_1111;
								end
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
				else begin
					case (count%16)
						0: begin
								if (t_one == 0) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1110;
									DISP2 <= list[t_one];
								end
							end//第一位
						(glow[4+SW]): begin
								if ((t_one == 0)&&(t_two == 0)) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1101;
									DISP2 <= list[t_two];
								end
							end//第二位
						(glow[8+SW]): begin
								AN2 <= 4'b1011;
								DISP2 <= list[t_three]&8'b01111111;
							end//第三位
						(glow[12+SW]): begin
								AN2 <= 4'b0111;
								DISP2 <= list[t_four];
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
			end
			if (SW == 2'b11) begin //11
				if (!BTN2) begin
					case (count%32)
						0: begin
								if (!flag) begin
									if (one == 0) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1110;
										DISP2 <= list[one];
									end
								end
								else begin
									AN2 <= 4'b1110;
									DISP2 <= 8'b1011_1111;
								end
							end//第一位
						(glow[4+SW]): begin
								if (!flag) begin
									if ((one == 0)&&(two == 0)) AN2 <= 4'b1111;
									else begin
										AN2 <= 4'b1101;
										DISP2 <= list[two];
									end
								end
								else begin
									AN2 <= 4'b1101;
									DISP2 <= 8'b1011_1111;
								end
							end//第二位
						(glow[8+SW]): begin
								if (!flag) begin
									AN2 <= 4'b1011;
									DISP2 <= list[three]&8'b01111111;
								end
								else begin
									AN2 <= 4'b1011;
									DISP2 <= 8'b1011_1111;
								end
							end//第三位
						(glow[12+SW]): begin
								if (!flag) begin
									AN2 <= 4'b0111;
									DISP2 <= list[four];
								end
								else begin
									AN2 <= 4'b0111;
									DISP2 <= 8'b1011_1111;
								end
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
				else begin
					case (count%32)
						0: begin
								if (t_one == 0) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1110;
									DISP2 <= list[t_one];
								end
							end//第一位
						(glow[4+SW]): begin
								if ((t_one == 0)&&(t_two == 0)) AN2 <= 4'b1111;
								else begin
									AN2 <= 4'b1101;
									DISP2 <= list[t_two];
								end
							end//第二位
						(glow[8+SW]): begin
								AN2 <= 4'b1011;
								DISP2 <= list[t_three]&8'b01111111;
							end//第三位
						(glow[12+SW]): begin
								AN2 <= 4'b0111;
								DISP2 <= list[t_four];
							end//第四位
						default: begin //低电平
							AN2 <= 4'b1111;
						end
					endcase
					if (count >= 2**30)
						count <= 0;
					else
						count <= count + 1;
				end
			end
		end
		else
			cnt1 <= cnt1+1;
end
always @ (posedge CLK) begin
	if (!flag) begin
		if (!SW0) begin
			if (cnt2==N2-1) begin
				cnt2 <= 0;
				if (m == 999) begin
					m <= 0;
					km <= km + 1;
					if (km<=3) begin //3km以内
						one <= 0;
						two <= 1;
						three <= 0;
						four <= 0;
					end
					else begin
						if (km<=10) begin //3到10km
							if (four + 4 > 9) begin
								four <= four - 6;
								if (three + 3 > 9) begin
									three <= three - 7;
									if (two == 9) begin
										two <= 0;
										if (one == 9) begin
											one <= 0;
											if (thousand == 4'b1111) begin
												thousand <= 4'b0000;
											end
											else
												thousand <= thousand + 1;
										end
										else one <= one + 1;
									end
									else two <= two + 1;
								end
								else three <= three + 3;
							end
							else begin
								four <= four + 4;	
								if (three + 2 > 9) begin
									three <= three - 8;
									if (two == 9) begin
										two <= 0;
										if (one == 9) begin
											one <= 0;
											if (thousand == 4'b1111) begin
												thousand <= 4'b0000;
											end
											else
												thousand <= thousand + 1;
										end
										else one <= one + 1;
									end
									else two <= two + 1;
								end
								else three <= three + 2;
							end
						end
						else begin //大于10km
							if (four + 6 > 9) begin
								four <= four - 4;
								if (three + 4 > 9) begin
									three <= three - 6;
									if (two == 9) begin
										two <= 0;
										if (one == 9) begin
											one <= 0;
											if (thousand == 4'b1111) begin
												thousand <= 4'b0000;
											end
											else
												thousand <= thousand + 1;
										end
										else one <= one + 1;
									end
									else two <= two + 1;
								end
								else three <= three + 4;
							end
							else begin
								four <= four + 6;
								if (three + 3 > 9) begin
									three <= three - 7;
									if (two == 9) begin
										two <= 0;
										if (one == 9) begin
											one <= 0;
											if (thousand == 4'b1111) begin
												thousand <= 4'b0000;
											end
											else
												thousand <= thousand + 1;
										end
										else one <= one + 1;
									end
									else two <= two + 1;
								end
								else three <= three + 3;
							end
						end
					end
				end
				else
					m <= m + 1;
			end
			else
				cnt2 <= cnt2+1;
		end
		else begin
			if (cnt3==N_second-1) begin
				cnt3 <= 0;
				if (min == 59) begin
					min <= 0;
					if (four + 5 > 9) begin
						four <= four - 5;
						if (three == 9) begin
							three <= 0;
							if (two == 9) begin
								two <= 0;
								if (one == 9) begin
									one <= 0;
									if (thousand == 4'b1111) begin
										thousand <= 4'b0000;
									end
									else
										thousand <= thousand + 1;
								end
								else one <= one + 1;
							end
							else two <= two + 1;
						end
						else three <= three + 1;
					end
					else four <= four + 5;
				end
				else
					min <= min + 1;
			end
			else
				cnt3 <= cnt3 + 1;
		end
	end
	else begin
		one <= 0;
		two <= 1;
		three <= 0;
		four <= 0;
		thousand <= 4'b0000;
		cnt2 <= 0;
		cnt3 <= 0;
		m <= 0;
		km <= 0;
	end
end
assign AN1 = AN2;
assign DISP1 = DISP2;
assign LD0_3 = thousand;
assign LD6_7 = SW;
assign LD5 = SW0;
endmodule
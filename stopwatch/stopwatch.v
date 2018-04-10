module stopwatch(clk, key_reset, key_start_pause, key_display_stop,
 hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7,
 led0, led1, led2);
 
	input clk, key_reset, key_start_pause, key_display_stop;
	output [6:0] hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7;
	output led0, led1, led2;

	reg counter_work; //显示刷新工作状态
	reg display_work; //计数(计时)工作状态
	
	parameter TENMSECOND_TIME = 500000; //10ms为毫秒显示低每一跳的时间间隔
	parameter DELAY_TIME = 1000000; //20ms消除信号毛刺的采样延迟
	
	//定义8个个显示数据（变量）寄存器：
	reg [3:0] hour_display_high;
	reg [3:0] hour_display_low;
	reg [3:0] minute_display_high;
	reg [3:0] minute_display_low;
	reg [3:0] second_display_high;
	reg [3:0] second_display_low;
	reg [3:0] msecond_display_high;
	reg [3:0] msecond_display_low;
	
	//定义8个计时数据（变量）寄存器：
	reg [3:0] hour_counter_high;
	reg [3:0] hour_counter_low;
	reg [3:0] minute_counter_high;
	reg [3:0] minute_counter_low;
	reg [3:0] second_counter_high;
	reg [3:0] second_counter_low;
	reg [3:0] msecond_counter_high;
	reg [3:0] msecond_counter_low;
 
	reg [31:0] counter_50M;
	reg start;
	reg start_1_time;
	reg start_2_time;
	reg [31:0] counter_start;
	reg display;
	reg display_1_time;
	reg display_2_time;
	reg [31:0] counter_display;
	reg reset_time_1 = 0;
	reg reset_time_2 = 0;
	reg reset_1_time;
	reg reset_2_time;
	reg [31:0] counter_reset;
	
	//实例化8个LED数码管的各自译码器
	sevenseg LED8_hour_display_high(hour_display_high, hex7);
	sevenseg LED8_hour_display_low(hour_display_low, hex6);
	
	sevenseg LED8_minute_display_high(minute_display_high, hex5);
	sevenseg LED8_minute_display_low(minute_display_low, hex4);
 
	sevenseg LED8_second_display_high(second_display_high, hex3);
	sevenseg LED8_second_display_low(second_display_low, hex2);
 
	sevenseg LED8_msecond_display_high(msecond_display_high, hex1);
	sevenseg LED8_msecond_display_low(msecond_display_low, hex0);
	
	//key_start_pause消抖
	always @ (posedge clk)
		begin
			if (counter_start == DELAY_TIME) counter_start <= 1;
			else counter_start <= counter_start + 1;
		end
		
	always @ (posedge clk)
		begin
			start_2_time <= start_1_time;
			if (!start_1_time && start_2_time) start <= ~start;
		end
		
	always @ (posedge clk)
		begin
			if (counter_start == DELAY_TIME) start_1_time <= key_start_pause;
		end
	
	//key_display_stop消抖
	always @ (posedge clk)
		begin
			if (counter_display == DELAY_TIME) counter_display <= 1;
			else counter_display <= counter_display + 1;
		end
		
	always @ (posedge clk)
		begin
			display_2_time <= display_1_time;
			if (!display_1_time && display_2_time) begin
				display <= ~display;
			end
		end
	
	always @ (posedge clk)
		begin
			if (counter_display == DELAY_TIME) display_1_time <= key_display_stop;
		end
	
	//key_reset消抖
	always @ (posedge clk)
		begin
			if (counter_reset == DELAY_TIME) counter_reset <= 1;
			else counter_reset <= counter_reset + 1;
		end

	always @ (posedge clk)
		begin
			reset_2_time <= reset_1_time;
			if (!reset_1_time && reset_2_time) begin
				if (!counter_work) reset_time_1 <= ~reset_time_1;
			end
		end
		
	always @ (posedge clk)
		begin
			if (counter_reset == DELAY_TIME) reset_1_time <= key_reset;
		end
	
	//显示和进位
	always @ (posedge clk)
		begin
			counter_work <= start;
			display_work <= display;
			if (reset_time_1 != reset_time_2) begin
				msecond_counter_low <= 0;
				msecond_counter_high <= 0;
				second_counter_low <= 0;
				second_counter_high <= 0;
				minute_counter_low <= 0;
				minute_counter_high <= 0;
				hour_counter_low <= 0;
				hour_counter_high <= 0;
				reset_time_2 <= reset_time_1;
			end
			if (counter_work) begin
				if (counter_50M == TENMSECOND_TIME - 1) begin
					counter_50M <= 0;
					if (msecond_counter_low == 9) begin
						msecond_counter_low <= 0;
						if (msecond_counter_high == 9) begin
							msecond_counter_high <= 0;
							if (second_counter_low == 9) begin
								second_counter_low <= 0;
								if (second_counter_high == 5) begin
									second_counter_high <= 0;
									if (minute_counter_low == 9) begin
										minute_counter_low <= 0;
										if (minute_counter_high == 5) begin
											minute_counter_high <= 0;
											if (hour_counter_low == 9) begin
												hour_counter_low <= 0;
												if (hour_counter_high == 5) begin
													hour_counter_high <= 0;
												end
												else
													hour_counter_high <= hour_counter_high + 1;
											end
											else
												hour_counter_low <= hour_counter_low + 1;
										end
										else
											minute_counter_high <= minute_counter_high + 1;
									end
									else
										minute_counter_low <= minute_counter_low + 1;
								end
								else
									second_counter_high <= second_counter_high + 1;
							end
							else
								second_counter_low <= second_counter_low + 1;
						end
						else
							msecond_counter_high <= msecond_counter_high + 1;
					end
					else
						msecond_counter_low <= msecond_counter_low + 1;
				end
				else
					counter_50M <= counter_50M + 1;
			end
			if (!display_work) begin
				msecond_display_low <= msecond_counter_low;
				msecond_display_high <= msecond_counter_high;
				second_display_low <= second_counter_low;
				second_display_high <= second_counter_high;
				minute_display_low <= minute_counter_low;
				minute_display_high <= minute_counter_high;
				hour_display_low <= hour_counter_low;
				hour_display_high <= hour_counter_high;
			end
		end
	assign led0 = ~key_display_stop; //按键状态指示灯
	assign led1 = ~key_start_pause;
	assign led2 = ~key_reset;
endmodule

//4bit的BCD码至7段LED数码管译器模块
module sevenseg(data, ledsegments);
	input [3:0] data;
	output ledsegments;
	reg [6:0] ledsegments;
	
	always @ (*)
		case(data)
		
			0:ledsegments = 7'b100_0000;
			1:ledsegments = 7'b111_1001;
			2:ledsegments = 7'b010_0100;
			3:ledsegments = 7'b011_0000;
			4:ledsegments = 7'b001_1001;
			5:ledsegments = 7'b001_0010;
			6:ledsegments = 7'b000_0010;
			7:ledsegments = 7'b111_1000;
			8:ledsegments = 7'b000_0000;
			9:ledsegments = 7'b001_0000;
			default:ledsegments = 7'b111_1111;
		endcase
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:30 12/14/2016 
// Design Name: 
// Module Name:    CLK_div_N 
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
module CLK_div_N(
    input CLK,
	 input BTN1,
	 input BTN0,
    output [7:0] LD
    );
wire [31:0]N=5000000;
reg [31:0] cnt;
reg flag;
reg [7:0] DISP;
always @ (posedge BTN1)
	begin
		flag <= ~flag;
	end
always @ (posedge CLK)
	begin
		if (!flag)
			begin
			if(cnt==N-1)
				begin
					cnt <= 0;
					if (DISP == 8'b11111111)
						DISP <= 8'b00000000;
					else
						DISP <= DISP + 1;
				end
			else
				cnt <= cnt+1;
			end
		if (BTN0 == 1)
			DISP <= 8'b00000000;
	end
assign LD = DISP;
endmodule

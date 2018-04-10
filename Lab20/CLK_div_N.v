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
    output CLK_div_N
    );
wire [31:0]N=2**26;// NΪ��Ƶϵ��,N��2����,N��ֵΪCLK����CLK_div_N��ȡ��(��������)
/******************** ��������ʱ��1 ***************/
reg [31:0] cnt1;
reg CLK_div_N_1;
always @ (posedge CLK)
	begin
		if (N%2==0)// ���NΪż��
			begin
				if(N==2)// ���NΪ2
					CLK_div_N_1 <= ~CLK_div_N_1;
				else
					begin
						if(cnt1==(N-2)/2)
							begin
								cnt1 <= 0;
								CLK_div_N_1 <= ~CLK_div_N_1;
							end
						else
							cnt1 <= cnt1+1;
					end
			end
		else// ���NΪ����
			begin
				if (cnt1==N-1)
					cnt1 <= 0;
				else
					cnt1 <= cnt1+1;
				if ((cnt1==N-1) || (cnt1==(N-1)/2))
					CLK_div_N_1 <= ~CLK_div_N_1;
				else ;
			end
	end
/*********************** ��������ʱ��2 *********************/
wire CLK0=(N%2)?(~CLK):0;// ���NΪż��������ʱ��2��CLK_div_N_2����Ϊ0��������Ҫ�õ��˱���ʱ��
reg [31:0]cnt2;
reg CLK_div_N_2;
always @ (posedge CLK0)
	begin
		if(cnt2==N-1)
			cnt2 <= 0;
		else
			cnt2 <= cnt2+1;
			if((cnt2==N-1) || (cnt2==(N-1)/2))
				CLK_div_N_2 <= ~CLK_div_N_2;
	end
/******************** �������շ�Ƶʱ��************************/
assign CLK_div_N = CLK_div_N_1 | CLK_div_N_2;
endmodule

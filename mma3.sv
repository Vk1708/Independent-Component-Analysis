`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2022 19:50:46
// Design Name: 
// Module Name: mma3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mma3(clk, rst ,w,h, p,m,Winit);

input clk, rst;
input signed  [63:0]h[0:2][0:2];
input signed  [63:0]p[0:2][0:2];
input signed [15:0] w[0:2][0:2];
//input [16:0]w[0:2][0:2];
//input [63:0]h[0:2][0:2];

output reg signed  [79:0] m[0:2][0:2];


reg signed [15:0] vv[0:2][0:2];
 output reg  signed [15:0] Winit[0:2][0:2];
//reg [63:0] a[0:2][0:2];


//reg [63:0] I[0:2][0:2] = {{ 64'd2305843009000000000, 64'd0,64'd0},{64'd0, 64'd2305843009000000000, 64'd0},{64'd0, 64'd0, 64'd2305843009000000000}};


reg signed [63:0] I[0:2][0:2] = {{ 64'd2305843009000000000, 64'd2305843009000000000,64'd2305843009000000000},{64'd2305843009000000000, 64'd2305843009000000000, 64'd2305843009000000000},{64'd2305843009000000000, 64'd2305843009000000000, 64'd2305843009000000000}};

integer i=0,j=0;
integer count=0;
integer timer=0;
//integer j=0;


always@(posedge clk)
begin

if(count<=66)
begin
count=count+1;
end


if(count==66)
begin
while(i<=2)
    begin
         
            m[i][0]= (I[i][0]-h[i][0]-p[i][0])*w[i][0];
            m[i][1]= (I[i][1]-h[i][1]-p[i][1])*w[i][1];
            m[i][2]= (I[i][2]-h[i][2]-p[i][2])*w[i][2];
           
           vv[i][0]= m[i][0][63:47];
           vv[i][1]= m[i][1][63:47];
           vv[i][2]= m[i][2][63:47];
           
           Winit[i][0]= (w[i][0]+vv[i][0]);
           Winit[i][1]= (w[i][1]+vv[i][1]);
           Winit[i][2]= (w[i][2]+vv[i][2]);
           
           
           
       i=i+1;
  end
end
end  



/*

 always@(posedge clk)
	begin
	 while(j<2)
    begin
          x[i][0]= m[i][0][63:47];
          x[i][1]= m[i][1][63:47];
          x[i][2]= m[i][2][63:47];
    end
	
	
	
	//x[i]= m[63:47];
	end
	
	
	
always @(posedge clk)
begin


if(timer<=100)
begin
timer = timer+1;
end

if(timer==100)
begin
    while(j<2)
    begin
          Winit[i][0]= (w[i][0]+x[i][0]);
          Winit[i][1]= (w[i][1]+x[i][1]);
          Winit[i][2]= (w[i][2]+x[i][2]);
    end
    
    end
    */
    	        




 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2022 14:46:53
// Design Name: 
// Module Name: top
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


module top(clk,reset,w,x,z_tanh,m,Winit);

input clk,reset;
input signed [15:0]w[0:2][0:2];
input signed [15:0] x [0:2][0:63];

//output [15:0] deltaW[0:2][0:63];

wire  signed [31:0]  u[0:2][0:63];
 reg   signed [63:0] p[0:2][0:2];
  //reg [31:0] cosh[0:2][0:63];
  // reg [31:0] sinh[0:2][0:63];

//input [31:0]z_i;
output  reg  signed [15:0] z_tanh[0:2][0:63];

output reg [15:0] Winit[0:2][0:2];
//input [31:0]a,b;
reg   signed [63:0]h [0:2][0:2];

output reg signed [79:0] m[0:2][0:2];


//reg [31:0] x_o[0:2][0:63];
//reg [31:0] y_o[0:2][0:63];


mma1 u1(clk,reset,w,x,u); // clk_count = output



mma2 u2(clk,reset,u,p); // clk_c = input

//top_gen u3(clk,rst,a,b,u,cosh,sinh);

 
//gen_tanh u4(clk,rst,cosh,sinh,z_i,x_o,y_o,z_tanh);
gen_tanh  u3(clk,z_tanh,u);
 
tanhuxUT u4(clk,rst,z_tanh,u,h);
 
 
 
 
mma3   u5(clk, rst,w, h, p, m,Winit);
 
endmodule

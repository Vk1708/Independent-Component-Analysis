module mma2(clk,rst,u,p);

input clk, rst;
input signed [31:0] u[0:2][0:63];
output reg signed [63:0] p[0:2][0:2];

pe2_31 q1(clk,rst,u,p[0][0:2]);

pe2_32 q2(clk,rst,u,p[1][0:2]);

pe2_33 q3(clk,rst,u,p[2][0:2]);

endmodule

module tanhuxUT(clk,rst,tanhu,u,h);

input clk, rst;
input signed [31:0] u[0:2][0:63];

input signed [15:0] tanhu[0:2][0:63];

output reg signed [63:0] h[0:2][0:2];

pe2_31_tanhuxut qq1(clk,rst,tanhu,u,h[0][0:2]);

pe2_32_tanhuxut qq2(clk,rst,tanhu,u,h[1][0:2]);

pe2_33_tanhuxut qq3(clk,rst,tanhu,u,h[2][0:2]);

endmodule

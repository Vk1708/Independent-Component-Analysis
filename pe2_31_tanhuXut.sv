module pe2_31_tanhuxut(clk,rst,tanhu,u,h);

input clk,rst;

input signed [31:0]u[0:2][0:63];

input signed [15:0]tanhu[0:2][0:63];

output reg signed [63:0]h[0:2];

reg signed [31:0] a[0:63];
reg signed [31:0] b[0:63];
reg signed [31:0] c[0:63];

reg signed [15:0] xx[0:63];
reg signed [15:0] yy[0:63];
reg signed [15:0] zz[0:63];


integer i=0,j=0;

always@(posedge clk) begin
    
    
    a[0:63] = u[0][0:63]; 
    b[0:63] = u[1][0:63];
    c[0:63] = u[2][0:63];


    xx[0:63] = tanhu[0][0:63];
    yy[0:63] = tanhu[1][0:63];
    zz[0:63] = tanhu[2][0:63];


end




 pe_tanhuxuT pp1(clk,rst,xx,a,h[0]);
 pe_tanhuxuT pp2(clk,rst,yy,a,h[1]);
 pe_tanhuxuT pp3(clk,rst,zz,a,h[2]);
 

 endmodule
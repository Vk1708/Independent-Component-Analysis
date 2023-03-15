module pe2_33(clk,rst,u,p);

input clk,rst;

input signed [31:0]u[0:2][0:63];

output reg signed [63:0]p[0:2];

reg signed [31:0] a[0:63];
reg signed [31:0] b[0:63];
reg signed [31:0] c[0:63];
integer i=0,j;

always@(posedge clk) begin
    /*foreach(u[i]) begin
        foreach(u[i,j]) begin
            a[j]=u[0][j];
            b[j]=u[1][j];
            c[j]= u[2][j];
        end
    end*/
   /* if(i<64) begin
    a[i] = u[0][i]; b[i] = u[1][i]; c[i] = u[2][i];
    i=i+1;
    end*/ 
    a[0:63] = u[0][0:63]; 
    b[0:63] = u[1][0:63];
    c[0:63] = u[2][0:63];
end
//assign u[0][0:63]= a[0:63];

//assign u[1][0:63]= b[0:63];

//assign u[2][0:63]= c[0:63];



 pe2 p1(clk,rst,a,c,p[0]);
 pe2 p2(clk,rst,b,c,p[1]);
 pe2 p3(clk,rst,c,c,p[2]);
 

 endmodule
module wxpe(clk,reset,d1,d2,d3,e1,e2,e3,f1,f2,f3,p1,p2,p3,s1,s2,s3);

input clk, reset;
input signed [15:0] d1,d2,d3,e1,e2,e3,f1,f2,f3,p1,p2,p3;
output signed [31:0] s1,s2,s3;




//1
pe pe1(.clk(clk),
          .reset(reset), 
		.a(d1), .b(d2),.c(d3),
		.x(p1),.y(p2),.z(p3),.u(s1)); 
//2
pe pe2(.clk(clk),
          .reset(reset), 
		.a(e1), .b(e2),.c(e3),
		.x(p1),.y(p2),.z(p3),.u(s2)); 
//3
pe pe3(.clk(clk),
          .reset(reset), 
		.a(f1), .b(f2),.c(f3),
		.x(p1),.y(p2),.z(p3),.u(s3)); 

endmodule
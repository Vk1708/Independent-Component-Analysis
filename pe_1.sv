module pe ( clk,reset,a,b,c,x,y,z,u);
//input  [15:0] a,b,c,x,y,z;
input  signed [15:0]a,b,c,x,y,z;
input clk;
input reset;
reg pre;
reg [1:0] state;

output  reg signed [31:0] u;



initial
begin
state=4'b00;
u=0;
end



always @(posedge clk)
begin

if(reset==1)
u=0;

//else if(pre ==1)
//u=u+0;
else
begin 
u=(a*x)+(b*y)+(c*z);
/*case(state)

 4'b00: 
             begin
                   u=a*x;
                    state=4'b01;
               end
 
 4'b01:      begin
               u=u+(b*y);
               state=4'b10;
               end
    
    4'b10: begin
                 u=u+(c*z);
                 pre = 1;
                 end
                 
     default: u=0;
                 
     
               
 

  
//u=(a*x);
//u= u+(b*y);
//u=u+(c*z);
endcase */
end
end



endmodule

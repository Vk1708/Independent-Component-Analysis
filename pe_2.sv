
module pe2(clk,rst,a,b,p);
input clk, rst;
input signed [31:0] a[0:63];
input signed [31:0] b[0:63];
//input [15:0] u[1][0:63];
output reg signed [63:0] p;
integer i=0, count=0;


initial

begin

p=0;
end


always @(posedge clk)

begin

if(rst==1)
p=0;


else

begin

/*while(i<64)
begin

p= p+(a[i]*b[i]);

i=i+1;


end*/

       /*for(i=0; i<64; i=i+1) begin
           p= p+(a[i]*b[i]);
    end*/
    if(count==0) count = count+1;
    
    else if(count==1) begin
    
        if(i<64) begin
        p = p + (a[i]*b[i]);
        i=i+1;
        end
        
    end
    
end
end


endmodule













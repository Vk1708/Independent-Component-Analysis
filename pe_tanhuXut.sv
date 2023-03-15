module pe_tanhuxuT(clk,rst,f,g,h);
input clk, rst;
input signed [15:0] f[0:63];
input signed [31:0] g[0:63];
//input [15:0] u[1][0:63];
output reg signed [63:0] h;
integer i=0, count=0;


initial

begin

h=0;
end


always @(posedge clk)

begin

if(rst==1)
h=0;


else

begin



    if(count<36) count = count+1;
    
    else if(count==36) begin
    
        if(i<64) begin
        h = h + (f[i]*g[i]);
        i=i+1;
        end
        
    end
    
end
end


endmodule













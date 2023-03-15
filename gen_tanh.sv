`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2022 18:42:58
// Design Name: 
// Module Name: top_gen
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

//module cordic_tanh ( clk,rst,x,y,theta_i,x_o,y_o,theta_o);




module gen_tanh(clk,z_tanh,in_value);

   input clk;
   
   input signed [31:0] in_value[0:2][0:63];
   
   input signed [15:0] z_tanh[0:2][0:63];
   
  // input [16:0]x,y;
   //input[16:0] p[0:2][0:63];
   
   //input [31:0] cosh[0:2][0:63];
  // input [31:0] sinh[0:2][0:63];
  // input [31:0]z_i;
       // output [31:0] x_o [0:2][0:63];
	//output [31:0] y_o [0:2][0:63];
	//output [31:0] z_tanh [0:2][0:63];

   genvar i,j;
   
   generate
      //for(i=0;i<3;i=i+1)
       // begin
            for(j=0;j<64;j=j+1)
               begin
			  cordic   v1(in_value[0][j],z_tanh[0][j],clk);
			  cordic   v2(in_value[1][j],z_tanh[1][j],clk);
			  cordic   v3(in_value[2][j],z_tanh[2][j],clk);


                    
 
                 // end
                  end
               
    endgenerate
    
    endmodule


//cordic  u( clk,rst,x,y,p[0][j],cosh[0][j],sinh[0][j]);
                     //cordic  v( clk,rst,x,y,p[1][j],cosh[1][j],sinh[1][j]);
                     //cordic  w( clk,rst,x,y,p[2][j],cosh[2][j],sinh[2][j]);
                          /*        
 cordic_tanh v1( clk,rst,cosh[0][j],sinh[0][j],z_i,x_o[0][j],y_o[0][j],z_tanh[0][j]);
 cordic_tanh v2( clk,rst,cosh[1][j],sinh[1][j],z_i,x_o[1][j],y_o[1][j],z_tanh[1][j]);
 cordic_tanh v3( clk,rst,cosh[2][j],sinh[2][j],z_i,x_o[2][j],y_o[2][j],z_tanh[2][j]);

*/
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:07:04 PM
// Design Name: 
// Module Name: VGA_pattern
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


module VGA_pattern #(
    //H total = 640+16+96+48=800
    parameter WIDTH = 640,
    parameter H_FP = 16,
    parameter H_PW = 96,//pixel width
    parameter H_BP = 48,
    //V total = 480+10+2+33 = 525
    parameter HEIGHT = 480,
    parameter V_FP = 10,
    parameter V_PW = 2, //pixel width
    parameter V_BP = 33,
    //Memory parameters
    parameter mem_Width=12,
    parameter mem_Depth = 600,
    parameter ascii_mem_width = 16,
    parameter ascii_mem_depth = 3040
    )
    (
        input wire iClk, iRst,
        input wire [9:0] iCountH, iCountV,
        input wire iHS, iVS,
        input wire [mem_Width-1:0] iDataA,
        input wire [ascii_mem_width-1:0] iDataB,
        output wire [$clog2(mem_Depth)-1:0] oAddrA,
        output wire [$clog2(ascii_mem_depth)-1:0] oAddrB,
        output wire oHS, oVS,
        //12 bits rgb
        output wire [3:0] oRed, oGreen, oBlue
     );
     
  
      wire de;


       
  
        assign oHS = (iCountH>=656 && iCountH<=752 ) ? 1'b0 : 1'b1;
        assign oVS = (iCountV>=490 && iCountV<=492 ) ? 1'b0 : 1'b1;
        assign de = (iCountH<=640 && iCountV<=480)   ? 1'b1 :1'b0;
    
       //Display color
       //assign oRed = (iCountH > 143 && iCountH < 223 && iCountV < 515 && iCountV > 35) ? 4'hF : 4'h0;
       //assign oGreen = (iCountH > 223 && iCountH < 303 && iCountV < 515 && iCountV > 35) ? 4'hF : 4'h0;
       //assign oBlue = (iCountH > 303 && iCountH < 383 && iCountV < 515 && iCountV > 35) ? 4'hF : 4'h0;
       
       //Display picture
       //assign oAddrA = ((40*(iCountV/32))+(iCountH/16));
       //assign oRed =(!de)   ? 4'h0 : iDataA[11:8];
       //assign oGreen = (!de)? 4'h0: iDataA[7:4];
       //assign oBlue = (!de) ? 4'h0: iDataA[3:0] ;
       
       //Display Characters                 
        assign oAddrA = ((40*(iCountV/32))+(iCountH/16));
        assign oAddrB = (de) ? (iDataA + (iCountV % 32)) : 0;
        assign oRed   = (de) ? (15*(iDataB[ 15 - (iCountH % 16) ])): 0;
        assign oGreen = (de) ? (15*(iDataB[ 15 - (iCountH % 16) ])): 0;
        assign oBlue  = (de) ? (15*(iDataB[ 15 - (iCountH % 16) ])): 0;


endmodule
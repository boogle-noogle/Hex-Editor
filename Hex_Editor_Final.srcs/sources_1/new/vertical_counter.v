`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:02:23 PM
// Design Name: 
// Module Name: vertical_counter
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


module vertical_counter #(
    parameter N =10
    )
    (
        input iClk, iRst,iEn,
        output [N-1:0] oCountV
    );
    
    reg [N-1:0]r_CntCurr;
    wire [N-1:0]w_CntNext;

    always @(posedge iClk)
        if (iRst ==1)
            r_CntCurr <= 0 ;
        else if(iEn==1)
            r_CntCurr <= w_CntNext;
   assign w_CntNext = r_CntCurr +1;
   assign oCountV = r_CntCurr;
endmodule


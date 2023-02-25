`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:02:59 PM
// Design Name: 
// Module Name: horizontal_counter
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


module horizontal_counter
    
    (
        input iClk, iRst,
        output [9:0] oCountH
    );
    
    reg [9:0]r_CntHCurr;
    wire [9:0]w_CntHNext;
    wire w_RstCntH;

    always @(posedge iClk)
    begin
        if (iRst ==1)
            r_CntHCurr <= 0 ;
        
        else 
            r_CntHCurr <= w_CntHNext;
               
   end
            
    assign w_CntHNext = r_CntHCurr +1;
    assign oCountH = r_CntHCurr;
   
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:01:12 PM
// Design Name: 
// Module Name: oHS
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
module oHS(
    input wire iA,iB,iC,
     output wire oHS
    );
    
    reg w1;
    always @(*)
    begin
        if(iC==1)
            w1=iA;
        else 
            w1=iB;
     end 
     assign  oHS = w1;
endmodule

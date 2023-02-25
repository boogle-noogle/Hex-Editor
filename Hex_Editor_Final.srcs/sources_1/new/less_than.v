`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 05:58:32 PM
// Design Name: 
// Module Name: less_than
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


module less_than(
    input [9:0] iA,iB,
    output wire oY
    );
    reg [9:0]r1;
    
    always@ *
    begin
        r1 = iA<iB;
    end
    
    assign oY = r1;
    
endmodule

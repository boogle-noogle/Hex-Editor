`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:16:59 PM
// Design Name: 
// Module Name: VGA_timings_TB
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

module VGA_timings_TB;
    //signal delclaration
    reg r_iClk, r_iRst;
    wire[9:0] w_oCountH, w_oCountV;
    wire w_oHS, w_oVS;
    
    //local parameter declaration
    localparam WIDTH_inst = 15;
    localparam H_FP_inst = 2;
    localparam H_PW_inst = 1;
    localparam H_BP_inst = 2;
    localparam HEIGHT_inst = 10;
    localparam V_FP_inst = 2;
    localparam V_PW_inst = 1;
    localparam V_BP_inst = 2;
    
    //instantiation of the module under test
    VGA_timings
    #( .WIDTH(WIDTH_inst), .H_FP(H_FP_inst), .H_PW(H_PW_inst), .H_BP(H_BP_inst), .HEIGHT(HEIGHT_inst), .V_FP(V_FP_inst), .V_PW(V_PW_inst), .V_BP(V_BP_inst))
    VGA_timings_inst
    ( .iClk(r_iClk), .iRst(r_iRst), .oCountH(w_oCountH), .oCountV(w_oCountV), .oHS(w_oHS), .oVS(w_oVS));
    
    //DEFINITION OF CLOCK PERIOD
    localparam T =20;
    
    //GENERATTION OF CLOCK SIGNAL
    always
    begin 
        r_iClk = 1;
        #(T/2);
        r_iClk = 0;
        #(T/2);
    end
    
    //stimulus gen.
    initial 
    begin
        r_iRst=1;
        #50;
        r_iRst = 0;
        #(100*T);
        $stop;
    end
endmodule
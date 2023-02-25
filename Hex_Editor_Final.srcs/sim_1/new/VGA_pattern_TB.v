`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:19:19 PM
// Design Name: 
// Module Name: VGA_pattern_TB
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

module VGA_pattern_TB;
    //SIGNAL DECLERATION
    reg r_iClk, r_iRst;
    reg [9:0] r_iCountH, r_iCountV;
    wire w_iHS, w_iVS;
    reg [11:0] r_iDataA;
    reg [15:0]r_iDataB;
    reg[9:0] w_oCountH, w_oCountV;
    wire w_oHS, w_oVS;
    wire [3:0] w_oRed, w_oGreen,w_oBlue;
    wire [9:0] w_oAddrA;
    wire [11:0] w_oAddrB;

    //LOCAL PARAMETERS
    localparam WIDTH_inst = 15;
    localparam H_FP_inst = 2;
    localparam H_PW_inst = 1;
    localparam H_BP_inst = 2;
    localparam HEIGHT_inst = 10;
    localparam V_FP_inst = 2;
    localparam V_PW_inst = 1;
    localparam V_BP_inst = 2;
    
    //Instantiation of the module under test
    VGA_pattern 
    #( .WIDTH(WIDTH_inst), .H_FP(H_FP_inst), .H_PW(H_PW_inst), .H_BP(H_BP_inst), .HEIGHT(HEIGHT_inst), .V_FP(V_FP_inst), .V_PW(V_PW_inst), .V_BP(V_BP_inst))
   
    VGA_pattern_inst
    ( .iClk(r_iClk), .iRst(r_iRst), .iCountH(r_iCountH), .iCountV(r_iCountV), .iHS(w_iHS), .iVS(w_iVS), .iDataA(r_iDataA), .iDataB(r_iDataB), .oHS(w_oHS), .oVS(w_oVS), .oRed( w_oRed), .oGreen( w_oGreen), .oBlue(w_oBlue), .oAddrA(w_oAddrA), .oAddrB(w_oAddrB));
   
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
    
    //Stimulus generator
    initial 
    begin 
        r_iRst = 1;
        #50;
        r_iRst = 0;
        #(T/2);
    
    //SIMULATE FULL FRAME
        for(r_iCountV=0; r_iCountV<525; r_iCountV=r_iCountV+1)
        begin
            for(r_iCountH=0; r_iCountH<800; r_iCountH = r_iCountH +1)
                #(1*T);
        end 
        $stop;
     end
   
    
endmodule
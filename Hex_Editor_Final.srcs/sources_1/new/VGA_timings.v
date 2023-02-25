`timescale 1ns / 1ps


module VGA_timings #(
    //H total = 640+16+96+48=800
    parameter WIDTH = 640,
    parameter H_FP = 16,
    parameter H_PW = 96,//pixel width
    parameter H_BP = 48,
    //V total = 480+10+2+33 = 525
    parameter HEIGHT = 480,
    parameter V_FP = 10,
    parameter V_PW = 2, //pixel width
    parameter V_BP = 33 
    )
    (
        input wire iClk,iRst,
        output wire oHS, oVS,
        output wire [9:0] oCountH, oCountV
    );
    
    wire oY1; //Connects iRst of r_CountH_Curr_reg with oY of w_RstCntH_i
    wire oY2; //Connects iRst of r_CountV_Curr_reg with oY of w_RstCntV_i
    wire x;   //Connects iB of  w_RstCntH_i with iEn of r_CountV_Curr_reg, iB of w_RstCntV0_i and oY of w_CmpH_i
    wire x1;  //Connects iB of w_RstCntV_i with oY of w_RstCntV0_i
    wire oY3; //Connects iC of oHS_i with oY of oHS1_i
    wire oY4; //Connects iC of oVS_i with oY of oVS1_i
    wire oY5; //Connects iA of oHS1_i with oY of oHS2_i
    wire oY6; //Connects iB of oHS1_i with oY of oHS2_i_0
    wire oY7; //Connects iA of w_RstCntV0_i with oY of w_CmpV_i
    wire oY8; //Connects iA of oVS1_i with oY of oVS2_i
    wire oY9; //Connects iB of  oVS1_i with oY of oVS2_i__0
    wire iA,iB;
    wire [9:0] iY2 = WIDTH+H_FP; 
    wire [9:0] iY3 = WIDTH+H_FP+H_PW;
    wire [9:0] iY4 = HEIGHT+V_FP+V_PW+V_BP-1;
    wire [9:0] iY5 = WIDTH + H_FP+H_PW+H_BP-1;
    wire [9:0] iY6 = HEIGHT + V_FP;
    wire [9:0] iY7 = HEIGHT + V_FP + V_PW;

    assign iA = 1;
    assign iB = 0;
    
    horizontal_counter  r_CountH_Curr_reg
    ( .iClk(iClk), .iRst(oY1), .oCountH(oCountH));
    
    OR_gate  w_RstCntH_i 
    ( .iA(iRst), .iB(x), .oY(oY1));
    
    vertical_counter  r_CountV_Curr_reg
    ( .iClk(iClk), .iRst(oY2), .iEn(x), .oCountV(oCountV));
    
     OR_gate  w_RstCntV_i 
    ( .iA(iRst), .iB(x1), .oY(oY2));
    
    AND  w_RstCntV0_i
    ( .iA(oY7), .iB(x), .oY(x1));
    
    oHS  oHS_i
    ( .iA(iB), .iB(iA), .iC(oY3), .oHS(oHS));

    AND  oHS1_i
    ( .iA(oY5), .iB(oY6), .oY(oY3));
    
    oHS  oVS_i
    ( .iA(iB), .iB(iA), .iC(oY4), .oHS(oVS));
    
     AND  oVS1_i
    ( .iA(oY8), .iB(oY9), .oY(oY4));
    
    greater_or_equal_to  oHS2_i
    ( .iA(oCountH), .iB(iY2), .oY(oY5));
    
    less_than  oHS2_i_0
    ( .iA(oCountH), .iB(iY3), .oY(oY6));
    
    equal_to  w_CmpV_i
    ( .iA(oCountV), .iB(iY4), .oY(oY7));
    
    equal_to  w_CmpH_i
    ( .iA(oCountH), .iB(iY5), .oY(x));
    
    greater_or_equal_to  oVS2_i
    ( .iA(oCountV), .iB(iY6), .oY(oY8));
    
    less_than  oVS2_i__0
    ( .iA(oCountV), .iB(iY7), .oY(oY9));
    
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:14:56 PM
// Design Name: 
// Module Name: num_capture_4bit_TB
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

module num_capture_4bit_TB;
    reg rClk, rRst, rPush, rStop, rSpace;
    wire [11:0] rData;
    wire rWe;
    wire [9:0] rAddr;
    wire [3:0] rLEDs;
    
    num_capture_4bit  numb_capture_4bit_inst
    ( .iClk(rClk), .iRst(rRst), .iPush(rPush), .iStop(rStop), .iSpace(rSpace), .oData(rData), .oWe(rWe), .oAddr(rAddr), .oLEDs(rLEDs));
    
    //Definition of clock period
    localparam T=20;
    
    //Generation of clock signal
    always
    begin
        rClk=1;
        #(T/2);
        rClk=0;
        #(T/2);
    end
    
    //Stimulus generator 
    initial
    begin
        rRst=1;
        rPush=0;
        rStop=0;
        rSpace=0;

        #(2*T);
        rRst=0;
        #(2*T);
        rPush=1;
        #(2*T);         
        rPush = 0;      
        #(2*T);         
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);         
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rSpace=1;
        #(2*T);  
        rSpace=0;
        #(2*T);    
        rStop=1;
        #(2*T)
        rStop=0;
        #(2*T)
           
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);         
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);         
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);         
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;


        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);
        rStop=1;
        #(2*T);
        rStop=0;
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);
        rPush = 1;      
        #(2*T);         
        rPush = 0;
        #(2*T);  
        rSpace=1;
        #(2*T);
        rSpace=0;
        #(2*T);  
        rStop=1;
        #(2*T);  
        rStop=0;
        #(2*T);  
         
        
        //Let the counter run for at least 1 frame
        #(100*T);
        
        //Stop the simulation
        $stop;
    end
   
endmodule


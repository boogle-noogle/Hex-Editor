`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:08:10 PM
// Design Name: 
// Module Name: num_capture_4bit
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


module num_capture_4bit

  (
    input  wire iClk, iRst, iPush, iStop,iSpace,
    output wire [9:0] oAddr,
    output wire [11:0] oData,
    output wire oWe,  
    output wire [3:0] oLEDs

  );
    
    //0. state definition
    localparam sInit = 4'b0000;
    localparam sIdle = 4'b0001;
    localparam sIncr = 4'b0010;
    localparam sPush = 4'b0011;
    localparam sStop = 4'b0100;
    localparam sPushStop = 4'b0101;
    localparam sRNumberToZero = 4'b0110;
    localparam sSpace =4'b0111;
      
   
    reg[3:0] rFSM_Current, wFSM_Next;
     
    //1.State register
    always@(posedge iClk)
    begin 
        if(iRst==1)
            begin
                rFSM_Current <= sInit;
            end
        else if (iRst ==0)
            rFSM_Current <= wFSM_Next;
    end
    
    //2.Next state logic
    always@(*)
    begin 
        case(rFSM_Current)
        
        sInit: wFSM_Next <= sIdle;
        
        sIdle: if(iPush==1)
                    wFSM_Next <= sIncr;
               else if (iStop==1)
                    wFSM_Next<= sStop; 
               else if(iSpace==1)
                    wFSM_Next <= sSpace;  
               else
                    wFSM_Next <= sIdle;   
        
        sSpace:
            wFSM_Next<= sIdle;
        
        sStop: wFSM_Next <= sPushStop;
        
        sPushStop: if(iStop==1)
                    wFSM_Next<=sPushStop;           
                else
                    wFSM_Next<= sRNumberToZero;
        
        sRNumberToZero: wFSM_Next<= sIdle;
         
        sIncr: wFSM_Next <= sPush;
        
        sPush: if(iPush==1)
                    wFSM_Next <= sPush;
               else 
                    wFSM_Next <= sIdle;
        
        default : wFSM_Next <= sInit;
       endcase
      end
       
       
       //3. Output logic
       reg [11:0] rCntCurr, wCntNext;
       reg [9:0] rAddr, wAddr;
       reg rWe;
       reg [3:0] rLED, wLED;
       
       always @ (posedge iClk)
       begin 
        rCntCurr <= wCntNext;
        rAddr<= wAddr;
        rLED<= wLED;
       end
       
       always @(*)
       begin
       
       //Initial State
        if(rFSM_Current == sInit)    
        begin 
            rWe=0;
            wCntNext = 12'b001000000000;
            wAddr = 10'b0000000000;
            wLED = 0;
        end
        
        //Idle state 
        else if(rFSM_Current == sIdle)
        begin
            rWe=0;
            wAddr=rAddr;
            wCntNext=rCntCurr;
            wLED=rLED;
        end
        
        //Increment State
        else if (rFSM_Current == sIncr)   
        begin
        rWe=0;
        wAddr=rAddr;
            if(rCntCurr==12'b001100100000) //When rCntCurrent = 9
                begin
                  //The next line shows what happens in decimal instead of binary 
                  //wCntNext = rCntCurr +        544       -       288;
                    wCntNext = rCntCurr + 12'b001000100000 - 12'b000100100000;
                    wLED = rLED + 1;
                end
            else if(rCntCurr==12'b010011000000) //When rCntCurrent = 15 (F)
                begin
                    wCntNext=12'b001000000000;
                    wLED = rLED + 1;
                end
            else //If rCntCurr = 0,1,2,3,...,9
                begin
                  //The next line shows what happens in decimal instead of binary 
                  //wCntNext = rCntCurr +        544       -      512;
                    wCntNext = rCntCurr + 12'b001000100000 - 12'b001000000000;
                    wLED = rLED + 1;
                end
        end
         
        //Stop state
        else if(rFSM_Current == sStop) 
            begin
                rWe=1;
                wAddr=rAddr+ 10'b000000001;
                wCntNext = rCntCurr;
                wLED =rLED;
            end
            
          //Add space state
          else if(rFSM_Current == sSpace)
            begin
                wAddr = rAddr;
                rWe=0;
                wCntNext = 12'b000000000000;
                wLED = 4'b00000;
                
            end
            
          //Reset rCntCurr and LEDs counter to zero
          else if (rFSM_Current == sRNumberToZero)
            begin 
                rWe=0;
                wCntNext = 12'b001000000000;
                wAddr = rAddr;
                wLED = 0;
            end 

        //All other states 
        else                           
            begin
                rWe=0;
                wAddr=rAddr;
                wCntNext = rCntCurr;
                wLED = rLED;
            end
        end

        assign oWe = rWe;
        assign oAddr = rAddr;
        assign oData = rCntCurr;
        assign oLEDs = rLED;
                
endmodule

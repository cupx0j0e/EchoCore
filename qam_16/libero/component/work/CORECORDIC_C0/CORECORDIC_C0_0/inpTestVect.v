//****************************************************************
//Microsemi Corporation Proprietary and Confidential
//Copyright 2014 Microsemi Corporation.  All rights reserved
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE 
//APPROVED IN ADVANCE IN WRITING.
//
//Description: CoreCORDIC
//             Input test vector
//
//Rev:
//v4.0 12/2/2014  Porting in TGI framework
//
//SVN Revision Information:
//SVN$Revision:$
//SVN$Date:$
//
//Resolved SARS
//
//
//
//Notes:
//
//****************************************************************

// This is an automatically generated file

// CORDIC Input test vector for MODE 3
//  ----------------------  Conventions  -----------------------------------  
//        Mode    |     Inputs         |           Outputs                    
//  --------------|--------------------|------------------------------------  
//                    R O T A T I O N  M O D E S                              
//  General       | DIN_X: Abscissa X  | DOUT_X = K*(DIN_X*cosA - DIN_Y*sinA) 
//  Rotation      | DIN_Y: Ordinate Y  | DOUT_Y = K*(DIN_Y*cosA + DIN_X*sinA) 
//  (by Givens)   | DIN_A: Phase A     | DOUT_A   -                           
                                                                              
//  Polar to      | DIN_X: Magnitude R | DOUT_X = K*R*cosA                    
//  Rectangular   | DIN_Y: 0           | DOUT_Y = K*R*sinA                    
//                | DIN_A: Phase A     | DOUT_A   -                           
                                                                              
//  Sin, Cos  | DIN_X: 0 (1/g applies internally) | DOUT_X = sinA             
//            | DIN_Y: 0                          | DOUT_Y = cosA             
//            | DIN_A: Phase A                    | DOUT_A   -                
                                                                              
//                    V E C T O R I N G  M O D E S                            
//  Rectangular | DIN_X: Abscissa X  | DOUT_X = K*sqrt(X^2+Y^2)'Magnitude R' 
//  to Polar    | DIN_Y: Ordinate Y  | DOUT_Y     -                           
//              | DIN_A: 0           | DOUT_A = arctan(Y/X)'Phase A'         
                                                                              
//  Arctan        | DIN_X: Abscissa X  | DOUT_X     -                         
//                | DIN_Y: Ordinate Y  | DOUT_Y     -                         
//                | DIN_A: 0           | DOUT_A = arctan(Y/X)'Phase A'       
                                                                              
//  K - CORDIC gain                                                           
module cordic_bhvInpVect (count, xin, yin, ain);
    input [3:0] count;
    output[15:0] xin, yin, ain;

    reg[15:0] xin, yin, ain;

    always @ (count)
      case (count)
      0:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1100000000000000; //-16384
          end 
      1:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1100100000000000; //-14336
          end 
      2:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1101000000000000; //-12288
          end 
      3:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1101100000000000; //-10240
          end 
      4:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1110000000000000; //-8192
          end 
      5:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1110100000000000; //-6144
          end 
      6:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1111000000000000; //-4096
          end 
      7:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b1111100000000000; //-2048
          end 
      8:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0000000000000000; //0
          end 
      9:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0000100000000000; //2048
          end 
     10:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0001000000000000; //4096
          end 
     11:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0001100000000000; //6144
          end 
     12:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0010000000000000; //8192
          end 
     13:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0010100000000000; //10240
          end 
     14:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0011000000000000; //12288
          end 
     15:  begin 
            xin = 16'b0010011011011101; //9949
            yin = 16'b0000000000000000; //0
            ain = 16'b0011100000000000; //14336
          end 
      default: begin
           xin = 16'dx;
           yin = 16'dx;
           ain = 16'dx;
      end 
    endcase
  endmodule

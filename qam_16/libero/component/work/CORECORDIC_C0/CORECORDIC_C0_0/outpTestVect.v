//****************************************************************
//Microsemi Corporation Proprietary and Confidential
//Copyright 2014 Microsemi Corporation.  All rights reserved
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE 
//APPROVED IN ADVANCE IN WRITING.
//
//Description: CoreCORDIC
//             Output test vector
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

// CORDIC Output test vector for mode:  Rotation (0)

//             In Rotation Mode    In Vectoring Mode
// goldSample1  XN=gain*R*cosA    XN=gain*sqrt(X^2+Y^2)
// goldSample2  YN=gain*R*sinA    AN=arctan(Y/X) 

module cordic_bhvOutpVect (count, goldSample1, goldSample2);
    input [3:0] count;
    output[15:0] goldSample1, goldSample2;

    reg [15:0] goldSample1, goldSample2;

    always @ (count)
      case (count)
      0:  begin 
            goldSample1 = 16'b1110000000000000; //-8192
            goldSample2 = 16'b0000000000000001; //1
          end 
      1:  begin 
            goldSample1 = 16'b1110001001110000; //-7568
            goldSample2 = 16'b1111001111000001; //-3135
          end 
      2:  begin 
            goldSample1 = 16'b1110100101100000; //-5792
            goldSample2 = 16'b1110100101100000; //-5792
          end 
      3:  begin 
            goldSample1 = 16'b1111001111000001; //-3135
            goldSample2 = 16'b1110001001101111; //-7569
          end 
      4:  begin 
            goldSample1 = 16'b1111111111111111; //-1
            goldSample2 = 16'b1110000000000000; //-8192
          end 
      5:  begin 
            goldSample1 = 16'b0000110000111111; //3135
            goldSample2 = 16'b1110001001110000; //-7568
          end 
      6:  begin 
            goldSample1 = 16'b0001011010100000; //5792
            goldSample2 = 16'b1110100101100000; //-5792
          end 
      7:  begin 
            goldSample1 = 16'b0001110110010001; //7569
            goldSample2 = 16'b1111001111000001; //-3135
          end 
      8:  begin 
            goldSample1 = 16'b0010000000000000; //8192
            goldSample2 = 16'b0000000000000000; //0
          end 
      9:  begin 
            goldSample1 = 16'b0001110110010000; //7568
            goldSample2 = 16'b0000110000111111; //3135
          end 
     10:  begin 
            goldSample1 = 16'b0001011010100001; //5793
            goldSample2 = 16'b0001011010100000; //5792
          end 
     11:  begin 
            goldSample1 = 16'b0000110000111111; //3135
            goldSample2 = 16'b0001110110010000; //7568
          end 
     12:  begin 
            goldSample1 = 16'b1111111111111111; //-1
            goldSample2 = 16'b0010000000000000; //8192
          end 
     13:  begin 
            goldSample1 = 16'b1111001111000001; //-3135
            goldSample2 = 16'b0001110110010000; //7568
          end 
     14:  begin 
            goldSample1 = 16'b1110100101100000; //-5792
            goldSample2 = 16'b0001011010100001; //5793
          end 
     15:  begin 
            goldSample1 = 16'b1110001001110000; //-7568
            goldSample2 = 16'b0000110000111111; //3135
          end 
      default: begin
           goldSample1 = 16'dx;
           goldSample2 = 16'dx;
      end 
    endcase
  endmodule

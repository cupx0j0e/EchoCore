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

// CORDIC Output test vector for mode:  Vectoring (1)

//             In Rotation Mode    In Vectoring Mode
// goldSample1  XN=gain*R*cosA    XN=gain*sqrt(X^2+Y^2)
// goldSample2  YN=gain*R*sinA    AN=arctan(Y/X) 

module cordic_bhvOutpVect (count, goldSample1, goldSample2);
    input [3:0] count;
    output[47:0] goldSample1, goldSample2;

    reg [47:0] goldSample1, goldSample2;

    always @ (count)
      case (count)
      0:  begin 
            goldSample1 = 48'b010010101000011000011011110100110111100000000001; //81939852916737
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      1:  begin 
            goldSample1 = 48'b010001011101110110111010000101100100000010000000; //76818612109440
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      2:  begin 
            goldSample1 = 48'b010000010011010101011000010110010000100100000000; //71697371302144
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      3:  begin 
            goldSample1 = 48'b001111001000110011110110100110111101000110000000; //66576130494848
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      4:  begin 
            goldSample1 = 48'b001101111110010010010100110111101001100111111111; //61454889687551
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      5:  begin 
            goldSample1 = 48'b001100110011110000110011001000010110001001111111; //56333648880255
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      6:  begin 
            goldSample1 = 48'b001011101001001111010001011001000010101011111111; //51212408072959
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      7:  begin 
            goldSample1 = 48'b001010011110101101101111101001101111001101111111; //46091167265663
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      8:  begin 
            goldSample1 = 48'b001001010100001100001101111010011011110000000001; //40969926458369
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      9:  begin 
            goldSample1 = 48'b001000001001101010101100001011001000010001111111; //35848685651071
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     10:  begin 
            goldSample1 = 48'b000110111111001001001010011011110100110011111111; //30727444843775
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     11:  begin 
            goldSample1 = 48'b000101110100100111101000101100100001010110000000; //25606204036480
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     12:  begin 
            goldSample1 = 48'b000100101010000110000110111101001101110111111111; //20484963229183
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     13:  begin 
            goldSample1 = 48'b000011011111100100100101001101111010011001111110; //15363722421886
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     14:  begin 
            goldSample1 = 48'b000010010101000011000011011110100110111011111110; //10242481614590
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
     15:  begin 
            goldSample1 = 48'b000001001010100001100001101111010011011101111110; //5121240807294
            goldSample2 = 48'b000100000000000000010100101110110101111101110101; //17592533868405
          end 
      default: begin
           goldSample1 = 48'dx;
           goldSample2 = 48'dx;
      end 
    endcase
  endmodule

//****************************************************************
//Microsemi Corporation Proprietary and Confidential
//Copyright 2014 Microsemi Corporation.  All rights reserved
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE 
//APPROVED IN ADVANCE IN WRITING.
//
//Description: CoreCORDIC
//             Parallel architecture. LUT
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
module CORECORDIC_C0_CORECORDIC_C0_0_cROM_par(arctan, rcprGain_fx);
  parameter DP_BITS = 8;
  parameter ITERATION = 0;

  localparam IN_BITS = 16;

  output[DP_BITS-1:0] arctan;
  output[IN_BITS-1:0] rcprGain_fx;
  generate  
    case (ITERATION)  
      0: assign arctan = 18'b000100000000000000;  //  18'd16384
      1: assign arctan = 18'b000010010111001000;  //  18'd9672
      2: assign arctan = 18'b000001001111110110;  //  18'd5110
      3: assign arctan = 18'b000000101000100010;  //  18'd2594
      4: assign arctan = 18'b000000010100010110;  //  18'd1302
      5: assign arctan = 18'b000000001010001100;  //  18'd652
      6: assign arctan = 18'b000000000101000110;  //  18'd326
      7: assign arctan = 18'b000000000010100011;  //  18'd163
      8: assign arctan = 18'b000000000001010001;  //  18'd81
      9: assign arctan = 18'b000000000000101001;  //  18'd41
     10: assign arctan = 18'b000000000000010100;  //  18'd20
     11: assign arctan = 18'b000000000000001010;  //  18'd10
     12: assign arctan = 18'b000000000000000101;  //  18'd5
     13: assign arctan = 18'b000000000000000011;  //  18'd3
     14: assign arctan = 18'b000000000000000001;  //  18'd1
     15: assign arctan = 18'b000000000000000001;  //  18'd1
      default: assign arctan = 18'b000000000000000001;  //  18'd1
    endcase
  endgenerate
  assign rcprGain_fx = 16'd9949; 
endmodule

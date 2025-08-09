//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Aug  8 22:37:36 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of CORECORDIC_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-1FCVG484I
# Create and Configure the core component CORECORDIC_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:CORECORDIC:4.1.100} -component_name {CORECORDIC_C0} -params {\
"ARCHITECT:2"  \
"COARSE:true"  \
"DP_OPTION:0"  \
"DP_WIDTH:16"  \
"IN_BITS:16"  \
"ITERATIONS:16"  \
"MODE:3"  \
"OUT_BITS:16"  \
"ROUND:1"   }
# Exporting Component Description of CORECORDIC_C0 to TCL done
*/

// CORECORDIC_C0
module CORECORDIC_C0(
    // Inputs
    CLK,
    DIN_A,
    DIN_VALID,
    NGRST,
    RST,
    // Outputs
    DOUT_VALID,
    DOUT_X,
    DOUT_Y
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [15:0] DIN_A;
input         DIN_VALID;
input         NGRST;
input         RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        DOUT_VALID;
output [15:0] DOUT_X;
output [15:0] DOUT_Y;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [15:0] DIN_A;
wire          DIN_VALID;
wire          DOUT_VALID_net_0;
wire   [15:0] DOUT_X_net_0;
wire   [15:0] DOUT_Y_net_0;
wire          NGRST;
wire          RST;
wire   [15:0] DOUT_X_net_1;
wire   [15:0] DOUT_Y_net_1;
wire          DOUT_VALID_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [15:0] DIN_X_const_net_0;
wire   [15:0] DIN_Y_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign DIN_X_const_net_0 = 16'h0000;
assign DIN_Y_const_net_0 = 16'h0000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DOUT_X_net_1     = DOUT_X_net_0;
assign DOUT_X[15:0]     = DOUT_X_net_1;
assign DOUT_Y_net_1     = DOUT_Y_net_0;
assign DOUT_Y[15:0]     = DOUT_Y_net_1;
assign DOUT_VALID_net_1 = DOUT_VALID_net_0;
assign DOUT_VALID       = DOUT_VALID_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC   -   Actel:DirectCore:CORECORDIC:4.1.100
CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC #( 
        .ARCHITECT  ( 2 ),
        .COARSE     ( 1 ),
        .DP_OPTION  ( 0 ),
        .DP_WIDTH   ( 16 ),
        .IN_BITS    ( 16 ),
        .ITERATIONS ( 16 ),
        .MODE       ( 3 ),
        .OUT_BITS   ( 16 ),
        .ROUND      ( 1 ) )
CORECORDIC_C0_0(
        // Inputs
        .RST        ( RST ),
        .NGRST      ( NGRST ),
        .CLK        ( CLK ),
        .DIN_X      ( DIN_X_const_net_0 ), // tied to 16'h0000 from definition
        .DIN_Y      ( DIN_Y_const_net_0 ), // tied to 16'h0000 from definition
        .DIN_A      ( DIN_A ),
        .DIN_VALID  ( DIN_VALID ),
        // Outputs
        .DOUT_X     ( DOUT_X_net_0 ),
        .DOUT_Y     ( DOUT_Y_net_0 ),
        .DOUT_A     (  ),
        .DOUT_VALID ( DOUT_VALID_net_0 ),
        .RFD        (  ) 
        );


endmodule

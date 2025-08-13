//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Aug 12 17:08:54 2025
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
"COARSE:false"  \
"DP_OPTION:0"  \
"DP_WIDTH:16"  \
"IN_BITS:48"  \
"ITERATIONS:16"  \
"MODE:2"  \
"OUT_BITS:48"  \
"ROUND:0"   }
# Exporting Component Description of CORECORDIC_C0 to TCL done
*/

// CORECORDIC_C0
module CORECORDIC_C0(
    // Inputs
    CLK,
    DIN_VALID,
    DIN_X,
    DIN_Y,
    NGRST,
    RST,
    // Outputs
    DOUT_A,
    DOUT_VALID,
    DOUT_X
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input         DIN_VALID;
input  [47:0] DIN_X;
input  [47:0] DIN_Y;
input         NGRST;
input         RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [47:0] DOUT_A;
output        DOUT_VALID;
output [47:0] DOUT_X;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire          DIN_VALID;
wire   [47:0] DIN_X;
wire   [47:0] DIN_Y;
wire   [47:0] DOUT_A_net_0;
wire          DOUT_VALID_net_0;
wire   [47:0] DOUT_X_net_0;
wire          NGRST;
wire          RST;
wire   [47:0] DOUT_X_net_1;
wire   [47:0] DOUT_A_net_1;
wire          DOUT_VALID_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [47:0] DIN_A_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign DIN_A_const_net_0 = 48'h000000000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DOUT_X_net_1     = DOUT_X_net_0;
assign DOUT_X[47:0]     = DOUT_X_net_1;
assign DOUT_A_net_1     = DOUT_A_net_0;
assign DOUT_A[47:0]     = DOUT_A_net_1;
assign DOUT_VALID_net_1 = DOUT_VALID_net_0;
assign DOUT_VALID       = DOUT_VALID_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC   -   Actel:DirectCore:CORECORDIC:4.1.100
CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC #( 
        .ARCHITECT  ( 2 ),
        .COARSE     ( 0 ),
        .DP_OPTION  ( 0 ),
        .DP_WIDTH   ( 16 ),
        .IN_BITS    ( 48 ),
        .ITERATIONS ( 16 ),
        .MODE       ( 2 ),
        .OUT_BITS   ( 48 ),
        .ROUND      ( 0 ) )
CORECORDIC_C0_0(
        // Inputs
        .RST        ( RST ),
        .NGRST      ( NGRST ),
        .CLK        ( CLK ),
        .DIN_X      ( DIN_X ),
        .DIN_Y      ( DIN_Y ),
        .DIN_A      ( DIN_A_const_net_0 ), // tied to 48'h000000000000 from definition
        .DIN_VALID  ( DIN_VALID ),
        // Outputs
        .DOUT_X     ( DOUT_X_net_0 ),
        .DOUT_Y     (  ),
        .DOUT_A     ( DOUT_A_net_0 ),
        .DOUT_VALID ( DOUT_VALID_net_0 ),
        .RFD        (  ) 
        );


endmodule

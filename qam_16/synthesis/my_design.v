`timescale 1 ns/100 ps
// Version: 2024.2 2024.2.0.13


module combiner(
       modulated_q_2_0,
       modulated_i_2_0,
       combined_output_0,
       reset_arst_i,
       clk
    );
input  [63:0] modulated_q_2_0;
input  [63:0] modulated_i_2_0;
output [64:0] combined_output_0;
input  reset_arst_i;
input  clk;

    wire [64:1] un2_combined_output;
    wire VCC, un2_combined_output_0_cry_0_Y, GND, 
        un2_combined_output_0_cry_0_Z, un2_combined_output_0_cry_0_S, 
        un2_combined_output_0_cry_1_Z, un2_combined_output_0_cry_1_Y, 
        un2_combined_output_0_cry_2_Z, un2_combined_output_0_cry_2_Y, 
        un2_combined_output_0_cry_3_Z, un2_combined_output_0_cry_3_Y, 
        un2_combined_output_0_cry_4_Z, un2_combined_output_0_cry_4_Y, 
        un2_combined_output_0_cry_5_Z, un2_combined_output_0_cry_5_Y, 
        un2_combined_output_0_cry_6_Z, un2_combined_output_0_cry_6_Y, 
        un2_combined_output_0_cry_7_Z, un2_combined_output_0_cry_7_Y, 
        un2_combined_output_0_cry_8_Z, un2_combined_output_0_cry_8_Y, 
        un2_combined_output_0_cry_9_Z, un2_combined_output_0_cry_9_Y, 
        un2_combined_output_0_cry_10_Z, un2_combined_output_0_cry_10_Y, 
        un2_combined_output_0_cry_11_Z, un2_combined_output_0_cry_11_Y, 
        un2_combined_output_0_cry_12_Z, un2_combined_output_0_cry_12_Y, 
        un2_combined_output_0_cry_13_Z, un2_combined_output_0_cry_13_Y, 
        un2_combined_output_0_cry_14_Z, un2_combined_output_0_cry_14_Y, 
        un2_combined_output_0_cry_15_Z, un2_combined_output_0_cry_15_Y, 
        un2_combined_output_0_cry_16_Z, un2_combined_output_0_cry_16_Y, 
        un2_combined_output_0_cry_17_Z, un2_combined_output_0_cry_17_Y, 
        un2_combined_output_0_cry_18_Z, un2_combined_output_0_cry_18_Y, 
        un2_combined_output_0_cry_19_Z, un2_combined_output_0_cry_19_Y, 
        un2_combined_output_0_cry_20_Z, un2_combined_output_0_cry_20_Y, 
        un2_combined_output_0_cry_21_Z, un2_combined_output_0_cry_21_Y, 
        un2_combined_output_0_cry_22_Z, un2_combined_output_0_cry_22_Y, 
        un2_combined_output_0_cry_23_Z, un2_combined_output_0_cry_23_Y, 
        un2_combined_output_0_cry_24_Z, un2_combined_output_0_cry_24_Y, 
        un2_combined_output_0_cry_25_Z, un2_combined_output_0_cry_25_Y, 
        un2_combined_output_0_cry_26_Z, un2_combined_output_0_cry_26_Y, 
        un2_combined_output_0_cry_27_Z, un2_combined_output_0_cry_27_Y, 
        un2_combined_output_0_cry_28_Z, un2_combined_output_0_cry_28_Y, 
        un2_combined_output_0_cry_29_Z, un2_combined_output_0_cry_29_Y, 
        un2_combined_output_0_cry_30_Z, un2_combined_output_0_cry_30_Y, 
        un2_combined_output_0_cry_31_Z, un2_combined_output_0_cry_31_Y, 
        un2_combined_output_0_cry_32_Z, un2_combined_output_0_cry_32_Y, 
        un2_combined_output_0_cry_33_Z, un2_combined_output_0_cry_33_Y, 
        un2_combined_output_0_cry_34_Z, un2_combined_output_0_cry_34_Y, 
        un2_combined_output_0_cry_35_Z, un2_combined_output_0_cry_35_Y, 
        un2_combined_output_0_cry_36_Z, un2_combined_output_0_cry_36_Y, 
        un2_combined_output_0_cry_37_Z, un2_combined_output_0_cry_37_Y, 
        un2_combined_output_0_cry_38_Z, un2_combined_output_0_cry_38_Y, 
        un2_combined_output_0_cry_39_Z, un2_combined_output_0_cry_39_Y, 
        un2_combined_output_0_cry_40_Z, un2_combined_output_0_cry_40_Y, 
        un2_combined_output_0_cry_41_Z, un2_combined_output_0_cry_41_Y, 
        un2_combined_output_0_cry_42_Z, un2_combined_output_0_cry_42_Y, 
        un2_combined_output_0_cry_43_Z, un2_combined_output_0_cry_43_Y, 
        un2_combined_output_0_cry_44_Z, un2_combined_output_0_cry_44_Y, 
        un2_combined_output_0_cry_45_Z, un2_combined_output_0_cry_45_Y, 
        un2_combined_output_0_cry_46_Z, un2_combined_output_0_cry_46_Y, 
        un2_combined_output_0_cry_47_Z, un2_combined_output_0_cry_47_Y, 
        un2_combined_output_0_cry_48_Z, un2_combined_output_0_cry_48_Y, 
        un2_combined_output_0_cry_49_Z, un2_combined_output_0_cry_49_Y, 
        un2_combined_output_0_cry_50_Z, un2_combined_output_0_cry_50_Y, 
        un2_combined_output_0_cry_51_Z, un2_combined_output_0_cry_51_Y, 
        un2_combined_output_0_cry_52_Z, un2_combined_output_0_cry_52_Y, 
        un2_combined_output_0_cry_53_Z, un2_combined_output_0_cry_53_Y, 
        un2_combined_output_0_cry_54_Z, un2_combined_output_0_cry_54_Y, 
        un2_combined_output_0_cry_55_Z, un2_combined_output_0_cry_55_Y, 
        un2_combined_output_0_cry_56_Z, un2_combined_output_0_cry_56_Y, 
        un2_combined_output_0_cry_57_Z, un2_combined_output_0_cry_57_Y, 
        un2_combined_output_0_cry_58_Z, un2_combined_output_0_cry_58_Y, 
        un2_combined_output_0_cry_59_Z, un2_combined_output_0_cry_59_Y, 
        un2_combined_output_0_cry_60_Z, un2_combined_output_0_cry_60_Y, 
        un2_combined_output_0_cry_61_Z, un2_combined_output_0_cry_61_Y, 
        un2_combined_output_0_cry_62_Z, un2_combined_output_0_cry_62_Y, 
        un2_combined_output_0_s_64_FCO, un2_combined_output_0_s_64_Y, 
        un2_combined_output_0_cry_63_Z, un2_combined_output_0_cry_63_Y;
    
    ARI1 #( .INIT(20'h46600) )  un2_combined_output_0_s_64 (.A(VCC), 
        .B(modulated_i_2_0[63]), .C(modulated_q_2_0[63]), .D(GND), 
        .FCI(un2_combined_output_0_cry_63_Z), .S(
        un2_combined_output[64]), .Y(un2_combined_output_0_s_64_Y), 
        .FCO(un2_combined_output_0_s_64_FCO));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_27 (.A(
        modulated_i_2_0[27]), .B(modulated_q_2_0[27]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_26_Z), .S(
        un2_combined_output[27]), .Y(un2_combined_output_0_cry_27_Y), 
        .FCO(un2_combined_output_0_cry_27_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_14 (.A(
        modulated_i_2_0[14]), .B(modulated_q_2_0[14]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_13_Z), .S(
        un2_combined_output[14]), .Y(un2_combined_output_0_cry_14_Y), 
        .FCO(un2_combined_output_0_cry_14_Z));
    SLE \combined_output[17]  (.D(un2_combined_output[17]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[17]));
    SLE \combined_output[12]  (.D(un2_combined_output[12]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[12]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_57 (.A(
        modulated_i_2_0[57]), .B(modulated_q_2_0[57]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_56_Z), .S(
        un2_combined_output[57]), .Y(un2_combined_output_0_cry_57_Y), 
        .FCO(un2_combined_output_0_cry_57_Z));
    SLE \combined_output[1]  (.D(un2_combined_output[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[1]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_0 (.A(
        modulated_i_2_0[0]), .B(modulated_q_2_0[0]), .C(GND), .D(GND), 
        .FCI(GND), .S(un2_combined_output_0_cry_0_S), .Y(
        un2_combined_output_0_cry_0_Y), .FCO(
        un2_combined_output_0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_22 (.A(
        modulated_i_2_0[22]), .B(modulated_q_2_0[22]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_21_Z), .S(
        un2_combined_output[22]), .Y(un2_combined_output_0_cry_22_Y), 
        .FCO(un2_combined_output_0_cry_22_Z));
    SLE \combined_output[31]  (.D(un2_combined_output[31]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[31]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_52 (.A(
        modulated_i_2_0[52]), .B(modulated_q_2_0[52]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_51_Z), .S(
        un2_combined_output[52]), .Y(un2_combined_output_0_cry_52_Y), 
        .FCO(un2_combined_output_0_cry_52_Z));
    SLE \combined_output[47]  (.D(un2_combined_output[47]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[47]));
    SLE \combined_output[42]  (.D(un2_combined_output[42]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[42]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_39 (.A(
        modulated_i_2_0[39]), .B(modulated_q_2_0[39]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_38_Z), .S(
        un2_combined_output[39]), .Y(un2_combined_output_0_cry_39_Y), 
        .FCO(un2_combined_output_0_cry_39_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_26 (.A(
        modulated_i_2_0[26]), .B(modulated_q_2_0[26]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_25_Z), .S(
        un2_combined_output[26]), .Y(un2_combined_output_0_cry_26_Y), 
        .FCO(un2_combined_output_0_cry_26_Z));
    SLE \combined_output[9]  (.D(un2_combined_output[9]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[9]));
    SLE \combined_output[57]  (.D(un2_combined_output[57]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[57]));
    SLE \combined_output[52]  (.D(un2_combined_output[52]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[52]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_56 (.A(
        modulated_i_2_0[56]), .B(modulated_q_2_0[56]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_55_Z), .S(
        un2_combined_output[56]), .Y(un2_combined_output_0_cry_56_Y), 
        .FCO(un2_combined_output_0_cry_56_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_49 (.A(
        modulated_i_2_0[49]), .B(modulated_q_2_0[49]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_48_Z), .S(
        un2_combined_output[49]), .Y(un2_combined_output_0_cry_49_Y), 
        .FCO(un2_combined_output_0_cry_49_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_34 (.A(
        modulated_i_2_0[34]), .B(modulated_q_2_0[34]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_33_Z), .S(
        un2_combined_output[34]), .Y(un2_combined_output_0_cry_34_Y), 
        .FCO(un2_combined_output_0_cry_34_Z));
    SLE \combined_output[27]  (.D(un2_combined_output[27]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[27]));
    SLE \combined_output[22]  (.D(un2_combined_output[22]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[22]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_8 (.A(
        modulated_i_2_0[8]), .B(modulated_q_2_0[8]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_7_Z), .S(un2_combined_output[8])
        , .Y(un2_combined_output_0_cry_8_Y), .FCO(
        un2_combined_output_0_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_61 (.A(
        modulated_i_2_0[61]), .B(modulated_q_2_0[61]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_60_Z), .S(
        un2_combined_output[61]), .Y(un2_combined_output_0_cry_61_Y), 
        .FCO(un2_combined_output_0_cry_61_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_44 (.A(
        modulated_i_2_0[44]), .B(modulated_q_2_0[44]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_43_Z), .S(
        un2_combined_output[44]), .Y(un2_combined_output_0_cry_44_Y), 
        .FCO(un2_combined_output_0_cry_44_Z));
    SLE \combined_output[10]  (.D(un2_combined_output[10]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[10]));
    SLE \combined_output[62]  (.D(un2_combined_output[62]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[62]));
    SLE \combined_output[19]  (.D(un2_combined_output[19]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[19]));
    SLE \combined_output[5]  (.D(un2_combined_output[5]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[5]));
    SLE \combined_output[40]  (.D(un2_combined_output[40]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[40]));
    SLE \combined_output[50]  (.D(un2_combined_output[50]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[50]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_23 (.A(
        modulated_i_2_0[23]), .B(modulated_q_2_0[23]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_22_Z), .S(
        un2_combined_output[23]), .Y(un2_combined_output_0_cry_23_Y), 
        .FCO(un2_combined_output_0_cry_23_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_53 (.A(
        modulated_i_2_0[53]), .B(modulated_q_2_0[53]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_52_Z), .S(
        un2_combined_output[53]), .Y(un2_combined_output_0_cry_53_Y), 
        .FCO(un2_combined_output_0_cry_53_Z));
    SLE \combined_output[49]  (.D(un2_combined_output[49]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[49]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_62 (.A(
        modulated_i_2_0[62]), .B(modulated_q_2_0[62]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_61_Z), .S(
        un2_combined_output[62]), .Y(un2_combined_output_0_cry_62_Y), 
        .FCO(un2_combined_output_0_cry_62_Z));
    SLE \combined_output[59]  (.D(un2_combined_output[59]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[59]));
    SLE \combined_output[20]  (.D(un2_combined_output[20]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[20]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_11 (.A(
        modulated_i_2_0[11]), .B(modulated_q_2_0[11]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_10_Z), .S(
        un2_combined_output[11]), .Y(un2_combined_output_0_cry_11_Y), 
        .FCO(un2_combined_output_0_cry_11_Z));
    SLE \combined_output[15]  (.D(un2_combined_output[15]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[15]));
    SLE \combined_output[14]  (.D(un2_combined_output[14]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[14]));
    SLE \combined_output[29]  (.D(un2_combined_output[29]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[29]));
    SLE \combined_output[60]  (.D(un2_combined_output[60]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[60]));
    SLE \combined_output[45]  (.D(un2_combined_output[45]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[45]));
    SLE \combined_output[55]  (.D(un2_combined_output[55]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[55]));
    SLE \combined_output[37]  (.D(un2_combined_output[37]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[37]));
    SLE \combined_output[32]  (.D(un2_combined_output[32]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[32]));
    SLE \combined_output[44]  (.D(un2_combined_output[44]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[44]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_20 (.A(
        modulated_i_2_0[20]), .B(modulated_q_2_0[20]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_19_Z), .S(
        un2_combined_output[20]), .Y(un2_combined_output_0_cry_20_Y), 
        .FCO(un2_combined_output_0_cry_20_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_2 (.A(
        modulated_i_2_0[2]), .B(modulated_q_2_0[2]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_1_Z), .S(un2_combined_output[2])
        , .Y(un2_combined_output_0_cry_2_Y), .FCO(
        un2_combined_output_0_cry_2_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_17 (.A(
        modulated_i_2_0[17]), .B(modulated_q_2_0[17]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_16_Z), .S(
        un2_combined_output[17]), .Y(un2_combined_output_0_cry_17_Y), 
        .FCO(un2_combined_output_0_cry_17_Z));
    SLE \combined_output[54]  (.D(un2_combined_output[54]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[54]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_50 (.A(
        modulated_i_2_0[50]), .B(modulated_q_2_0[50]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_49_Z), .S(
        un2_combined_output[50]), .Y(un2_combined_output_0_cry_50_Y), 
        .FCO(un2_combined_output_0_cry_50_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_5 (.A(
        modulated_i_2_0[5]), .B(modulated_q_2_0[5]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_4_Z), .S(un2_combined_output[5])
        , .Y(un2_combined_output_0_cry_5_Y), .FCO(
        un2_combined_output_0_cry_5_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_31 (.A(
        modulated_i_2_0[31]), .B(modulated_q_2_0[31]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_30_Z), .S(
        un2_combined_output[31]), .Y(un2_combined_output_0_cry_31_Y), 
        .FCO(un2_combined_output_0_cry_31_Z));
    SLE \combined_output[25]  (.D(un2_combined_output[25]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[25]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_28 (.A(
        modulated_i_2_0[28]), .B(modulated_q_2_0[28]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_27_Z), .S(
        un2_combined_output[28]), .Y(un2_combined_output_0_cry_28_Y), 
        .FCO(un2_combined_output_0_cry_28_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_58 (.A(
        modulated_i_2_0[58]), .B(modulated_q_2_0[58]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_57_Z), .S(
        un2_combined_output[58]), .Y(un2_combined_output_0_cry_58_Y), 
        .FCO(un2_combined_output_0_cry_58_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_41 (.A(
        modulated_i_2_0[41]), .B(modulated_q_2_0[41]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_40_Z), .S(
        un2_combined_output[41]), .Y(un2_combined_output_0_cry_41_Y), 
        .FCO(un2_combined_output_0_cry_41_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_12 (.A(
        modulated_i_2_0[12]), .B(modulated_q_2_0[12]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_11_Z), .S(
        un2_combined_output[12]), .Y(un2_combined_output_0_cry_12_Y), 
        .FCO(un2_combined_output_0_cry_12_Z));
    SLE \combined_output[24]  (.D(un2_combined_output[24]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[24]));
    SLE \combined_output[6]  (.D(un2_combined_output[6]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[6]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_16 (.A(
        modulated_i_2_0[16]), .B(modulated_q_2_0[16]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_15_Z), .S(
        un2_combined_output[16]), .Y(un2_combined_output_0_cry_16_Y), 
        .FCO(un2_combined_output_0_cry_16_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_63 (.A(
        modulated_i_2_0[63]), .B(modulated_q_2_0[63]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_62_Z), .S(
        un2_combined_output[63]), .Y(un2_combined_output_0_cry_63_Y), 
        .FCO(un2_combined_output_0_cry_63_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_25 (.A(
        modulated_i_2_0[25]), .B(modulated_q_2_0[25]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_24_Z), .S(
        un2_combined_output[25]), .Y(un2_combined_output_0_cry_25_Y), 
        .FCO(un2_combined_output_0_cry_25_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_55 (.A(
        modulated_i_2_0[55]), .B(modulated_q_2_0[55]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_54_Z), .S(
        un2_combined_output[55]), .Y(un2_combined_output_0_cry_55_Y), 
        .FCO(un2_combined_output_0_cry_55_Z));
    SLE \combined_output[64]  (.D(un2_combined_output[64]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[64]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_9 (.A(
        modulated_i_2_0[9]), .B(modulated_q_2_0[9]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_8_Z), .S(un2_combined_output[9])
        , .Y(un2_combined_output_0_cry_9_Y), .FCO(
        un2_combined_output_0_cry_9_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_37 (.A(
        modulated_i_2_0[37]), .B(modulated_q_2_0[37]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_36_Z), .S(
        un2_combined_output[37]), .Y(un2_combined_output_0_cry_37_Y), 
        .FCO(un2_combined_output_0_cry_37_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_47 (.A(
        modulated_i_2_0[47]), .B(modulated_q_2_0[47]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_46_Z), .S(
        un2_combined_output[47]), .Y(un2_combined_output_0_cry_47_Y), 
        .FCO(un2_combined_output_0_cry_47_Z));
    SLE \combined_output[30]  (.D(un2_combined_output[30]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[30]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_32 (.A(
        modulated_i_2_0[32]), .B(modulated_q_2_0[32]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_31_Z), .S(
        un2_combined_output[32]), .Y(un2_combined_output_0_cry_32_Y), 
        .FCO(un2_combined_output_0_cry_32_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_42 (.A(
        modulated_i_2_0[42]), .B(modulated_q_2_0[42]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_41_Z), .S(
        un2_combined_output[42]), .Y(un2_combined_output_0_cry_42_Y), 
        .FCO(un2_combined_output_0_cry_42_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_36 (.A(
        modulated_i_2_0[36]), .B(modulated_q_2_0[36]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_35_Z), .S(
        un2_combined_output[36]), .Y(un2_combined_output_0_cry_36_Y), 
        .FCO(un2_combined_output_0_cry_36_Z));
    SLE \combined_output[4]  (.D(un2_combined_output[4]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[4]));
    SLE \combined_output[39]  (.D(un2_combined_output[39]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[39]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_46 (.A(
        modulated_i_2_0[46]), .B(modulated_q_2_0[46]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_45_Z), .S(
        un2_combined_output[46]), .Y(un2_combined_output_0_cry_46_Y), 
        .FCO(un2_combined_output_0_cry_46_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_60 (.A(
        modulated_i_2_0[60]), .B(modulated_q_2_0[60]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_59_Z), .S(
        un2_combined_output[60]), .Y(un2_combined_output_0_cry_60_Y), 
        .FCO(un2_combined_output_0_cry_60_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_6 (.A(
        modulated_i_2_0[6]), .B(modulated_q_2_0[6]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_5_Z), .S(un2_combined_output[6])
        , .Y(un2_combined_output_0_cry_6_Y), .FCO(
        un2_combined_output_0_cry_6_Z));
    SLE \combined_output[13]  (.D(un2_combined_output[13]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[13]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_13 (.A(
        modulated_i_2_0[13]), .B(modulated_q_2_0[13]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_12_Z), .S(
        un2_combined_output[13]), .Y(un2_combined_output_0_cry_13_Y), 
        .FCO(un2_combined_output_0_cry_13_Z));
    SLE \combined_output[35]  (.D(un2_combined_output[35]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[35]));
    SLE \combined_output[18]  (.D(un2_combined_output[18]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[18]));
    SLE \combined_output[43]  (.D(un2_combined_output[43]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[43]));
    SLE \combined_output[34]  (.D(un2_combined_output[34]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[34]));
    SLE \combined_output[53]  (.D(un2_combined_output[53]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[53]));
    SLE \combined_output[16]  (.D(un2_combined_output[16]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[16]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_29 (.A(
        modulated_i_2_0[29]), .B(modulated_q_2_0[29]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_28_Z), .S(
        un2_combined_output[29]), .Y(un2_combined_output_0_cry_29_Y), 
        .FCO(un2_combined_output_0_cry_29_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_59 (.A(
        modulated_i_2_0[59]), .B(modulated_q_2_0[59]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_58_Z), .S(
        un2_combined_output[59]), .Y(un2_combined_output_0_cry_59_Y), 
        .FCO(un2_combined_output_0_cry_59_Z));
    SLE \combined_output[48]  (.D(un2_combined_output[48]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[48]));
    SLE \combined_output[58]  (.D(un2_combined_output[58]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[58]));
    SLE \combined_output[2]  (.D(un2_combined_output[2]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[2]));
    SLE \combined_output[3]  (.D(un2_combined_output[3]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[3]));
    SLE \combined_output[23]  (.D(un2_combined_output[23]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[23]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_33 (.A(
        modulated_i_2_0[33]), .B(modulated_q_2_0[33]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_32_Z), .S(
        un2_combined_output[33]), .Y(un2_combined_output_0_cry_33_Y), 
        .FCO(un2_combined_output_0_cry_33_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_24 (.A(
        modulated_i_2_0[24]), .B(modulated_q_2_0[24]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_23_Z), .S(
        un2_combined_output[24]), .Y(un2_combined_output_0_cry_24_Y), 
        .FCO(un2_combined_output_0_cry_24_Z));
    SLE \combined_output[46]  (.D(un2_combined_output[46]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[46]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_54 (.A(
        modulated_i_2_0[54]), .B(modulated_q_2_0[54]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_53_Z), .S(
        un2_combined_output[54]), .Y(un2_combined_output_0_cry_54_Y), 
        .FCO(un2_combined_output_0_cry_54_Z));
    SLE \combined_output[56]  (.D(un2_combined_output[56]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[56]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_7 (.A(
        modulated_i_2_0[7]), .B(modulated_q_2_0[7]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_6_Z), .S(un2_combined_output[7])
        , .Y(un2_combined_output_0_cry_7_Y), .FCO(
        un2_combined_output_0_cry_7_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_43 (.A(
        modulated_i_2_0[43]), .B(modulated_q_2_0[43]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_42_Z), .S(
        un2_combined_output[43]), .Y(un2_combined_output_0_cry_43_Y), 
        .FCO(un2_combined_output_0_cry_43_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_10 (.A(
        modulated_i_2_0[10]), .B(modulated_q_2_0[10]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_9_Z), .S(
        un2_combined_output[10]), .Y(un2_combined_output_0_cry_10_Y), 
        .FCO(un2_combined_output_0_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_1 (.A(
        modulated_i_2_0[1]), .B(modulated_q_2_0[1]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_0_Z), .S(un2_combined_output[1])
        , .Y(un2_combined_output_0_cry_1_Y), .FCO(
        un2_combined_output_0_cry_1_Z));
    GND GND_Z (.Y(GND));
    SLE \combined_output[28]  (.D(un2_combined_output[28]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[28]));
    VCC VCC_Z (.Y(VCC));
    SLE \combined_output[7]  (.D(un2_combined_output[7]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[7]));
    SLE \combined_output[63]  (.D(un2_combined_output[63]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[63]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_18 (.A(
        modulated_i_2_0[18]), .B(modulated_q_2_0[18]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_17_Z), .S(
        un2_combined_output[18]), .Y(un2_combined_output_0_cry_18_Y), 
        .FCO(un2_combined_output_0_cry_18_Z));
    SLE \combined_output[26]  (.D(un2_combined_output[26]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[26]));
    SLE \combined_output[11]  (.D(un2_combined_output[11]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[11]));
    SLE \combined_output[8]  (.D(un2_combined_output[8]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[8]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_15 (.A(
        modulated_i_2_0[15]), .B(modulated_q_2_0[15]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_14_Z), .S(
        un2_combined_output[15]), .Y(un2_combined_output_0_cry_15_Y), 
        .FCO(un2_combined_output_0_cry_15_Z));
    SLE \combined_output[41]  (.D(un2_combined_output[41]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[41]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_30 (.A(
        modulated_i_2_0[30]), .B(modulated_q_2_0[30]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_29_Z), .S(
        un2_combined_output[30]), .Y(un2_combined_output_0_cry_30_Y), 
        .FCO(un2_combined_output_0_cry_30_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_3 (.A(
        modulated_i_2_0[3]), .B(modulated_q_2_0[3]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_2_Z), .S(un2_combined_output[3])
        , .Y(un2_combined_output_0_cry_3_Y), .FCO(
        un2_combined_output_0_cry_3_Z));
    SLE \combined_output[51]  (.D(un2_combined_output[51]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[51]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_40 (.A(
        modulated_i_2_0[40]), .B(modulated_q_2_0[40]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_39_Z), .S(
        un2_combined_output[40]), .Y(un2_combined_output_0_cry_40_Y), 
        .FCO(un2_combined_output_0_cry_40_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_4 (.A(
        modulated_i_2_0[4]), .B(modulated_q_2_0[4]), .C(GND), .D(GND), 
        .FCI(un2_combined_output_0_cry_3_Z), .S(un2_combined_output[4])
        , .Y(un2_combined_output_0_cry_4_Y), .FCO(
        un2_combined_output_0_cry_4_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_38 (.A(
        modulated_i_2_0[38]), .B(modulated_q_2_0[38]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_37_Z), .S(
        un2_combined_output[38]), .Y(un2_combined_output_0_cry_38_Y), 
        .FCO(un2_combined_output_0_cry_38_Z));
    SLE \combined_output[21]  (.D(un2_combined_output[21]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[21]));
    SLE \combined_output[0]  (.D(un2_combined_output_0_cry_0_Y), .CLK(
        clk), .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(
        GND), .LAT(GND), .Q(combined_output_0[0]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_48 (.A(
        modulated_i_2_0[48]), .B(modulated_q_2_0[48]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_47_Z), .S(
        un2_combined_output[48]), .Y(un2_combined_output_0_cry_48_Y), 
        .FCO(un2_combined_output_0_cry_48_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_35 (.A(
        modulated_i_2_0[35]), .B(modulated_q_2_0[35]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_34_Z), .S(
        un2_combined_output[35]), .Y(un2_combined_output_0_cry_35_Y), 
        .FCO(un2_combined_output_0_cry_35_Z));
    SLE \combined_output[33]  (.D(un2_combined_output[33]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[33]));
    SLE \combined_output[61]  (.D(un2_combined_output[61]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[61]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_45 (.A(
        modulated_i_2_0[45]), .B(modulated_q_2_0[45]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_44_Z), .S(
        un2_combined_output[45]), .Y(un2_combined_output_0_cry_45_Y), 
        .FCO(un2_combined_output_0_cry_45_Z));
    SLE \combined_output[38]  (.D(un2_combined_output[38]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[38]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_21 (.A(
        modulated_i_2_0[21]), .B(modulated_q_2_0[21]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_20_Z), .S(
        un2_combined_output[21]), .Y(un2_combined_output_0_cry_21_Y), 
        .FCO(un2_combined_output_0_cry_21_Z));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_51 (.A(
        modulated_i_2_0[51]), .B(modulated_q_2_0[51]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_50_Z), .S(
        un2_combined_output[51]), .Y(un2_combined_output_0_cry_51_Y), 
        .FCO(un2_combined_output_0_cry_51_Z));
    SLE \combined_output[36]  (.D(un2_combined_output[36]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(combined_output_0[36]));
    ARI1 #( .INIT(20'h555AA) )  un2_combined_output_0_cry_19 (.A(
        modulated_i_2_0[19]), .B(modulated_q_2_0[19]), .C(GND), .D(GND)
        , .FCI(un2_combined_output_0_cry_18_Z), .S(
        un2_combined_output[19]), .Y(un2_combined_output_0_cry_19_Y), 
        .FCO(un2_combined_output_0_cry_19_Z));
    
endmodule


module enum_kitDelay_bit_reg_5(
       delayLine,
       systola,
       datai_valid_minus_row,
       clk,
       reset_arst_i,
       async_rstn_i,
       async_rstn
    );
output [2:1] delayLine;
output systola;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;
output async_rstn_i;
output async_rstn;

    wire [3:3] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[3]  (.D(delayLine[2]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[3]));
    SLE \delayLine_Z[1]  (.D(async_rstn), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine[1]));
    SLE \delayLine[4]  (.D(delayLine_Z[3]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_valid_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(async_rstn));
    GND GND_Z (.Y(GND));
    SLE \delayLine_Z[2]  (.D(delayLine[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine[2]));
    CFG1 #( .INIT(2'h1) )  \delayLine_RNI1E5P1[0]  (.A(async_rstn), .Y(
        async_rstn_i));
    
endmodule


module enum_kitDelay_reg_4_7_1(
       iup_mod_0,
       qup_mod,
       data_pad_out,
       reset_c,
       clk,
       reset_arst_i
    );
input  iup_mod_0;
input  [2:1] qup_mod;
output [2:0] data_pad_out;
input  reset_c;
input  clk;
input  reset_arst_i;

    wire [2:0] delayLine_5_5_Z;
    wire [2:0] delayLine_5_5_RNO_Z;
    wire [2:0] delayLine_4_4_Z;
    wire [2:0] delayLine_4_4_RNO_Z;
    wire [2:0] delayLine_3_3_Z;
    wire [2:0] delayLine_3_3_RNO_Z;
    wire [2:0] delayLine_2_2_Z;
    wire [2:0] delayLine_2_2_RNO_Z;
    wire [2:0] delayLine_1_1_Z;
    wire [2:0] delayLine_1_1_RNO_Z;
    wire [2:0] delayLine_0_0_Z;
    wire [2:0] delayLine_0_0_RNO_Z;
    wire [2:0] delayLine_6_6_RNO_Z;
    wire VCC, GND;
    
    CFG2 #( .INIT(4'h2) )  \delayLine_3_3_RNO[2]  (.A(
        delayLine_2_2_Z[2]), .B(reset_c), .Y(delayLine_3_3_RNO_Z[2]));
    SLE \delayLine_3_3[0]  (.D(delayLine_3_3_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_3_3_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_3_3_RNO[0]  (.A(
        delayLine_2_2_Z[0]), .B(reset_c), .Y(delayLine_3_3_RNO_Z[0]));
    SLE \delayLine_2_2[1]  (.D(delayLine_2_2_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_2_2_Z[1]));
    SLE \delayLine_6_6[0]  (.D(delayLine_6_6_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(data_pad_out[0]));
    SLE \delayLine_2_2[0]  (.D(delayLine_2_2_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_2_2_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_3_3_RNO[1]  (.A(
        delayLine_2_2_Z[1]), .B(reset_c), .Y(delayLine_3_3_RNO_Z[1]));
    SLE \delayLine_1_1[2]  (.D(delayLine_1_1_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_1_1_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_5_RNO[2]  (.A(
        delayLine_4_4_Z[2]), .B(reset_c), .Y(delayLine_5_5_RNO_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_2_2_RNO[1]  (.A(
        delayLine_1_1_Z[1]), .B(reset_c), .Y(delayLine_2_2_RNO_Z[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_2_2_RNO[2]  (.A(
        delayLine_1_1_Z[2]), .B(reset_c), .Y(delayLine_2_2_RNO_Z[2]));
    SLE \delayLine_6_6[2]  (.D(delayLine_6_6_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(data_pad_out[2]));
    SLE \delayLine_2_2[2]  (.D(delayLine_2_2_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_2_2_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_1_1_RNO[1]  (.A(
        delayLine_0_0_Z[1]), .B(reset_c), .Y(delayLine_1_1_RNO_Z[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_5_RNO[1]  (.A(
        delayLine_4_4_Z[1]), .B(reset_c), .Y(delayLine_5_5_RNO_Z[1]));
    SLE \delayLine_3_3[1]  (.D(delayLine_3_3_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_3_3_Z[1]));
    SLE \delayLine_5_5[2]  (.D(delayLine_5_5_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_5_5_Z[2]));
    SLE \delayLine_1_1[0]  (.D(delayLine_1_1_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_1_1_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_1_1_RNO[0]  (.A(
        delayLine_0_0_Z[0]), .B(reset_c), .Y(delayLine_1_1_RNO_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_6_6_RNO[0]  (.A(
        delayLine_5_5_Z[0]), .B(reset_c), .Y(delayLine_6_6_RNO_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_0_0_RNO[0]  (.A(iup_mod_0), .B(
        reset_c), .Y(delayLine_0_0_RNO_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_0_0_RNO[1]  (.A(qup_mod[1]), .B(
        reset_c), .Y(delayLine_0_0_RNO_Z[1]));
    SLE \delayLine_6_6[1]  (.D(delayLine_6_6_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(data_pad_out[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_1_1_RNO[2]  (.A(
        delayLine_0_0_Z[2]), .B(reset_c), .Y(delayLine_1_1_RNO_Z[2]));
    SLE \delayLine_0_0[1]  (.D(delayLine_0_0_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_0_0_Z[1]));
    SLE \delayLine_5_5[0]  (.D(delayLine_5_5_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_5_5_Z[0]));
    SLE \delayLine_1_1[1]  (.D(delayLine_1_1_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_1_1_Z[1]));
    GND GND_Z (.Y(GND));
    CFG2 #( .INIT(4'h2) )  \delayLine_2_2_RNO[0]  (.A(
        delayLine_1_1_Z[0]), .B(reset_c), .Y(delayLine_2_2_RNO_Z[0]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine_0_0[2]  (.D(delayLine_0_0_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_0_0_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_4_4_RNO[2]  (.A(
        delayLine_3_3_Z[2]), .B(reset_c), .Y(delayLine_4_4_RNO_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_4_4_RNO[1]  (.A(
        delayLine_3_3_Z[1]), .B(reset_c), .Y(delayLine_4_4_RNO_Z[1]));
    SLE \delayLine_4_4[1]  (.D(delayLine_4_4_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_4_4_Z[1]));
    SLE \delayLine_5_5[1]  (.D(delayLine_5_5_RNO_Z[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_5_5_Z[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_0_0_RNO[2]  (.A(qup_mod[2]), .B(
        reset_c), .Y(delayLine_0_0_RNO_Z[2]));
    SLE \delayLine_4_4[0]  (.D(delayLine_4_4_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_4_4_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_5_RNO[0]  (.A(
        delayLine_4_4_Z[0]), .B(reset_c), .Y(delayLine_5_5_RNO_Z[0]));
    SLE \delayLine_3_3[2]  (.D(delayLine_3_3_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_3_3_Z[2]));
    SLE \delayLine_0_0[0]  (.D(delayLine_0_0_RNO_Z[0]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_0_0_Z[0]));
    CFG2 #( .INIT(4'h2) )  \delayLine_6_6_RNO[2]  (.A(
        delayLine_5_5_Z[2]), .B(reset_c), .Y(delayLine_6_6_RNO_Z[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_6_6_RNO[1]  (.A(
        delayLine_5_5_Z[1]), .B(reset_c), .Y(delayLine_6_6_RNO_Z[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_4_4_RNO[0]  (.A(
        delayLine_3_3_Z[0]), .B(reset_c), .Y(delayLine_4_4_RNO_Z[0]));
    SLE \delayLine_4_4[2]  (.D(delayLine_4_4_RNO_Z[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_4_4_Z[2]));
    
endmodule


module enum_kitDelay_bit_reg_2(
       delayLine,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
input  [2:1] delayLine;
output coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_5_fast_Z;
    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine_Z[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(coef_on_minus_row));
    VCC VCC_Z (.Y(VCC));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_fast[0]  (.A(delayLine[1]), .B(
        delayLine[2]), .Y(delayLine_5_fast_Z[0]));
    SLE \delayLine[0]  (.D(delayLine_5_fast_Z[0]), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_2_0(
       delayLine_0,
       clk,
       reset_arst_i
    );
output delayLine_0;
input  clk;
input  reset_arst_i;

    wire VCC, GND;
    
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(VCC), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_pad_g5_3_2_2_0_0_12_0_4_1(
       delayLine,
       data_pad_out,
       qup_mod,
       iup_mod_0,
       coef_on_minus_row,
       reset_arst_i,
       clk,
       reset_c
    );
inout  [2:0] delayLine;
output [2:0] data_pad_out;
input  [2:1] qup_mod;
input  iup_mod_0;
output coef_on_minus_row;
input  reset_arst_i;
input  clk;
input  reset_c;

    wire GND, VCC;
    
    enum_kitDelay_reg_4_7_1 data_pipe_0 (.iup_mod_0(iup_mod_0), 
        .qup_mod({qup_mod[2], qup_mod[1]}), .data_pad_out({
        data_pad_out[2], data_pad_out[1], data_pad_out[0]}), .reset_c(
        reset_c), .clk(clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_kitDelay_bit_reg_2 dvalid_pipe_1 (.delayLine({delayLine[2], 
        delayLine[1]}), .coef_on_minus_row(coef_on_minus_row), .clk(
        clk), .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_2_0 dvalid_pipe_0 (.delayLine_0(delayLine[0])
        , .clk(clk), .reset_arst_i(reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2(
       coef_on_minus_nibble,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
output coef_on_minus_nibble;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on_minus_nibble));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3(
       coef_on,
       coef_on_minus_nibble,
       clk,
       reset_arst_i
    );
output coef_on;
input  coef_on_minus_nibble;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_nibble), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_8layer1(
       data_w_3,
       cd_w_2,
       data_w_2,
       cd_w_3,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_3;
input  [47:0] cd_w_2;
input  [17:0] data_w_2;
output [47:0] cd_w_3;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_3, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .CDOUT({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_3), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_7layer1(
       cd_w_3,
       data_w_2,
       cd_w_2,
       data_w_3,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_3;
input  [17:0] data_w_2;
input  [47:0] cd_w_2;
output [17:0] data_w_3;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_8layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_10layer1(
       data_w_1,
       data_pad_out,
       cd_w_1,
       coef_on,
       clk,
       reset_arst_i,
       b_en4rst_1z,
       reset_c,
       systola
    );
output [17:0] data_w_1;
input  [2:0] data_pad_out;
output [47:0] cd_w_1;
input  coef_on;
input  clk;
input  reset_arst_i;
output b_en4rst_1z;
input  reset_c;
input  systola;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT, GND, VCC;
    
    CFG2 #( .INIT(4'hE) )  b_en4rst (.A(systola), .B(reset_c), .Y(
        b_en4rst_1z));
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .B2_BYPASS(GND), .B2_EN(b_en4rst_1z), 
        .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), .B_EN(b_en4rst_1z), 
        .B_SRST_N(reset_arst_i), .C({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND}), .CARRYIN(GND), .CDIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CDIN_FDBK_SEL({
        GND, GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst_1z), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst_1z), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst_1z), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, 
        GND, GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(
        VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(
        VCC), .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], 
        B2[11], B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], 
        B2[3], B2[2], B2[1], B2[0]}), .BCOUT({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .CDOUT({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT), .P({P[47], 
        P[46], P[45], P[44], P[43], P[42], P[41], P[40], P[39], P[38], 
        P[37], P[36], P[35], P[34], P[33], P[32], P[31], P[30], P[29], 
        P[28], P[27], P[26], P[25], P[24], P[23], P[22], P[21], P[20], 
        P[19], P[18], P[17], P[16], P[15], P[14], P[13], P[12], P[11], 
        P[10], P[9], P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], 
        P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_5layer1(
       cd_w_1,
       data_pad_out,
       data_w_1,
       systola,
       reset_c,
       b_en4rst,
       reset_arst_i,
       clk,
       coef_on
    );
output [47:0] cd_w_1;
input  [2:0] data_pad_out;
output [17:0] data_w_1;
input  systola;
input  reset_c;
output b_en4rst;
input  reset_arst_i;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_10layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .coef_on(coef_on), .clk(clk), .reset_arst_i(reset_arst_i), 
        .b_en4rst_1z(b_en4rst), .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_7layer1(
       data_w_4,
       cd_w_3,
       data_w_3,
       cd_w_4,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_4;
input  [47:0] cd_w_3;
input  [17:0] data_w_3;
output [47:0] cd_w_4;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_2, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .CDOUT({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_2), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_8layer1(
       cd_w_4,
       data_w_3,
       cd_w_3,
       data_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_4;
input  [17:0] data_w_3;
input  [47:0] cd_w_3;
output [17:0] data_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_7layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_9layer1(
       data_w_2,
       cd_w_1,
       data_w_1,
       cd_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_2;
input  [47:0] cd_w_1;
input  [17:0] data_w_1;
output [47:0] cd_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_1, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_1[17], data_w_1[16], data_w_1[15], 
        data_w_1[14], data_w_1[13], data_w_1[12], data_w_1[11], 
        data_w_1[10], data_w_1[9], data_w_1[8], data_w_1[7], 
        data_w_1[6], data_w_1[5], data_w_1[4], data_w_1[3], 
        data_w_1[2], data_w_1[1], data_w_1[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], 
        cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], 
        cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], 
        cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], 
        cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], 
        cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], 
        cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], 
        cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], 
        cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], 
        cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .CDOUT({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_1), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_6layer1(
       cd_w_2,
       data_w_1,
       cd_w_1,
       data_w_2,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_2;
input  [17:0] data_w_1;
input  [47:0] cd_w_1;
output [17:0] data_w_2;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_9layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_5layer1(
       cd_w_5,
       data_w_5,
       p_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
input  [47:0] cd_w_5;
input  [17:0] data_w_5;
output [47:0] p_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] cdout;
    wire [17:0] B2;
    wire [17:0] bcout;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_4, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_5[17], data_w_5[16], data_w_5[15], 
        data_w_5[14], data_w_5[13], data_w_5[12], data_w_5[11], 
        data_w_5[10], data_w_5[9], data_w_5[8], data_w_5[7], 
        data_w_5[6], data_w_5[5], data_w_5[4], data_w_5[3], 
        data_w_5[2], data_w_5[1], data_w_5[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CARRYIN(GND), 
        .CDIN({cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], 
        cd_w_5[43], cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], 
        cd_w_5[38], cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], 
        cd_w_5[33], cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], 
        cd_w_5[28], cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], 
        cd_w_5[23], cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], 
        cd_w_5[18], cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], 
        cd_w_5[13], cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], 
        cd_w_5[8], cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], 
        cd_w_5[3], cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({bcout[17], bcout[16], bcout[15], 
        bcout[14], bcout[13], bcout[12], bcout[11], bcout[10], 
        bcout[9], bcout[8], bcout[7], bcout[6], bcout[5], bcout[4], 
        bcout[3], bcout[2], bcout[1], bcout[0]}), .CDOUT({cdout[47], 
        cdout[46], cdout[45], cdout[44], cdout[43], cdout[42], 
        cdout[41], cdout[40], cdout[39], cdout[38], cdout[37], 
        cdout[36], cdout[35], cdout[34], cdout[33], cdout[32], 
        cdout[31], cdout[30], cdout[29], cdout[28], cdout[27], 
        cdout[26], cdout[25], cdout[24], cdout[23], cdout[22], 
        cdout[21], cdout[20], cdout[19], cdout[18], cdout[17], 
        cdout[16], cdout[15], cdout[14], cdout[13], cdout[12], 
        cdout[11], cdout[10], cdout[9], cdout[8], cdout[7], cdout[6], 
        cdout[5], cdout[4], cdout[3], cdout[2], cdout[1], cdout[0]}), 
        .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT_4), .P({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_10layer1(
       p_w_2,
       data_w_5,
       cd_w_5,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] p_w_2;
input  [17:0] data_w_5;
input  [47:0] cd_w_5;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_5layer1 
        MACC_PA_BC_ROM_wrap_0 (.cd_w_5({cd_w_5[47], cd_w_5[46], 
        cd_w_5[45], cd_w_5[44], cd_w_5[43], cd_w_5[42], cd_w_5[41], 
        cd_w_5[40], cd_w_5[39], cd_w_5[38], cd_w_5[37], cd_w_5[36], 
        cd_w_5[35], cd_w_5[34], cd_w_5[33], cd_w_5[32], cd_w_5[31], 
        cd_w_5[30], cd_w_5[29], cd_w_5[28], cd_w_5[27], cd_w_5[26], 
        cd_w_5[25], cd_w_5[24], cd_w_5[23], cd_w_5[22], cd_w_5[21], 
        cd_w_5[20], cd_w_5[19], cd_w_5[18], cd_w_5[17], cd_w_5[16], 
        cd_w_5[15], cd_w_5[14], cd_w_5[13], cd_w_5[12], cd_w_5[11], 
        cd_w_5[10], cd_w_5[9], cd_w_5[8], cd_w_5[7], cd_w_5[6], 
        cd_w_5[5], cd_w_5[4], cd_w_5[3], cd_w_5[2], cd_w_5[1], 
        cd_w_5[0]}), .data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_6layer1(
       data_w_5,
       cd_w_4,
       data_w_4,
       cd_w_5,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_5;
input  [47:0] cd_w_4;
input  [17:0] data_w_4;
output [47:0] cd_w_5;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_0, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], 
        cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], 
        cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], 
        cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], 
        cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], 
        cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], 
        cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], 
        cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], 
        cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], 
        cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .CDOUT({
        cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], cd_w_5[43], 
        cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], cd_w_5[38], 
        cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], cd_w_5[33], 
        cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], cd_w_5[28], 
        cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], cd_w_5[23], 
        cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], cd_w_5[18], 
        cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], cd_w_5[13], 
        cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], cd_w_5[8], 
        cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], cd_w_5[3], 
        cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_0), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_9layer1(
       cd_w_5,
       data_w_4,
       cd_w_4,
       data_w_5,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_5;
input  [17:0] data_w_4;
input  [47:0] cd_w_4;
output [17:0] data_w_5;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_6layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .cd_w_4({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .cd_w_5({cd_w_5[47], cd_w_5[46], cd_w_5[45], 
        cd_w_5[44], cd_w_5[43], cd_w_5[42], cd_w_5[41], cd_w_5[40], 
        cd_w_5[39], cd_w_5[38], cd_w_5[37], cd_w_5[36], cd_w_5[35], 
        cd_w_5[34], cd_w_5[33], cd_w_5[32], cd_w_5[31], cd_w_5[30], 
        cd_w_5[29], cd_w_5[28], cd_w_5[27], cd_w_5[26], cd_w_5[25], 
        cd_w_5[24], cd_w_5[23], cd_w_5[22], cd_w_5[21], cd_w_5[20], 
        cd_w_5[19], cd_w_5[18], cd_w_5[17], cd_w_5[16], cd_w_5[15], 
        cd_w_5[14], cd_w_5[13], cd_w_5[12], cd_w_5[11], cd_w_5[10], 
        cd_w_5[9], cd_w_5[8], cd_w_5[7], cd_w_5[6], cd_w_5[5], 
        cd_w_5[4], cd_w_5[3], cd_w_5[2], cd_w_5[1], cd_w_5[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_undernibble_3_work_corefir_pf_c0_rtl_1layer1(
       p_w_2,
       data_pad_out,
       coef_on,
       clk,
       reset_arst_i,
       reset_c,
       systola
    );
output [47:0] p_w_2;
input  [2:0] data_pad_out;
input  coef_on;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;

    wire [47:0] cd_w_1;
    wire [17:0] data_w_1;
    wire [47:0] cd_w_5;
    wire [17:0] data_w_4;
    wire [47:0] cd_w_4;
    wire [17:0] data_w_5;
    wire [47:0] cd_w_2;
    wire [17:0] data_w_2;
    wire [17:0] data_w_3;
    wire [47:0] cd_w_3;
    wire b_en4rst, GND, VCC;
    
    enum_tap_g5_work_corefir_pf_c0_rtl_7layer1 \taps.2.atap  (.cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .data_w_3({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_5layer1 left_tap_0 (.cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_pad_out({
        data_pad_out[2], data_pad_out[1], data_pad_out[0]}), .data_w_1({
        data_w_1[17], data_w_1[16], data_w_1[15], data_w_1[14], 
        data_w_1[13], data_w_1[12], data_w_1[11], data_w_1[10], 
        data_w_1[9], data_w_1[8], data_w_1[7], data_w_1[6], 
        data_w_1[5], data_w_1[4], data_w_1[3], data_w_1[2], 
        data_w_1[1], data_w_1[0]}), .systola(systola), .reset_c(
        reset_c), .b_en4rst(b_en4rst), .reset_arst_i(reset_arst_i), 
        .clk(clk), .coef_on(coef_on));
    VCC VCC_Z (.Y(VCC));
    enum_tap_g5_work_corefir_pf_c0_rtl_8layer1 \taps.3.atap  (.cd_w_4({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .data_w_4({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_6layer1 \taps.1.atap  (.cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .data_w_2({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_10layer1 right_tap_0 (.p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .cd_w_5({
        cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], cd_w_5[43], 
        cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], cd_w_5[38], 
        cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], cd_w_5[33], 
        cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], cd_w_5[28], 
        cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], cd_w_5[23], 
        cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], cd_w_5[18], 
        cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], cd_w_5[13], 
        cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], cd_w_5[8], 
        cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], cd_w_5[3], 
        cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .reset_arst_i(reset_arst_i), 
        .b_en4rst(b_en4rst), .clk(clk), .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_9layer1 \taps.4.atap  (.cd_w_5({
        cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], cd_w_5[43], 
        cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], cd_w_5[38], 
        cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], cd_w_5[33], 
        cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], cd_w_5[28], 
        cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], cd_w_5[23], 
        cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], cd_w_5[18], 
        cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], cd_w_5[13], 
        cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], cd_w_5[8], 
        cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], cd_w_5[3], 
        cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .data_w_5({data_w_5[17], data_w_5[16], data_w_5[15], 
        data_w_5[14], data_w_5[13], data_w_5[12], data_w_5[11], 
        data_w_5[10], data_w_5[9], data_w_5[8], data_w_5[7], 
        data_w_5[6], data_w_5[5], data_w_5[4], data_w_5[3], 
        data_w_5[2], data_w_5[1], data_w_5[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0(
       systola,
       datai_validi,
       clk,
       reset_arst_i
    );
output systola;
input  datai_validi;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_nibble_work_corefir_pf_c0_rtl_1layer1(
       data_pad_out,
       p_w_2,
       datai_validi,
       coef_on_minus_nibble,
       reset_c,
       reset_arst_i,
       clk
    );
input  [2:0] data_pad_out;
output [47:0] p_w_2;
input  datai_validi;
input  coef_on_minus_nibble;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire coef_on, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_3 valid_pipe_0 (.coef_on(coef_on), 
        .coef_on_minus_nibble(coef_on_minus_nibble), .clk(clk), 
        .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_undernibble_3_work_corefir_pf_c0_rtl_1layer1 
        \many_tap_nibble.many_tap_nibble_0  (.p_w_2({p_w_2[47], 
        p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], 
        p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], 
        p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], 
        p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], 
        p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], 
        p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], 
        p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], 
        p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], 
        p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .coef_on(coef_on), .clk(clk), .reset_arst_i(
        reset_arst_i), .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_3_0 dvalid_pipe_0 (.systola(systola), 
        .datai_validi(datai_validi), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_0(
       datai_validi,
       datai_valid_minus_row,
       clk,
       reset_arst_i
    );
output datai_validi;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datai_validi));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_valid_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_row_g5_work_corefir_pf_c0_rtl_0layer1(
       p_w_2,
       data_pad_out,
       datai_valid_minus_row,
       coef_on_minus_row,
       clk,
       reset_arst_i,
       reset_c
    );
output [47:0] p_w_2;
input  [2:0] data_pad_out;
input  datai_valid_minus_row;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;

    wire datai_validi, coef_on_minus_nibble, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_2 valid_pipe_0 (.coef_on_minus_nibble(
        coef_on_minus_nibble), .coef_on_minus_row(coef_on_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_nibble_work_corefir_pf_c0_rtl_1layer1 left_nibble_0 (
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .p_w_2({p_w_2[47], p_w_2[46], p_w_2[45], 
        p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], p_w_2[40], 
        p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], p_w_2[35], 
        p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], p_w_2[30], 
        p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], p_w_2[25], 
        p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], p_w_2[20], 
        p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], p_w_2[15], 
        p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], p_w_2[10], 
        p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], p_w_2[4], 
        p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), .datai_validi(
        datai_validi), .coef_on_minus_nibble(coef_on_minus_nibble), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(clk));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_2_0 dvalid_pipe_0 (.datai_validi(
        datai_validi), .datai_valid_minus_row(datai_valid_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_1(
       coef_on_minus_nibble,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
output coef_on_minus_nibble;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on_minus_nibble));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_reg_48_2(
       p_w_2,
       cin_adv_style,
       systola,
       clk,
       reset_arst_i
    );
input  [47:0] p_w_2;
output [47:0] cin_adv_style;
input  systola;
input  clk;
input  reset_arst_i;

    wire [47:0] delayLine_0_Z;
    wire VCC, GND;
    
    SLE \delayLine_1[39]  (.D(delayLine_0_Z[39]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[39]));
    SLE \delayLine_0[39]  (.D(p_w_2[39]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[39]));
    SLE \delayLine_0[19]  (.D(p_w_2[19]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[19]));
    SLE \delayLine_1[4]  (.D(delayLine_0_Z[4]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[4]));
    SLE \delayLine_1[37]  (.D(delayLine_0_Z[37]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[37]));
    SLE \delayLine_1[19]  (.D(delayLine_0_Z[19]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[19]));
    SLE \delayLine_1[3]  (.D(delayLine_0_Z[3]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[3]));
    SLE \delayLine_0[37]  (.D(p_w_2[37]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[37]));
    SLE \delayLine_0[17]  (.D(p_w_2[17]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[17]));
    SLE \delayLine_0[28]  (.D(p_w_2[28]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[28]));
    SLE \delayLine_1[1]  (.D(delayLine_0_Z[1]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[1]));
    SLE \delayLine_1[17]  (.D(delayLine_0_Z[17]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[17]));
    SLE \delayLine_1[36]  (.D(delayLine_0_Z[36]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[36]));
    SLE \delayLine_0[36]  (.D(p_w_2[36]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[36]));
    SLE \delayLine_0[16]  (.D(p_w_2[16]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[16]));
    SLE \delayLine_1[33]  (.D(delayLine_0_Z[33]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[33]));
    SLE \delayLine_1[32]  (.D(delayLine_0_Z[32]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[32]));
    SLE \delayLine_1[29]  (.D(delayLine_0_Z[29]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[29]));
    SLE \delayLine_1[16]  (.D(delayLine_0_Z[16]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[16]));
    SLE \delayLine_0[33]  (.D(p_w_2[33]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[33]));
    SLE \delayLine_0[13]  (.D(p_w_2[13]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[13]));
    SLE \delayLine_0[32]  (.D(p_w_2[32]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[32]));
    SLE \delayLine_0[12]  (.D(p_w_2[12]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[12]));
    SLE \delayLine_1[44]  (.D(delayLine_0_Z[44]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[44]));
    SLE \delayLine_1[13]  (.D(delayLine_0_Z[13]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[13]));
    SLE \delayLine_1[27]  (.D(delayLine_0_Z[27]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[27]));
    SLE \delayLine_1[12]  (.D(delayLine_0_Z[12]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[12]));
    SLE \delayLine_0[24]  (.D(p_w_2[24]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[24]));
    SLE \delayLine_1[26]  (.D(delayLine_0_Z[26]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[26]));
    SLE \delayLine_0[9]  (.D(p_w_2[9]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[9]));
    SLE \delayLine_1[45]  (.D(delayLine_0_Z[45]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[45]));
    SLE \delayLine_1[23]  (.D(delayLine_0_Z[23]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[23]));
    SLE \delayLine_0[25]  (.D(p_w_2[25]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[25]));
    SLE \delayLine_1[40]  (.D(delayLine_0_Z[40]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[40]));
    SLE \delayLine_1[22]  (.D(delayLine_0_Z[22]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[22]));
    SLE \delayLine_0[44]  (.D(p_w_2[44]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[44]));
    SLE \delayLine_0[20]  (.D(p_w_2[20]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[20]));
    SLE \delayLine_1[38]  (.D(delayLine_0_Z[38]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[38]));
    SLE \delayLine_0[3]  (.D(p_w_2[3]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[3]));
    SLE \delayLine_0[45]  (.D(p_w_2[45]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[45]));
    SLE \delayLine_0[38]  (.D(p_w_2[38]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[38]));
    SLE \delayLine_0[18]  (.D(p_w_2[18]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[18]));
    SLE \delayLine_1[18]  (.D(delayLine_0_Z[18]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[18]));
    SLE \delayLine_0[40]  (.D(p_w_2[40]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[40]));
    SLE \delayLine_1[2]  (.D(delayLine_0_Z[2]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[2]));
    SLE \delayLine_1[34]  (.D(delayLine_0_Z[34]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[34]));
    SLE \delayLine_0[34]  (.D(p_w_2[34]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[34]));
    SLE \delayLine_0[14]  (.D(p_w_2[14]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[14]));
    SLE \delayLine_1[28]  (.D(delayLine_0_Z[28]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[28]));
    SLE \delayLine_1[14]  (.D(delayLine_0_Z[14]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[14]));
    SLE \delayLine_1[35]  (.D(delayLine_0_Z[35]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[35]));
    SLE \delayLine_0[1]  (.D(p_w_2[1]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[1]));
    SLE \delayLine_0[35]  (.D(p_w_2[35]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[35]));
    SLE \delayLine_0[15]  (.D(p_w_2[15]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[15]));
    SLE \delayLine_1[30]  (.D(delayLine_0_Z[30]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[30]));
    SLE \delayLine_1[15]  (.D(delayLine_0_Z[15]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[15]));
    SLE \delayLine_0[30]  (.D(p_w_2[30]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[30]));
    SLE \delayLine_0[10]  (.D(p_w_2[10]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[10]));
    SLE \delayLine_1[41]  (.D(delayLine_0_Z[41]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[41]));
    SLE \delayLine_1[24]  (.D(delayLine_0_Z[24]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[24]));
    SLE \delayLine_0[0]  (.D(p_w_2[0]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[0]));
    SLE \delayLine_1[10]  (.D(delayLine_0_Z[10]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[10]));
    SLE \delayLine_0[21]  (.D(p_w_2[21]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[21]));
    SLE \delayLine_1[8]  (.D(delayLine_0_Z[8]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[8]));
    SLE \delayLine_1[25]  (.D(delayLine_0_Z[25]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[25]));
    SLE \delayLine_1[20]  (.D(delayLine_0_Z[20]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[20]));
    SLE \delayLine_0[41]  (.D(p_w_2[41]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[41]));
    SLE \delayLine_1[6]  (.D(delayLine_0_Z[6]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[6]));
    SLE \delayLine_1[31]  (.D(delayLine_0_Z[31]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[31]));
    SLE \delayLine_0[8]  (.D(p_w_2[8]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[8]));
    GND GND_Z (.Y(GND));
    SLE \delayLine_0[31]  (.D(p_w_2[31]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[31]));
    SLE \delayLine_0[11]  (.D(p_w_2[11]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[11]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine_1[11]  (.D(delayLine_0_Z[11]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[11]));
    SLE \delayLine_1[9]  (.D(delayLine_0_Z[9]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[9]));
    SLE \delayLine_1[21]  (.D(delayLine_0_Z[21]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[21]));
    SLE \delayLine_0[2]  (.D(p_w_2[2]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[2]));
    SLE \delayLine_0[29]  (.D(p_w_2[29]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[29]));
    SLE \delayLine_1[47]  (.D(delayLine_0_Z[47]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[47]));
    SLE \delayLine_0[4]  (.D(p_w_2[4]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[4]));
    SLE \delayLine_1[0]  (.D(delayLine_0_Z[0]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[0]));
    SLE \delayLine_0[6]  (.D(p_w_2[6]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[6]));
    SLE \delayLine_0[27]  (.D(p_w_2[27]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[27]));
    SLE \delayLine_1[5]  (.D(delayLine_0_Z[5]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[5]));
    SLE \delayLine_1[46]  (.D(delayLine_0_Z[46]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[46]));
    SLE \delayLine_0[26]  (.D(p_w_2[26]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[26]));
    SLE \delayLine_1[43]  (.D(delayLine_0_Z[43]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[43]));
    SLE \delayLine_0[5]  (.D(p_w_2[5]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[5]));
    SLE \delayLine_1[42]  (.D(delayLine_0_Z[42]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[42]));
    SLE \delayLine_0[23]  (.D(p_w_2[23]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[23]));
    SLE \delayLine_0[22]  (.D(p_w_2[22]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[22]));
    SLE \delayLine_0[47]  (.D(p_w_2[47]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[47]));
    SLE \delayLine_1[7]  (.D(delayLine_0_Z[7]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[7]));
    SLE \delayLine_0[7]  (.D(p_w_2[7]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[7]));
    SLE \delayLine_0[46]  (.D(p_w_2[46]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[46]));
    SLE \delayLine_0[43]  (.D(p_w_2[43]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[43]));
    SLE \delayLine_0[42]  (.D(p_w_2[42]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[42]));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0_1(
       datai_validi,
       clk,
       reset_arst_i,
       systola
    );
input  datai_validi;
input  clk;
input  reset_arst_i;
output systola;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_1(
       coef_on,
       coef_on_minus_nibble,
       clk,
       reset_arst_i
    );
output coef_on;
input  coef_on_minus_nibble;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_nibble), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_2layer1(
       data_w_3,
       cd_w_2,
       data_w_2,
       cd_w_3,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_3;
input  [47:0] cd_w_2;
input  [17:0] data_w_2;
output [47:0] cd_w_3;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_6, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .CDOUT({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_6), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_2layer1(
       cd_w_3,
       data_w_2,
       cd_w_2,
       data_w_3,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_3;
input  [17:0] data_w_2;
input  [47:0] cd_w_2;
output [17:0] data_w_3;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_2layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_4layer1(
       data_w_1,
       cin_adv_style,
       ddly_forw_2,
       cd_w_1,
       coef_on,
       clk,
       reset_arst_i,
       b_en4rst_1z,
       reset_c,
       systola
    );
output [17:0] data_w_1;
input  [47:0] cin_adv_style;
input  [3:0] ddly_forw_2;
output [47:0] cd_w_1;
input  coef_on;
input  clk;
input  reset_arst_i;
output b_en4rst_1z;
input  reset_c;
input  systola;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_5, GND, VCC;
    
    CFG2 #( .INIT(4'hE) )  b_en4rst (.A(systola), .B(reset_c), .Y(
        b_en4rst_1z));
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]})
        , .B2_BYPASS(GND), .B2_EN(b_en4rst_1z), .B2_SRST_N(
        reset_arst_i), .B_BYPASS(GND), .B_EN(b_en4rst_1z), .B_SRST_N(
        reset_arst_i), .C({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .CARRYIN(GND), .CDIN({GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .CDIN_FDBK_SEL({GND, 
        GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), .CDIN_FDBK_SEL_BYPASS(
        GND), .CDIN_FDBK_SEL_EN(VCC), .CDIN_FDBK_SEL_SD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_SL_N(VCC), .CLK(clk), .C_ARST_N(GND), .C_BYPASS(
        GND), .C_EN(b_en4rst_1z), .C_SRST_N(reset_arst_i), .D({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND}), .DOTP(GND), .D_ARST_N(GND), 
        .D_BYPASS(GND), .D_EN(b_en4rst_1z), .D_SRST_N(reset_arst_i), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(GND), .PASUB_EN(VCC), .PASUB_SD_N(VCC), 
        .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(b_en4rst_1z), 
        .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, GND}), 
        .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), .CDOUT({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_5), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_0layer1(
       cd_w_1,
       ddly_forw_2,
       cin_adv_style,
       data_w_1,
       systola,
       reset_c,
       b_en4rst,
       reset_arst_i,
       clk,
       coef_on
    );
output [47:0] cd_w_1;
input  [3:0] ddly_forw_2;
input  [47:0] cin_adv_style;
output [17:0] data_w_1;
input  systola;
input  reset_c;
output b_en4rst;
input  reset_arst_i;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_4layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), 
        .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .coef_on(coef_on), .clk(clk)
        , .reset_arst_i(reset_arst_i), .b_en4rst_1z(b_en4rst), 
        .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_1layer1(
       data_w_4,
       cd_w_3,
       data_w_3,
       cd_w_4,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_4;
input  [47:0] cd_w_3;
input  [17:0] data_w_3;
output [47:0] cd_w_4;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_8, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .CDOUT({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_8), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_3layer1(
       cd_w_4,
       data_w_3,
       cd_w_3,
       data_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_4;
input  [17:0] data_w_3;
input  [47:0] cd_w_3;
output [17:0] data_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_1layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_3layer1(
       data_w_2,
       cd_w_1,
       data_w_1,
       cd_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_2;
input  [47:0] cd_w_1;
input  [17:0] data_w_1;
output [47:0] cd_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_7, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_1[17], data_w_1[16], data_w_1[15], 
        data_w_1[14], data_w_1[13], data_w_1[12], data_w_1[11], 
        data_w_1[10], data_w_1[9], data_w_1[8], data_w_1[7], 
        data_w_1[6], data_w_1[5], data_w_1[4], data_w_1[3], 
        data_w_1[2], data_w_1[1], data_w_1[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], 
        cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], 
        cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], 
        cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], 
        cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], 
        cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], 
        cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], 
        cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], 
        cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], 
        cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .CDOUT({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_7), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_1layer1(
       cd_w_2,
       data_w_1,
       cd_w_1,
       data_w_2,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_2;
input  [17:0] data_w_1;
input  [47:0] cd_w_1;
output [17:0] data_w_2;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_3layer1 
        MACC_PA_BC_ROM_wrap_0 (.data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_0layer1(
       cd_w_4,
       cin_adv_style,
       data_w_4,
       COREFIR_PF_C0_0_FIRO,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
input  [47:0] cd_w_4;
input  [47:0] cin_adv_style;
input  [17:0] data_w_4;
output [47:0] COREFIR_PF_C0_0_FIRO;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] cdout;
    wire [17:0] B2;
    wire [17:0] bcout;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_9, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({
        cin_adv_style[47], cin_adv_style[46], cin_adv_style[45], 
        cin_adv_style[44], cin_adv_style[43], cin_adv_style[42], 
        cin_adv_style[41], cin_adv_style[40], cin_adv_style[39], 
        cin_adv_style[38], cin_adv_style[37], cin_adv_style[36], 
        cin_adv_style[35], cin_adv_style[34], cin_adv_style[33], 
        cin_adv_style[32], cin_adv_style[31], cin_adv_style[30], 
        cin_adv_style[29], cin_adv_style[28], cin_adv_style[27], 
        cin_adv_style[26], cin_adv_style[25], cin_adv_style[24], 
        cin_adv_style[23], cin_adv_style[22], cin_adv_style[21], 
        cin_adv_style[20], cin_adv_style[19], cin_adv_style[18], 
        cin_adv_style[17], cin_adv_style[16], cin_adv_style[15], 
        cin_adv_style[14], cin_adv_style[13], cin_adv_style[12], 
        cin_adv_style[11], cin_adv_style[10], cin_adv_style[9], 
        cin_adv_style[8], cin_adv_style[7], cin_adv_style[6], 
        cin_adv_style[5], cin_adv_style[4], cin_adv_style[3], 
        cin_adv_style[2], cin_adv_style[1], cin_adv_style[0]}), 
        .CARRYIN(GND), .CDIN({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .CDIN_FDBK_SEL({VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(reset_arst_i), .C_BYPASS(GND), .C_EN(
        b_en4rst), .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND}), .DOTP(GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(
        b_en4rst), .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), 
        .PASUB(GND), .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(
        VCC), .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), 
        .P_EN(b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, 
        GND, GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(
        VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(
        VCC), .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], 
        B2[11], B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], 
        B2[3], B2[2], B2[1], B2[0]}), .BCOUT({bcout[17], bcout[16], 
        bcout[15], bcout[14], bcout[13], bcout[12], bcout[11], 
        bcout[10], bcout[9], bcout[8], bcout[7], bcout[6], bcout[5], 
        bcout[4], bcout[3], bcout[2], bcout[1], bcout[0]}), .CDOUT({
        cdout[47], cdout[46], cdout[45], cdout[44], cdout[43], 
        cdout[42], cdout[41], cdout[40], cdout[39], cdout[38], 
        cdout[37], cdout[36], cdout[35], cdout[34], cdout[33], 
        cdout[32], cdout[31], cdout[30], cdout[29], cdout[28], 
        cdout[27], cdout[26], cdout[25], cdout[24], cdout[23], 
        cdout[22], cdout[21], cdout[20], cdout[19], cdout[18], 
        cdout[17], cdout[16], cdout[15], cdout[14], cdout[13], 
        cdout[12], cdout[11], cdout[10], cdout[9], cdout[8], cdout[7], 
        cdout[6], cdout[5], cdout[4], cdout[3], cdout[2], cdout[1], 
        cdout[0]}), .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT_9), 
        .P({COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[46], 
        COREFIR_PF_C0_0_FIRO[45], COREFIR_PF_C0_0_FIRO[44], 
        COREFIR_PF_C0_0_FIRO[43], COREFIR_PF_C0_0_FIRO[42], 
        COREFIR_PF_C0_0_FIRO[41], COREFIR_PF_C0_0_FIRO[40], 
        COREFIR_PF_C0_0_FIRO[39], COREFIR_PF_C0_0_FIRO[38], 
        COREFIR_PF_C0_0_FIRO[37], COREFIR_PF_C0_0_FIRO[36], 
        COREFIR_PF_C0_0_FIRO[35], COREFIR_PF_C0_0_FIRO[34], 
        COREFIR_PF_C0_0_FIRO[33], COREFIR_PF_C0_0_FIRO[32], 
        COREFIR_PF_C0_0_FIRO[31], COREFIR_PF_C0_0_FIRO[30], 
        COREFIR_PF_C0_0_FIRO[29], COREFIR_PF_C0_0_FIRO[28], 
        COREFIR_PF_C0_0_FIRO[27], COREFIR_PF_C0_0_FIRO[26], 
        COREFIR_PF_C0_0_FIRO[25], COREFIR_PF_C0_0_FIRO[24], 
        COREFIR_PF_C0_0_FIRO[23], COREFIR_PF_C0_0_FIRO[22], 
        COREFIR_PF_C0_0_FIRO[21], COREFIR_PF_C0_0_FIRO[20], 
        COREFIR_PF_C0_0_FIRO[19], COREFIR_PF_C0_0_FIRO[18], 
        COREFIR_PF_C0_0_FIRO[17], COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_4layer1(
       COREFIR_PF_C0_0_FIRO,
       data_w_4,
       cin_adv_style,
       cd_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] COREFIR_PF_C0_0_FIRO;
input  [17:0] data_w_4;
input  [47:0] cin_adv_style;
input  [47:0] cd_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_0layer1 
        MACC_PA_BC_ROM_wrap_0 (.cd_w_4({cd_w_4[47], cd_w_4[46], 
        cd_w_4[45], cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], 
        cd_w_4[40], cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], 
        cd_w_4[35], cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], 
        cd_w_4[30], cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], 
        cd_w_4[25], cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], 
        cd_w_4[20], cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], 
        cd_w_4[15], cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], 
        cd_w_4[10], cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], 
        cd_w_4[5], cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], 
        cd_w_4[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .coef_on(coef_on), .clk(clk), 
        .b_en4rst(b_en4rst), .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_undernibble_3_work_corefir_pf_c0_rtl_0layer1(
       COREFIR_PF_C0_0_FIRO,
       cin_adv_style,
       ddly_forw_2,
       coef_on,
       clk,
       reset_arst_i,
       reset_c,
       systola
    );
output [47:0] COREFIR_PF_C0_0_FIRO;
input  [47:0] cin_adv_style;
input  [3:0] ddly_forw_2;
input  coef_on;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;

    wire [47:0] cd_w_1;
    wire [17:0] data_w_1;
    wire [47:0] cd_w_3;
    wire [17:0] data_w_2;
    wire [47:0] cd_w_2;
    wire [17:0] data_w_3;
    wire [47:0] cd_w_4;
    wire [17:0] data_w_4;
    wire b_en4rst, GND, VCC;
    
    enum_tap_g5_work_corefir_pf_c0_rtl_2layer1 \taps.2.atap  (.cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .data_w_3({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_0layer1 left_tap_0 (.cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .ddly_forw_2({
        ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]})
        , .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), .systola(
        systola), .reset_c(reset_c), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i), .clk(clk), .coef_on(coef_on));
    VCC VCC_Z (.Y(VCC));
    enum_tap_g5_work_corefir_pf_c0_rtl_3layer1 \taps.3.atap  (.cd_w_4({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .data_w_4({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_1layer1 \taps.1.atap  (.cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .data_w_2({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .reset_arst_i(
        reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), .coef_on(
        coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_4layer1 right_tap_0 (
        .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .cd_w_4({cd_w_4[47], 
        cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], cd_w_4[42], 
        cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], cd_w_4[37], 
        cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], cd_w_4[32], 
        cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], cd_w_4[27], 
        cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], cd_w_4[22], 
        cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], cd_w_4[17], 
        cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], cd_w_4[12], 
        cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], cd_w_4[7], 
        cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], cd_w_4[2], 
        cd_w_4[1], cd_w_4[0]}), .reset_arst_i(reset_arst_i), .b_en4rst(
        b_en4rst), .clk(clk), .coef_on(coef_on));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0_0(
       systola,
       datai_validi,
       clk,
       reset_arst_i
    );
output systola;
input  datai_validi;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_nibble_work_corefir_pf_c0_rtl_0layer1(
       ddly_forw_2,
       cin_adv_style,
       COREFIR_PF_C0_0_FIRO,
       datai_validi,
       coef_on_minus_nibble,
       reset_c,
       reset_arst_i,
       clk
    );
input  [3:0] ddly_forw_2;
input  [47:0] cin_adv_style;
output [47:0] COREFIR_PF_C0_0_FIRO;
input  datai_validi;
input  coef_on_minus_nibble;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire coef_on, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_3_1 valid_pipe_0 (.coef_on(coef_on), 
        .coef_on_minus_nibble(coef_on_minus_nibble), .clk(clk), 
        .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_undernibble_3_work_corefir_pf_c0_rtl_0layer1 
        \many_tap_nibble.many_tap_nibble_0  (.COREFIR_PF_C0_0_FIRO({
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[46], 
        COREFIR_PF_C0_0_FIRO[45], COREFIR_PF_C0_0_FIRO[44], 
        COREFIR_PF_C0_0_FIRO[43], COREFIR_PF_C0_0_FIRO[42], 
        COREFIR_PF_C0_0_FIRO[41], COREFIR_PF_C0_0_FIRO[40], 
        COREFIR_PF_C0_0_FIRO[39], COREFIR_PF_C0_0_FIRO[38], 
        COREFIR_PF_C0_0_FIRO[37], COREFIR_PF_C0_0_FIRO[36], 
        COREFIR_PF_C0_0_FIRO[35], COREFIR_PF_C0_0_FIRO[34], 
        COREFIR_PF_C0_0_FIRO[33], COREFIR_PF_C0_0_FIRO[32], 
        COREFIR_PF_C0_0_FIRO[31], COREFIR_PF_C0_0_FIRO[30], 
        COREFIR_PF_C0_0_FIRO[29], COREFIR_PF_C0_0_FIRO[28], 
        COREFIR_PF_C0_0_FIRO[27], COREFIR_PF_C0_0_FIRO[26], 
        COREFIR_PF_C0_0_FIRO[25], COREFIR_PF_C0_0_FIRO[24], 
        COREFIR_PF_C0_0_FIRO[23], COREFIR_PF_C0_0_FIRO[22], 
        COREFIR_PF_C0_0_FIRO[21], COREFIR_PF_C0_0_FIRO[20], 
        COREFIR_PF_C0_0_FIRO[19], COREFIR_PF_C0_0_FIRO[18], 
        COREFIR_PF_C0_0_FIRO[17], COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}), 
        .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), .coef_on(
        coef_on), .clk(clk), .reset_arst_i(reset_arst_i), .reset_c(
        reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_3_0_0 dvalid_pipe_0 (.systola(systola), 
        .datai_validi(datai_validi), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_0_0(
       datai_validi,
       datai_valid_minus_row,
       clk,
       reset_arst_i
    );
output datai_validi;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datai_validi));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_valid_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_row_g5_work_corefir_pf_c0_rtl_1layer1(
       p_w_2,
       COREFIR_PF_C0_0_FIRO,
       ddly_forw_2,
       datai_valid_minus_row,
       coef_on_minus_row,
       clk,
       reset_arst_i,
       reset_c
    );
input  [47:0] p_w_2;
output [47:0] COREFIR_PF_C0_0_FIRO;
input  [3:0] ddly_forw_2;
input  datai_valid_minus_row;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;

    wire [47:0] cin_adv_style;
    wire datai_validi, coef_on_minus_nibble, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_2_1 valid_pipe_0 (.coef_on_minus_nibble(
        coef_on_minus_nibble), .coef_on_minus_row(coef_on_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    enum_kitDelay_reg_48_2 \inter_advanced.end_dly_0  (.p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .systola(systola), .clk(
        clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_kitDelay_bit_reg_attr_3_0_1 dvalid_pipe_1 (.datai_validi(
        datai_validi), .clk(clk), .reset_arst_i(reset_arst_i), 
        .systola(systola));
    enum_tap_nibble_work_corefir_pf_c0_rtl_0layer1 left_nibble_0 (
        .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], 
        ddly_forw_2[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .COREFIR_PF_C0_0_FIRO({
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[46], 
        COREFIR_PF_C0_0_FIRO[45], COREFIR_PF_C0_0_FIRO[44], 
        COREFIR_PF_C0_0_FIRO[43], COREFIR_PF_C0_0_FIRO[42], 
        COREFIR_PF_C0_0_FIRO[41], COREFIR_PF_C0_0_FIRO[40], 
        COREFIR_PF_C0_0_FIRO[39], COREFIR_PF_C0_0_FIRO[38], 
        COREFIR_PF_C0_0_FIRO[37], COREFIR_PF_C0_0_FIRO[36], 
        COREFIR_PF_C0_0_FIRO[35], COREFIR_PF_C0_0_FIRO[34], 
        COREFIR_PF_C0_0_FIRO[33], COREFIR_PF_C0_0_FIRO[32], 
        COREFIR_PF_C0_0_FIRO[31], COREFIR_PF_C0_0_FIRO[30], 
        COREFIR_PF_C0_0_FIRO[29], COREFIR_PF_C0_0_FIRO[28], 
        COREFIR_PF_C0_0_FIRO[27], COREFIR_PF_C0_0_FIRO[26], 
        COREFIR_PF_C0_0_FIRO[25], COREFIR_PF_C0_0_FIRO[24], 
        COREFIR_PF_C0_0_FIRO[23], COREFIR_PF_C0_0_FIRO[22], 
        COREFIR_PF_C0_0_FIRO[21], COREFIR_PF_C0_0_FIRO[20], 
        COREFIR_PF_C0_0_FIRO[19], COREFIR_PF_C0_0_FIRO[18], 
        COREFIR_PF_C0_0_FIRO[17], COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}), 
        .datai_validi(datai_validi), .coef_on_minus_nibble(
        coef_on_minus_nibble), .reset_c(reset_c), .reset_arst_i(
        reset_arst_i), .clk(clk));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_2_0_0 dvalid_pipe_0 (.datai_validi(
        datai_validi), .datai_valid_minus_row(datai_valid_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    
endmodule


module enum_kitDelay_reg_4_11(
       ddly_forw_2,
       data_pad_out,
       reset_c,
       N_179_i,
       systola,
       clk,
       reset_arst_i
    );
output [3:0] ddly_forw_2;
input  [2:0] data_pad_out;
input  reset_c;
input  N_179_i;
input  systola;
input  clk;
input  reset_arst_i;

    wire [3:0] tmp1;
    wire [1:0] tmp1_i;
    wire delayLine_seqshiftro_3, VCC, delayLine_seqshiftsri_3, GND, 
        delayLine_seqshiftro_2, delayLine_seqshiftsri_2, 
        delayLine_seqshiftro_1, delayLine_seqshiftsri_1, 
        delayLine_seqshiftro_0, delayLine_seqshiftsri_0, 
        delayLine_seqshiftro_10, delayLine_seqshiftsri_10, 
        delayLine_seqshiftro_9, delayLine_seqshiftsri_9, 
        delayLine_seqshiftro_8, delayLine_seqshiftsri_8, 
        delayLine_seqshiftro_7, delayLine_seqshiftsri_7, 
        delayLine_seqshiftro_6, delayLine_seqshiftsri_6, 
        delayLine_seqshiftro_5, delayLine_seqshiftsri_5, 
        delayLine_seqshiftro_4, delayLine_seqshiftsri_4, 
        delayLine_seqshiftro_15, delayLine_seqshiftsri_15, 
        delayLine_seqshiftro_14, delayLine_seqshiftsri_14, 
        delayLine_seqshiftro_13, delayLine_seqshiftsri_13, 
        delayLine_seqshiftro_12, delayLine_seqshiftsri_12, 
        delayLine_seqshiftro_11, delayLine_seqshiftsri_11, N_135_i, 
        N_126_i_i, N_35, N_134_i_i, N_125_i, 
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_0, 
        delayLine_seqshiftror_0_0, delayLine_seqshiftror_10_1, 
        delayLine_seqshiftror_0, delayLine_seqshiftror_7, 
        delayLine_seqshiftror_10, N_191, delayLine_seqshiftror_4, 
        delayLine_seqshiftror_7_1, delayLine_seqshiftror_3, N_201, 
        N_200, N_182, N_183, N_184, N_189, N_192, N_193, N_194, N_121, 
        N_145, N_150, delayLine_seqshiftror_6, delayLine_seqshiftror_5, 
        NC0, NC1, NC2, NC3, NC4, NC5, NC6, NC7, NC8;
    
    RAM64x12 #( .MEMORYFILE(""), .RAMINDEX("delayLine[3:0]%16%4%SPEED%0%0%MICRO_RAM")
         )  delayLine_seqshift_delayLine_seqshift_0_0 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, N_125_i, N_134_i_i, 
        tmp1_i[1], tmp1[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(VCC), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(clk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(reset_arst_i), .R_DATA_BYPASS(GND), .R_DATA_EN(
        N_179_i), .R_DATA_SD(GND), .R_DATA_SL_N(
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_0), .W_ADDR({
        GND, GND, tmp1[3], tmp1[2], tmp1[1], tmp1[0]}), .W_CLK(clk), 
        .W_DATA({GND, GND, GND, GND, GND, GND, GND, GND, 
        data_pad_out[2], data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .W_EN(systola), .ACCESS_BUSY(NC8), .R_DATA({
        NC7, NC6, NC5, NC4, NC3, NC2, NC1, NC0, ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_6_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_6), .C(N_193), .D(N_182), .Y(
        delayLine_seqshiftsri_6));
    CFG4 #( .INIT(16'hFFAE) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_9 (.A(
        delayLine_seqshiftror_4), .B(tmp1[3]), .C(
        delayLine_seqshiftror_7_1), .D(delayLine_seqshiftror_3), .Y(
        delayLine_seqshiftror_7));
    CFG2 #( .INIT(4'h4) )  \delayLine_CF3_RNIBFT94_0[3]  (.A(tmp1[3]), 
        .B(systola), .Y(N_182));
    CFG2 #( .INIT(4'h8) )  \delayLine_CF3_RNIBFT94[3]  (.A(tmp1[3]), 
        .B(systola), .Y(N_183));
    CFG3 #( .INIT(8'h04) )  \delayLine_CF3_RNICH7I7_3[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_191));
    SLE delayLine_seqshiftrff_15 (.D(delayLine_seqshiftsri_15), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_15));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_8_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_8), .C(N_200), .D(N_183), .Y(
        delayLine_seqshiftsri_8));
    SLE delayLine_seqshiftrff_2 (.D(delayLine_seqshiftsri_2), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_2));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_10_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_10), .C(N_192), .D(N_183), 
        .Y(delayLine_seqshiftsri_10));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[3]  (.D(
        N_126_i_i), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(tmp1[3]));
    CFG3 #( .INIT(8'h20) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_5 (.A(tmp1[3]), 
        .B(N_121), .C(delayLine_seqshiftro_5), .Y(N_150));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_14_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_14), .C(N_193), .D(N_183), 
        .Y(delayLine_seqshiftsri_14));
    CFG1 #( .INIT(2'h1) )  \delayLine_CF3_RNO[0]  (.A(tmp1[0]), .Y(
        tmp1_i[0]));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_8 (.A(tmp1[3]), 
        .B(N_194), .C(delayLine_seqshiftro_11), .D(
        delayLine_seqshiftro_3), .Y(delayLine_seqshiftror_0));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[2]  (.D(N_35), 
        .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(tmp1[2]));
    CFG4 #( .INIT(16'hF8F0) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_2 (.A(tmp1[3]), 
        .B(delayLine_seqshiftro_1), .C(N_150), .D(N_184), .Y(
        delayLine_seqshiftror_6));
    CFG2 #( .INIT(4'h6) )  \delayLine_C3_1.SUM_0_0_x2[1]  (.A(tmp1[1]), 
        .B(tmp1[0]), .Y(N_135_i));
    SLE delayLine_seqshiftrff_3 (.D(delayLine_seqshiftsri_3), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_3));
    CFG4 #( .INIT(16'hC480) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_6 (.A(tmp1[0]), 
        .B(N_189), .C(delayLine_seqshiftro_7), .D(
        delayLine_seqshiftro_6), .Y(delayLine_seqshiftror_0_0));
    CFG3 #( .INIT(8'h08) )  \delayLine_CF3_RNICH7I7_2[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_193));
    SLE delayLine_seqshiftrff_4 (.D(delayLine_seqshiftsri_4), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_4));
    CFG4 #( .INIT(16'h3332) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1 (.A(
        delayLine_seqshiftror_6), .B(reset_c), .C(
        delayLine_seqshiftror_10), .D(delayLine_seqshiftror_5), .Y(
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_0));
    SLE delayLine_seqshiftrff_5 (.D(delayLine_seqshiftsri_5), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_5));
    CFG3 #( .INIT(8'h10) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_10 (.A(tmp1[3]), 
        .B(N_121), .C(delayLine_seqshiftro_13), .Y(N_145));
    CFG3 #( .INIT(8'h56) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_0 (.A(tmp1[3]), 
        .B(tmp1[1]), .C(tmp1[2]), .Y(N_125_i));
    SLE delayLine_seqshiftrff_10 (.D(delayLine_seqshiftsri_10), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_10));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[1]  (.D(
        N_135_i), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), .SLn(
        VCC), .SD(GND), .LAT(GND), .Q(tmp1[1]));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_14 (.A(tmp1[3]), 
        .B(N_193), .C(delayLine_seqshiftro_12), .D(
        delayLine_seqshiftro_4), .Y(delayLine_seqshiftror_3));
    CFG4 #( .INIT(16'h37BF) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_7 (.A(tmp1[3]), 
        .B(N_191), .C(delayLine_seqshiftro_10), .D(
        delayLine_seqshiftro_2), .Y(delayLine_seqshiftror_10_1));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_3_RNO (.A(
        delayLine_seqshiftro_3), .B(reset_c), .C(N_184), .D(N_182), .Y(
        delayLine_seqshiftsri_3));
    CFG1 #( .INIT(2'h1) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO (.A(tmp1[1]), .Y(
        tmp1_i[1]));
    SLE delayLine_seqshiftrff_0 (.D(delayLine_seqshiftsri_0), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_0));
    CFG3 #( .INIT(8'h01) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_11 (.A(tmp1[3]), 
        .B(tmp1[1]), .C(tmp1[2]), .Y(N_189));
    CFG3 #( .INIT(8'h10) )  \delayLine_CF3_RNICH7I7_1[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_201));
    CFG4 #( .INIT(16'hFFFB) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_3 (.A(
        delayLine_seqshiftror_0_0), .B(delayLine_seqshiftror_10_1), .C(
        delayLine_seqshiftror_0), .D(delayLine_seqshiftror_7), .Y(
        delayLine_seqshiftror_10));
    SLE delayLine_seqshiftrff_13 (.D(delayLine_seqshiftsri_13), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_13));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_2_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_2), .C(N_192), .D(N_182), .Y(
        delayLine_seqshiftsri_2));
    CFG4 #( .INIT(16'h4454) )  delayLine_seqshiftrff_15_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_15), .C(N_183), .D(N_121), 
        .Y(delayLine_seqshiftsri_15));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_1_RNO (.A(
        delayLine_seqshiftro_1), .B(reset_c), .C(N_201), .D(N_182), .Y(
        delayLine_seqshiftsri_1));
    CFG2 #( .INIT(4'h9) )  \delayLine_C3_1.N_126_i_i  (.A(N_121), .B(
        tmp1[3]), .Y(N_126_i_i));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_12 (.A(tmp1[3]), 
        .B(N_192), .C(delayLine_seqshiftro_8), .D(
        delayLine_seqshiftro_0), .Y(delayLine_seqshiftror_4));
    CFG3 #( .INIT(8'h01) )  \delayLine_CF3_RNICH7I7_5[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_200));
    SLE delayLine_seqshiftrff_9 (.D(delayLine_seqshiftsri_9), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_9));
    SLE delayLine_seqshiftrff_14 (.D(delayLine_seqshiftsri_14), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_14));
    SLE delayLine_seqshiftrff_7 (.D(delayLine_seqshiftsri_7), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_7));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_0_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_0), .C(N_200), .D(N_182), .Y(
        delayLine_seqshiftsri_0));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[0]  (.D(
        tmp1_i[0]), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(tmp1[0]));
    CFG3 #( .INIT(8'h20) )  \delayLine_C3_1.SUM_0_x2_i_a2_0[2]  (.A(
        tmp1[1]), .B(tmp1[2]), .C(tmp1[0]), .Y(N_184));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_5_RNO (.A(
        delayLine_seqshiftro_5), .B(reset_c), .C(N_194), .D(N_182), .Y(
        delayLine_seqshiftsri_5));
    GND GND_Z (.Y(GND));
    CFG3 #( .INIT(8'h02) )  \delayLine_CF3_RNICH7I7_4[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_192));
    VCC VCC_Z (.Y(VCC));
    SLE delayLine_seqshiftrff_8 (.D(delayLine_seqshiftsri_8), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_8));
    CFG3 #( .INIT(8'h40) )  \delayLine_CF3_RNICH7I7_0[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_194));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_13_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_13), .C(N_194), .D(N_183), 
        .Y(delayLine_seqshiftsri_13));
    CFG3 #( .INIT(8'h6C) )  \delayLine_C3_1.SUM_0_x2_i[2]  (.A(tmp1[1])
        , .B(tmp1[2]), .C(tmp1[0]), .Y(N_35));
    SLE delayLine_seqshiftrff_11 (.D(delayLine_seqshiftsri_11), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_11));
    CFG2 #( .INIT(4'h9) )  \delayLine_CA3_1.N_134_i_i  (.A(tmp1[1]), 
        .B(tmp1[2]), .Y(N_134_i_i));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_4_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_4), .C(N_191), .D(N_182), .Y(
        delayLine_seqshiftsri_4));
    CFG4 #( .INIT(16'hF4F0) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_4 (.A(tmp1[3]), 
        .B(delayLine_seqshiftro_9), .C(N_145), .D(N_184), .Y(
        delayLine_seqshiftror_5));
    SLE delayLine_seqshiftrff_12 (.D(delayLine_seqshiftsri_12), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_12));
    CFG4 #( .INIT(16'h153F) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_13 (.A(
        delayLine_seqshiftro_14), .B(delayLine_seqshiftro_15), .C(
        N_201), .D(N_200), .Y(delayLine_seqshiftror_7_1));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_9_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_9), .C(N_201), .D(N_183), .Y(
        delayLine_seqshiftsri_9));
    SLE delayLine_seqshiftrff_6 (.D(delayLine_seqshiftsri_6), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_6));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_12_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_12), .C(N_191), .D(N_183), 
        .Y(delayLine_seqshiftsri_12));
    CFG3 #( .INIT(8'h7F) )  \delayLine_CF3_RNICH7I7[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_121));
    CFG4 #( .INIT(16'h4454) )  delayLine_seqshiftrff_7_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_7), .C(N_182), .D(N_121), .Y(
        delayLine_seqshiftsri_7));
    SLE delayLine_seqshiftrff_1 (.D(delayLine_seqshiftsri_1), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_1));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_11_RNO (.A(
        delayLine_seqshiftro_11), .B(reset_c), .C(N_184), .D(N_183), 
        .Y(delayLine_seqshiftsri_11));
    
endmodule


module enum_dly_line_18x192_4_11_1_0(
       data_pad_out,
       ddly_forw_2,
       reset_arst_i,
       clk,
       systola,
       N_179_i,
       reset_c
    );
input  [2:0] data_pad_out;
output [3:0] ddly_forw_2;
input  reset_arst_i;
input  clk;
input  systola;
input  N_179_i;
input  reset_c;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    enum_kitDelay_reg_4_11 \fabric_shift_reg.fabric_dly_0  (
        .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], 
        ddly_forw_2[0]}), .data_pad_out({data_pad_out[2], 
        data_pad_out[1], data_pad_out[0]}), .reset_c(reset_c), 
        .N_179_i(N_179_i), .systola(systola), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitCountS_5_10_1(
       count,
       N_199,
       N_179_i_1z,
       reset_c,
       init_rst,
       clk_lat_end,
       N_124,
       systola,
       clk,
       reset_arst_i
    );
output [4:0] count;
input  N_199;
output N_179_i_1z;
input  reset_c;
input  init_rst;
input  clk_lat_end;
input  N_124;
input  systola;
input  clk;
input  reset_arst_i;

    wire VCC, N_80_i, N_171_i_Z, GND, N_173, N_106_i, N_101_i, N_99_i, 
        N_118;
    
    SLE \count_Z[0]  (.D(N_173), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[0]));
    CFG3 #( .INIT(8'h82) )  \count_RNO[3]  (.A(N_199), .B(count[3]), 
        .C(N_118), .Y(N_101_i));
    CFG4 #( .INIT(16'h6A00) )  \count_RNO[2]  (.A(count[2]), .B(
        count[1]), .C(count[0]), .D(N_199), .Y(N_99_i));
    GND GND_Z (.Y(GND));
    SLE \count_Z[1]  (.D(N_80_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[1]));
    SLE \count_Z[3]  (.D(N_101_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[3]));
    SLE \count_Z[4]  (.D(N_106_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[4]));
    CFG3 #( .INIT(8'h60) )  \count_RNO[1]  (.A(count[1]), .B(count[0]), 
        .C(N_199), .Y(N_80_i));
    VCC VCC_Z (.Y(VCC));
    CFG2 #( .INIT(4'hE) )  N_179_i (.A(systola), .B(reset_c), .Y(
        N_179_i_1z));
    CFG4 #( .INIT(16'hC060) )  \count_RNO[4]  (.A(count[3]), .B(
        count[4]), .C(N_199), .D(N_118), .Y(N_106_i));
    CFG3 #( .INIT(8'h7F) )  count_n3_i_o2 (.A(count[2]), .B(count[1]), 
        .C(count[0]), .Y(N_118));
    CFG2 #( .INIT(4'h2) )  count_n0_i_a2 (.A(N_199), .B(count[0]), .Y(
        N_173));
    SLE \count_Z[2]  (.D(N_99_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[2]));
    CFG4 #( .INIT(16'hFFBF) )  N_171_i (.A(systola), .B(N_124), .C(
        clk_lat_end), .D(init_rst), .Y(N_171_i_Z));
    
endmodule


module enum_kitDelay_bit_reg_7_1(
       clk_lat_end,
       N_4_i,
       clk,
       reset_arst_i
    );
output clk_lat_end;
input  N_4_i;
input  clk;
input  reset_arst_i;

    wire [5:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[3]  (.D(delayLine_Z[2]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[3]));
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[5]  (.D(delayLine_Z[4]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[5]));
    SLE \delayLine[4]  (.D(delayLine_Z[3]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[4]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[2]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(N_4_i), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    SLE \delayLine[6]  (.D(delayLine_Z[5]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        clk_lat_end));
    
endmodule


module enum_kitDelay_bit_reg_3(
       delayLine_0,
       clk,
       reset_arst_i,
       datai_valid_minus_row
    );
input  delayLine_0;
input  clk;
input  reset_arst_i;
output datai_valid_minus_row;

    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_0), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datai_valid_minus_row));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_g5_latency_adv_11_2_3_2_2_6_1(
       delayLine,
       datai_valid_minus_row,
       N_179_i,
       N_4_i,
       reset_c,
       async_rstn,
       FIRO_VALID_c,
       systola,
       N_124,
       async_rstn_i,
       clk,
       reset_arst_i,
       init_rst_1z
    );
input  [2:0] delayLine;
output datai_valid_minus_row;
output N_179_i;
output N_4_i;
input  reset_c;
input  async_rstn;
output FIRO_VALID_c;
input  systola;
output N_124;
input  async_rstn_i;
input  clk;
input  reset_arst_i;
output init_rst_1z;

    wire [4:0] count;
    wire GND, un2_coef_on_outpi_Z, VCC, datao_validi_Z, N_78, 
        un1_coef_on_outpi_1_i_0_1_Z, clk_lat_end, N_199;
    
    CFG3 #( .INIT(8'h75) )  un2_coef_on_outpi (.A(async_rstn), .B(
        delayLine[2]), .C(delayLine[1]), .Y(un2_coef_on_outpi_Z));
    CFG4 #( .INIT(16'h0020) )  un1_coef_on_outpi_1_i_0_1 (.A(count[3]), 
        .B(count[2]), .C(count[1]), .D(count[0]), .Y(
        un1_coef_on_outpi_1_i_0_1_Z));
    CFG4 #( .INIT(16'h2F0F) )  un1_coef_on_outpi_1_i_0 (.A(systola), 
        .B(count[4]), .C(N_124), .D(un1_coef_on_outpi_1_i_0_1_Z), .Y(
        N_78));
    SLE init_rst (.D(async_rstn_i), .CLK(clk), .EN(un2_coef_on_outpi_Z)
        , .ALn(reset_arst_i), .ADn(GND), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(init_rst_1z));
    CFG3 #( .INIT(8'h40) )  rst_syst_lat_i_a2 (.A(init_rst_1z), .B(
        N_124), .C(clk_lat_end), .Y(N_199));
    GND GND_Z (.Y(GND));
    CFG2 #( .INIT(4'h8) )  datao_valid_pulse (.A(datao_validi_Z), .B(
        systola), .Y(FIRO_VALID_c));
    enum_kitCountS_5_10_1 syst_counter_0 (.count({count[4], count[3], 
        count[2], count[1], count[0]}), .N_199(N_199), .N_179_i_1z(
        N_179_i), .reset_c(reset_c), .init_rst(init_rst_1z), 
        .clk_lat_end(clk_lat_end), .N_124(N_124), .systola(systola), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    enum_kitDelay_bit_reg_7_1 shift_reg_1 (.clk_lat_end(clk_lat_end), 
        .N_4_i(N_4_i), .clk(clk), .reset_arst_i(reset_arst_i));
    SLE datao_validi (.D(N_124), .CLK(clk), .EN(N_78), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datao_validi_Z));
    CFG3 #( .INIT(8'h45) )  un1_coef_on_outpi_2_i_o2 (.A(reset_c), .B(
        delayLine[2]), .C(delayLine[1]), .Y(N_124));
    VCC VCC_Z (.Y(VCC));
    enum_kitDelay_bit_reg_3 async2sync_0 (.delayLine_0(delayLine[0]), 
        .clk(clk), .reset_arst_i(reset_arst_i), .datai_valid_minus_row(
        datai_valid_minus_row));
    CFG2 #( .INIT(4'h2) )  init_rst_RNITUKR7 (.A(N_124), .B(
        init_rst_1z), .Y(N_4_i));
    
endmodule


module enum_fir_adv_g5_work_corefir_pf_c0_rtl_0layer1_2(
       iup_mod_0,
       qup_mod,
       delayLine,
       COREFIR_PF_C0_0_FIRO,
       data_pad_out_0,
       init_rst,
       N_124,
       FIRO_VALID_c,
       N_4_i,
       N_179_i,
       systola,
       reset_c,
       reset_arst_i,
       clk,
       datai_valid_minus_row
    );
input  iup_mod_0;
input  [2:1] qup_mod;
output [2:1] delayLine;
output [47:0] COREFIR_PF_C0_0_FIRO;
output data_pad_out_0;
output init_rst;
output N_124;
output FIRO_VALID_c;
output N_4_i;
output N_179_i;
output systola;
input  reset_c;
input  reset_arst_i;
input  clk;
output datai_valid_minus_row;

    wire [47:0] p_w_2;
    wire [2:1] data_pad_out;
    wire [3:0] ddly_forw_2;
    wire [0:0] delayLine_Z;
    wire coef_on_minus_row, async_rstn, async_rstn_i, GND, VCC;
    
    enum_kitDelay_bit_reg_5 dvalid_pipe_3 (.delayLine({delayLine[2], 
        delayLine[1]}), .systola(systola), .datai_valid_minus_row(
        datai_valid_minus_row), .clk(clk), .reset_arst_i(reset_arst_i), 
        .async_rstn_i(async_rstn_i), .async_rstn(async_rstn));
    enum_pad_g5_3_2_2_0_0_12_0_4_1 enum_pad_g5_0 (.delayLine({
        delayLine[2], delayLine[1], delayLine_Z[0]}), .data_pad_out({
        data_pad_out[2], data_pad_out[1], data_pad_out_0}), .qup_mod({
        qup_mod[2], qup_mod[1]}), .iup_mod_0(iup_mod_0), 
        .coef_on_minus_row(coef_on_minus_row), .reset_arst_i(
        reset_arst_i), .clk(clk), .reset_c(reset_c));
    enum_row_g5_work_corefir_pf_c0_rtl_0layer1 
        \rows_higher.1.a_row_higher  (.p_w_2({p_w_2[47], p_w_2[46], 
        p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], 
        p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], 
        p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], 
        p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], 
        p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], 
        p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], 
        p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], 
        p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], 
        p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out_0}), .datai_valid_minus_row(datai_valid_minus_row)
        , .coef_on_minus_row(coef_on_minus_row), .clk(clk), 
        .reset_arst_i(reset_arst_i), .reset_c(reset_c));
    VCC VCC_Z (.Y(VCC));
    enum_row_g5_work_corefir_pf_c0_rtl_1layer1 
        \rows_higher.2.a_row_higher  (.p_w_2({p_w_2[47], p_w_2[46], 
        p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], 
        p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], 
        p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], 
        p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], 
        p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], 
        p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], 
        p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], 
        p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], 
        p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), 
        .datai_valid_minus_row(datai_valid_minus_row), 
        .coef_on_minus_row(coef_on_minus_row), .clk(clk), 
        .reset_arst_i(reset_arst_i), .reset_c(reset_c));
    enum_dly_line_18x192_4_11_1_0 \non_symm_bus.1.dly_link_22  (
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out_0}), .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], 
        ddly_forw_2[1], ddly_forw_2[0]}), .reset_arst_i(reset_arst_i), 
        .clk(clk), .systola(systola), .N_179_i(N_179_i), .reset_c(
        reset_c));
    enum_g5_latency_adv_11_2_3_2_2_6_1 latency_0 (.delayLine({
        delayLine[2], delayLine[1], delayLine_Z[0]}), 
        .datai_valid_minus_row(datai_valid_minus_row), .N_179_i(
        N_179_i), .N_4_i(N_4_i), .reset_c(reset_c), .async_rstn(
        async_rstn), .FIRO_VALID_c(FIRO_VALID_c), .systola(systola), 
        .N_124(N_124), .async_rstn_i(async_rstn_i), .clk(clk), 
        .reset_arst_i(reset_arst_i), .init_rst_1z(init_rst));
    GND GND_Z (.Y(GND));
    
endmodule


module 
        COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5_1_11_0_1_0_0_12_0_4_0_0_3_2_2_1_1_1_4_2(
        
       data_pad_out_0,
       COREFIR_PF_C0_0_FIRO,
       delayLine,
       qup_mod,
       iup_mod_0,
       datai_valid_minus_row,
       clk,
       reset_arst_i,
       reset_c,
       systola,
       N_179_i,
       N_4_i,
       FIRO_VALID_c,
       N_124,
       init_rst
    );
output data_pad_out_0;
output [47:0] COREFIR_PF_C0_0_FIRO;
output [2:1] delayLine;
input  [2:1] qup_mod;
input  iup_mod_0;
output datai_valid_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;
output systola;
output N_179_i;
output N_4_i;
output FIRO_VALID_c;
output N_124;
output init_rst;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    enum_fir_adv_g5_work_corefir_pf_c0_rtl_0layer1_2 
        \adv_enum.adv_enum_0  (.iup_mod_0(iup_mod_0), .qup_mod({
        qup_mod[2], qup_mod[1]}), .delayLine({delayLine[2], 
        delayLine[1]}), .COREFIR_PF_C0_0_FIRO({
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[46], 
        COREFIR_PF_C0_0_FIRO[45], COREFIR_PF_C0_0_FIRO[44], 
        COREFIR_PF_C0_0_FIRO[43], COREFIR_PF_C0_0_FIRO[42], 
        COREFIR_PF_C0_0_FIRO[41], COREFIR_PF_C0_0_FIRO[40], 
        COREFIR_PF_C0_0_FIRO[39], COREFIR_PF_C0_0_FIRO[38], 
        COREFIR_PF_C0_0_FIRO[37], COREFIR_PF_C0_0_FIRO[36], 
        COREFIR_PF_C0_0_FIRO[35], COREFIR_PF_C0_0_FIRO[34], 
        COREFIR_PF_C0_0_FIRO[33], COREFIR_PF_C0_0_FIRO[32], 
        COREFIR_PF_C0_0_FIRO[31], COREFIR_PF_C0_0_FIRO[30], 
        COREFIR_PF_C0_0_FIRO[29], COREFIR_PF_C0_0_FIRO[28], 
        COREFIR_PF_C0_0_FIRO[27], COREFIR_PF_C0_0_FIRO[26], 
        COREFIR_PF_C0_0_FIRO[25], COREFIR_PF_C0_0_FIRO[24], 
        COREFIR_PF_C0_0_FIRO[23], COREFIR_PF_C0_0_FIRO[22], 
        COREFIR_PF_C0_0_FIRO[21], COREFIR_PF_C0_0_FIRO[20], 
        COREFIR_PF_C0_0_FIRO[19], COREFIR_PF_C0_0_FIRO[18], 
        COREFIR_PF_C0_0_FIRO[17], COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}), 
        .data_pad_out_0(data_pad_out_0), .init_rst(init_rst), .N_124(
        N_124), .FIRO_VALID_c(FIRO_VALID_c), .N_4_i(N_4_i), .N_179_i(
        N_179_i), .systola(systola), .reset_c(reset_c), .reset_arst_i(
        reset_arst_i), .clk(clk), .datai_valid_minus_row(
        datai_valid_minus_row));
    
endmodule


module 
        COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF_work_corefir_pf_c0_rtl_0layer1(
        
       iup_mod_0,
       qup_mod,
       delayLine,
       COREFIR_PF_C0_0_FIRO,
       data_pad_out_0,
       init_rst,
       N_124,
       FIRO_VALID_c,
       N_4_i,
       N_179_i,
       systola,
       reset_c,
       reset_arst_i,
       clk,
       datai_valid_minus_row
    );
input  iup_mod_0;
input  [2:1] qup_mod;
output [2:1] delayLine;
output [47:0] COREFIR_PF_C0_0_FIRO;
output data_pad_out_0;
output init_rst;
output N_124;
output FIRO_VALID_c;
output N_4_i;
output N_179_i;
output systola;
input  reset_c;
input  reset_arst_i;
input  clk;
output datai_valid_minus_row;

    wire GND, VCC;
    
    
        COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5_1_11_0_1_0_0_12_0_4_0_0_3_2_2_1_1_1_4_2 
        \enum_g5.enum_fir_g5  (.data_pad_out_0(data_pad_out_0), 
        .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .delayLine({delayLine[2], 
        delayLine[1]}), .qup_mod({qup_mod[2], qup_mod[1]}), .iup_mod_0(
        iup_mod_0), .datai_valid_minus_row(datai_valid_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i), .reset_c(reset_c), 
        .systola(systola), .N_179_i(N_179_i), .N_4_i(N_4_i), 
        .FIRO_VALID_c(FIRO_VALID_c), .N_124(N_124), .init_rst(init_rst)
        );
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module COREFIR_PF_C0(
       data_pad_out_0,
       COREFIR_PF_C0_0_FIRO,
       delayLine,
       qup_mod,
       iup_mod_0,
       datai_valid_minus_row,
       clk,
       reset_arst_i,
       reset_c,
       systola,
       N_179_i,
       N_4_i,
       FIRO_VALID_c,
       N_124,
       init_rst
    );
output data_pad_out_0;
output [47:0] COREFIR_PF_C0_0_FIRO;
output [2:1] delayLine;
input  [2:1] qup_mod;
input  iup_mod_0;
output datai_valid_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;
output systola;
output N_179_i;
output N_4_i;
output FIRO_VALID_c;
output N_124;
output init_rst;

    wire GND, VCC;
    
    
        COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF_work_corefir_pf_c0_rtl_0layer1 
        COREFIR_PF_C0_0 (.iup_mod_0(iup_mod_0), .qup_mod({qup_mod[2], 
        qup_mod[1]}), .delayLine({delayLine[2], delayLine[1]}), 
        .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .data_pad_out_0(data_pad_out_0), 
        .init_rst(init_rst), .N_124(N_124), .FIRO_VALID_c(FIRO_VALID_c)
        , .N_4_i(N_4_i), .N_179_i(N_179_i), .systola(systola), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(clk), 
        .datai_valid_minus_row(datai_valid_minus_row));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_bit_reg_1s_0(
       yn_u,
       N_561,
       clk,
       roundBit_tick
    );
input  [2:0] yn_u;
input  N_561;
input  clk;
output roundBit_tick;

    wire VCC, N_559_i, GND;
    
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h0C08) )  \genblk1.delayLine[0]_RNO  (.A(yn_u[0]), 
        .B(yn_u[1]), .C(N_561), .D(yn_u[2]), .Y(N_559_i));
    SLE \genblk1.delayLine[0]  (.D(N_559_i), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        roundBit_tick));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_reg_16_1s_0_2(
       outp_w,
       yn_rnd,
       clk
    );
input  [15:0] outp_w;
output [15:0] yn_rnd;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(outp_w[11]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[11]));
    SLE \genblk1.delayLine[0][1]  (.D(outp_w[1]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[1]));
    SLE \genblk1.delayLine[0][6]  (.D(outp_w[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[6]));
    SLE \genblk1.delayLine[0][7]  (.D(outp_w[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(outp_w[0]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[0]));
    SLE \genblk1.delayLine[0][3]  (.D(outp_w[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[3]));
    SLE \genblk1.delayLine[0][15]  (.D(outp_w[15]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[15]));
    SLE \genblk1.delayLine[0][8]  (.D(outp_w[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[8]));
    SLE \genblk1.delayLine[0][4]  (.D(outp_w[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[4]));
    SLE \genblk1.delayLine[0][10]  (.D(outp_w[10]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[10]));
    SLE \genblk1.delayLine[0][13]  (.D(outp_w[13]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[13]));
    SLE \genblk1.delayLine[0][2]  (.D(outp_w[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[2]));
    SLE \genblk1.delayLine[0][12]  (.D(outp_w[12]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[12]));
    SLE \genblk1.delayLine[0][14]  (.D(outp_w[14]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[14]));
    SLE \genblk1.delayLine[0][9]  (.D(outp_w[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[9]));
    SLE \genblk1.delayLine[0][5]  (.D(outp_w[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        yn_rnd[5]));
    
endmodule


module cordic_kitDelay_reg_16_1s_0_1(
       yn_u,
       inp_tick,
       clk
    );
input  [17:2] yn_u;
output [15:0] inp_tick;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(yn_u[13]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[11]));
    SLE \genblk1.delayLine[0][1]  (.D(yn_u[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[1]));
    SLE \genblk1.delayLine[0][6]  (.D(yn_u[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[6]));
    SLE \genblk1.delayLine[0][7]  (.D(yn_u[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(yn_u[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[0]));
    SLE \genblk1.delayLine[0][3]  (.D(yn_u[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[3]));
    SLE \genblk1.delayLine[0][15]  (.D(yn_u[17]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[15]));
    SLE \genblk1.delayLine[0][8]  (.D(yn_u[10]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[8]));
    SLE \genblk1.delayLine[0][4]  (.D(yn_u[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[4]));
    SLE \genblk1.delayLine[0][10]  (.D(yn_u[12]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[10]));
    SLE \genblk1.delayLine[0][13]  (.D(yn_u[15]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[13]));
    SLE \genblk1.delayLine[0][2]  (.D(yn_u[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[2]));
    SLE \genblk1.delayLine[0][12]  (.D(yn_u[14]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[12]));
    SLE \genblk1.delayLine[0][14]  (.D(yn_u[16]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[14]));
    SLE \genblk1.delayLine[0][9]  (.D(yn_u[11]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[9]));
    SLE \genblk1.delayLine[0][5]  (.D(yn_u[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[5]));
    
endmodule


module cordic_kitRndEven_18_16_0(
       yn_rnd,
       yn_u,
       clk
    );
output [15:0] yn_rnd;
input  [17:0] yn_u;
input  clk;

    wire [15:0] outp_w;
    wire [15:0] inp_tick;
    wire outp_w_s_0_708_FCO, outp_w_s_0_708_S, outp_w_s_0_708_Y, 
        roundBit_tick, GND, VCC, outp_w_cry_0_Z, outp_w_cry_0_Y, 
        outp_w_cry_1_Z, outp_w_cry_1_Y, outp_w_cry_2_Z, outp_w_cry_2_Y, 
        outp_w_cry_3_Z, outp_w_cry_3_Y, outp_w_cry_4_Z, outp_w_cry_4_Y, 
        outp_w_cry_5_Z, outp_w_cry_5_Y, outp_w_cry_6_Z, outp_w_cry_6_Y, 
        outp_w_cry_7_Z, outp_w_cry_7_Y, outp_w_cry_8_Z, outp_w_cry_8_Y, 
        outp_w_cry_9_Z, outp_w_cry_9_Y, outp_w_cry_10_Z, 
        outp_w_cry_10_Y, outp_w_cry_11_Z, outp_w_cry_11_Y, 
        outp_w_cry_12_Z, outp_w_cry_12_Y, outp_w_cry_13_Z, 
        outp_w_cry_13_Y, outp_w_s_15_FCO, outp_w_s_15_Y, 
        outp_w_cry_14_Z, outp_w_cry_14_Y, roundBit_i_a4_0_11_Z, 
        roundBit_i_a4_0_10_Z, roundBit_i_a4_0_9_Z, roundBit_i_a4_0_8_Z, 
        N_561;
    
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_11 (.A(VCC), .B(
        inp_tick[11]), .C(GND), .D(GND), .FCI(outp_w_cry_10_Z), .S(
        outp_w[11]), .Y(outp_w_cry_11_Y), .FCO(outp_w_cry_11_Z));
    GND GND_Z (.Y(GND));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_0 (.A(VCC), .B(inp_tick[0]), 
        .C(GND), .D(GND), .FCI(outp_w_s_0_708_FCO), .S(outp_w[0]), .Y(
        outp_w_cry_0_Y), .FCO(outp_w_cry_0_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_8 (.A(VCC), .B(inp_tick[8]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_7_Z), .S(outp_w[8]), .Y(
        outp_w_cry_8_Y), .FCO(outp_w_cry_8_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_6 (.A(VCC), .B(inp_tick[6]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_5_Z), .S(outp_w[6]), .Y(
        outp_w_cry_6_Y), .FCO(outp_w_cry_6_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_5 (.A(VCC), .B(inp_tick[5]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_4_Z), .S(outp_w[5]), .Y(
        outp_w_cry_5_Y), .FCO(outp_w_cry_5_Z));
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_9 (.A(yn_u[13]), .B(
        yn_u[12]), .C(yn_u[11]), .D(yn_u[10]), .Y(roundBit_i_a4_0_9_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_9 (.A(VCC), .B(inp_tick[9]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_8_Z), .S(outp_w[9]), .Y(
        outp_w_cry_9_Y), .FCO(outp_w_cry_9_Z));
    CFG4 #( .INIT(16'h4000) )  roundBit_i_a4_0_8 (.A(yn_u[17]), .B(
        yn_u[9]), .C(yn_u[4]), .D(yn_u[3]), .Y(roundBit_i_a4_0_8_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_s_0_708 (.A(VCC), .B(
        roundBit_tick), .C(GND), .D(GND), .FCI(VCC), .S(
        outp_w_s_0_708_S), .Y(outp_w_s_0_708_Y), .FCO(
        outp_w_s_0_708_FCO));
    cordic_kitDelay_bit_reg_1s_0 roundBit_pipe_0 (.yn_u({yn_u[2], 
        yn_u[1], yn_u[0]}), .N_561(N_561), .clk(clk), .roundBit_tick(
        roundBit_tick));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_11 (.A(yn_u[8]), .B(
        yn_u[7]), .C(yn_u[6]), .D(yn_u[2]), .Y(roundBit_i_a4_0_11_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_3 (.A(VCC), .B(inp_tick[3]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_2_Z), .S(outp_w[3]), .Y(
        outp_w_cry_3_Y), .FCO(outp_w_cry_3_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_14 (.A(VCC), .B(
        inp_tick[14]), .C(GND), .D(GND), .FCI(outp_w_cry_13_Z), .S(
        outp_w[14]), .Y(outp_w_cry_14_Y), .FCO(outp_w_cry_14_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_2 (.A(VCC), .B(inp_tick[2]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_1_Z), .S(outp_w[2]), .Y(
        outp_w_cry_2_Y), .FCO(outp_w_cry_2_Z));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0 (.A(roundBit_i_a4_0_8_Z)
        , .B(roundBit_i_a4_0_11_Z), .C(roundBit_i_a4_0_10_Z), .D(
        roundBit_i_a4_0_9_Z), .Y(N_561));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_13 (.A(VCC), .B(
        inp_tick[13]), .C(GND), .D(GND), .FCI(outp_w_cry_12_Z), .S(
        outp_w[13]), .Y(outp_w_cry_13_Y), .FCO(outp_w_cry_13_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_10 (.A(VCC), .B(
        inp_tick[10]), .C(GND), .D(GND), .FCI(outp_w_cry_9_Z), .S(
        outp_w[10]), .Y(outp_w_cry_10_Y), .FCO(outp_w_cry_10_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_12 (.A(VCC), .B(
        inp_tick[12]), .C(GND), .D(GND), .FCI(outp_w_cry_11_Z), .S(
        outp_w[12]), .Y(outp_w_cry_12_Y), .FCO(outp_w_cry_12_Z));
    cordic_kitDelay_reg_16_1s_0_2 result_pipe_0 (.outp_w({outp_w[15], 
        outp_w[14], outp_w[13], outp_w[12], outp_w[11], outp_w[10], 
        outp_w[9], outp_w[8], outp_w[7], outp_w[6], outp_w[5], 
        outp_w[4], outp_w[3], outp_w[2], outp_w[1], outp_w[0]}), 
        .yn_rnd({yn_rnd[15], yn_rnd[14], yn_rnd[13], yn_rnd[12], 
        yn_rnd[11], yn_rnd[10], yn_rnd[9], yn_rnd[8], yn_rnd[7], 
        yn_rnd[6], yn_rnd[5], yn_rnd[4], yn_rnd[3], yn_rnd[2], 
        yn_rnd[1], yn_rnd[0]}), .clk(clk));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_4 (.A(VCC), .B(inp_tick[4]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_3_Z), .S(outp_w[4]), .Y(
        outp_w_cry_4_Y), .FCO(outp_w_cry_4_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_1 (.A(VCC), .B(inp_tick[1]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_0_Z), .S(outp_w[1]), .Y(
        outp_w_cry_1_Y), .FCO(outp_w_cry_1_Z));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_10 (.A(yn_u[16]), .B(
        yn_u[15]), .C(yn_u[14]), .D(yn_u[5]), .Y(roundBit_i_a4_0_10_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_7 (.A(VCC), .B(inp_tick[7]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_6_Z), .S(outp_w[7]), .Y(
        outp_w_cry_7_Y), .FCO(outp_w_cry_7_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_s_15 (.A(VCC), .B(inp_tick[15]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_14_Z), .S(outp_w[15]), .Y(
        outp_w_s_15_Y), .FCO(outp_w_s_15_FCO));
    cordic_kitDelay_reg_16_1s_0_1 inp_pipe_0 (.yn_u({yn_u[17], 
        yn_u[16], yn_u[15], yn_u[14], yn_u[13], yn_u[12], yn_u[11], 
        yn_u[10], yn_u[9], yn_u[8], yn_u[7], yn_u[6], yn_u[5], yn_u[4], 
        yn_u[3], yn_u[2]}), .inp_tick({inp_tick[15], inp_tick[14], 
        inp_tick[13], inp_tick[12], inp_tick[11], inp_tick[10], 
        inp_tick[9], inp_tick[8], inp_tick[7], inp_tick[6], 
        inp_tick[5], inp_tick[4], inp_tick[3], inp_tick[2], 
        inp_tick[1], inp_tick[0]}), .clk(clk));
    
endmodule


module cordic_kitRoundTop_18_16_1s_0s_1(
       yn_u,
       yn_rnd,
       clk
    );
input  [17:0] yn_u;
output [15:0] yn_rnd;
input  clk;

    wire GND, VCC;
    
    cordic_kitRndEven_18_16_0 \converg_round.kitRndEven_0  (.yn_rnd({
        yn_rnd[15], yn_rnd[14], yn_rnd[13], yn_rnd[12], yn_rnd[11], 
        yn_rnd[10], yn_rnd[9], yn_rnd[8], yn_rnd[7], yn_rnd[6], 
        yn_rnd[5], yn_rnd[4], yn_rnd[3], yn_rnd[2], yn_rnd[1], 
        yn_rnd[0]}), .yn_u({yn_u[17], yn_u[16], yn_u[15], yn_u[14], 
        yn_u[13], yn_u[12], yn_u[11], yn_u[10], yn_u[9], yn_u[8], 
        yn_u[7], yn_u[6], yn_u[5], yn_u[4], yn_u[3], yn_u[2], yn_u[1], 
        yn_u[0]}), .clk(clk));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_reg_16_1s_1(
       y_w,
       CORECORDIC_C0_0_DOUT_Y,
       clk
    );
input  [15:0] y_w;
output [15:0] CORECORDIC_C0_0_DOUT_Y;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(y_w[11]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[11]));
    SLE \genblk1.delayLine[0][1]  (.D(y_w[1]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[1]));
    SLE \genblk1.delayLine[0][6]  (.D(y_w[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[6]));
    SLE \genblk1.delayLine[0][7]  (.D(y_w[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(y_w[0]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[0]));
    SLE \genblk1.delayLine[0][3]  (.D(y_w[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[3]));
    SLE \genblk1.delayLine[0][15]  (.D(y_w[15]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[15]));
    SLE \genblk1.delayLine[0][8]  (.D(y_w[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[8]));
    SLE \genblk1.delayLine[0][4]  (.D(y_w[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[4]));
    SLE \genblk1.delayLine[0][10]  (.D(y_w[10]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[10]));
    SLE \genblk1.delayLine[0][13]  (.D(y_w[13]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[13]));
    SLE \genblk1.delayLine[0][2]  (.D(y_w[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[2]));
    SLE \genblk1.delayLine[0][12]  (.D(y_w[12]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[12]));
    SLE \genblk1.delayLine[0][14]  (.D(y_w[14]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[14]));
    SLE \genblk1.delayLine[0][9]  (.D(y_w[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[9]));
    SLE \genblk1.delayLine[0][5]  (.D(y_w[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_Y[5]));
    
endmodule


module cordic_kitDelay_reg_16_1s(
       x_w,
       CORECORDIC_C0_0_DOUT_X,
       clk
    );
input  [15:0] x_w;
output [15:0] CORECORDIC_C0_0_DOUT_X;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(x_w[11]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[11]));
    SLE \genblk1.delayLine[0][1]  (.D(x_w[1]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[1]));
    SLE \genblk1.delayLine[0][6]  (.D(x_w[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[6]));
    SLE \genblk1.delayLine[0][7]  (.D(x_w[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(x_w[0]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[0]));
    SLE \genblk1.delayLine[0][3]  (.D(x_w[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[3]));
    SLE \genblk1.delayLine[0][15]  (.D(x_w[15]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[15]));
    SLE \genblk1.delayLine[0][8]  (.D(x_w[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[8]));
    SLE \genblk1.delayLine[0][4]  (.D(x_w[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[4]));
    SLE \genblk1.delayLine[0][10]  (.D(x_w[10]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[10]));
    SLE \genblk1.delayLine[0][13]  (.D(x_w[13]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[13]));
    SLE \genblk1.delayLine[0][2]  (.D(x_w[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[2]));
    SLE \genblk1.delayLine[0][12]  (.D(x_w[12]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[12]));
    SLE \genblk1.delayLine[0][14]  (.D(x_w[14]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[14]));
    SLE \genblk1.delayLine[0][9]  (.D(x_w[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[9]));
    SLE \genblk1.delayLine[0][5]  (.D(x_w[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        CORECORDIC_C0_0_DOUT_X[5]));
    
endmodule


module cordic_coarse_post_rotator_16_0_1s(
       CORECORDIC_C0_0_DOUT_Y,
       CORECORDIC_C0_0_DOUT_X,
       coarse_flag2post,
       xn_rnd,
       yn_rnd,
       clk
    );
output [15:0] CORECORDIC_C0_0_DOUT_Y;
output [15:0] CORECORDIC_C0_0_DOUT_X;
input  [1:0] coarse_flag2post;
input  [15:0] xn_rnd;
input  [15:0] yn_rnd;
input  clk;

    wire [15:15] x_w_RNO_FCO;
    wire [15:15] x_w_RNO_Y;
    wire [15:15] y_w_RNO_FCO;
    wire [15:15] y_w_RNO_Y;
    wire [15:0] x_w_Z;
    wire [15:0] y_w_Z;
    wire x_w_0_cry_0_cy_Z, x_w_0_cry_0_cy_S, x_w_0_cry_0_cy_Y, GND, 
        VCC, x_w_0_cry_0_Z, N_372, x_w_0_cry_0_Y, x_w_0_cry_1_Z, N_373, 
        x_w_0_cry_1_Y, x_w_0_cry_2_Z, N_374, x_w_0_cry_2_Y, 
        x_w_0_cry_3_Z, N_375, x_w_0_cry_3_Y, x_w_0_cry_4_Z, N_376, 
        x_w_0_cry_4_Y, x_w_0_cry_5_Z, N_377, x_w_0_cry_5_Y, 
        x_w_0_cry_6_Z, N_378, x_w_0_cry_6_Y, x_w_0_cry_7_Z, N_379, 
        x_w_0_cry_7_Y, x_w_0_cry_8_Z, N_380, x_w_0_cry_8_Y, 
        x_w_0_cry_9_Z, N_381, x_w_0_cry_9_Y, x_w_0_cry_10_Z, N_382, 
        x_w_0_cry_10_Y, x_w_0_cry_11_Z, N_383, x_w_0_cry_11_Y, 
        x_w_0_cry_12_Z, N_384, x_w_0_cry_12_Y, x_w_0_cry_13_Z, N_385, 
        x_w_0_cry_13_Y, N_387, x_w_0_cry_14_Z, N_386, x_w_0_cry_14_Y, 
        y_w_0_s_0_692_FCO, y_w_0_s_0_692_S, y_w_0_s_0_692_Y, 
        y_w_0_cry_0_Z, N_335, y_w_0_cry_0_Y, y_w_0_cry_1_Z, N_336, 
        y_w_0_cry_1_Y, y_w_0_cry_2_Z, N_337, y_w_0_cry_2_Y, 
        y_w_0_cry_3_Z, N_338, y_w_0_cry_3_Y, y_w_0_cry_4_Z, N_339, 
        y_w_0_cry_4_Y, y_w_0_cry_5_Z, N_340, y_w_0_cry_5_Y, 
        y_w_0_cry_6_Z, N_341, y_w_0_cry_6_Y, y_w_0_cry_7_Z, N_342, 
        y_w_0_cry_7_Y, y_w_0_cry_8_Z, N_343, y_w_0_cry_8_Y, 
        y_w_0_cry_9_Z, N_344, y_w_0_cry_9_Y, y_w_0_cry_10_Z, N_345, 
        y_w_0_cry_10_Y, y_w_0_cry_11_Z, N_346, y_w_0_cry_11_Y, 
        y_w_0_cry_12_Z, N_347, y_w_0_cry_12_Y, y_w_0_cry_13_Z, N_348, 
        y_w_0_cry_13_Y, N_350, y_w_0_cry_14_Z, N_349, y_w_0_cry_14_Y;
    
    CFG4 #( .INIT(16'hBE82) )  \y_w[5]  (.A(yn_rnd[5]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_340), .Y(
        y_w_Z[5]));
    ARI1 #( .INIT(20'h45500) )  x_w_0_cry_0_cy (.A(VCC), .B(
        coarse_flag2post[1]), .C(GND), .D(GND), .FCI(VCC), .S(
        x_w_0_cry_0_cy_S), .Y(x_w_0_cry_0_cy_Y), .FCO(x_w_0_cry_0_cy_Z)
        );
    cordic_kitDelay_reg_16_1s_1 \coarse_regs.preCoarseReg_y  (.y_w({
        y_w_Z[15], y_w_Z[14], y_w_Z[13], y_w_Z[12], y_w_Z[11], 
        y_w_Z[10], y_w_Z[9], y_w_Z[8], y_w_Z[7], y_w_Z[6], y_w_Z[5], 
        y_w_Z[4], y_w_Z[3], y_w_Z[2], y_w_Z[1], y_w_Z[0]}), 
        .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .clk(clk));
    CFG4 #( .INIT(16'hBE82) )  \x_w[5]  (.A(xn_rnd[5]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_377), .Y(
        x_w_Z[5]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[6]  (.A(yn_rnd[6]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_341), .Y(
        y_w_Z[6]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_4 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[4]), .D(GND), .FCI(x_w_0_cry_3_Z), 
        .S(N_376), .Y(x_w_0_cry_4_Y), .FCO(x_w_0_cry_4_Z));
    ARI1 #( .INIT(20'h49900) )  x_w_0_cry_0 (.A(VCC), .B(yn_rnd[0]), 
        .C(coarse_flag2post[1]), .D(GND), .FCI(x_w_0_cry_0_cy_Z), .S(
        N_372), .Y(x_w_0_cry_0_Y), .FCO(x_w_0_cry_0_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[15]  (.A(xn_rnd[15]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_387), .Y(
        x_w_Z[15]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_14 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[14]), .D(GND), .FCI(
        y_w_0_cry_13_Z), .S(N_349), .Y(y_w_0_cry_14_Y), .FCO(
        y_w_0_cry_14_Z));
    ARI1 #( .INIT(20'h4AA00) )  y_w_0_s_0_692 (.A(VCC), .B(
        coarse_flag2post[1]), .C(GND), .D(GND), .FCI(VCC), .S(
        y_w_0_s_0_692_S), .Y(y_w_0_s_0_692_Y), .FCO(y_w_0_s_0_692_FCO));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_9 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[9]), .D(GND), .FCI(
        y_w_0_cry_8_Z), .S(N_344), .Y(y_w_0_cry_9_Y), .FCO(
        y_w_0_cry_9_Z));
    ARI1 #( .INIT(20'h46600) )  \y_w_RNO[15]  (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[15]), .D(GND), .FCI(
        y_w_0_cry_14_Z), .S(N_350), .Y(y_w_RNO_Y[15]), .FCO(
        y_w_RNO_FCO[15]));
    CFG4 #( .INIT(16'hBE82) )  \x_w[0]  (.A(xn_rnd[0]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_372), .Y(
        x_w_Z[0]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[4]  (.A(yn_rnd[4]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_339), .Y(
        y_w_Z[4]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_8 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[8]), .D(GND), .FCI(x_w_0_cry_7_Z), 
        .S(N_380), .Y(x_w_0_cry_8_Y), .FCO(x_w_0_cry_8_Z));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_14 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[14]), .D(GND), .FCI(
        x_w_0_cry_13_Z), .S(N_386), .Y(x_w_0_cry_14_Y), .FCO(
        x_w_0_cry_14_Z));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_3 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[3]), .D(GND), .FCI(
        y_w_0_cry_2_Z), .S(N_338), .Y(y_w_0_cry_3_Y), .FCO(
        y_w_0_cry_3_Z));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_9 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[9]), .D(GND), .FCI(x_w_0_cry_8_Z), 
        .S(N_381), .Y(x_w_0_cry_9_Y), .FCO(x_w_0_cry_9_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[7]  (.A(xn_rnd[7]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_379), .Y(
        x_w_Z[7]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[14]  (.A(yn_rnd[14]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_349), .Y(
        y_w_Z[14]));
    cordic_kitDelay_reg_16_1s \coarse_regs.preCoarseReg_x  (.x_w({
        x_w_Z[15], x_w_Z[14], x_w_Z[13], x_w_Z[12], x_w_Z[11], 
        x_w_Z[10], x_w_Z[9], x_w_Z[8], x_w_Z[7], x_w_Z[6], x_w_Z[5], 
        x_w_Z[4], x_w_Z[3], x_w_Z[2], x_w_Z[1], x_w_Z[0]}), 
        .CORECORDIC_C0_0_DOUT_X({CORECORDIC_C0_0_DOUT_X[15], 
        CORECORDIC_C0_0_DOUT_X[14], CORECORDIC_C0_0_DOUT_X[13], 
        CORECORDIC_C0_0_DOUT_X[12], CORECORDIC_C0_0_DOUT_X[11], 
        CORECORDIC_C0_0_DOUT_X[10], CORECORDIC_C0_0_DOUT_X[9], 
        CORECORDIC_C0_0_DOUT_X[8], CORECORDIC_C0_0_DOUT_X[7], 
        CORECORDIC_C0_0_DOUT_X[6], CORECORDIC_C0_0_DOUT_X[5], 
        CORECORDIC_C0_0_DOUT_X[4], CORECORDIC_C0_0_DOUT_X[3], 
        CORECORDIC_C0_0_DOUT_X[2], CORECORDIC_C0_0_DOUT_X[1], 
        CORECORDIC_C0_0_DOUT_X[0]}), .clk(clk));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_8 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[8]), .D(GND), .FCI(
        y_w_0_cry_7_Z), .S(N_343), .Y(y_w_0_cry_8_Y), .FCO(
        y_w_0_cry_8_Z));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_6 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[6]), .D(GND), .FCI(
        y_w_0_cry_5_Z), .S(N_341), .Y(y_w_0_cry_6_Y), .FCO(
        y_w_0_cry_6_Z));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_11 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[11]), .D(GND), .FCI(
        y_w_0_cry_10_Z), .S(N_346), .Y(y_w_0_cry_11_Y), .FCO(
        y_w_0_cry_11_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[14]  (.A(xn_rnd[14]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_386), .Y(
        x_w_Z[14]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_12 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[12]), .D(GND), .FCI(
        y_w_0_cry_11_Z), .S(N_347), .Y(y_w_0_cry_12_Y), .FCO(
        y_w_0_cry_12_Z));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_7 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[7]), .D(GND), .FCI(
        y_w_0_cry_6_Z), .S(N_342), .Y(y_w_0_cry_7_Y), .FCO(
        y_w_0_cry_7_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[6]  (.A(xn_rnd[6]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_378), .Y(
        x_w_Z[6]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[11]  (.A(yn_rnd[11]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_346), .Y(
        y_w_Z[11]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_5 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[5]), .D(GND), .FCI(
        y_w_0_cry_4_Z), .S(N_340), .Y(y_w_0_cry_5_Y), .FCO(
        y_w_0_cry_5_Z));
    CFG4 #( .INIT(16'hBE82) )  \y_w[10]  (.A(yn_rnd[10]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_345), .Y(
        y_w_Z[10]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_3 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[3]), .D(GND), .FCI(x_w_0_cry_2_Z), 
        .S(N_375), .Y(x_w_0_cry_3_Y), .FCO(x_w_0_cry_3_Z));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_11 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[11]), .D(GND), .FCI(
        x_w_0_cry_10_Z), .S(N_383), .Y(x_w_0_cry_11_Y), .FCO(
        x_w_0_cry_11_Z));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_13 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[13]), .D(GND), .FCI(
        y_w_0_cry_12_Z), .S(N_348), .Y(y_w_0_cry_13_Y), .FCO(
        y_w_0_cry_13_Z));
    CFG4 #( .INIT(16'hBE82) )  \y_w[0]  (.A(yn_rnd[0]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_335), .Y(
        y_w_Z[0]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_12 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[12]), .D(GND), .FCI(
        x_w_0_cry_11_Z), .S(N_384), .Y(x_w_0_cry_12_Y), .FCO(
        x_w_0_cry_12_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[9]  (.A(xn_rnd[9]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_381), .Y(
        x_w_Z[9]));
    CFG4 #( .INIT(16'hBE82) )  \x_w[4]  (.A(xn_rnd[4]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_376), .Y(
        x_w_Z[4]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_5 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[5]), .D(GND), .FCI(x_w_0_cry_4_Z), 
        .S(N_377), .Y(x_w_0_cry_5_Y), .FCO(x_w_0_cry_5_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[11]  (.A(xn_rnd[11]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_383), .Y(
        x_w_Z[11]));
    CFG4 #( .INIT(16'hBE82) )  \x_w[10]  (.A(xn_rnd[10]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_382), .Y(
        x_w_Z[10]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_13 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[13]), .D(GND), .FCI(
        x_w_0_cry_12_Z), .S(N_385), .Y(x_w_0_cry_13_Y), .FCO(
        x_w_0_cry_13_Z));
    CFG4 #( .INIT(16'hBE82) )  \y_w[12]  (.A(yn_rnd[12]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_347), .Y(
        y_w_Z[12]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[8]  (.A(yn_rnd[8]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_343), .Y(
        y_w_Z[8]));
    CFG4 #( .INIT(16'hBE82) )  \x_w[3]  (.A(xn_rnd[3]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_375), .Y(
        x_w_Z[3]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_2 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[2]), .D(GND), .FCI(x_w_0_cry_1_Z), 
        .S(N_374), .Y(x_w_0_cry_2_Y), .FCO(x_w_0_cry_2_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[2]  (.A(xn_rnd[2]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_374), .Y(
        x_w_Z[2]));
    GND GND_Z (.Y(GND));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_2 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[2]), .D(GND), .FCI(
        y_w_0_cry_1_Z), .S(N_337), .Y(y_w_0_cry_2_Y), .FCO(
        y_w_0_cry_2_Z));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_6 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[6]), .D(GND), .FCI(x_w_0_cry_5_Z), 
        .S(N_378), .Y(x_w_0_cry_6_Y), .FCO(x_w_0_cry_6_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[12]  (.A(xn_rnd[12]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_384), .Y(
        x_w_Z[12]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_0 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[0]), .D(GND), .FCI(
        y_w_0_s_0_692_FCO), .S(N_335), .Y(y_w_0_cry_0_Y), .FCO(
        y_w_0_cry_0_Z));
    CFG4 #( .INIT(16'hBE82) )  \y_w[13]  (.A(yn_rnd[13]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_348), .Y(
        y_w_Z[13]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_10 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[10]), .D(GND), .FCI(
        y_w_0_cry_9_Z), .S(N_345), .Y(y_w_0_cry_10_Y), .FCO(
        y_w_0_cry_10_Z));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_7 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[7]), .D(GND), .FCI(x_w_0_cry_6_Z), 
        .S(N_379), .Y(x_w_0_cry_7_Y), .FCO(x_w_0_cry_7_Z));
    CFG4 #( .INIT(16'hBE82) )  \y_w[1]  (.A(yn_rnd[1]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_336), .Y(
        y_w_Z[1]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[9]  (.A(yn_rnd[9]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_344), .Y(
        y_w_Z[9]));
    ARI1 #( .INIT(20'h46600) )  \x_w_RNO[15]  (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[15]), .D(GND), .FCI(
        x_w_0_cry_14_Z), .S(N_387), .Y(x_w_RNO_Y[15]), .FCO(
        x_w_RNO_FCO[15]));
    CFG4 #( .INIT(16'hBE82) )  \x_w[1]  (.A(xn_rnd[1]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_373), .Y(
        x_w_Z[1]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_4 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[4]), .D(GND), .FCI(
        y_w_0_cry_3_Z), .S(N_339), .Y(y_w_0_cry_4_Y), .FCO(
        y_w_0_cry_4_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[13]  (.A(xn_rnd[13]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_385), .Y(
        x_w_Z[13]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[7]  (.A(yn_rnd[7]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_342), .Y(
        y_w_Z[7]));
    ARI1 #( .INIT(20'h46600) )  y_w_0_cry_1 (.A(VCC), .B(
        coarse_flag2post[1]), .C(xn_rnd[1]), .D(GND), .FCI(
        y_w_0_cry_0_Z), .S(N_336), .Y(y_w_0_cry_1_Y), .FCO(
        y_w_0_cry_1_Z));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_10 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[10]), .D(GND), .FCI(x_w_0_cry_9_Z)
        , .S(N_382), .Y(x_w_0_cry_10_Y), .FCO(x_w_0_cry_10_Z));
    CFG4 #( .INIT(16'hBE82) )  \x_w[8]  (.A(xn_rnd[8]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_380), .Y(
        x_w_Z[8]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[3]  (.A(yn_rnd[3]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_338), .Y(
        y_w_Z[3]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[2]  (.A(yn_rnd[2]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_337), .Y(
        y_w_Z[2]));
    CFG4 #( .INIT(16'hBE82) )  \y_w[15]  (.A(yn_rnd[15]), .B(
        coarse_flag2post[0]), .C(coarse_flag2post[1]), .D(N_350), .Y(
        y_w_Z[15]));
    ARI1 #( .INIT(20'h46600) )  x_w_0_cry_1 (.A(VCC), .B(
        x_w_0_cry_0_cy_Y), .C(yn_rnd[1]), .D(GND), .FCI(x_w_0_cry_0_Z), 
        .S(N_373), .Y(x_w_0_cry_1_Y), .FCO(x_w_0_cry_1_Z));
    
endmodule


module cordic_kitDelay_reg_2s_1s(
       coarse_flag,
       un2_a2u_w,
       un7_a2u_w,
       clk
    );
output [1:0] coarse_flag;
input  un2_a2u_w;
input  un7_a2u_w;
input  clk;

    wire VCC, GND;
    
    SLE \genblk1.delayLine[0][1]  (.D(un7_a2u_w), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        coarse_flag[1]));
    SLE \genblk1.delayLine[0][0]  (.D(un2_a2u_w), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        coarse_flag[0]));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_reg_16s_1s_0(
       phase_angle_qxu,
       a0,
       phase_angle_cry_0,
       a0_i_3,
       a0_i_0,
       un7_a2u_w,
       un2_a2u_w,
       clk
    );
input  [15:1] phase_angle_qxu;
output [17:2] a0;
input  phase_angle_cry_0;
output a0_i_3;
output a0_i_0;
input  un7_a2u_w;
input  un2_a2u_w;
input  clk;

    wire [15:13] delayLine_0__RNO;
    wire VCC, GND, un1_din_a_1_CO0;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(phase_angle_qxu[11]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[13]));
    CFG1 #( .INIT(2'h1) )  \genblk1.delayLine[0]_RNINQ5I1[12]  (.A(
        a0[14]), .Y(a0_i_0));
    SLE \genblk1.delayLine[0][1]  (.D(phase_angle_qxu[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[3]));
    SLE \genblk1.delayLine[0][6]  (.D(phase_angle_qxu[6]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[8]));
    SLE \genblk1.delayLine[0][7]  (.D(phase_angle_qxu[7]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[9]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(phase_angle_cry_0), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[2]));
    CFG1 #( .INIT(2'h1) )  \genblk1.delayLine[0]_RNIQT5I1[15]  (.A(
        a0[17]), .Y(a0_i_3));
    CFG3 #( .INIT(8'hA8) )  \genblk1.delayLine[0]_RNO_0[15]  (.A(
        phase_angle_qxu[13]), .B(un7_a2u_w), .C(un2_a2u_w), .Y(
        un1_din_a_1_CO0));
    SLE \genblk1.delayLine[0][3]  (.D(phase_angle_qxu[3]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[5]));
    CFG3 #( .INIT(8'h56) )  \genblk1.delayLine[0]_RNO[13]  (.A(
        phase_angle_qxu[13]), .B(un7_a2u_w), .C(un2_a2u_w), .Y(
        delayLine_0__RNO[13]));
    SLE \genblk1.delayLine[0][15]  (.D(delayLine_0__RNO[15]), .CLK(clk)
        , .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(a0[17]));
    SLE \genblk1.delayLine[0][8]  (.D(phase_angle_qxu[8]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[10]));
    SLE \genblk1.delayLine[0][4]  (.D(phase_angle_qxu[4]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[6]));
    CFG4 #( .INIT(16'hC96C) )  \genblk1.delayLine[0]_RNO[15]  (.A(
        phase_angle_qxu[14]), .B(phase_angle_qxu[15]), .C(
        un1_din_a_1_CO0), .D(un2_a2u_w), .Y(delayLine_0__RNO[15]));
    SLE \genblk1.delayLine[0][10]  (.D(phase_angle_qxu[10]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[12]));
    SLE \genblk1.delayLine[0][13]  (.D(delayLine_0__RNO[13]), .CLK(clk)
        , .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(a0[15]));
    CFG4 #( .INIT(16'h969C) )  \genblk1.delayLine[0]_RNO[14]  (.A(
        phase_angle_qxu[13]), .B(phase_angle_qxu[14]), .C(un2_a2u_w), 
        .D(un7_a2u_w), .Y(delayLine_0__RNO[14]));
    SLE \genblk1.delayLine[0][2]  (.D(phase_angle_qxu[2]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[4]));
    SLE \genblk1.delayLine[0][12]  (.D(phase_angle_qxu[12]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[14]));
    SLE \genblk1.delayLine[0][14]  (.D(delayLine_0__RNO[14]), .CLK(clk)
        , .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(a0[16]));
    SLE \genblk1.delayLine[0][9]  (.D(phase_angle_qxu[9]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[11]));
    SLE \genblk1.delayLine[0][5]  (.D(phase_angle_qxu[5]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(a0[7]));
    
endmodule


module cordic_coarse_pre_rotator_16s_0_1s(
       coarse_flag,
       a0_i_3,
       a0_i_0,
       a0,
       phase_angle_qxu,
       phase_angle_cry_0,
       clk
    );
output [1:0] coarse_flag;
output a0_i_3;
output a0_i_0;
output [17:2] a0;
input  [15:1] phase_angle_qxu;
input  phase_angle_cry_0;
input  clk;

    wire un2_a2u_wlto12_i_a2_8, un2_a2u_wlto12_i_a2_7, 
        un2_a2u_wlto12_i_a2_1, un2_a2u_wlto12_i_a2, un7_a2u_w, 
        un2_a2u_w, GND, VCC;
    
    CFG4 #( .INIT(16'h4000) )  
        \pre_coarse_rotationMode.un2_a2u_wlto12_i_a2  (.A(
        phase_angle_cry_0), .B(un2_a2u_wlto12_i_a2_8), .C(
        un2_a2u_wlto12_i_a2_7), .D(un2_a2u_wlto12_i_a2_1), .Y(
        un2_a2u_wlto12_i_a2));
    cordic_kitDelay_reg_2s_1s \coarse_regs.preCoarseReg_flag  (
        .coarse_flag({coarse_flag[1], coarse_flag[0]}), .un2_a2u_w(
        un2_a2u_w), .un7_a2u_w(un7_a2u_w), .clk(clk));
    CFG3 #( .INIT(8'h2A) )  \pre_coarse_rotationMode.un7_a2u_wlto15  (
        .A(phase_angle_qxu[15]), .B(phase_angle_qxu[14]), .C(
        phase_angle_qxu[13]), .Y(un7_a2u_w));
    cordic_kitDelay_reg_16s_1s_0 \coarse_regs.preCoarseReg_a  (
        .phase_angle_qxu({phase_angle_qxu[15], phase_angle_qxu[14], 
        phase_angle_qxu[13], phase_angle_qxu[12], phase_angle_qxu[11], 
        phase_angle_qxu[10], phase_angle_qxu[9], phase_angle_qxu[8], 
        phase_angle_qxu[7], phase_angle_qxu[6], phase_angle_qxu[5], 
        phase_angle_qxu[4], phase_angle_qxu[3], phase_angle_qxu[2], 
        phase_angle_qxu[1]}), .a0({a0[17], a0[16], a0[15], a0[14], 
        a0[13], a0[12], a0[11], a0[10], a0[9], a0[8], a0[7], a0[6], 
        a0[5], a0[4], a0[3], a0[2]}), .phase_angle_cry_0(
        phase_angle_cry_0), .a0_i_3(a0_i_3), .a0_i_0(a0_i_0), 
        .un7_a2u_w(un7_a2u_w), .un2_a2u_w(un2_a2u_w), .clk(clk));
    CFG4 #( .INIT(16'h0001) )  
        \pre_coarse_rotationMode.un2_a2u_wlto12_i_a2_8  (.A(
        phase_angle_qxu[9]), .B(phase_angle_qxu[8]), .C(
        phase_angle_qxu[7]), .D(phase_angle_qxu[6]), .Y(
        un2_a2u_wlto12_i_a2_8));
    CFG4 #( .INIT(16'h0001) )  
        \pre_coarse_rotationMode.un2_a2u_wlto12_i_a2_7  (.A(
        phase_angle_qxu[5]), .B(phase_angle_qxu[4]), .C(
        phase_angle_qxu[3]), .D(phase_angle_qxu[2]), .Y(
        un2_a2u_wlto12_i_a2_7));
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h4454) )  
        \pre_coarse_rotationMode.un2_a2u_wlto15  (.A(
        phase_angle_qxu[15]), .B(phase_angle_qxu[14]), .C(
        phase_angle_qxu[13]), .D(un2_a2u_wlto12_i_a2), .Y(un2_a2u_w));
    CFG4 #( .INIT(16'h0001) )  
        \pre_coarse_rotationMode.un2_a2u_wlto12_i_a2_1  (.A(
        phase_angle_qxu[12]), .B(phase_angle_qxu[11]), .C(
        phase_angle_qxu[10]), .D(phase_angle_qxu[1]), .Y(
        un2_a2u_wlto12_i_a2_1));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_reg_2s_18s(
       coarse_flag2post,
       coarse_flag,
       clk
    );
output [1:0] coarse_flag2post;
input  [1:0] coarse_flag;
input  clk;

    wire [1:0] delayLine_0_;
    wire [1:0] delayLine_1_;
    wire [1:0] delayLine_16_;
    wire [1:0] delayLine_15_;
    wire [1:0] delayLine_9_;
    wire [1:0] delayLine_8_;
    wire [1:0] delayLine_10_;
    wire [1:0] delayLine_11_;
    wire [1:0] delayLine_12_;
    wire [1:0] delayLine_13_;
    wire [1:0] delayLine_14_;
    wire [1:0] delayLine_2_;
    wire [1:0] delayLine_3_;
    wire [1:0] delayLine_4_;
    wire [1:0] delayLine_5_;
    wire [1:0] delayLine_6_;
    wire [1:0] delayLine_7_;
    wire VCC, GND;
    
    SLE \genblk1.delayLine[5][0]  (.D(delayLine_4_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_5_[0]));
    SLE \genblk1.delayLine[10][1]  (.D(delayLine_9_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_10_[1]));
    SLE \genblk1.delayLine[8][1]  (.D(delayLine_7_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_8_[1]));
    SLE \genblk1.delayLine[12][0]  (.D(delayLine_11_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_12_[0]));
    SLE \genblk1.delayLine[2][1]  (.D(delayLine_1_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_2_[1]));
    SLE \genblk1.delayLine[9][0]  (.D(delayLine_8_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_9_[0]));
    SLE \genblk1.delayLine[4][1]  (.D(delayLine_3_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_4_[1]));
    SLE \genblk1.delayLine[15][1]  (.D(delayLine_14_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_15_[1]));
    SLE \genblk1.delayLine[0][0]  (.D(coarse_flag[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_[0]));
    SLE \genblk1.delayLine[6][0]  (.D(delayLine_5_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_6_[0]));
    SLE \genblk1.delayLine[3][1]  (.D(delayLine_2_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_3_[1]));
    SLE \genblk1.delayLine[10][0]  (.D(delayLine_9_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_10_[0]));
    SLE \genblk1.delayLine[17][1]  (.D(delayLine_16_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(coarse_flag2post[1]));
    SLE \genblk1.delayLine[16][1]  (.D(delayLine_15_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_16_[1]));
    SLE \genblk1.delayLine[15][0]  (.D(delayLine_14_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_15_[0]));
    SLE \genblk1.delayLine[1][1]  (.D(delayLine_0_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_1_[1]));
    SLE \genblk1.delayLine[17][0]  (.D(delayLine_16_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(coarse_flag2post[0]));
    SLE \genblk1.delayLine[14][1]  (.D(delayLine_13_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_14_[1]));
    SLE \genblk1.delayLine[7][1]  (.D(delayLine_6_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_7_[1]));
    SLE \genblk1.delayLine[16][0]  (.D(delayLine_15_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_16_[0]));
    SLE \genblk1.delayLine[8][0]  (.D(delayLine_7_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_8_[0]));
    SLE \genblk1.delayLine[2][0]  (.D(delayLine_1_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_2_[0]));
    SLE \genblk1.delayLine[14][0]  (.D(delayLine_13_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_14_[0]));
    SLE \genblk1.delayLine[5][1]  (.D(delayLine_4_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_5_[1]));
    SLE \genblk1.delayLine[4][0]  (.D(delayLine_3_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_4_[0]));
    SLE \genblk1.delayLine[3][0]  (.D(delayLine_2_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_3_[0]));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[9][1]  (.D(delayLine_8_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_9_[1]));
    SLE \genblk1.delayLine[11][1]  (.D(delayLine_10_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_11_[1]));
    SLE \genblk1.delayLine[13][1]  (.D(delayLine_12_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_13_[1]));
    SLE \genblk1.delayLine[0][1]  (.D(coarse_flag[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_[1]));
    SLE \genblk1.delayLine[6][1]  (.D(delayLine_5_[1]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_6_[1]));
    SLE \genblk1.delayLine[1][0]  (.D(delayLine_0_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_1_[0]));
    SLE \genblk1.delayLine[11][0]  (.D(delayLine_10_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_11_[0]));
    SLE \genblk1.delayLine[13][0]  (.D(delayLine_12_[0]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_13_[0]));
    SLE \genblk1.delayLine[7][0]  (.D(delayLine_6_[0]), .CLK(clk), .EN(
        VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_7_[0]));
    SLE \genblk1.delayLine[12][1]  (.D(delayLine_11_[1]), .CLK(clk), 
        .EN(VCC), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_12_[1]));
    
endmodule


module cordic_kitDelay_bit_reg_1s(
       xn_u,
       N_7,
       clk,
       roundBit_tick
    );
input  [2:0] xn_u;
input  N_7;
input  clk;
output roundBit_tick;

    wire VCC, N_5_i, GND;
    
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h0C08) )  \genblk1.delayLine[0]_RNO  (.A(xn_u[0]), 
        .B(xn_u[1]), .C(N_7), .D(xn_u[2]), .Y(N_5_i));
    SLE \genblk1.delayLine[0]  (.D(N_5_i), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        roundBit_tick));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_kitDelay_reg_16_1s_0_0(
       outp_w,
       xn_rnd,
       clk
    );
input  [15:0] outp_w;
output [15:0] xn_rnd;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(outp_w[11]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[11]));
    SLE \genblk1.delayLine[0][1]  (.D(outp_w[1]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[1]));
    SLE \genblk1.delayLine[0][6]  (.D(outp_w[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[6]));
    SLE \genblk1.delayLine[0][7]  (.D(outp_w[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(outp_w[0]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[0]));
    SLE \genblk1.delayLine[0][3]  (.D(outp_w[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[3]));
    SLE \genblk1.delayLine[0][15]  (.D(outp_w[15]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[15]));
    SLE \genblk1.delayLine[0][8]  (.D(outp_w[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[8]));
    SLE \genblk1.delayLine[0][4]  (.D(outp_w[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[4]));
    SLE \genblk1.delayLine[0][10]  (.D(outp_w[10]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[10]));
    SLE \genblk1.delayLine[0][13]  (.D(outp_w[13]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[13]));
    SLE \genblk1.delayLine[0][2]  (.D(outp_w[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[2]));
    SLE \genblk1.delayLine[0][12]  (.D(outp_w[12]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[12]));
    SLE \genblk1.delayLine[0][14]  (.D(outp_w[14]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[14]));
    SLE \genblk1.delayLine[0][9]  (.D(outp_w[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[9]));
    SLE \genblk1.delayLine[0][5]  (.D(outp_w[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        xn_rnd[5]));
    
endmodule


module cordic_kitDelay_reg_16_1s_0(
       xn_u,
       inp_tick,
       clk
    );
input  [17:2] xn_u;
output [15:0] inp_tick;
input  clk;

    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \genblk1.delayLine[0][11]  (.D(xn_u[13]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[11]));
    SLE \genblk1.delayLine[0][1]  (.D(xn_u[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[1]));
    SLE \genblk1.delayLine[0][6]  (.D(xn_u[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[6]));
    SLE \genblk1.delayLine[0][7]  (.D(xn_u[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[7]));
    VCC VCC_Z (.Y(VCC));
    SLE \genblk1.delayLine[0][0]  (.D(xn_u[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[0]));
    SLE \genblk1.delayLine[0][3]  (.D(xn_u[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[3]));
    SLE \genblk1.delayLine[0][15]  (.D(xn_u[17]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[15]));
    SLE \genblk1.delayLine[0][8]  (.D(xn_u[10]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[8]));
    SLE \genblk1.delayLine[0][4]  (.D(xn_u[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[4]));
    SLE \genblk1.delayLine[0][10]  (.D(xn_u[12]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[10]));
    SLE \genblk1.delayLine[0][13]  (.D(xn_u[15]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[13]));
    SLE \genblk1.delayLine[0][2]  (.D(xn_u[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[2]));
    SLE \genblk1.delayLine[0][12]  (.D(xn_u[14]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[12]));
    SLE \genblk1.delayLine[0][14]  (.D(xn_u[16]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[14]));
    SLE \genblk1.delayLine[0][9]  (.D(xn_u[11]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[9]));
    SLE \genblk1.delayLine[0][5]  (.D(xn_u[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        inp_tick[5]));
    
endmodule


module cordic_kitRndEven_18_16(
       xn_rnd,
       xn_u,
       clk
    );
output [15:0] xn_rnd;
input  [17:0] xn_u;
input  clk;

    wire [15:0] outp_w;
    wire [15:0] inp_tick;
    wire outp_w_s_0_709_FCO, outp_w_s_0_709_S, outp_w_s_0_709_Y, 
        roundBit_tick, GND, VCC, outp_w_cry_0_Z, outp_w_cry_0_Y_0, 
        outp_w_cry_1_Z, outp_w_cry_1_Y_0, outp_w_cry_2_Z, 
        outp_w_cry_2_Y_0, outp_w_cry_3_Z, outp_w_cry_3_Y_0, 
        outp_w_cry_4_Z, outp_w_cry_4_Y_0, outp_w_cry_5_Z, 
        outp_w_cry_5_Y_0, outp_w_cry_6_Z, outp_w_cry_6_Y_0, 
        outp_w_cry_7_Z, outp_w_cry_7_Y_0, outp_w_cry_8_Z, 
        outp_w_cry_8_Y_0, outp_w_cry_9_Z, outp_w_cry_9_Y_0, 
        outp_w_cry_10_Z, outp_w_cry_10_Y_0, outp_w_cry_11_Z, 
        outp_w_cry_11_Y_0, outp_w_cry_12_Z, outp_w_cry_12_Y_0, 
        outp_w_cry_13_Z, outp_w_cry_13_Y_0, outp_w_s_15_FCO_0, 
        outp_w_s_15_Y_0, outp_w_cry_14_Z, outp_w_cry_14_Y_0, 
        roundBit_i_a4_0_11_Z, roundBit_i_a4_0_10_Z, 
        roundBit_i_a4_0_9_Z, roundBit_i_a4_0_8_Z, N_7;
    
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_11 (.A(VCC), .B(
        inp_tick[11]), .C(GND), .D(GND), .FCI(outp_w_cry_10_Z), .S(
        outp_w[11]), .Y(outp_w_cry_11_Y_0), .FCO(outp_w_cry_11_Z));
    GND GND_Z (.Y(GND));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_0 (.A(VCC), .B(inp_tick[0]), 
        .C(GND), .D(GND), .FCI(outp_w_s_0_709_FCO), .S(outp_w[0]), .Y(
        outp_w_cry_0_Y_0), .FCO(outp_w_cry_0_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_8 (.A(VCC), .B(inp_tick[8]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_7_Z), .S(outp_w[8]), .Y(
        outp_w_cry_8_Y_0), .FCO(outp_w_cry_8_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_6 (.A(VCC), .B(inp_tick[6]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_5_Z), .S(outp_w[6]), .Y(
        outp_w_cry_6_Y_0), .FCO(outp_w_cry_6_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_5 (.A(VCC), .B(inp_tick[5]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_4_Z), .S(outp_w[5]), .Y(
        outp_w_cry_5_Y_0), .FCO(outp_w_cry_5_Z));
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_9 (.A(xn_u[13]), .B(
        xn_u[12]), .C(xn_u[11]), .D(xn_u[10]), .Y(roundBit_i_a4_0_9_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_9 (.A(VCC), .B(inp_tick[9]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_8_Z), .S(outp_w[9]), .Y(
        outp_w_cry_9_Y_0), .FCO(outp_w_cry_9_Z));
    CFG4 #( .INIT(16'h4000) )  roundBit_i_a4_0_8 (.A(xn_u[17]), .B(
        xn_u[9]), .C(xn_u[4]), .D(xn_u[3]), .Y(roundBit_i_a4_0_8_Z));
    cordic_kitDelay_bit_reg_1s roundBit_pipe_0 (.xn_u({xn_u[2], 
        xn_u[1], xn_u[0]}), .N_7(N_7), .clk(clk), .roundBit_tick(
        roundBit_tick));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_11 (.A(xn_u[8]), .B(
        xn_u[7]), .C(xn_u[6]), .D(xn_u[2]), .Y(roundBit_i_a4_0_11_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_3 (.A(VCC), .B(inp_tick[3]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_2_Z), .S(outp_w[3]), .Y(
        outp_w_cry_3_Y_0), .FCO(outp_w_cry_3_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_14 (.A(VCC), .B(
        inp_tick[14]), .C(GND), .D(GND), .FCI(outp_w_cry_13_Z), .S(
        outp_w[14]), .Y(outp_w_cry_14_Y_0), .FCO(outp_w_cry_14_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_2 (.A(VCC), .B(inp_tick[2]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_1_Z), .S(outp_w[2]), .Y(
        outp_w_cry_2_Y_0), .FCO(outp_w_cry_2_Z));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0 (.A(roundBit_i_a4_0_8_Z)
        , .B(roundBit_i_a4_0_11_Z), .C(roundBit_i_a4_0_10_Z), .D(
        roundBit_i_a4_0_9_Z), .Y(N_7));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_s_0_709 (.A(VCC), .B(
        roundBit_tick), .C(GND), .D(GND), .FCI(VCC), .S(
        outp_w_s_0_709_S), .Y(outp_w_s_0_709_Y), .FCO(
        outp_w_s_0_709_FCO));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_13 (.A(VCC), .B(
        inp_tick[13]), .C(GND), .D(GND), .FCI(outp_w_cry_12_Z), .S(
        outp_w[13]), .Y(outp_w_cry_13_Y_0), .FCO(outp_w_cry_13_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_10 (.A(VCC), .B(
        inp_tick[10]), .C(GND), .D(GND), .FCI(outp_w_cry_9_Z), .S(
        outp_w[10]), .Y(outp_w_cry_10_Y_0), .FCO(outp_w_cry_10_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_12 (.A(VCC), .B(
        inp_tick[12]), .C(GND), .D(GND), .FCI(outp_w_cry_11_Z), .S(
        outp_w[12]), .Y(outp_w_cry_12_Y_0), .FCO(outp_w_cry_12_Z));
    cordic_kitDelay_reg_16_1s_0_0 result_pipe_0 (.outp_w({outp_w[15], 
        outp_w[14], outp_w[13], outp_w[12], outp_w[11], outp_w[10], 
        outp_w[9], outp_w[8], outp_w[7], outp_w[6], outp_w[5], 
        outp_w[4], outp_w[3], outp_w[2], outp_w[1], outp_w[0]}), 
        .xn_rnd({xn_rnd[15], xn_rnd[14], xn_rnd[13], xn_rnd[12], 
        xn_rnd[11], xn_rnd[10], xn_rnd[9], xn_rnd[8], xn_rnd[7], 
        xn_rnd[6], xn_rnd[5], xn_rnd[4], xn_rnd[3], xn_rnd[2], 
        xn_rnd[1], xn_rnd[0]}), .clk(clk));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_4 (.A(VCC), .B(inp_tick[4]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_3_Z), .S(outp_w[4]), .Y(
        outp_w_cry_4_Y_0), .FCO(outp_w_cry_4_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_1 (.A(VCC), .B(inp_tick[1]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_0_Z), .S(outp_w[1]), .Y(
        outp_w_cry_1_Y_0), .FCO(outp_w_cry_1_Z));
    CFG4 #( .INIT(16'h8000) )  roundBit_i_a4_0_10 (.A(xn_u[16]), .B(
        xn_u[15]), .C(xn_u[14]), .D(xn_u[5]), .Y(roundBit_i_a4_0_10_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_cry_7 (.A(VCC), .B(inp_tick[7]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_6_Z), .S(outp_w[7]), .Y(
        outp_w_cry_7_Y_0), .FCO(outp_w_cry_7_Z));
    ARI1 #( .INIT(20'h4AA00) )  outp_w_s_15 (.A(VCC), .B(inp_tick[15]), 
        .C(GND), .D(GND), .FCI(outp_w_cry_14_Z), .S(outp_w[15]), .Y(
        outp_w_s_15_Y_0), .FCO(outp_w_s_15_FCO_0));
    cordic_kitDelay_reg_16_1s_0 inp_pipe_0 (.xn_u({xn_u[17], xn_u[16], 
        xn_u[15], xn_u[14], xn_u[13], xn_u[12], xn_u[11], xn_u[10], 
        xn_u[9], xn_u[8], xn_u[7], xn_u[6], xn_u[5], xn_u[4], xn_u[3], 
        xn_u[2]}), .inp_tick({inp_tick[15], inp_tick[14], inp_tick[13], 
        inp_tick[12], inp_tick[11], inp_tick[10], inp_tick[9], 
        inp_tick[8], inp_tick[7], inp_tick[6], inp_tick[5], 
        inp_tick[4], inp_tick[3], inp_tick[2], inp_tick[1], 
        inp_tick[0]}), .clk(clk));
    
endmodule


module cordic_kitRoundTop_18_16_1s_1s(
       xn_u,
       xn_rnd,
       clk
    );
input  [17:0] xn_u;
output [15:0] xn_rnd;
input  clk;

    wire GND, VCC;
    
    cordic_kitRndEven_18_16 \converg_round.kitRndEven_0  (.xn_rnd({
        xn_rnd[15], xn_rnd[14], xn_rnd[13], xn_rnd[12], xn_rnd[11], 
        xn_rnd[10], xn_rnd[9], xn_rnd[8], xn_rnd[7], xn_rnd[6], 
        xn_rnd[5], xn_rnd[4], xn_rnd[3], xn_rnd[2], xn_rnd[1], 
        xn_rnd[0]}), .xn_u({xn_u[17], xn_u[16], xn_u[15], xn_u[14], 
        xn_u[13], xn_u[12], xn_u[11], xn_u[10], xn_u[9], xn_u[8], 
        xn_u[7], xn_u[6], xn_u[5], xn_u[4], xn_u[3], xn_u[2], xn_u[1], 
        xn_u[0]}), .clk(clk));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module cordic_par_calc_0_18_4_4s(
       yi_4_,
       ai_4_,
       xi_4_,
       ai_5_,
       xi_5_,
       yi_5_,
       clk
    );
input  [17:0] yi_4_;
input  [17:2] ai_4_;
input  [17:0] xi_4_;
output [17:2] ai_5_;
output [17:0] xi_5_;
output [17:0] yi_5_;
input  clk;

    wire [17:3] an_28;
    wire [17:0] yn_28;
    wire [17:0] xn_28;
    wire un1_a0_2_cry_15_Z, VCC, GND, un1_a0_2_cry_1_Y_0, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_1, 
        un1_x0_1_cry_0_cy_Y_1, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_1, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_1, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_1, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_1, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_1, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_1, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_1, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_1, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_1, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_1, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_1, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_1, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_1, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_1, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_1, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_1, 
        un1_x0_1_s_17_FCO_1, un1_x0_1_s_17_Y_1, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_1, un1_a0_2_cry_1_Z, un1_a0_2_cry_1_S, 
        un1_a0_2_cry_2_Z, un1_a0_2_cry_2_Y_0, un1_a0_2_cry_3_Z, 
        un1_a0_2_cry_3_Y_0, un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_0, 
        un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_0, un1_a0_2_cry_6_Z, 
        un1_a0_2_cry_6_Y_0, un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_0, 
        un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_0, un1_a0_2_cry_9_Z, 
        un1_a0_2_cry_9_Y_0, un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_0, 
        un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_0, un1_a0_2_cry_12_Z, 
        un1_a0_2_cry_12_Y_0, un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_0, 
        un1_a0_2_cry_14_Z, un1_a0_2_cry_14_Y_0, un1_a0_2_cry_15_Y, 
        un1_y0_s_0_705_FCO, un1_y0_s_0_705_S, un1_y0_s_0_705_Y, 
        un1_y0_cry_0_Z, un1_y0_cry_0_Y_10, un1_y0_cry_1_Z, 
        un1_y0_cry_1_Y_11, un1_y0_cry_2_Z, un1_y0_cry_2_Y_11, 
        un1_y0_cry_3_Z, un1_y0_cry_3_Y_11, un1_y0_cry_4_Z, 
        un1_y0_cry_4_Y_11, un1_y0_cry_5_Z, un1_y0_cry_5_Y_11, 
        un1_y0_cry_6_Z, un1_y0_cry_6_Y_11, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y_11, un1_y0_cry_8_Z, un1_y0_cry_8_Y_11, 
        un1_y0_cry_9_Z, un1_y0_cry_9_Y_11, un1_y0_cry_10_Z, 
        un1_y0_cry_10_Y_11, un1_y0_cry_11_Z, un1_y0_cry_11_Y_11, 
        un1_y0_cry_12_Z, un1_y0_cry_12_Y_11, un1_y0_cry_13_Z, 
        un1_y0_cry_13_Y_11, un1_y0_cry_14_Z, un1_y0_cry_14_Y_11, 
        un1_y0_cry_15_Z, un1_y0_cry_15_Y_11, un1_y0_s_17_FCO_10, 
        un1_y0_s_17_Y_10, un1_y0_cry_16_Z, un1_y0_cry_16_Y_10, N_1412, 
        N_688;
    
    SLE \xn[16]  (.D(xn_28[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_4_[10]), .B(
        ai_4_[17]), .C(yi_4_[14]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_28[10]), .Y(un1_x0_1_cry_10_Y_1), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_4_[5]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_28[5]), .Y(un1_a0_2_cry_4_Y_0), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_4_[10]), .B(
        ai_4_[17]), .C(xi_4_[14]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_28[10]), .Y(un1_y0_cry_10_Y_11), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_28[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_4_[11]), .B(
        ai_4_[17]), .C(xi_4_[15]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_28[11]), .Y(un1_y0_cry_11_Y_11), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_4_[15]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_28[15]), .Y(un1_a0_2_cry_14_Y_0), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_28[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[4]));
    SLE \an[10]  (.D(an_28[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_4_[0]), .B(
        ai_4_[17]), .C(yi_4_[4]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_28[0]), .Y(un1_x0_1_cry_0_Y_1), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_28[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[6]));
    SLE \xn[15]  (.D(xn_28[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[15]));
    SLE \xn[13]  (.D(xn_28[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[13]));
    SLE \an[11]  (.D(an_28[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[11]));
    SLE \xn[4]  (.D(xn_28[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_4_[17]), 
        .C(xi_4_[17]), .D(yi_4_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_28[17]), .Y(un1_x0_1_s_17_Y_1), .FCO(un1_x0_1_s_17_FCO_1));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_4_[7]), .B(
        ai_4_[17]), .C(yi_4_[11]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_28[7]), .Y(un1_x0_1_cry_7_Y_1), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_28[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[2]));
    SLE \yn[1]  (.D(yn_28[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_4_[17]), 
        .C(xi_4_[17]), .D(yi_4_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_28[17]), .Y(un1_y0_s_17_Y_10), .FCO(un1_y0_s_17_FCO_10));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_4_[9]), .B(
        ai_4_[17]), .C(yi_4_[13]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_28[9]), .Y(un1_x0_1_cry_9_Y_1), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_28[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_4_[0]), .B(
        ai_4_[17]), .C(xi_4_[4]), .D(GND), .FCI(un1_y0_s_0_705_FCO), 
        .S(yn_28[0]), .Y(un1_y0_cry_0_Y_10), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_7 (.A(ai_4_[8]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_28[8]), .Y(un1_a0_2_cry_7_Y_0), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_4_[15]), .B(
        ai_4_[17]), .C(yi_4_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_28[15]), .Y(un1_x0_1_cry_15_Y_1), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_3 (.A(ai_4_[4]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_28[4]), .Y(un1_a0_2_cry_3_Y_0), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_4_[13]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_28[13]), .Y(un1_a0_2_cry_12_Y_0), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_4_[11]), .B(
        ai_4_[17]), .C(yi_4_[15]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_28[11]), .Y(un1_x0_1_cry_11_Y_1), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_4_[9]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_28[9]), .Y(un1_a0_2_cry_8_Y_0), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_4_[6]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_28[6]), .Y(un1_a0_2_cry_5_Y_0), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_4_[1]), .B(
        ai_4_[17]), .C(yi_4_[5]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_28[1]), .Y(un1_x0_1_cry_1_Y_1), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_28[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[17]));
    SLE \yn[5]  (.D(yn_28[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[5]));
    SLE \an[9]  (.D(an_28[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_4_[7]), .B(
        ai_4_[17]), .C(xi_4_[11]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_28[7]), .Y(un1_y0_cry_7_Y_11), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_28[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[7]));
    SLE \an[14]  (.D(an_28[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[14]));
    SLE \xn[9]  (.D(xn_28[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[9]));
    SLE \xn[7]  (.D(xn_28[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[7]));
    SLE \an[8]  (.D(an_28[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[8]));
    SLE \yn[0]  (.D(yn_28[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_4_[8]), .B(
        ai_4_[17]), .C(xi_4_[12]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_28[8]), .Y(un1_y0_cry_8_Y_11), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_9 (.A(ai_4_[10]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_28[10]), .Y(un1_a0_2_cry_9_Y_0), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_4_[5]), .B(
        ai_4_[17]), .C(yi_4_[9]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_28[5]), .Y(un1_x0_1_cry_5_Y_1), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_28[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[16]));
    SLE \xn[8]  (.D(xn_28[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_4_[9]), .B(
        ai_4_[17]), .C(xi_4_[13]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_28[9]), .Y(un1_y0_cry_9_Y_11), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_4_[13]), .B(
        ai_4_[17]), .C(xi_4_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_28[13]), .Y(un1_y0_cry_13_Y_11), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_28[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_4_[12]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_28[12]), .Y(un1_a0_2_cry_11_Y_0), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_4_[6]), .B(
        ai_4_[17]), .C(yi_4_[10]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_28[6]), .Y(un1_x0_1_cry_6_Y_1), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_4_[12]), .B(
        ai_4_[17]), .C(yi_4_[16]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_28[12]), .Y(un1_x0_1_cry_12_Y_1), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_28[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[3]));
    SLE \yn[15]  (.D(yn_28[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[15]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_1 (.A(ai_4_[2]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_1_S), 
        .Y(un1_a0_2_cry_1_Y_0), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_28[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[10]));
    SLE \yn[11]  (.D(yn_28[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[11]));
    SLE \xn[14]  (.D(xn_28[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_4_[12]), .B(
        ai_4_[17]), .C(xi_4_[16]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_28[12]), .Y(un1_y0_cry_12_Y_11), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_28[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_4_[4]), .B(
        ai_4_[17]), .C(yi_4_[8]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_28[4]), .Y(un1_x0_1_cry_4_Y_1), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_4_[7]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_28[7]), .Y(un1_a0_2_cry_6_Y_0), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_4_[11]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_28[11]), .Y(un1_a0_2_cry_10_Y_0), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_1), .Y(un1_x0_1_cry_0_cy_Y_1), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_28[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[11]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_705 (.A(VCC), .B(ai_4_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_705_S), .Y(
        un1_y0_s_0_705_Y), .FCO(un1_y0_s_0_705_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_4_[3]), .B(
        ai_4_[17]), .C(yi_4_[7]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_28[3]), .Y(un1_x0_1_cry_3_Y_1), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_4_[15]), .B(
        ai_4_[17]), .C(xi_4_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_28[15]), .Y(un1_y0_cry_15_Y_11), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_28[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[10]));
    SLE \an[6]  (.D(an_28[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[6]));
    SLE \an[15]  (.D(an_28[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_4_[8]), .B(
        ai_4_[17]), .C(yi_4_[12]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_28[8]), .Y(un1_x0_1_cry_8_Y_1), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_4_[5]), .B(
        ai_4_[17]), .C(xi_4_[9]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_28[5]), .Y(un1_y0_cry_5_Y_11), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_4_[4]), .B(
        ai_4_[17]), .C(xi_4_[8]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_28[4]), .Y(un1_y0_cry_4_Y_11), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_4_[2]), .B(
        ai_4_[17]), .C(xi_4_[6]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_28[2]), .Y(un1_y0_cry_2_Y_11), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_4_[2]), .B(
        ai_4_[17]), .C(yi_4_[6]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_28[2]), .Y(un1_x0_1_cry_2_Y_1), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(un1_a0_2_cry_1_Y_0), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[2]));
    SLE \yn[9]  (.D(yn_28[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_4_[1]), .B(
        ai_4_[17]), .C(xi_4_[5]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_28[1]), .Y(un1_y0_cry_1_Y_11), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_4_[16]), .B(
        ai_4_[17]), .C(yi_4_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_28[16]), .Y(un1_x0_1_cry_16_Y_1), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_4_[3]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_28[3]), .Y(un1_a0_2_cry_2_Y_0), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_28[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[7]));
    SLE \xn[6]  (.D(xn_28[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[6]));
    SLE \an[17]  (.D(an_28[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[17]));
    SLE \yn[13]  (.D(yn_28[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[13]));
    SLE \an[13]  (.D(an_28[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[13]));
    SLE \xn[2]  (.D(xn_28[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[2]));
    SLE \xn[1]  (.D(xn_28[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_4_[14]), .B(
        ai_4_[17]), .C(yi_4_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_28[14]), .Y(un1_x0_1_cry_14_Y_1), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_28[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_4_[16]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_28[16]), .Y(un1_a0_2_cry_15_Y), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_15_Z), .Y(
        an_28[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_4_[14]), .B(
        ai_4_[17]), .C(xi_4_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_28[14]), .Y(un1_y0_cry_14_Y_11), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_28[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_4_[13]), .B(
        ai_4_[17]), .C(yi_4_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_28[13]), .Y(un1_x0_1_cry_13_Y_1), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_4_[16]), .B(
        ai_4_[17]), .C(xi_4_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_28[16]), .Y(un1_y0_cry_16_Y_10), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_28[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_4_[6]), .B(
        ai_4_[17]), .C(xi_4_[10]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_28[6]), .Y(un1_y0_cry_6_Y_11), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_28[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[3]));
    SLE \yn[17]  (.D(yn_28[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[17]));
    SLE \yn[14]  (.D(yn_28[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[14]));
    SLE \xn[5]  (.D(xn_28[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_5_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_4_[3]), .B(
        ai_4_[17]), .C(xi_4_[7]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_28[3]), .Y(un1_y0_cry_3_Y_11), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_4_[14]), .B(
        ai_4_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_28[14]), .Y(un1_a0_2_cry_13_Y_0), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_28[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_5_[12]));
    SLE \an[16]  (.D(an_28[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_5_[16]));
    
endmodule


module cordic_par_calc_0_18_4_10s(
       yi_10_,
       ai_10_,
       xi_10_,
       ai_11_,
       xi_11_,
       yi_11_,
       clk
    );
input  [17:0] yi_10_;
input  [17:1] ai_10_;
input  [17:0] xi_10_;
output [17:1] ai_11_;
output [17:0] xi_11_;
output [17:0] yi_11_;
input  clk;

    wire [17:3] an_64;
    wire [17:0] yn_64;
    wire [17:0] xn_64;
    wire un1_a0_2_cry_14_Z, VCC, GND, un1_a0_2_cry_0_Y, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_10, 
        un1_x0_1_cry_0_cy_Y_10, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_10, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_10, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_10, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_10, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_10, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_10, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_10, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_10, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_10, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_10, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_10, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_10, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_10, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_10, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_10, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_10, 
        un1_x0_1_s_17_FCO_10, un1_x0_1_s_17_Y_10, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_10, un1_a0_2_cry_0_Z, un1_a0_2_cry_0_S, 
        un1_a0_2_cry_1_Z, un1_a0_2_cry_1_Y, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y, un1_a0_2_cry_14_Y, 
        un1_y0_s_0_694_FCO, un1_y0_s_0_694_S, un1_y0_s_0_694_Y, 
        un1_y0_cry_0_Z, un1_y0_cry_0_Y, un1_y0_cry_1_Z, 
        un1_y0_cry_1_Y_0, un1_y0_cry_2_Z, un1_y0_cry_2_Y_0, 
        un1_y0_cry_3_Z, un1_y0_cry_3_Y_0, un1_y0_cry_4_Z, 
        un1_y0_cry_4_Y_0, un1_y0_cry_5_Z, un1_y0_cry_5_Y_0, 
        un1_y0_cry_6_Z, un1_y0_cry_6_Y_0, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y_0, un1_y0_cry_8_Z, un1_y0_cry_8_Y_0, 
        un1_y0_cry_9_Z, un1_y0_cry_9_Y_0, un1_y0_cry_10_Z, 
        un1_y0_cry_10_Y_0, un1_y0_cry_11_Z, un1_y0_cry_11_Y_0, 
        un1_y0_cry_12_Z, un1_y0_cry_12_Y_0, un1_y0_cry_13_Z, 
        un1_y0_cry_13_Y_0, un1_y0_cry_14_Z, un1_y0_cry_14_Y_0, 
        un1_y0_cry_15_Z, un1_y0_cry_15_Y_0, un1_y0_s_17_FCO, 
        un1_y0_s_17_Y, un1_y0_cry_16_Z, un1_y0_cry_16_Y, N_1414;
    
    SLE \xn[16]  (.D(xn_64[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_10_[10]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), 
        .S(xn_64[10]), .Y(un1_x0_1_cry_10_Y_10), .FCO(
        un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_10_[6]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_64[6]), .Y(un1_a0_2_cry_4_Y), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_10_[10]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_64[10]), .Y(un1_y0_cry_10_Y_0), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_64[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_10_[11]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), 
        .S(yn_64[11]), .Y(un1_y0_cry_11_Y_0), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h65500) )  un1_a0_2_cry_0 (.A(VCC), .B(ai_10_[2]), 
        .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_0_S), .Y(
        un1_a0_2_cry_0_Y), .FCO(un1_a0_2_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_10_[16]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_64[16]), .Y(un1_a0_2_cry_14_Y), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_64[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[4]));
    SLE \an[10]  (.D(an_64[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_10_[0]), .B(
        ai_10_[17]), .C(yi_10_[10]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z)
        , .S(xn_64[0]), .Y(un1_x0_1_cry_0_Y_10), .FCO(un1_x0_1_cry_0_Z)
        );
    SLE \yn[6]  (.D(yn_64[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[6]));
    SLE \xn[15]  (.D(xn_64[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[15]));
    SLE \xn[13]  (.D(xn_64[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[13]));
    SLE \an[11]  (.D(an_64[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[11]));
    SLE \xn[4]  (.D(xn_64[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_10_[17]), 
        .C(xi_10_[17]), .D(yi_10_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_64[17]), .Y(un1_x0_1_s_17_Y_10), .FCO(un1_x0_1_s_17_FCO_10));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_10_[7]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), 
        .S(xn_64[7]), .Y(un1_x0_1_cry_7_Y_10), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_64[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[2]));
    SLE \yn[1]  (.D(yn_64[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_10_[17]), 
        .C(xi_10_[17]), .D(yi_10_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_64[17]), .Y(un1_y0_s_17_Y), .FCO(un1_y0_s_17_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_10_[9]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), 
        .S(xn_64[9]), .Y(un1_x0_1_cry_9_Y_10), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_64[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_10_[0]), .B(
        ai_10_[17]), .C(xi_10_[10]), .D(GND), .FCI(un1_y0_s_0_694_FCO), 
        .S(yn_64[0]), .Y(un1_y0_cry_0_Y), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_10_[9]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_64[9]), .Y(un1_a0_2_cry_7_Y), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_10_[15]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_64[15]), .Y(un1_x0_1_cry_15_Y_10), .FCO(
        un1_x0_1_cry_15_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_10_[5]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_64[5]), .Y(un1_a0_2_cry_3_Y), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_10_[14]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_64[14]), .Y(un1_a0_2_cry_12_Y), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_10_[11]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_64[11]), .Y(un1_x0_1_cry_11_Y_10), .FCO(
        un1_x0_1_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_10_[10]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_64[10]), .Y(un1_a0_2_cry_8_Y), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_10_[7]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_64[7]), .Y(un1_a0_2_cry_5_Y), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_10_[1]), .B(
        ai_10_[17]), .C(yi_10_[11]), .D(GND), .FCI(un1_x0_1_cry_0_Z), 
        .S(xn_64[1]), .Y(un1_x0_1_cry_1_Y_10), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_64[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[17]));
    SLE \yn[5]  (.D(yn_64[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[5]));
    SLE \an[9]  (.D(an_64[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_10_[7]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_64[7]), .Y(un1_y0_cry_7_Y_0), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_64[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[7]));
    SLE \an[14]  (.D(an_64[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[14]));
    SLE \xn[9]  (.D(xn_64[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[9]));
    SLE \xn[7]  (.D(xn_64[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[7]));
    SLE \an[8]  (.D(an_64[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[8]));
    SLE \yn[0]  (.D(yn_64[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_10_[8]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_64[8]), .Y(un1_y0_cry_8_Y_0), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_10_[11]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_64[11]), .Y(un1_a0_2_cry_9_Y), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_10_[5]), .B(
        ai_10_[17]), .C(yi_10_[15]), .D(GND), .FCI(un1_x0_1_cry_4_Z), 
        .S(xn_64[5]), .Y(un1_x0_1_cry_5_Y_10), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_64[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[16]));
    SLE \xn[8]  (.D(xn_64[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_10_[9]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_64[9]), .Y(un1_y0_cry_9_Y_0), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_10_[13]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), 
        .S(yn_64[13]), .Y(un1_y0_cry_13_Y_0), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_64[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_10_[13]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_64[13]), .Y(un1_a0_2_cry_11_Y), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_10_[6]), .B(
        ai_10_[17]), .C(yi_10_[16]), .D(GND), .FCI(un1_x0_1_cry_5_Z), 
        .S(xn_64[6]), .Y(un1_x0_1_cry_6_Y_10), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_10_[12]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_64[12]), .Y(un1_x0_1_cry_12_Y_10), .FCO(
        un1_x0_1_cry_12_Z));
    SLE \an[3]  (.D(an_64[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[3]));
    SLE \yn[15]  (.D(yn_64[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_10_[3]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_0_Z), .S(
        an_64[3]), .Y(un1_a0_2_cry_1_Y), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_64[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[10]));
    SLE \yn[11]  (.D(yn_64[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[11]));
    SLE \xn[14]  (.D(xn_64[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_10_[12]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), 
        .S(yn_64[12]), .Y(un1_y0_cry_12_Y_0), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_64[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_10_[4]), .B(
        ai_10_[17]), .C(yi_10_[14]), .D(GND), .FCI(un1_x0_1_cry_3_Z), 
        .S(xn_64[4]), .Y(un1_x0_1_cry_4_Y_10), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_10_[8]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_64[8]), .Y(un1_a0_2_cry_6_Y), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_10_[12]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_64[12]), .Y(un1_a0_2_cry_10_Y), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_10), .Y(un1_x0_1_cry_0_cy_Y_10), .FCO(
        un1_x0_1_cry_0_cy_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_694 (.A(VCC), .B(ai_10_[17])
        , .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_694_S), .Y(
        un1_y0_s_0_694_Y), .FCO(un1_y0_s_0_694_FCO));
    SLE \xn[11]  (.D(xn_64[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_10_[3]), .B(
        ai_10_[17]), .C(yi_10_[13]), .D(GND), .FCI(un1_x0_1_cry_2_Z), 
        .S(xn_64[3]), .Y(un1_x0_1_cry_3_Y_10), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_10_[15]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), 
        .S(yn_64[15]), .Y(un1_y0_cry_15_Y_0), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_64[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[10]));
    SLE \an[6]  (.D(an_64[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[6]));
    SLE \an[15]  (.D(an_64[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_10_[8]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), 
        .S(xn_64[8]), .Y(un1_x0_1_cry_8_Y_10), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_10_[5]), .B(
        ai_10_[17]), .C(xi_10_[15]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_64[5]), .Y(un1_y0_cry_5_Y_0), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_10_[4]), .B(
        ai_10_[17]), .C(xi_10_[14]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_64[4]), .Y(un1_y0_cry_4_Y_0), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_10_[2]), .B(
        ai_10_[17]), .C(xi_10_[12]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_64[2]), .Y(un1_y0_cry_2_Y_0), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_10_[2]), .B(
        ai_10_[17]), .C(yi_10_[12]), .D(GND), .FCI(un1_x0_1_cry_1_Z), 
        .S(xn_64[2]), .Y(un1_x0_1_cry_2_Y_10), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(un1_a0_2_cry_0_Y), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[2]));
    SLE \an[1]  (.D(ai_10_[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[1]));
    SLE \yn[9]  (.D(yn_64[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_10_[1]), .B(
        ai_10_[17]), .C(xi_10_[11]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_64[1]), .Y(un1_y0_cry_1_Y_0), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_10_[16]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_64[16]), .Y(un1_x0_1_cry_16_Y_10), .FCO(
        un1_x0_1_cry_16_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_2 (.A(ai_10_[4]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_64[4]), .Y(un1_a0_2_cry_2_Y), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_64[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[7]));
    SLE \xn[6]  (.D(xn_64[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[6]));
    SLE \an[17]  (.D(an_64[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[17]));
    SLE \yn[13]  (.D(yn_64[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[13]));
    SLE \an[13]  (.D(an_64[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[13]));
    SLE \xn[2]  (.D(xn_64[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[2]));
    SLE \xn[1]  (.D(xn_64[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_10_[14]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_64[14]), .Y(un1_x0_1_cry_14_Y_10), .FCO(
        un1_x0_1_cry_14_Z));
    SLE \yn[8]  (.D(yn_64[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[8]));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_14_Z), .Y(
        an_64[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_10_[14]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), 
        .S(yn_64[14]), .Y(un1_y0_cry_14_Y_0), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_64[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_10_[13]), .B(
        ai_10_[17]), .C(yi_10_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_64[13]), .Y(un1_x0_1_cry_13_Y_10), .FCO(
        un1_x0_1_cry_13_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_10_[16]), .B(
        ai_10_[17]), .C(xi_10_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), 
        .S(yn_64[16]), .Y(un1_y0_cry_16_Y), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_64[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_10_[6]), .B(
        ai_10_[17]), .C(xi_10_[16]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_64[6]), .Y(un1_y0_cry_6_Y_0), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_64[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[3]));
    SLE \yn[17]  (.D(yn_64[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[17]));
    SLE \yn[14]  (.D(yn_64[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[14]));
    SLE \xn[5]  (.D(xn_64[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_11_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_10_[3]), .B(
        ai_10_[17]), .C(xi_10_[13]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_64[3]), .Y(un1_y0_cry_3_Y_0), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_10_[15]), .B(
        ai_10_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_64[15]), .Y(un1_a0_2_cry_13_Y), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_64[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_11_[12]));
    SLE \an[16]  (.D(an_64[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_11_[16]));
    
endmodule


module cordic_par_calc_0_18_4_11s(
       yi_11_,
       ai_11_,
       xi_11_,
       ai_12_,
       xi_12_,
       yi_12_,
       clk
    );
input  [17:0] yi_11_;
input  [17:1] ai_11_;
input  [17:0] xi_11_;
output [17:1] ai_12_;
output [17:0] xi_12_;
output [17:0] yi_12_;
input  clk;

    wire [17:2] an_70;
    wire [17:0] yn_70;
    wire [17:0] xn_70;
    wire un1_a0_2_cry_15_Z, VCC, GND, un1_a0_2_cry_0_Y_0, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_2, 
        un1_x0_1_cry_0_cy_Y_2, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_2, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_2, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_2, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_2, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_2, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_2, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_2, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_2, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_2, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_2, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_2, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_2, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_2, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_2, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_2, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_2, 
        un1_x0_1_s_17_FCO_2, un1_x0_1_s_17_Y_2, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_2, un1_a0_2_cry_0_Z, un1_a0_2_cry_0_S_0, 
        un1_a0_2_cry_1_Z, un1_a0_2_cry_1_Y_1, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_1, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_1, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_1, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_1, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_1, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_1, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_1, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_1, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_1, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_1, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_1, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_1, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_Y_1, un1_a0_2_cry_15_Y_0, un1_y0_s_0_704_FCO, 
        un1_y0_s_0_704_S, un1_y0_s_0_704_Y, un1_y0_cry_0_Z, 
        un1_y0_cry_0_Y_9, un1_y0_cry_1_Z, un1_y0_cry_1_Y_10, 
        un1_y0_cry_2_Z, un1_y0_cry_2_Y_10, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y_10, un1_y0_cry_4_Z, un1_y0_cry_4_Y_10, 
        un1_y0_cry_5_Z, un1_y0_cry_5_Y_10, un1_y0_cry_6_Z, 
        un1_y0_cry_6_Y_10, un1_y0_cry_7_Z, un1_y0_cry_7_Y_10, 
        un1_y0_cry_8_Z, un1_y0_cry_8_Y_10, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y_10, un1_y0_cry_10_Z, un1_y0_cry_10_Y_10, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y_10, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y_10, un1_y0_cry_13_Z, un1_y0_cry_13_Y_10, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y_10, un1_y0_cry_15_Z, 
        un1_y0_cry_15_Y_10, un1_y0_s_17_FCO_9, un1_y0_s_17_Y_9, 
        un1_y0_cry_16_Z, un1_y0_cry_16_Y_9, N_1413;
    
    SLE \xn[16]  (.D(xn_70[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_11_[10]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), 
        .S(xn_70[10]), .Y(un1_x0_1_cry_10_Y_2), .FCO(un1_x0_1_cry_10_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_11_[5]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_70[5]), .Y(un1_a0_2_cry_4_Y_1), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_11_[10]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_70[10]), .Y(un1_y0_cry_10_Y_10), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_70[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_11_[11]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), 
        .S(yn_70[11]), .Y(un1_y0_cry_11_Y_10), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h65500) )  un1_a0_2_cry_0 (.A(VCC), .B(ai_11_[1]), 
        .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_0_S_0), .Y(
        un1_a0_2_cry_0_Y_0), .FCO(un1_a0_2_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_11_[15]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_70[15]), .Y(un1_a0_2_cry_14_Y_1), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_70[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[4]));
    SLE \an[10]  (.D(an_70[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_11_[0]), .B(
        ai_11_[17]), .C(yi_11_[11]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z)
        , .S(xn_70[0]), .Y(un1_x0_1_cry_0_Y_2), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_70[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[6]));
    SLE \xn[15]  (.D(xn_70[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[15]));
    SLE \xn[13]  (.D(xn_70[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[13]));
    SLE \an[11]  (.D(an_70[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[11]));
    SLE \xn[4]  (.D(xn_70[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_11_[17]), 
        .C(xi_11_[17]), .D(yi_11_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_70[17]), .Y(un1_x0_1_s_17_Y_2), .FCO(un1_x0_1_s_17_FCO_2));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_11_[7]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), 
        .S(xn_70[7]), .Y(un1_x0_1_cry_7_Y_2), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_70[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[2]));
    SLE \yn[1]  (.D(yn_70[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_11_[17]), 
        .C(xi_11_[17]), .D(yi_11_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_70[17]), .Y(un1_y0_s_17_Y_9), .FCO(un1_y0_s_17_FCO_9));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_11_[9]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), 
        .S(xn_70[9]), .Y(un1_x0_1_cry_9_Y_2), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_70[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_11_[0]), .B(
        ai_11_[17]), .C(xi_11_[11]), .D(GND), .FCI(un1_y0_s_0_704_FCO), 
        .S(yn_70[0]), .Y(un1_y0_cry_0_Y_9), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_11_[8]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_70[8]), .Y(un1_a0_2_cry_7_Y_1), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_11_[15]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_70[15]), .Y(un1_x0_1_cry_15_Y_2), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_11_[4]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_70[4]), .Y(un1_a0_2_cry_3_Y_1), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_11_[13]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_70[13]), .Y(un1_a0_2_cry_12_Y_1), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_11_[11]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_70[11]), .Y(un1_x0_1_cry_11_Y_2), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_11_[9]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_70[9]), .Y(un1_a0_2_cry_8_Y_1), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_11_[6]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_70[6]), .Y(un1_a0_2_cry_5_Y_1), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_11_[1]), .B(
        ai_11_[17]), .C(yi_11_[12]), .D(GND), .FCI(un1_x0_1_cry_0_Z), 
        .S(xn_70[1]), .Y(un1_x0_1_cry_1_Y_2), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_70[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[17]));
    SLE \yn[5]  (.D(yn_70[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[5]));
    SLE \an[9]  (.D(an_70[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_11_[7]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_70[7]), .Y(un1_y0_cry_7_Y_10), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_70[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[7]));
    SLE \an[14]  (.D(an_70[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[14]));
    SLE \xn[9]  (.D(xn_70[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[9]));
    SLE \xn[7]  (.D(xn_70[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[7]));
    SLE \an[8]  (.D(an_70[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[8]));
    SLE \yn[0]  (.D(yn_70[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_11_[8]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_70[8]), .Y(un1_y0_cry_8_Y_10), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_11_[10]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_70[10]), .Y(un1_a0_2_cry_9_Y_1), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_11_[5]), .B(
        ai_11_[17]), .C(yi_11_[16]), .D(GND), .FCI(un1_x0_1_cry_4_Z), 
        .S(xn_70[5]), .Y(un1_x0_1_cry_5_Y_2), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_70[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[16]));
    SLE \xn[8]  (.D(xn_70[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_11_[9]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_70[9]), .Y(un1_y0_cry_9_Y_10), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_11_[13]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), 
        .S(yn_70[13]), .Y(un1_y0_cry_13_Y_10), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_70[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_11_[12]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_70[12]), .Y(un1_a0_2_cry_11_Y_1), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_11_[6]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_5_Z), 
        .S(xn_70[6]), .Y(un1_x0_1_cry_6_Y_2), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_11_[12]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_70[12]), .Y(un1_x0_1_cry_12_Y_2), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_70[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[3]));
    SLE \yn[15]  (.D(yn_70[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_11_[2]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_0_Z), .S(
        an_70[2]), .Y(un1_a0_2_cry_1_Y_1), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_70[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[10]));
    SLE \yn[11]  (.D(yn_70[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[11]));
    SLE \xn[14]  (.D(xn_70[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_11_[12]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), 
        .S(yn_70[12]), .Y(un1_y0_cry_12_Y_10), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_70[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_11_[4]), .B(
        ai_11_[17]), .C(yi_11_[15]), .D(GND), .FCI(un1_x0_1_cry_3_Z), 
        .S(xn_70[4]), .Y(un1_x0_1_cry_4_Y_2), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_11_[7]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_70[7]), .Y(un1_a0_2_cry_6_Y_1), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_11_[11]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_70[11]), .Y(un1_a0_2_cry_10_Y_1), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_2), .Y(un1_x0_1_cry_0_cy_Y_2), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_70[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_11_[3]), .B(
        ai_11_[17]), .C(yi_11_[14]), .D(GND), .FCI(un1_x0_1_cry_2_Z), 
        .S(xn_70[3]), .Y(un1_x0_1_cry_3_Y_2), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_11_[15]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), 
        .S(yn_70[15]), .Y(un1_y0_cry_15_Y_10), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_70[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[10]));
    SLE \an[6]  (.D(an_70[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[6]));
    SLE \an[15]  (.D(an_70[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_11_[8]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), 
        .S(xn_70[8]), .Y(un1_x0_1_cry_8_Y_2), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_11_[5]), .B(
        ai_11_[17]), .C(xi_11_[16]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_70[5]), .Y(un1_y0_cry_5_Y_10), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_11_[4]), .B(
        ai_11_[17]), .C(xi_11_[15]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_70[4]), .Y(un1_y0_cry_4_Y_10), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_11_[2]), .B(
        ai_11_[17]), .C(xi_11_[13]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_70[2]), .Y(un1_y0_cry_2_Y_10), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_11_[2]), .B(
        ai_11_[17]), .C(yi_11_[13]), .D(GND), .FCI(un1_x0_1_cry_1_Z), 
        .S(xn_70[2]), .Y(un1_x0_1_cry_2_Y_2), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_70[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[2]));
    SLE \an[1]  (.D(un1_a0_2_cry_0_Y_0), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[1]));
    SLE \yn[9]  (.D(yn_70[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[9]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_704 (.A(VCC), .B(ai_11_[17])
        , .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_704_S), .Y(
        un1_y0_s_0_704_Y), .FCO(un1_y0_s_0_704_FCO));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_11_[1]), .B(
        ai_11_[17]), .C(xi_11_[12]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_70[1]), .Y(un1_y0_cry_1_Y_10), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_11_[16]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_70[16]), .Y(un1_x0_1_cry_16_Y_2), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_2 (.A(ai_11_[3]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_70[3]), .Y(un1_a0_2_cry_2_Y_1), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_70[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[7]));
    SLE \xn[6]  (.D(xn_70[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[6]));
    SLE \an[17]  (.D(an_70[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[17]));
    SLE \yn[13]  (.D(yn_70[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[13]));
    SLE \an[13]  (.D(an_70[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[13]));
    SLE \xn[2]  (.D(xn_70[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[2]));
    SLE \xn[1]  (.D(xn_70[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_11_[14]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_70[14]), .Y(un1_x0_1_cry_14_Y_2), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_70[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_11_[16]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_70[16]), .Y(un1_a0_2_cry_15_Y_0), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_15_Z), .Y(
        an_70[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_11_[14]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), 
        .S(yn_70[14]), .Y(un1_y0_cry_14_Y_10), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_70[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_11_[13]), .B(
        ai_11_[17]), .C(yi_11_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_70[13]), .Y(un1_x0_1_cry_13_Y_2), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_11_[16]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), 
        .S(yn_70[16]), .Y(un1_y0_cry_16_Y_9), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_70[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_11_[6]), .B(
        ai_11_[17]), .C(xi_11_[17]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_70[6]), .Y(un1_y0_cry_6_Y_10), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_70[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[3]));
    SLE \yn[17]  (.D(yn_70[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[17]));
    SLE \yn[14]  (.D(yn_70[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[14]));
    SLE \xn[5]  (.D(xn_70[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_12_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_11_[3]), .B(
        ai_11_[17]), .C(xi_11_[14]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_70[3]), .Y(un1_y0_cry_3_Y_10), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_11_[14]), .B(
        ai_11_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_70[14]), .Y(un1_a0_2_cry_13_Y_1), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_70[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_12_[12]));
    SLE \an[16]  (.D(an_70[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_12_[16]));
    
endmodule


module cordic_par_calc_0_18_4_2s(
       yi_2_,
       ai_2_,
       xi_2_,
       yi_3_,
       ai_3_,
       xi_3_,
       clk
    );
input  [16:1] yi_2_;
input  [17:2] ai_2_;
input  [16:1] xi_2_;
output [17:0] yi_3_;
output [17:2] ai_3_;
output [17:0] xi_3_;
input  clk;

    wire [17:3] an_16;
    wire [17:0] xn_16;
    wire [17:0] yn_16;
    wire un1_a0_2_cry_15_Z, VCC, GND, un1_a0_2_cry_1_Y_2, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_3, 
        un1_x0_1_cry_0_cy_Y_3, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_3, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_3, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_3, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_3, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_3, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_3, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_3, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_3, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_3, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_3, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_3, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_3, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_3, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_3, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_3, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_3, 
        un1_x0_1_s_17_FCO_3, un1_x0_1_s_17_Y_3, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_3, un1_a0_2_cry_1_Z, un1_a0_2_cry_1_S_0, 
        un1_a0_2_cry_2_Z, un1_a0_2_cry_2_Y_2, un1_a0_2_cry_3_Z, 
        un1_a0_2_cry_3_Y_2, un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_2, 
        un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_2, un1_a0_2_cry_6_Z, 
        un1_a0_2_cry_6_Y_2, un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_2, 
        un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_2, un1_a0_2_cry_9_Z, 
        un1_a0_2_cry_9_Y_2, un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_2, 
        un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_2, un1_a0_2_cry_12_Z, 
        un1_a0_2_cry_12_Y_2, un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_2, 
        un1_a0_2_cry_14_Z, un1_a0_2_cry_14_Y_2, un1_a0_2_cry_15_Y_1, 
        un1_y0_s_0_702_FCO, un1_y0_s_0_702_S, un1_y0_s_0_702_Y, 
        un1_y0_cry_0_Z, un1_y0_cry_0_Y_7, un1_y0_cry_1_Z, 
        un1_y0_cry_1_Y_8, un1_y0_cry_2_Z, un1_y0_cry_2_Y_8, 
        un1_y0_cry_3_Z, un1_y0_cry_3_Y_8, un1_y0_cry_4_Z, 
        un1_y0_cry_4_Y_8, un1_y0_cry_5_Z, un1_y0_cry_5_Y_8, 
        un1_y0_cry_6_Z, un1_y0_cry_6_Y_8, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y_8, un1_y0_cry_8_Z, un1_y0_cry_8_Y_8, 
        un1_y0_cry_9_Z, un1_y0_cry_9_Y_8, un1_y0_cry_10_Z, 
        un1_y0_cry_10_Y_8, un1_y0_cry_11_Z, un1_y0_cry_11_Y_8, 
        un1_y0_cry_12_Z, un1_y0_cry_12_Y_8, un1_y0_cry_13_Z, 
        un1_y0_cry_13_Y_8, un1_y0_cry_14_Z, un1_y0_cry_14_Y_8, 
        un1_y0_cry_15_Z, un1_y0_cry_15_Y_8, un1_y0_s_17_FCO_7, 
        un1_y0_s_17_Y_7, un1_y0_cry_16_Z, un1_y0_cry_16_Y_7, N_692;
    
    SLE \xn[16]  (.D(xn_16[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_2_[10]), .B(
        ai_2_[17]), .C(yi_2_[12]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_16[10]), .Y(un1_x0_1_cry_10_Y_3), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_4 (.A(ai_2_[5]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_16[5]), .Y(un1_a0_2_cry_4_Y_2), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_2_[10]), .B(
        ai_2_[17]), .C(xi_2_[12]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_16[10]), .Y(un1_y0_cry_10_Y_8), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_16[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_2_[11]), .B(
        ai_2_[17]), .C(xi_2_[13]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_16[11]), .Y(un1_y0_cry_11_Y_8), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_2_[15]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_16[15]), .Y(un1_a0_2_cry_14_Y_2), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_16[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[4]));
    SLE \an[10]  (.D(an_16[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[10]));
    ARI1 #( .INIT(20'h66600) )  un1_x0_1_cry_0 (.A(VCC), .B(ai_2_[17]), 
        .C(yi_2_[2]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), .S(xn_16[0]), 
        .Y(un1_x0_1_cry_0_Y_3), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_16[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[6]));
    SLE \xn[15]  (.D(xn_16[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[15]));
    SLE \xn[13]  (.D(xn_16[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[13]));
    SLE \an[11]  (.D(an_16[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[11]));
    SLE \xn[4]  (.D(xn_16[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_2_[17]), 
        .C(xi_2_[16]), .D(yi_2_[16]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_16[17]), .Y(un1_x0_1_s_17_Y_3), .FCO(un1_x0_1_s_17_FCO_3));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_2_[7]), .B(
        ai_2_[17]), .C(yi_2_[9]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_16[7]), .Y(un1_x0_1_cry_7_Y_3), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_16[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[2]));
    SLE \yn[1]  (.D(yn_16[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_2_[17]), 
        .C(xi_2_[16]), .D(yi_2_[16]), .FCI(un1_y0_cry_16_Z), .S(
        yn_16[17]), .Y(un1_y0_s_17_Y_7), .FCO(un1_y0_s_17_FCO_7));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_2_[9]), .B(
        ai_2_[17]), .C(yi_2_[11]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_16[9]), .Y(un1_x0_1_cry_9_Y_3), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_16[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[12]));
    ARI1 #( .INIT(20'h69900) )  un1_y0_cry_0 (.A(VCC), .B(ai_2_[17]), 
        .C(xi_2_[2]), .D(GND), .FCI(un1_y0_s_0_702_FCO), .S(yn_16[0]), 
        .Y(un1_y0_cry_0_Y_7), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_7 (.A(ai_2_[8]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_16[8]), .Y(un1_a0_2_cry_7_Y_2), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_2_[15]), .B(
        ai_2_[17]), .C(yi_2_[16]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_16[15]), .Y(un1_x0_1_cry_15_Y_3), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_702 (.A(VCC), .B(ai_2_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_702_S), .Y(
        un1_y0_s_0_702_Y), .FCO(un1_y0_s_0_702_FCO));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_3 (.A(ai_2_[4]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_16[4]), .Y(un1_a0_2_cry_3_Y_2), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_2_[13]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_16[13]), .Y(un1_a0_2_cry_12_Y_2), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_2_[11]), .B(
        ai_2_[17]), .C(yi_2_[13]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_16[11]), .Y(un1_x0_1_cry_11_Y_3), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_8 (.A(ai_2_[9]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_16[9]), .Y(un1_a0_2_cry_8_Y_2), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_2_[6]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_16[6]), .Y(un1_a0_2_cry_5_Y_2), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_2_[1]), .B(
        ai_2_[17]), .C(yi_2_[3]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_16[1]), .Y(un1_x0_1_cry_1_Y_3), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_16[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[17]));
    SLE \yn[5]  (.D(yn_16[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[5]));
    SLE \an[9]  (.D(an_16[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_2_[7]), .B(
        ai_2_[17]), .C(xi_2_[9]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_16[7]), .Y(un1_y0_cry_7_Y_8), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_16[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[7]));
    SLE \an[14]  (.D(an_16[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[14]));
    SLE \xn[9]  (.D(xn_16[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[9]));
    SLE \xn[7]  (.D(xn_16[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[7]));
    SLE \an[8]  (.D(an_16[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[8]));
    SLE \yn[0]  (.D(yn_16[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_2_[8]), .B(
        ai_2_[17]), .C(xi_2_[10]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_16[8]), .Y(un1_y0_cry_8_Y_8), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_2_[10]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_16[10]), .Y(un1_a0_2_cry_9_Y_2), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_2_[5]), .B(
        ai_2_[17]), .C(yi_2_[7]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_16[5]), .Y(un1_x0_1_cry_5_Y_3), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_16[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[16]));
    SLE \xn[8]  (.D(xn_16[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_2_[9]), .B(
        ai_2_[17]), .C(xi_2_[11]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_16[9]), .Y(un1_y0_cry_9_Y_8), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_2_[13]), .B(
        ai_2_[17]), .C(xi_2_[15]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_16[13]), .Y(un1_y0_cry_13_Y_8), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_16[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[4]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_11 (.A(ai_2_[12]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_16[12]), .Y(un1_a0_2_cry_11_Y_2), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_2_[6]), .B(
        ai_2_[17]), .C(yi_2_[8]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_16[6]), .Y(un1_x0_1_cry_6_Y_3), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_2_[12]), .B(
        ai_2_[17]), .C(yi_2_[14]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_16[12]), .Y(un1_x0_1_cry_12_Y_3), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_16[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[3]));
    SLE \yn[15]  (.D(yn_16[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[15]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_1 (.A(ai_2_[2]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_1_S_0)
        , .Y(un1_a0_2_cry_1_Y_2), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_16[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[10]));
    SLE \yn[11]  (.D(yn_16[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[11]));
    SLE \xn[14]  (.D(xn_16[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_2_[12]), .B(
        ai_2_[17]), .C(xi_2_[14]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_16[12]), .Y(un1_y0_cry_12_Y_8), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_16[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_2_[4]), .B(
        ai_2_[17]), .C(yi_2_[6]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_16[4]), .Y(un1_x0_1_cry_4_Y_3), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_6 (.A(ai_2_[7]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_16[7]), .Y(un1_a0_2_cry_6_Y_2), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_2_[11]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_16[11]), .Y(un1_a0_2_cry_10_Y_2), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_3), .Y(un1_x0_1_cry_0_cy_Y_3), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_16[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_2_[3]), .B(
        ai_2_[17]), .C(yi_2_[5]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_16[3]), .Y(un1_x0_1_cry_3_Y_3), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_2_[15]), .B(
        ai_2_[17]), .C(xi_2_[16]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_16[15]), .Y(un1_y0_cry_15_Y_8), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_16[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[10]));
    SLE \an[6]  (.D(an_16[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[6]));
    SLE \an[15]  (.D(an_16[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_2_[8]), .B(
        ai_2_[17]), .C(yi_2_[10]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_16[8]), .Y(un1_x0_1_cry_8_Y_3), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_2_[5]), .B(
        ai_2_[17]), .C(xi_2_[7]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_16[5]), .Y(un1_y0_cry_5_Y_8), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_2_[4]), .B(
        ai_2_[17]), .C(xi_2_[6]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_16[4]), .Y(un1_y0_cry_4_Y_8), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_2_[2]), .B(
        ai_2_[17]), .C(xi_2_[4]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_16[2]), .Y(un1_y0_cry_2_Y_8), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_2_[2]), .B(
        ai_2_[17]), .C(yi_2_[4]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_16[2]), .Y(un1_x0_1_cry_2_Y_3), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(un1_a0_2_cry_1_Y_2), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[2]));
    SLE \yn[9]  (.D(yn_16[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_2_[1]), .B(
        ai_2_[17]), .C(xi_2_[3]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_16[1]), .Y(un1_y0_cry_1_Y_8), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_2_[16]), .B(
        ai_2_[17]), .C(yi_2_[16]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_16[16]), .Y(un1_x0_1_cry_16_Y_3), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_2_[3]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_16[3]), .Y(un1_a0_2_cry_2_Y_2), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_16[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[7]));
    SLE \xn[6]  (.D(xn_16[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[6]));
    SLE \an[17]  (.D(an_16[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[17]));
    SLE \yn[13]  (.D(yn_16[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[13]));
    SLE \an[13]  (.D(an_16[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[13]));
    SLE \xn[2]  (.D(xn_16[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[2]));
    SLE \xn[1]  (.D(xn_16[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_2_[14]), .B(
        ai_2_[17]), .C(yi_2_[16]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_16[14]), .Y(un1_x0_1_cry_14_Y_3), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_16[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_2_[16]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_16[16]), .Y(un1_a0_2_cry_15_Y_1), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_15_Z), .Y(
        an_16[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_2_[14]), .B(
        ai_2_[17]), .C(xi_2_[16]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_16[14]), .Y(un1_y0_cry_14_Y_8), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_16[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_2_[13]), .B(
        ai_2_[17]), .C(yi_2_[15]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_16[13]), .Y(un1_x0_1_cry_13_Y_3), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_2_[16]), .B(
        ai_2_[17]), .C(xi_2_[16]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_16[16]), .Y(un1_y0_cry_16_Y_7), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_16[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_2_[6]), .B(
        ai_2_[17]), .C(xi_2_[8]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_16[6]), .Y(un1_y0_cry_6_Y_8), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_16[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[3]));
    SLE \yn[17]  (.D(yn_16[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[17]));
    SLE \yn[14]  (.D(yn_16[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[14]));
    SLE \xn[5]  (.D(xn_16[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_3_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_2_[3]), .B(
        ai_2_[17]), .C(xi_2_[5]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_16[3]), .Y(un1_y0_cry_3_Y_8), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_2_[14]), .B(
        ai_2_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_16[14]), .Y(un1_a0_2_cry_13_Y_2), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_16[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_3_[12]));
    SLE \an[16]  (.D(an_16[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_3_[16]));
    
endmodule


module cordic_par_calc_0_18_4_15s(
       yi_15_,
       xi_15_,
       ai_15__0,
       yn_u,
       xn_u,
       clk
    );
input  [17:0] yi_15_;
input  [17:0] xi_15_;
input  ai_15__0;
output [17:0] yn_u;
output [17:0] xn_u;
input  clk;

    wire [17:0] xn_94;
    wire [17:0] yn_94;
    wire VCC, GND, un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_8, 
        un1_x0_1_cry_0_cy_Y_8, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_8, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_8, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_8, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_8, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_8, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_8, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_8, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_8, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_8, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_8, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_8, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_8, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_8, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_8, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_8, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_8, 
        un1_x0_1_s_17_FCO_8, un1_x0_1_s_17_Y_8, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_8, un1_y0_s_0_699_FCO, un1_y0_s_0_699_S, 
        un1_y0_s_0_699_Y, un1_y0_cry_0_Z, un1_y0_cry_0_Y_4, 
        un1_y0_cry_1_Z, un1_y0_cry_1_Y_5, un1_y0_cry_2_Z, 
        un1_y0_cry_2_Y_5, un1_y0_cry_3_Z, un1_y0_cry_3_Y_5, 
        un1_y0_cry_4_Z, un1_y0_cry_4_Y_5, un1_y0_cry_5_Z, 
        un1_y0_cry_5_Y_5, un1_y0_cry_6_Z, un1_y0_cry_6_Y_5, 
        un1_y0_cry_7_Z, un1_y0_cry_7_Y_5, un1_y0_cry_8_Z, 
        un1_y0_cry_8_Y_5, un1_y0_cry_9_Z, un1_y0_cry_9_Y_5, 
        un1_y0_cry_10_Z, un1_y0_cry_10_Y_5, un1_y0_cry_11_Z, 
        un1_y0_cry_11_Y_5, un1_y0_cry_12_Z, un1_y0_cry_12_Y_5, 
        un1_y0_cry_13_Z, un1_y0_cry_13_Y_5, un1_y0_cry_14_Z, 
        un1_y0_cry_14_Y_5, un1_y0_cry_15_Z, un1_y0_cry_15_Y_5, 
        un1_y0_s_17_FCO_4, un1_y0_s_17_Y_4, un1_y0_cry_16_Z, 
        un1_y0_cry_16_Y_4, N_39, N_38, N_37, N_36, N_35, N_34, N_33, 
        N_32, N_31, N_30, N_29, N_28, N_27, N_26, N_25, N_24, N_23, 
        N_22;
    
    SLE \xn[16]  (.D(xn_94[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_15_[10]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_94[10]), .Y(un1_x0_1_cry_10_Y_8), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_15_[10]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_94[10]), .Y(un1_y0_cry_10_Y_5), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_94[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_15_[11]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_94[11]), .Y(un1_y0_cry_11_Y_5), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_15_[0]), .B(
        ai_15__0), .C(yi_15_[15]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_94[0]), .Y(un1_x0_1_cry_0_Y_8), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_94[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[6]));
    SLE \xn[15]  (.D(xn_94[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[15]));
    SLE \xn[13]  (.D(xn_94[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[13]));
    SLE \xn[4]  (.D(xn_94[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_15__0), 
        .C(xi_15_[17]), .D(yi_15_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_94[17]), .Y(un1_x0_1_s_17_Y_8), .FCO(un1_x0_1_s_17_FCO_8));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_15_[7]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_94[7]), .Y(un1_x0_1_cry_7_Y_8), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_94[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[2]));
    SLE \yn[1]  (.D(yn_94[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_15__0), .C(
        xi_15_[17]), .D(yi_15_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_94[17]), .Y(un1_y0_s_17_Y_4), .FCO(un1_y0_s_17_FCO_4));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_15_[9]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_94[9]), .Y(un1_x0_1_cry_9_Y_8), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_94[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_15_[0]), .B(
        ai_15__0), .C(xi_15_[15]), .D(GND), .FCI(un1_y0_s_0_699_FCO), 
        .S(yn_94[0]), .Y(un1_y0_cry_0_Y_4), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_15_[15]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_94[15]), .Y(un1_x0_1_cry_15_Y_8), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_15_[11]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_94[11]), .Y(un1_x0_1_cry_11_Y_8), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_15_[1]), .B(
        ai_15__0), .C(yi_15_[16]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_94[1]), .Y(un1_x0_1_cry_1_Y_8), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_94[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[17]));
    SLE \yn[5]  (.D(yn_94[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_15_[7]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_94[7]), .Y(un1_y0_cry_7_Y_5), .FCO(un1_y0_cry_7_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_699 (.A(VCC), .B(ai_15__0), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_699_S), .Y(
        un1_y0_s_0_699_Y), .FCO(un1_y0_s_0_699_FCO));
    SLE \xn[9]  (.D(xn_94[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[9]));
    SLE \xn[7]  (.D(xn_94[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[7]));
    SLE \yn[0]  (.D(yn_94[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_15_[8]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_94[8]), .Y(un1_y0_cry_8_Y_5), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_15_[5]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_94[5]), .Y(un1_x0_1_cry_5_Y_8), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_94[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[16]));
    SLE \xn[8]  (.D(xn_94[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_15_[9]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_94[9]), .Y(un1_y0_cry_9_Y_5), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_15_[13]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_94[13]), .Y(un1_y0_cry_13_Y_5), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_94[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[4]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_15_[6]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_94[6]), .Y(un1_x0_1_cry_6_Y_8), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_15_[12]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_94[12]), .Y(un1_x0_1_cry_12_Y_8), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \yn[15]  (.D(yn_94[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[15]));
    SLE \xn[10]  (.D(xn_94[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[10]));
    SLE \yn[11]  (.D(yn_94[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[11]));
    SLE \xn[14]  (.D(xn_94[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_15_[12]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_94[12]), .Y(un1_y0_cry_12_Y_5), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_94[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_15_[4]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_94[4]), .Y(un1_x0_1_cry_4_Y_8), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_15__0), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_8), .Y(un1_x0_1_cry_0_cy_Y_8), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_94[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_15_[3]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_94[3]), .Y(un1_x0_1_cry_3_Y_8), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_15_[15]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_94[15]), .Y(un1_y0_cry_15_Y_5), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_94[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_15_[8]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_94[8]), .Y(un1_x0_1_cry_8_Y_8), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_15_[5]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_94[5]), .Y(un1_y0_cry_5_Y_5), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_15_[4]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_94[4]), .Y(un1_y0_cry_4_Y_5), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_15_[2]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_94[2]), .Y(un1_y0_cry_2_Y_5), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_15_[2]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_94[2]), .Y(un1_x0_1_cry_2_Y_8), .FCO(un1_x0_1_cry_2_Z));
    SLE \yn[9]  (.D(yn_94[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_15_[1]), .B(
        ai_15__0), .C(xi_15_[16]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_94[1]), .Y(un1_y0_cry_1_Y_5), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_15_[16]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_94[16]), .Y(un1_x0_1_cry_16_Y_8), .FCO(un1_x0_1_cry_16_Z)
        );
    SLE \yn[7]  (.D(yn_94[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[7]));
    SLE \xn[6]  (.D(xn_94[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[6]));
    SLE \yn[13]  (.D(yn_94[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[13]));
    SLE \xn[2]  (.D(xn_94[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[2]));
    SLE \xn[1]  (.D(xn_94[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_15_[14]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_94[14]), .Y(un1_x0_1_cry_14_Y_8), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_94[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_15_[14]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_94[14]), .Y(un1_y0_cry_14_Y_5), .FCO(un1_y0_cry_14_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_15_[13]), .B(
        ai_15__0), .C(yi_15_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_94[13]), .Y(un1_x0_1_cry_13_Y_8), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_15_[16]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_94[16]), .Y(un1_y0_cry_16_Y_4), .FCO(un1_y0_cry_16_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_15_[6]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_94[6]), .Y(un1_y0_cry_6_Y_5), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_94[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[3]));
    SLE \yn[17]  (.D(yn_94[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[17]));
    SLE \yn[14]  (.D(yn_94[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[14]));
    SLE \xn[5]  (.D(xn_94[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xn_u[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_15_[3]), .B(
        ai_15__0), .C(xi_15_[17]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_94[3]), .Y(un1_y0_cry_3_Y_5), .FCO(un1_y0_cry_3_Z));
    SLE \yn[12]  (.D(yn_94[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yn_u[12]));
    
endmodule


module cordic_par_calc_0_18_4_7s(
       yi_7_,
       ai_7_,
       xi_7_,
       ai_8_,
       xi_8_,
       yi_8_,
       clk
    );
input  [17:0] yi_7_;
input  [17:2] ai_7_;
input  [17:0] xi_7_;
output [17:1] ai_8_;
output [17:0] xi_8_;
output [17:0] yi_8_;
input  clk;

    wire [17:3] an_46;
    wire [17:0] yn_46;
    wire [17:0] xn_46;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_a0_2_cry_2_Y_12, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_0, 
        un1_x0_1_cry_0_cy_Y_0, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_0, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_0, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_0, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_0, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_0, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_0, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_0, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_0, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_0, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_0, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_0, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_0, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_0, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_0, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_0, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_0, 
        un1_x0_1_s_17_FCO_0, un1_x0_1_s_17_Y_0, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_0, un1_a0_2_cry_2_Z, un1_a0_2_cry_2_S_0, 
        un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_12, un1_a0_2_cry_4_Z, 
        un1_a0_2_cry_4_Y_12, un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_12, 
        un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_12, un1_a0_2_cry_7_Z, 
        un1_a0_2_cry_7_Y_12, un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_12, 
        un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_12, un1_a0_2_cry_10_Z, 
        un1_a0_2_cry_10_Y_12, un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_12, 
        un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_12, un1_a0_2_cry_13_Z, 
        un1_a0_2_cry_13_Y_12, un1_a0_2_cry_14_Z, un1_a0_2_cry_14_Y_12, 
        un1_a0_2_cry_15_Z, un1_a0_2_cry_15_Y_9, un1_a0_2_cry_16_Y_4, 
        un1_y0_s_0_706_FCO, un1_y0_s_0_706_S, un1_y0_s_0_706_Y, 
        un1_y0_cry_0_Z, un1_y0_cry_0_Y_11, un1_y0_cry_1_Z, 
        un1_y0_cry_1_Y_12, un1_y0_cry_2_Z, un1_y0_cry_2_Y_12, 
        un1_y0_cry_3_Z, un1_y0_cry_3_Y_12, un1_y0_cry_4_Z, 
        un1_y0_cry_4_Y_12, un1_y0_cry_5_Z, un1_y0_cry_5_Y_12, 
        un1_y0_cry_6_Z, un1_y0_cry_6_Y_12, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y_12, un1_y0_cry_8_Z, un1_y0_cry_8_Y_12, 
        un1_y0_cry_9_Z, un1_y0_cry_9_Y_12, un1_y0_cry_10_Z, 
        un1_y0_cry_10_Y_12, un1_y0_cry_11_Z, un1_y0_cry_11_Y_12, 
        un1_y0_cry_12_Z, un1_y0_cry_12_Y_12, un1_y0_cry_13_Z, 
        un1_y0_cry_13_Y_12, un1_y0_cry_14_Z, un1_y0_cry_14_Y_12, 
        un1_y0_cry_15_Z, un1_y0_cry_15_Y_12, un1_y0_s_17_FCO_11, 
        un1_y0_s_17_Y_11, un1_y0_cry_16_Z, un1_y0_cry_16_Y_11;
    
    SLE \xn[16]  (.D(xn_46[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_7_[10]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_46[10]), .Y(un1_x0_1_cry_10_Y_0), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_7_[4]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_46[4]), .Y(un1_a0_2_cry_4_Y_12), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_7_[10]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_46[10]), .Y(un1_y0_cry_10_Y_12), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_46[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_7_[11]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_46[11]), .Y(un1_y0_cry_11_Y_12), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_7_[14]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_46[14]), .Y(un1_a0_2_cry_14_Y_12), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_46[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[4]));
    SLE \an[10]  (.D(an_46[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_7_[0]), .B(
        ai_7_[17]), .C(yi_7_[7]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_46[0]), .Y(un1_x0_1_cry_0_Y_0), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_46[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[6]));
    SLE \xn[15]  (.D(xn_46[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[15]));
    SLE \xn[13]  (.D(xn_46[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[13]));
    SLE \an[11]  (.D(an_46[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[11]));
    SLE \xn[4]  (.D(xn_46[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_7_[17]), 
        .C(xi_7_[17]), .D(yi_7_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_46[17]), .Y(un1_x0_1_s_17_Y_0), .FCO(un1_x0_1_s_17_FCO_0));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_7_[7]), .B(
        ai_7_[17]), .C(yi_7_[14]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_46[7]), .Y(un1_x0_1_cry_7_Y_0), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_46[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[2]));
    SLE \yn[1]  (.D(yn_46[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_7_[17]), 
        .C(xi_7_[17]), .D(yi_7_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_46[17]), .Y(un1_y0_s_17_Y_11), .FCO(un1_y0_s_17_FCO_11));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_7_[9]), .B(
        ai_7_[17]), .C(yi_7_[16]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_46[9]), .Y(un1_x0_1_cry_9_Y_0), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_46[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_7_[0]), .B(
        ai_7_[17]), .C(xi_7_[7]), .D(GND), .FCI(un1_y0_s_0_706_FCO), 
        .S(yn_46[0]), .Y(un1_y0_cry_0_Y_11), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_7 (.A(ai_7_[7]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_46[7]), .Y(un1_a0_2_cry_7_Y_12), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_7_[15]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_46[15]), .Y(un1_x0_1_cry_15_Y_0), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_7_[3]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_46[3]), .Y(un1_a0_2_cry_3_Y_12), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_7_[12]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_46[12]), .Y(un1_a0_2_cry_12_Y_12), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_7_[11]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_46[11]), .Y(un1_x0_1_cry_11_Y_0), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_7_[8]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_46[8]), .Y(un1_a0_2_cry_8_Y_12), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_7_[5]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_46[5]), .Y(un1_a0_2_cry_5_Y_12), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_7_[1]), .B(
        ai_7_[17]), .C(yi_7_[8]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_46[1]), .Y(un1_x0_1_cry_1_Y_0), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_46[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[17]));
    SLE \yn[5]  (.D(yn_46[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[5]));
    SLE \an[9]  (.D(an_46[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_7_[7]), .B(
        ai_7_[17]), .C(xi_7_[14]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_46[7]), .Y(un1_y0_cry_7_Y_12), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_46[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[7]));
    SLE \an[14]  (.D(an_46[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[14]));
    SLE \xn[9]  (.D(xn_46[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[9]));
    SLE \xn[7]  (.D(xn_46[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[7]));
    SLE \an[8]  (.D(an_46[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[8]));
    SLE \yn[0]  (.D(yn_46[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_7_[8]), .B(
        ai_7_[17]), .C(xi_7_[15]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_46[8]), .Y(un1_y0_cry_8_Y_12), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_7_[9]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_46[9]), .Y(un1_a0_2_cry_9_Y_12), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_7_[5]), .B(
        ai_7_[17]), .C(yi_7_[12]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_46[5]), .Y(un1_x0_1_cry_5_Y_0), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_46[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[16]));
    SLE \xn[8]  (.D(xn_46[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_7_[9]), .B(
        ai_7_[17]), .C(xi_7_[16]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_46[9]), .Y(un1_y0_cry_9_Y_12), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_7_[13]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_46[13]), .Y(un1_y0_cry_13_Y_12), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_46[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_7_[11]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_46[11]), .Y(un1_a0_2_cry_11_Y_12), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_7_[6]), .B(
        ai_7_[17]), .C(yi_7_[13]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_46[6]), .Y(un1_x0_1_cry_6_Y_0), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_706 (.A(VCC), .B(ai_7_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_706_S), .Y(
        un1_y0_s_0_706_Y), .FCO(un1_y0_s_0_706_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_7_[12]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_46[12]), .Y(un1_x0_1_cry_12_Y_0), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_46[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[3]));
    SLE \yn[15]  (.D(yn_46[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[15]));
    SLE \xn[10]  (.D(xn_46[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[10]));
    SLE \yn[11]  (.D(yn_46[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[11]));
    SLE \xn[14]  (.D(xn_46[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_7_[12]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_46[12]), .Y(un1_y0_cry_12_Y_12), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_46[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_7_[4]), .B(
        ai_7_[17]), .C(yi_7_[11]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_46[4]), .Y(un1_x0_1_cry_4_Y_0), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_7_[6]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_46[6]), .Y(un1_a0_2_cry_6_Y_12), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_7_[10]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_46[10]), .Y(un1_a0_2_cry_10_Y_12), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_0), .Y(un1_x0_1_cry_0_cy_Y_0), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_46[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_7_[3]), .B(
        ai_7_[17]), .C(yi_7_[10]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_46[3]), .Y(un1_x0_1_cry_3_Y_0), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_7_[15]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_46[15]), .Y(un1_y0_cry_15_Y_12), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_46[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_7_[16]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        an_46[16]), .Y(un1_a0_2_cry_16_Y_4), .FCO(un1_a0_2_cry_16_Z));
    SLE \an[6]  (.D(an_46[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[6]));
    SLE \an[15]  (.D(an_46[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_7_[8]), .B(
        ai_7_[17]), .C(yi_7_[15]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_46[8]), .Y(un1_x0_1_cry_8_Y_0), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_7_[5]), .B(
        ai_7_[17]), .C(xi_7_[12]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_46[5]), .Y(un1_y0_cry_5_Y_12), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_7_[4]), .B(
        ai_7_[17]), .C(xi_7_[11]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_46[4]), .Y(un1_y0_cry_4_Y_12), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_7_[2]), .B(
        ai_7_[17]), .C(xi_7_[9]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_46[2]), .Y(un1_y0_cry_2_Y_12), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_7_[2]), .B(
        ai_7_[17]), .C(yi_7_[9]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_46[2]), .Y(un1_x0_1_cry_2_Y_0), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(un1_a0_2_cry_2_Y_12), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[2]));
    SLE \an[1]  (.D(ai_7_[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[1]));
    SLE \yn[9]  (.D(yn_46[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_7_[1]), .B(
        ai_7_[17]), .C(xi_7_[8]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_46[1]), .Y(un1_y0_cry_1_Y_12), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_7_[16]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_46[16]), .Y(un1_x0_1_cry_16_Y_0), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_7_[2]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_2_S_0)
        , .Y(un1_a0_2_cry_2_Y_12), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_46[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[7]));
    SLE \xn[6]  (.D(xn_46[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[6]));
    SLE \an[17]  (.D(an_46[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[17]));
    SLE \yn[13]  (.D(yn_46[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[13]));
    SLE \an[13]  (.D(an_46[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[13]));
    SLE \xn[2]  (.D(xn_46[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[2]));
    SLE \xn[1]  (.D(xn_46[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_7_[14]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_46[14]), .Y(un1_x0_1_cry_14_Y_0), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_46[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_7_[15]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_46[15]), .Y(un1_a0_2_cry_15_Y_9), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_46[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_7_[14]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_46[14]), .Y(un1_y0_cry_14_Y_12), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_46[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_7_[13]), .B(
        ai_7_[17]), .C(yi_7_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_46[13]), .Y(un1_x0_1_cry_13_Y_0), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_7_[16]), .B(
        ai_7_[17]), .C(xi_7_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_46[16]), .Y(un1_y0_cry_16_Y_11), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_46[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_7_[6]), .B(
        ai_7_[17]), .C(xi_7_[13]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_46[6]), .Y(un1_y0_cry_6_Y_12), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_46[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[3]));
    SLE \yn[17]  (.D(yn_46[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[17]));
    SLE \yn[14]  (.D(yn_46[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[14]));
    SLE \xn[5]  (.D(xn_46[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_8_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_7_[3]), .B(
        ai_7_[17]), .C(xi_7_[10]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_46[3]), .Y(un1_y0_cry_3_Y_12), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_7_[13]), .B(
        ai_7_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_46[13]), .Y(un1_a0_2_cry_13_Y_12), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_46[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_8_[12]));
    SLE \an[16]  (.D(an_46[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_8_[16]));
    
endmodule


module cordic_par_calc_0_18_4_0s(
       a0,
       ai_1_,
       a0_i_3,
       a0_i_0,
       yi_1_,
       clk
    );
input  [17:2] a0;
output [17:2] ai_1_;
input  a0_i_3;
input  a0_i_0;
output [3:2] yi_1_;
input  clk;

    wire [17:17] an_4_i_i_Z;
    wire [16:15] an_4;
    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    CFG4 #( .INIT(16'h4CCD) )  \an_4_i_i[17]  (.A(a0[14]), .B(a0[17]), 
        .C(a0[16]), .D(a0[15]), .Y(an_4_i_i_Z[17]));
    SLE \an[10]  (.D(a0[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC)
        , .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[10]));
    SLE \an[14]  (.D(a0_i_0), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC)
        , .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[14]));
    SLE \an[15]  (.D(an_4[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[15]));
    VCC VCC_Z (.Y(VCC));
    SLE \an[5]  (.D(a0[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[5]));
    SLE \an[9]  (.D(a0[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[9]));
    SLE \an[12]  (.D(a0[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC)
        , .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[12]));
    SLE \an[7]  (.D(a0[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[7]));
    SLE \an[17]  (.D(an_4_i_i_Z[17]), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[17]));
    CFG4 #( .INIT(16'h78E1) )  \an_RNO[16]  (.A(a0[14]), .B(a0[17]), 
        .C(a0[16]), .D(a0[15]), .Y(an_4[16]));
    SLE \an[8]  (.D(a0[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[8]));
    SLE \yn[2]  (.D(a0[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_1_[2]));
    SLE \an[6]  (.D(a0[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[6]));
    SLE \yn[3]  (.D(a0_i_3), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_1_[3]));
    SLE \an[4]  (.D(a0[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[4]));
    SLE \an[13]  (.D(a0[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC)
        , .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[13]));
    SLE \an[11]  (.D(a0[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC)
        , .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[11]));
    CFG3 #( .INIT(8'h69) )  \an_RNO[15]  (.A(a0[14]), .B(a0[17]), .C(
        a0[15]), .Y(an_4[15]));
    SLE \an[16]  (.D(an_4[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[16]));
    SLE \an[2]  (.D(a0[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[2]));
    SLE \an[3]  (.D(a0[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_1_[3]));
    
endmodule


module cordic_par_calc_0_18_4_5s(
       yi_5_,
       ai_5_,
       xi_5_,
       ai_6_,
       xi_6_,
       yi_6_,
       clk
    );
input  [17:0] yi_5_;
input  [17:2] ai_5_;
input  [17:0] xi_5_;
output [17:2] ai_6_;
output [17:0] xi_6_;
output [17:0] yi_6_;
input  clk;

    wire [17:3] an_34;
    wire [17:0] yn_34;
    wire [17:0] xn_34;
    wire un1_a0_2_cry_14_Z, VCC, GND, un1_a0_2_cry_0_Y_1, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_6, 
        un1_x0_1_cry_0_cy_Y_6, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_6, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_6, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_6, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_6, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_6, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_6, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_6, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_6, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_6, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_6, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_6, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_6, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_6, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_6, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_6, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_6, 
        un1_x0_1_s_17_FCO_6, un1_x0_1_s_17_Y_6, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_6, un1_a0_2_cry_0_Z, un1_a0_2_cry_0_S_1, 
        un1_a0_2_cry_1_Z, un1_a0_2_cry_1_Y_5, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_5, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_5, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_5, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_5, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_5, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_5, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_5, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_5, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_5, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_5, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_5, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_5, un1_a0_2_cry_14_Y_5, 
        un1_y0_s_0_700_FCO, un1_y0_s_0_700_S, un1_y0_s_0_700_Y, 
        un1_y0_cry_0_Z, un1_y0_cry_0_Y_5, un1_y0_cry_1_Z, 
        un1_y0_cry_1_Y_6, un1_y0_cry_2_Z, un1_y0_cry_2_Y_6, 
        un1_y0_cry_3_Z, un1_y0_cry_3_Y_6, un1_y0_cry_4_Z, 
        un1_y0_cry_4_Y_6, un1_y0_cry_5_Z, un1_y0_cry_5_Y_6, 
        un1_y0_cry_6_Z, un1_y0_cry_6_Y_6, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y_6, un1_y0_cry_8_Z, un1_y0_cry_8_Y_6, 
        un1_y0_cry_9_Z, un1_y0_cry_9_Y_6, un1_y0_cry_10_Z, 
        un1_y0_cry_10_Y_6, un1_y0_cry_11_Z, un1_y0_cry_11_Y_6, 
        un1_y0_cry_12_Z, un1_y0_cry_12_Y_6, un1_y0_cry_13_Z, 
        un1_y0_cry_13_Y_6, un1_y0_cry_14_Z, un1_y0_cry_14_Y_6, 
        un1_y0_cry_15_Z, un1_y0_cry_15_Y_6, un1_y0_s_17_FCO_5, 
        un1_y0_s_17_Y_5, un1_y0_cry_16_Z, un1_y0_cry_16_Y_5, N_689;
    
    SLE \xn[16]  (.D(xn_34[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_5_[10]), .B(
        ai_5_[17]), .C(yi_5_[15]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_34[10]), .Y(un1_x0_1_cry_10_Y_6), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_5_[6]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_34[6]), .Y(un1_a0_2_cry_4_Y_5), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_5_[10]), .B(
        ai_5_[17]), .C(xi_5_[15]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_34[10]), .Y(un1_y0_cry_10_Y_6), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_34[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_5_[11]), .B(
        ai_5_[17]), .C(xi_5_[16]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_34[11]), .Y(un1_y0_cry_11_Y_6), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h65500) )  un1_a0_2_cry_0 (.A(VCC), .B(ai_5_[2]), 
        .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_0_S_1), .Y(
        un1_a0_2_cry_0_Y_1), .FCO(un1_a0_2_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_5_[16]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_34[16]), .Y(un1_a0_2_cry_14_Y_5), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_34[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[4]));
    SLE \an[10]  (.D(an_34[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_5_[0]), .B(
        ai_5_[17]), .C(yi_5_[5]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_34[0]), .Y(un1_x0_1_cry_0_Y_6), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_34[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[6]));
    SLE \xn[15]  (.D(xn_34[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[15]));
    SLE \xn[13]  (.D(xn_34[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[13]));
    SLE \an[11]  (.D(an_34[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[11]));
    SLE \xn[4]  (.D(xn_34[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_5_[17]), 
        .C(xi_5_[17]), .D(yi_5_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_34[17]), .Y(un1_x0_1_s_17_Y_6), .FCO(un1_x0_1_s_17_FCO_6));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_5_[7]), .B(
        ai_5_[17]), .C(yi_5_[12]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_34[7]), .Y(un1_x0_1_cry_7_Y_6), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_34[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[2]));
    SLE \yn[1]  (.D(yn_34[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[1]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_700 (.A(VCC), .B(ai_5_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_700_S), .Y(
        un1_y0_s_0_700_Y), .FCO(un1_y0_s_0_700_FCO));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_5_[17]), 
        .C(xi_5_[17]), .D(yi_5_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_34[17]), .Y(un1_y0_s_17_Y_5), .FCO(un1_y0_s_17_FCO_5));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_5_[9]), .B(
        ai_5_[17]), .C(yi_5_[14]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_34[9]), .Y(un1_x0_1_cry_9_Y_6), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_34[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_5_[0]), .B(
        ai_5_[17]), .C(xi_5_[5]), .D(GND), .FCI(un1_y0_s_0_700_FCO), 
        .S(yn_34[0]), .Y(un1_y0_cry_0_Y_5), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_7 (.A(ai_5_[9]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_34[9]), .Y(un1_a0_2_cry_7_Y_5), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_5_[15]), .B(
        ai_5_[17]), .C(yi_5_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_34[15]), .Y(un1_x0_1_cry_15_Y_6), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_5_[5]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_34[5]), .Y(un1_a0_2_cry_3_Y_5), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_5_[14]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_34[14]), .Y(un1_a0_2_cry_12_Y_5), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_5_[11]), .B(
        ai_5_[17]), .C(yi_5_[16]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_34[11]), .Y(un1_x0_1_cry_11_Y_6), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_5_[10]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_34[10]), .Y(un1_a0_2_cry_8_Y_5), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_5_[7]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_34[7]), .Y(un1_a0_2_cry_5_Y_5), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_5_[1]), .B(
        ai_5_[17]), .C(yi_5_[6]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_34[1]), .Y(un1_x0_1_cry_1_Y_6), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_34[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[17]));
    SLE \yn[5]  (.D(yn_34[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[5]));
    SLE \an[9]  (.D(an_34[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_5_[7]), .B(
        ai_5_[17]), .C(xi_5_[12]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_34[7]), .Y(un1_y0_cry_7_Y_6), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_34[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[7]));
    SLE \an[14]  (.D(an_34[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[14]));
    SLE \xn[9]  (.D(xn_34[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[9]));
    SLE \xn[7]  (.D(xn_34[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[7]));
    SLE \an[8]  (.D(an_34[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[8]));
    SLE \yn[0]  (.D(yn_34[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_5_[8]), .B(
        ai_5_[17]), .C(xi_5_[13]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_34[8]), .Y(un1_y0_cry_8_Y_6), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_5_[11]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_34[11]), .Y(un1_a0_2_cry_9_Y_5), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_5_[5]), .B(
        ai_5_[17]), .C(yi_5_[10]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_34[5]), .Y(un1_x0_1_cry_5_Y_6), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_34[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[16]));
    SLE \xn[8]  (.D(xn_34[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_5_[9]), .B(
        ai_5_[17]), .C(xi_5_[14]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_34[9]), .Y(un1_y0_cry_9_Y_6), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_5_[13]), .B(
        ai_5_[17]), .C(xi_5_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_34[13]), .Y(un1_y0_cry_13_Y_6), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_34[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_5_[13]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_34[13]), .Y(un1_a0_2_cry_11_Y_5), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_5_[6]), .B(
        ai_5_[17]), .C(yi_5_[11]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_34[6]), .Y(un1_x0_1_cry_6_Y_6), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_5_[12]), .B(
        ai_5_[17]), .C(yi_5_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_34[12]), .Y(un1_x0_1_cry_12_Y_6), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_34[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[3]));
    SLE \yn[15]  (.D(yn_34[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[15]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_1 (.A(ai_5_[3]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_0_Z), .S(
        an_34[3]), .Y(un1_a0_2_cry_1_Y_5), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_34[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[10]));
    SLE \yn[11]  (.D(yn_34[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[11]));
    SLE \xn[14]  (.D(xn_34[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_5_[12]), .B(
        ai_5_[17]), .C(xi_5_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_34[12]), .Y(un1_y0_cry_12_Y_6), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_34[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_5_[4]), .B(
        ai_5_[17]), .C(yi_5_[9]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_34[4]), .Y(un1_x0_1_cry_4_Y_6), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_5_[8]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_34[8]), .Y(un1_a0_2_cry_6_Y_5), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_5_[12]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_34[12]), .Y(un1_a0_2_cry_10_Y_5), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_6), .Y(un1_x0_1_cry_0_cy_Y_6), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_34[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_5_[3]), .B(
        ai_5_[17]), .C(yi_5_[8]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_34[3]), .Y(un1_x0_1_cry_3_Y_6), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_5_[15]), .B(
        ai_5_[17]), .C(xi_5_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_34[15]), .Y(un1_y0_cry_15_Y_6), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_34[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[10]));
    SLE \an[6]  (.D(an_34[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[6]));
    SLE \an[15]  (.D(an_34[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_5_[8]), .B(
        ai_5_[17]), .C(yi_5_[13]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_34[8]), .Y(un1_x0_1_cry_8_Y_6), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_5_[5]), .B(
        ai_5_[17]), .C(xi_5_[10]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_34[5]), .Y(un1_y0_cry_5_Y_6), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_5_[4]), .B(
        ai_5_[17]), .C(xi_5_[9]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_34[4]), .Y(un1_y0_cry_4_Y_6), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_5_[2]), .B(
        ai_5_[17]), .C(xi_5_[7]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_34[2]), .Y(un1_y0_cry_2_Y_6), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_5_[2]), .B(
        ai_5_[17]), .C(yi_5_[7]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_34[2]), .Y(un1_x0_1_cry_2_Y_6), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(un1_a0_2_cry_0_Y_1), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[2]));
    SLE \yn[9]  (.D(yn_34[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_5_[1]), .B(
        ai_5_[17]), .C(xi_5_[6]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_34[1]), .Y(un1_y0_cry_1_Y_6), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_5_[16]), .B(
        ai_5_[17]), .C(yi_5_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_34[16]), .Y(un1_x0_1_cry_16_Y_6), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_5_[4]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_34[4]), .Y(un1_a0_2_cry_2_Y_5), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_34[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[7]));
    SLE \xn[6]  (.D(xn_34[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[6]));
    SLE \an[17]  (.D(an_34[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[17]));
    SLE \yn[13]  (.D(yn_34[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[13]));
    SLE \an[13]  (.D(an_34[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[13]));
    SLE \xn[2]  (.D(xn_34[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[2]));
    SLE \xn[1]  (.D(xn_34[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_5_[14]), .B(
        ai_5_[17]), .C(yi_5_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_34[14]), .Y(un1_x0_1_cry_14_Y_6), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_34[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[8]));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_14_Z), .Y(
        an_34[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_5_[14]), .B(
        ai_5_[17]), .C(xi_5_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_34[14]), .Y(un1_y0_cry_14_Y_6), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_34[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_5_[13]), .B(
        ai_5_[17]), .C(yi_5_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_34[13]), .Y(un1_x0_1_cry_13_Y_6), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_5_[16]), .B(
        ai_5_[17]), .C(xi_5_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_34[16]), .Y(un1_y0_cry_16_Y_5), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_34[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_5_[6]), .B(
        ai_5_[17]), .C(xi_5_[11]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_34[6]), .Y(un1_y0_cry_6_Y_6), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_34[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[3]));
    SLE \yn[17]  (.D(yn_34[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[17]));
    SLE \yn[14]  (.D(yn_34[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[14]));
    SLE \xn[5]  (.D(xn_34[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_6_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_5_[3]), .B(
        ai_5_[17]), .C(xi_5_[8]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_34[3]), .Y(un1_y0_cry_3_Y_6), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_5_[15]), .B(
        ai_5_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_34[15]), .Y(un1_a0_2_cry_13_Y_5), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_34[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_6_[12]));
    SLE \an[16]  (.D(an_34[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_6_[16]));
    
endmodule


module cordic_par_calc_0_18_4_8s(
       yi_8_,
       ai_8_,
       xi_8_,
       ai_9_,
       xi_9_,
       yi_9_,
       clk
    );
input  [17:0] yi_8_;
input  [17:1] ai_8_;
input  [17:0] xi_8_;
output [17:1] ai_9_;
output [17:0] xi_9_;
output [17:0] yi_9_;
input  clk;

    wire [17:1] an_52;
    wire [17:0] yn_52;
    wire [17:0] xn_52;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_x0_1_cry_0_cy_Z, 
        un1_x0_1_cry_0_cy_S_12, un1_x0_1_cry_0_cy_Y_12, 
        un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_12, un1_x0_1_cry_1_Z, 
        un1_x0_1_cry_1_Y_12, un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y_12, 
        un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_12, un1_x0_1_cry_4_Z, 
        un1_x0_1_cry_4_Y_12, un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y_12, 
        un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_12, un1_x0_1_cry_7_Z, 
        un1_x0_1_cry_7_Y_12, un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y_12, 
        un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_12, un1_x0_1_cry_10_Z, 
        un1_x0_1_cry_10_Y_12, un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y_12, 
        un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_12, un1_x0_1_cry_13_Z, 
        un1_x0_1_cry_13_Y_12, un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y_12, 
        un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_12, un1_x0_1_s_17_FCO_12, 
        un1_x0_1_s_17_Y_12, un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y_12, 
        un1_a0_2_cry_1_Z, un1_a0_2_cry_1_S_5, un1_a0_2_cry_1_Y_8, 
        un1_a0_2_cry_2_Z, un1_a0_2_cry_2_Y_8, un1_a0_2_cry_3_Z, 
        un1_a0_2_cry_3_Y_8, un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_8, 
        un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_8, un1_a0_2_cry_6_Z, 
        un1_a0_2_cry_6_Y_8, un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_8, 
        un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_8, un1_a0_2_cry_9_Z, 
        un1_a0_2_cry_9_Y_8, un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_8, 
        un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_8, un1_a0_2_cry_12_Z, 
        un1_a0_2_cry_12_Y_8, un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_8, 
        un1_a0_2_cry_14_Z, un1_a0_2_cry_14_Y_8, un1_a0_2_cry_15_Z, 
        un1_a0_2_cry_15_Y_5, un1_a0_2_cry_16_Y_0, un1_y0_s_0_695_FCO, 
        un1_y0_s_0_695_S, un1_y0_s_0_695_Y, un1_y0_cry_0_Z, 
        un1_y0_cry_0_Y_0, un1_y0_cry_1_Z, un1_y0_cry_1_Y_1, 
        un1_y0_cry_2_Z, un1_y0_cry_2_Y_1, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y_1, un1_y0_cry_4_Z, un1_y0_cry_4_Y_1, 
        un1_y0_cry_5_Z, un1_y0_cry_5_Y_1, un1_y0_cry_6_Z, 
        un1_y0_cry_6_Y_1, un1_y0_cry_7_Z, un1_y0_cry_7_Y_1, 
        un1_y0_cry_8_Z, un1_y0_cry_8_Y_1, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y_1, un1_y0_cry_10_Z, un1_y0_cry_10_Y_1, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y_1, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y_1, un1_y0_cry_13_Z, un1_y0_cry_13_Y_1, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y_1, un1_y0_cry_15_Z, 
        un1_y0_cry_15_Y_1, un1_y0_s_17_FCO_0, un1_y0_s_17_Y_0, 
        un1_y0_cry_16_Z, un1_y0_cry_16_Y_0;
    
    SLE \xn[16]  (.D(xn_52[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_8_[10]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_52[10]), .Y(un1_x0_1_cry_10_Y_12), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_4 (.A(ai_8_[4]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_52[4]), .Y(un1_a0_2_cry_4_Y_8), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_8_[10]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_52[10]), .Y(un1_y0_cry_10_Y_1), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_52[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_8_[11]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_52[11]), .Y(un1_y0_cry_11_Y_1), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_8_[14]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_52[14]), .Y(un1_a0_2_cry_14_Y_8), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_52[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[4]));
    SLE \an[10]  (.D(an_52[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_8_[0]), .B(
        ai_8_[17]), .C(yi_8_[8]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_52[0]), .Y(un1_x0_1_cry_0_Y_12), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_52[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[6]));
    SLE \xn[15]  (.D(xn_52[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[15]));
    SLE \xn[13]  (.D(xn_52[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[13]));
    SLE \an[11]  (.D(an_52[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[11]));
    SLE \xn[4]  (.D(xn_52[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_8_[17]), 
        .C(xi_8_[17]), .D(yi_8_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_52[17]), .Y(un1_x0_1_s_17_Y_12), .FCO(un1_x0_1_s_17_FCO_12));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_8_[7]), .B(
        ai_8_[17]), .C(yi_8_[15]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_52[7]), .Y(un1_x0_1_cry_7_Y_12), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_52[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[2]));
    SLE \yn[1]  (.D(yn_52[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[1]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_695 (.A(VCC), .B(ai_8_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_695_S), .Y(
        un1_y0_s_0_695_Y), .FCO(un1_y0_s_0_695_FCO));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_8_[17]), 
        .C(xi_8_[17]), .D(yi_8_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_52[17]), .Y(un1_y0_s_17_Y_0), .FCO(un1_y0_s_17_FCO_0));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_8_[9]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_52[9]), .Y(un1_x0_1_cry_9_Y_12), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_52[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_8_[0]), .B(
        ai_8_[17]), .C(xi_8_[8]), .D(GND), .FCI(un1_y0_s_0_695_FCO), 
        .S(yn_52[0]), .Y(un1_y0_cry_0_Y_0), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_8_[7]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_52[7]), .Y(un1_a0_2_cry_7_Y_8), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_8_[15]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_52[15]), .Y(un1_x0_1_cry_15_Y_12), .FCO(
        un1_x0_1_cry_15_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_8_[3]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_52[3]), .Y(un1_a0_2_cry_3_Y_8), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_8_[12]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_52[12]), .Y(un1_a0_2_cry_12_Y_8), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_8_[11]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_52[11]), .Y(un1_x0_1_cry_11_Y_12), .FCO(
        un1_x0_1_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_8_[8]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_52[8]), .Y(un1_a0_2_cry_8_Y_8), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_8_[5]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_52[5]), .Y(un1_a0_2_cry_5_Y_8), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_8_[1]), .B(
        ai_8_[17]), .C(yi_8_[9]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_52[1]), .Y(un1_x0_1_cry_1_Y_12), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_52[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[17]));
    SLE \yn[5]  (.D(yn_52[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[5]));
    SLE \an[9]  (.D(an_52[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_8_[7]), .B(
        ai_8_[17]), .C(xi_8_[15]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_52[7]), .Y(un1_y0_cry_7_Y_1), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_52[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[7]));
    SLE \an[14]  (.D(an_52[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[14]));
    SLE \xn[9]  (.D(xn_52[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[9]));
    SLE \xn[7]  (.D(xn_52[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[7]));
    SLE \an[8]  (.D(an_52[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[8]));
    SLE \yn[0]  (.D(yn_52[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_8_[8]), .B(
        ai_8_[17]), .C(xi_8_[16]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_52[8]), .Y(un1_y0_cry_8_Y_1), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_8_[9]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_52[9]), .Y(un1_a0_2_cry_9_Y_8), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_8_[5]), .B(
        ai_8_[17]), .C(yi_8_[13]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_52[5]), .Y(un1_x0_1_cry_5_Y_12), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_52[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[16]));
    SLE \xn[8]  (.D(xn_52[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_8_[9]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_52[9]), .Y(un1_y0_cry_9_Y_1), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_8_[13]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_52[13]), .Y(un1_y0_cry_13_Y_1), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_52[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_8_[11]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_52[11]), .Y(un1_a0_2_cry_11_Y_8), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_8_[6]), .B(
        ai_8_[17]), .C(yi_8_[14]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_52[6]), .Y(un1_x0_1_cry_6_Y_12), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_8_[12]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_52[12]), .Y(un1_x0_1_cry_12_Y_12), .FCO(
        un1_x0_1_cry_12_Z));
    SLE \an[3]  (.D(an_52[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[3]));
    SLE \yn[15]  (.D(yn_52[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_8_[1]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(VCC), .S(un1_a0_2_cry_1_S_5)
        , .Y(un1_a0_2_cry_1_Y_8), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_52[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[10]));
    SLE \yn[11]  (.D(yn_52[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[11]));
    SLE \xn[14]  (.D(xn_52[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_8_[12]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_52[12]), .Y(un1_y0_cry_12_Y_1), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_52[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_8_[4]), .B(
        ai_8_[17]), .C(yi_8_[12]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_52[4]), .Y(un1_x0_1_cry_4_Y_12), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_6 (.A(ai_8_[6]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_52[6]), .Y(un1_a0_2_cry_6_Y_8), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_8_[10]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_52[10]), .Y(un1_a0_2_cry_10_Y_8), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_12), .Y(un1_x0_1_cry_0_cy_Y_12), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_52[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_8_[3]), .B(
        ai_8_[17]), .C(yi_8_[11]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_52[3]), .Y(un1_x0_1_cry_3_Y_12), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_8_[15]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_52[15]), .Y(un1_y0_cry_15_Y_1), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_52[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_8_[16]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        an_52[16]), .Y(un1_a0_2_cry_16_Y_0), .FCO(un1_a0_2_cry_16_Z));
    SLE \an[6]  (.D(an_52[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[6]));
    SLE \an[15]  (.D(an_52[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_8_[8]), .B(
        ai_8_[17]), .C(yi_8_[16]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_52[8]), .Y(un1_x0_1_cry_8_Y_12), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_8_[5]), .B(
        ai_8_[17]), .C(xi_8_[13]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_52[5]), .Y(un1_y0_cry_5_Y_1), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_8_[4]), .B(
        ai_8_[17]), .C(xi_8_[12]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_52[4]), .Y(un1_y0_cry_4_Y_1), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_8_[2]), .B(
        ai_8_[17]), .C(xi_8_[10]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_52[2]), .Y(un1_y0_cry_2_Y_1), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_8_[2]), .B(
        ai_8_[17]), .C(yi_8_[10]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_52[2]), .Y(un1_x0_1_cry_2_Y_12), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_52[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[2]));
    SLE \an[1]  (.D(an_52[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[1]));
    SLE \yn[9]  (.D(yn_52[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_8_[1]), .B(
        ai_8_[17]), .C(xi_8_[9]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_52[1]), .Y(un1_y0_cry_1_Y_1), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_8_[16]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_52[16]), .Y(un1_x0_1_cry_16_Y_12), .FCO(
        un1_x0_1_cry_16_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_8_[2]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_52[2]), .Y(un1_a0_2_cry_2_Y_8), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_52[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[7]));
    SLE \xn[6]  (.D(xn_52[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[6]));
    SLE \an[17]  (.D(an_52[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[17]));
    SLE \yn[13]  (.D(yn_52[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[13]));
    SLE \an[13]  (.D(an_52[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[13]));
    SLE \xn[2]  (.D(xn_52[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[2]));
    SLE \xn[1]  (.D(xn_52[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_8_[14]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_52[14]), .Y(un1_x0_1_cry_14_Y_12), .FCO(
        un1_x0_1_cry_14_Z));
    SLE \yn[8]  (.D(yn_52[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_8_[15]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_52[15]), .Y(un1_a0_2_cry_15_Y_5), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_52[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_8_[14]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_52[14]), .Y(un1_y0_cry_14_Y_1), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_52[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_8_[13]), .B(
        ai_8_[17]), .C(yi_8_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_52[13]), .Y(un1_x0_1_cry_13_Y_12), .FCO(
        un1_x0_1_cry_13_Z));
    CFG2 #( .INIT(4'h6) )  un1_a0_2_axb_1_i (.A(ai_8_[17]), .B(
        ai_8_[1]), .Y(an_52[1]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_8_[16]), .B(
        ai_8_[17]), .C(xi_8_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_52[16]), .Y(un1_y0_cry_16_Y_0), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_52[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_8_[6]), .B(
        ai_8_[17]), .C(xi_8_[14]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_52[6]), .Y(un1_y0_cry_6_Y_1), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_52[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[3]));
    SLE \yn[17]  (.D(yn_52[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[17]));
    SLE \yn[14]  (.D(yn_52[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[14]));
    SLE \xn[5]  (.D(xn_52[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_9_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_8_[3]), .B(
        ai_8_[17]), .C(xi_8_[11]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_52[3]), .Y(un1_y0_cry_3_Y_1), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_8_[13]), .B(
        ai_8_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_52[13]), .Y(un1_a0_2_cry_13_Y_8), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_52[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_9_[12]));
    SLE \an[16]  (.D(an_52[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_9_[16]));
    
endmodule


module cordic_par_calc_0_18_4_6s(
       yi_6_,
       ai_6_,
       xi_6_,
       ai_7_,
       xi_7_,
       yi_7_,
       clk
    );
input  [17:0] yi_6_;
input  [17:2] ai_6_;
input  [17:0] xi_6_;
output [17:2] ai_7_;
output [17:0] xi_7_;
output [17:0] yi_7_;
input  clk;

    wire [17:2] an_40;
    wire [17:0] yn_40;
    wire [17:0] xn_40;
    wire un1_a0_2_cry_15_Z, VCC, GND, un1_x0_1_cry_0_cy_Z, 
        un1_x0_1_cry_0_cy_S_9, un1_x0_1_cry_0_cy_Y_9, un1_x0_1_cry_0_Z, 
        un1_x0_1_cry_0_Y_9, un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_9, 
        un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y_9, un1_x0_1_cry_3_Z, 
        un1_x0_1_cry_3_Y_9, un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_9, 
        un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y_9, un1_x0_1_cry_6_Z, 
        un1_x0_1_cry_6_Y_9, un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_9, 
        un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y_9, un1_x0_1_cry_9_Z, 
        un1_x0_1_cry_9_Y_9, un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_9, 
        un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y_9, un1_x0_1_cry_12_Z, 
        un1_x0_1_cry_12_Y_9, un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_9, 
        un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y_9, un1_x0_1_cry_15_Z, 
        un1_x0_1_cry_15_Y_9, un1_x0_1_s_17_FCO_9, un1_x0_1_s_17_Y_9, 
        un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y_9, un1_a0_2_cry_1_Z, 
        un1_a0_2_cry_1_S_3, un1_a0_2_cry_1_Y_6, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_6, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_6, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_6, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_6, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_6, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_6, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_6, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_6, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_6, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_6, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_6, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_6, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_Y_6, un1_a0_2_cry_15_Y_3, un1_y0_s_0_696_FCO, 
        un1_y0_s_0_696_S, un1_y0_s_0_696_Y, un1_y0_cry_0_Z, 
        un1_y0_cry_0_Y_1, un1_y0_cry_1_Z, un1_y0_cry_1_Y_2, 
        un1_y0_cry_2_Z, un1_y0_cry_2_Y_2, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y_2, un1_y0_cry_4_Z, un1_y0_cry_4_Y_2, 
        un1_y0_cry_5_Z, un1_y0_cry_5_Y_2, un1_y0_cry_6_Z, 
        un1_y0_cry_6_Y_2, un1_y0_cry_7_Z, un1_y0_cry_7_Y_2, 
        un1_y0_cry_8_Z, un1_y0_cry_8_Y_2, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y_2, un1_y0_cry_10_Z, un1_y0_cry_10_Y_2, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y_2, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y_2, un1_y0_cry_13_Z, un1_y0_cry_13_Y_2, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y_2, un1_y0_cry_15_Z, 
        un1_y0_cry_15_Y_2, un1_y0_s_17_FCO_1, un1_y0_s_17_Y_1, 
        un1_y0_cry_16_Z, un1_y0_cry_16_Y_1, N_1416, N_693;
    
    SLE \xn[16]  (.D(xn_40[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_6_[10]), .B(
        ai_6_[17]), .C(yi_6_[16]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_40[10]), .Y(un1_x0_1_cry_10_Y_9), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_6_[5]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_40[5]), .Y(un1_a0_2_cry_4_Y_6), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_6_[10]), .B(
        ai_6_[17]), .C(xi_6_[16]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_40[10]), .Y(un1_y0_cry_10_Y_2), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_40[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[0]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_696 (.A(VCC), .B(ai_6_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_696_S), .Y(
        un1_y0_s_0_696_Y), .FCO(un1_y0_s_0_696_FCO));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_6_[11]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_40[11]), .Y(un1_y0_cry_11_Y_2), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_6_[15]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_40[15]), .Y(un1_a0_2_cry_14_Y_6), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_40[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[4]));
    SLE \an[10]  (.D(an_40[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_6_[0]), .B(
        ai_6_[17]), .C(yi_6_[6]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_40[0]), .Y(un1_x0_1_cry_0_Y_9), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_40[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[6]));
    SLE \xn[15]  (.D(xn_40[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[15]));
    SLE \xn[13]  (.D(xn_40[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[13]));
    SLE \an[11]  (.D(an_40[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[11]));
    SLE \xn[4]  (.D(xn_40[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_6_[17]), 
        .C(xi_6_[17]), .D(yi_6_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_40[17]), .Y(un1_x0_1_s_17_Y_9), .FCO(un1_x0_1_s_17_FCO_9));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_6_[7]), .B(
        ai_6_[17]), .C(yi_6_[13]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_40[7]), .Y(un1_x0_1_cry_7_Y_9), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_40[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[2]));
    SLE \yn[1]  (.D(yn_40[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_6_[17]), 
        .C(xi_6_[17]), .D(yi_6_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_40[17]), .Y(un1_y0_s_17_Y_1), .FCO(un1_y0_s_17_FCO_1));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_6_[9]), .B(
        ai_6_[17]), .C(yi_6_[15]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_40[9]), .Y(un1_x0_1_cry_9_Y_9), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_40[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_6_[0]), .B(
        ai_6_[17]), .C(xi_6_[6]), .D(GND), .FCI(un1_y0_s_0_696_FCO), 
        .S(yn_40[0]), .Y(un1_y0_cry_0_Y_1), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_7 (.A(ai_6_[8]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_40[8]), .Y(un1_a0_2_cry_7_Y_6), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_6_[15]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_40[15]), .Y(un1_x0_1_cry_15_Y_9), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_6_[4]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_40[4]), .Y(un1_a0_2_cry_3_Y_6), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_6_[13]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_40[13]), .Y(un1_a0_2_cry_12_Y_6), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_6_[11]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_40[11]), .Y(un1_x0_1_cry_11_Y_9), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_6_[9]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_40[9]), .Y(un1_a0_2_cry_8_Y_6), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_6_[6]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_40[6]), .Y(un1_a0_2_cry_5_Y_6), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_6_[1]), .B(
        ai_6_[17]), .C(yi_6_[7]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_40[1]), .Y(un1_x0_1_cry_1_Y_9), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_40[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[17]));
    SLE \yn[5]  (.D(yn_40[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[5]));
    SLE \an[9]  (.D(an_40[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_6_[7]), .B(
        ai_6_[17]), .C(xi_6_[13]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_40[7]), .Y(un1_y0_cry_7_Y_2), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_40[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[7]));
    SLE \an[14]  (.D(an_40[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[14]));
    SLE \xn[9]  (.D(xn_40[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[9]));
    SLE \xn[7]  (.D(xn_40[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[7]));
    SLE \an[8]  (.D(an_40[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[8]));
    SLE \yn[0]  (.D(yn_40[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_6_[8]), .B(
        ai_6_[17]), .C(xi_6_[14]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_40[8]), .Y(un1_y0_cry_8_Y_2), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_6_[10]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_40[10]), .Y(un1_a0_2_cry_9_Y_6), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_6_[5]), .B(
        ai_6_[17]), .C(yi_6_[11]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_40[5]), .Y(un1_x0_1_cry_5_Y_9), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_40[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[16]));
    SLE \xn[8]  (.D(xn_40[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_6_[9]), .B(
        ai_6_[17]), .C(xi_6_[15]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_40[9]), .Y(un1_y0_cry_9_Y_2), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_6_[13]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_40[13]), .Y(un1_y0_cry_13_Y_2), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_40[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_6_[12]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_40[12]), .Y(un1_a0_2_cry_11_Y_6), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_6_[6]), .B(
        ai_6_[17]), .C(yi_6_[12]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_40[6]), .Y(un1_x0_1_cry_6_Y_9), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_6_[12]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_40[12]), .Y(un1_x0_1_cry_12_Y_9), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_40[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[3]));
    SLE \yn[15]  (.D(yn_40[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[15]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_1 (.A(ai_6_[2]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(VCC), .S(un1_a0_2_cry_1_S_3)
        , .Y(un1_a0_2_cry_1_Y_6), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_40[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[10]));
    SLE \yn[11]  (.D(yn_40[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[11]));
    SLE \xn[14]  (.D(xn_40[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_6_[12]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_40[12]), .Y(un1_y0_cry_12_Y_2), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_40[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_6_[4]), .B(
        ai_6_[17]), .C(yi_6_[10]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_40[4]), .Y(un1_x0_1_cry_4_Y_9), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_6_[7]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_40[7]), .Y(un1_a0_2_cry_6_Y_6), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_6_[11]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_40[11]), .Y(un1_a0_2_cry_10_Y_6), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_9), .Y(un1_x0_1_cry_0_cy_Y_9), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_40[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_6_[3]), .B(
        ai_6_[17]), .C(yi_6_[9]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_40[3]), .Y(un1_x0_1_cry_3_Y_9), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_6_[15]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_40[15]), .Y(un1_y0_cry_15_Y_2), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_40[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[10]));
    SLE \an[6]  (.D(an_40[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[6]));
    SLE \an[15]  (.D(an_40[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_6_[8]), .B(
        ai_6_[17]), .C(yi_6_[14]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_40[8]), .Y(un1_x0_1_cry_8_Y_9), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_6_[5]), .B(
        ai_6_[17]), .C(xi_6_[11]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_40[5]), .Y(un1_y0_cry_5_Y_2), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_6_[4]), .B(
        ai_6_[17]), .C(xi_6_[10]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_40[4]), .Y(un1_y0_cry_4_Y_2), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_6_[2]), .B(
        ai_6_[17]), .C(xi_6_[8]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_40[2]), .Y(un1_y0_cry_2_Y_2), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_6_[2]), .B(
        ai_6_[17]), .C(yi_6_[8]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_40[2]), .Y(un1_x0_1_cry_2_Y_9), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_40[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[2]));
    SLE \yn[9]  (.D(yn_40[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_6_[1]), .B(
        ai_6_[17]), .C(xi_6_[7]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_40[1]), .Y(un1_y0_cry_1_Y_2), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_6_[16]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_40[16]), .Y(un1_x0_1_cry_16_Y_9), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_6_[3]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_40[3]), .Y(un1_a0_2_cry_2_Y_6), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_40[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[7]));
    SLE \xn[6]  (.D(xn_40[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[6]));
    SLE \an[17]  (.D(an_40[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[17]));
    SLE \yn[13]  (.D(yn_40[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[13]));
    SLE \an[13]  (.D(an_40[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[13]));
    SLE \xn[2]  (.D(xn_40[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[2]));
    SLE \xn[1]  (.D(xn_40[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_6_[14]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_40[14]), .Y(un1_x0_1_cry_14_Y_9), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_40[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_6_[16]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_40[16]), .Y(un1_a0_2_cry_15_Y_3), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_15_Z), .Y(
        an_40[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_6_[14]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_40[14]), .Y(un1_y0_cry_14_Y_2), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_40[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_6_[13]), .B(
        ai_6_[17]), .C(yi_6_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_40[13]), .Y(un1_x0_1_cry_13_Y_9), .FCO(un1_x0_1_cry_13_Z)
        );
    CFG2 #( .INIT(4'h9) )  un1_a0_2_axb_1_i (.A(ai_6_[17]), .B(
        ai_6_[2]), .Y(an_40[2]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_6_[16]), .B(
        ai_6_[17]), .C(xi_6_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_40[16]), .Y(un1_y0_cry_16_Y_1), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_40[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_6_[6]), .B(
        ai_6_[17]), .C(xi_6_[12]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_40[6]), .Y(un1_y0_cry_6_Y_2), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_40[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[3]));
    SLE \yn[17]  (.D(yn_40[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[17]));
    SLE \yn[14]  (.D(yn_40[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[14]));
    SLE \xn[5]  (.D(xn_40[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_7_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_6_[3]), .B(
        ai_6_[17]), .C(xi_6_[9]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_40[3]), .Y(un1_y0_cry_3_Y_2), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_6_[14]), .B(
        ai_6_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_40[14]), .Y(un1_a0_2_cry_13_Y_6), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_40[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_7_[12]));
    SLE \an[16]  (.D(an_40[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_7_[16]));
    
endmodule


module cordic_par_calc_0_18_4_3s(
       yi_3_,
       ai_3_,
       xi_3_,
       ai_4_,
       xi_4_,
       yi_4_,
       clk
    );
input  [17:0] yi_3_;
input  [17:2] ai_3_;
input  [17:0] xi_3_;
output [17:2] ai_4_;
output [17:0] xi_4_;
output [17:0] yi_4_;
input  clk;

    wire [17:2] an_22;
    wire [17:0] yn_22;
    wire [17:0] xn_22;
    wire un1_a0_2_cry_15_Z, VCC, GND, un1_x0_1_cry_0_cy_Z, 
        un1_x0_1_cry_0_cy_S_5, un1_x0_1_cry_0_cy_Y_5, un1_x0_1_cry_0_Z, 
        un1_x0_1_cry_0_Y_5, un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_5, 
        un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y_5, un1_x0_1_cry_3_Z, 
        un1_x0_1_cry_3_Y_5, un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_5, 
        un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y_5, un1_x0_1_cry_6_Z, 
        un1_x0_1_cry_6_Y_5, un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_5, 
        un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y_5, un1_x0_1_cry_9_Z, 
        un1_x0_1_cry_9_Y_5, un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_5, 
        un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y_5, un1_x0_1_cry_12_Z, 
        un1_x0_1_cry_12_Y_5, un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_5, 
        un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y_5, un1_x0_1_cry_15_Z, 
        un1_x0_1_cry_15_Y_5, un1_x0_1_s_17_FCO_5, un1_x0_1_s_17_Y_5, 
        un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y_5, un1_a0_2_cry_1_Z, 
        un1_a0_2_cry_1_S_2, un1_a0_2_cry_1_Y_4, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_4, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_4, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_4, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_4, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_4, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_4, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_4, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_4, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_4, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_4, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_4, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_4, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_Y_4, un1_a0_2_cry_15_Y_2, un1_y0_s_0_701_FCO, 
        un1_y0_s_0_701_S, un1_y0_s_0_701_Y, un1_y0_cry_0_Z, 
        un1_y0_cry_0_Y_6, un1_y0_cry_1_Z, un1_y0_cry_1_Y_7, 
        un1_y0_cry_2_Z, un1_y0_cry_2_Y_7, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y_7, un1_y0_cry_4_Z, un1_y0_cry_4_Y_7, 
        un1_y0_cry_5_Z, un1_y0_cry_5_Y_7, un1_y0_cry_6_Z, 
        un1_y0_cry_6_Y_7, un1_y0_cry_7_Z, un1_y0_cry_7_Y_7, 
        un1_y0_cry_8_Z, un1_y0_cry_8_Y_7, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y_7, un1_y0_cry_10_Z, un1_y0_cry_10_Y_7, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y_7, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y_7, un1_y0_cry_13_Z, un1_y0_cry_13_Y_7, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y_7, un1_y0_cry_15_Z, 
        un1_y0_cry_15_Y_7, un1_y0_s_17_FCO_6, un1_y0_s_17_Y_6, 
        un1_y0_cry_16_Z, un1_y0_cry_16_Y_6, N_1411, N_690;
    
    SLE \xn[16]  (.D(xn_22[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_3_[10]), .B(
        ai_3_[17]), .C(yi_3_[13]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_22[10]), .Y(un1_x0_1_cry_10_Y_5), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_4 (.A(ai_3_[5]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_22[5]), .Y(un1_a0_2_cry_4_Y_4), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_3_[10]), .B(
        ai_3_[17]), .C(xi_3_[13]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_22[10]), .Y(un1_y0_cry_10_Y_7), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_22[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_3_[11]), .B(
        ai_3_[17]), .C(xi_3_[14]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_22[11]), .Y(un1_y0_cry_11_Y_7), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_3_[15]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_22[15]), .Y(un1_a0_2_cry_14_Y_4), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_22[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[4]));
    SLE \an[10]  (.D(an_22[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_3_[0]), .B(
        ai_3_[17]), .C(yi_3_[3]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_22[0]), .Y(un1_x0_1_cry_0_Y_5), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_22[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[6]));
    SLE \xn[15]  (.D(xn_22[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[15]));
    SLE \xn[13]  (.D(xn_22[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[13]));
    SLE \an[11]  (.D(an_22[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[11]));
    SLE \xn[4]  (.D(xn_22[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_3_[17]), 
        .C(xi_3_[17]), .D(yi_3_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_22[17]), .Y(un1_x0_1_s_17_Y_5), .FCO(un1_x0_1_s_17_FCO_5));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_3_[7]), .B(
        ai_3_[17]), .C(yi_3_[10]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_22[7]), .Y(un1_x0_1_cry_7_Y_5), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_22[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[2]));
    SLE \yn[1]  (.D(yn_22[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_3_[17]), 
        .C(xi_3_[17]), .D(yi_3_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_22[17]), .Y(un1_y0_s_17_Y_6), .FCO(un1_y0_s_17_FCO_6));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_3_[9]), .B(
        ai_3_[17]), .C(yi_3_[12]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_22[9]), .Y(un1_x0_1_cry_9_Y_5), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_22[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_3_[0]), .B(
        ai_3_[17]), .C(xi_3_[3]), .D(GND), .FCI(un1_y0_s_0_701_FCO), 
        .S(yn_22[0]), .Y(un1_y0_cry_0_Y_6), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_3_[8]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_22[8]), .Y(un1_a0_2_cry_7_Y_4), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_3_[15]), .B(
        ai_3_[17]), .C(yi_3_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_22[15]), .Y(un1_x0_1_cry_15_Y_5), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_3_[4]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_22[4]), .Y(un1_a0_2_cry_3_Y_4), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_3_[13]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_22[13]), .Y(un1_a0_2_cry_12_Y_4), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_3_[11]), .B(
        ai_3_[17]), .C(yi_3_[14]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_22[11]), .Y(un1_x0_1_cry_11_Y_5), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_8 (.A(ai_3_[9]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_22[9]), .Y(un1_a0_2_cry_8_Y_4), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_3_[6]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_22[6]), .Y(un1_a0_2_cry_5_Y_4), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_3_[1]), .B(
        ai_3_[17]), .C(yi_3_[4]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_22[1]), .Y(un1_x0_1_cry_1_Y_5), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_22[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[17]));
    SLE \yn[5]  (.D(yn_22[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[5]));
    SLE \an[9]  (.D(an_22[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_3_[7]), .B(
        ai_3_[17]), .C(xi_3_[10]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_22[7]), .Y(un1_y0_cry_7_Y_7), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_22[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[7]));
    SLE \an[14]  (.D(an_22[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[14]));
    SLE \xn[9]  (.D(xn_22[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[9]));
    SLE \xn[7]  (.D(xn_22[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[7]));
    SLE \an[8]  (.D(an_22[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[8]));
    SLE \yn[0]  (.D(yn_22[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_3_[8]), .B(
        ai_3_[17]), .C(xi_3_[11]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_22[8]), .Y(un1_y0_cry_8_Y_7), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_3_[10]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_22[10]), .Y(un1_a0_2_cry_9_Y_4), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_701 (.A(VCC), .B(ai_3_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_701_S), .Y(
        un1_y0_s_0_701_Y), .FCO(un1_y0_s_0_701_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_3_[5]), .B(
        ai_3_[17]), .C(yi_3_[8]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_22[5]), .Y(un1_x0_1_cry_5_Y_5), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_22[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[16]));
    SLE \xn[8]  (.D(xn_22[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_3_[9]), .B(
        ai_3_[17]), .C(xi_3_[12]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_22[9]), .Y(un1_y0_cry_9_Y_7), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_3_[13]), .B(
        ai_3_[17]), .C(xi_3_[16]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_22[13]), .Y(un1_y0_cry_13_Y_7), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_22[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_3_[12]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_22[12]), .Y(un1_a0_2_cry_11_Y_4), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_3_[6]), .B(
        ai_3_[17]), .C(yi_3_[9]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_22[6]), .Y(un1_x0_1_cry_6_Y_5), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_3_[12]), .B(
        ai_3_[17]), .C(yi_3_[15]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_22[12]), .Y(un1_x0_1_cry_12_Y_5), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_22[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[3]));
    SLE \yn[15]  (.D(yn_22[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_3_[2]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(VCC), .S(un1_a0_2_cry_1_S_2)
        , .Y(un1_a0_2_cry_1_Y_4), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_22[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[10]));
    SLE \yn[11]  (.D(yn_22[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[11]));
    SLE \xn[14]  (.D(xn_22[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_3_[12]), .B(
        ai_3_[17]), .C(xi_3_[15]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_22[12]), .Y(un1_y0_cry_12_Y_7), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_22[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_3_[4]), .B(
        ai_3_[17]), .C(yi_3_[7]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_22[4]), .Y(un1_x0_1_cry_4_Y_5), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_3_[7]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_22[7]), .Y(un1_a0_2_cry_6_Y_4), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_10 (.A(ai_3_[11]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_22[11]), .Y(un1_a0_2_cry_10_Y_4), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_5), .Y(un1_x0_1_cry_0_cy_Y_5), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_22[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_3_[3]), .B(
        ai_3_[17]), .C(yi_3_[6]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_22[3]), .Y(un1_x0_1_cry_3_Y_5), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_3_[15]), .B(
        ai_3_[17]), .C(xi_3_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_22[15]), .Y(un1_y0_cry_15_Y_7), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_22[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[10]));
    SLE \an[6]  (.D(an_22[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[6]));
    SLE \an[15]  (.D(an_22[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_3_[8]), .B(
        ai_3_[17]), .C(yi_3_[11]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_22[8]), .Y(un1_x0_1_cry_8_Y_5), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_3_[5]), .B(
        ai_3_[17]), .C(xi_3_[8]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_22[5]), .Y(un1_y0_cry_5_Y_7), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_3_[4]), .B(
        ai_3_[17]), .C(xi_3_[7]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_22[4]), .Y(un1_y0_cry_4_Y_7), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_3_[2]), .B(
        ai_3_[17]), .C(xi_3_[5]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_22[2]), .Y(un1_y0_cry_2_Y_7), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_3_[2]), .B(
        ai_3_[17]), .C(yi_3_[5]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_22[2]), .Y(un1_x0_1_cry_2_Y_5), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_22[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[2]));
    SLE \yn[9]  (.D(yn_22[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_3_[1]), .B(
        ai_3_[17]), .C(xi_3_[4]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_22[1]), .Y(un1_y0_cry_1_Y_7), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_3_[16]), .B(
        ai_3_[17]), .C(yi_3_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_22[16]), .Y(un1_x0_1_cry_16_Y_5), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_3_[3]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_22[3]), .Y(un1_a0_2_cry_2_Y_4), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_22[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[7]));
    SLE \xn[6]  (.D(xn_22[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[6]));
    SLE \an[17]  (.D(an_22[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[17]));
    SLE \yn[13]  (.D(yn_22[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[13]));
    SLE \an[13]  (.D(an_22[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[13]));
    SLE \xn[2]  (.D(xn_22[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[2]));
    SLE \xn[1]  (.D(xn_22[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_3_[14]), .B(
        ai_3_[17]), .C(yi_3_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_22[14]), .Y(un1_x0_1_cry_14_Y_5), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_22[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_3_[16]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_22[16]), .Y(un1_a0_2_cry_15_Y_2), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_15_Z), .Y(
        an_22[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_3_[14]), .B(
        ai_3_[17]), .C(xi_3_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_22[14]), .Y(un1_y0_cry_14_Y_7), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_22[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_3_[13]), .B(
        ai_3_[17]), .C(yi_3_[16]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_22[13]), .Y(un1_x0_1_cry_13_Y_5), .FCO(un1_x0_1_cry_13_Z)
        );
    CFG2 #( .INIT(4'h6) )  un1_a0_2_axb_1_i (.A(ai_3_[17]), .B(
        ai_3_[2]), .Y(an_22[2]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_3_[16]), .B(
        ai_3_[17]), .C(xi_3_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_22[16]), .Y(un1_y0_cry_16_Y_6), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_22[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_3_[6]), .B(
        ai_3_[17]), .C(xi_3_[9]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_22[6]), .Y(un1_y0_cry_6_Y_7), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_22[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[3]));
    SLE \yn[17]  (.D(yn_22[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[17]));
    SLE \yn[14]  (.D(yn_22[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[14]));
    SLE \xn[5]  (.D(xn_22[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_4_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_3_[3]), .B(
        ai_3_[17]), .C(xi_3_[6]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_22[3]), .Y(un1_y0_cry_3_Y_7), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_3_[14]), .B(
        ai_3_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_22[14]), .Y(un1_a0_2_cry_13_Y_4), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_22[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_4_[12]));
    SLE \an[16]  (.D(an_22[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_4_[16]));
    
endmodule


module cordic_par_calc_0_18_4_9s(
       yi_9_,
       ai_9_,
       xi_9_,
       ai_10_,
       xi_10_,
       yi_10_,
       clk
    );
input  [17:0] yi_9_;
input  [17:1] ai_9_;
input  [17:0] xi_9_;
output [17:1] ai_10_;
output [17:0] xi_10_;
output [17:0] yi_10_;
input  clk;

    wire [17:2] an_58;
    wire [17:0] yn_58;
    wire [17:0] xn_58;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_a0_2_cry_1_Y_7, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S, un1_x0_1_cry_0_cy_Y, 
        un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y, un1_x0_1_cry_1_Z, 
        un1_x0_1_cry_1_Y, un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y, 
        un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y, un1_x0_1_cry_4_Z, 
        un1_x0_1_cry_4_Y, un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y, 
        un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y, un1_x0_1_cry_7_Z, 
        un1_x0_1_cry_7_Y, un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y, 
        un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y, un1_x0_1_cry_10_Z, 
        un1_x0_1_cry_10_Y, un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y, 
        un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y, un1_x0_1_cry_13_Z, 
        un1_x0_1_cry_13_Y, un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y, 
        un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y, un1_x0_1_s_17_FCO, 
        un1_x0_1_s_17_Y, un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y, 
        un1_a0_2_cry_1_Z, un1_a0_2_cry_1_S_4, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_7, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_7, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_7, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_7, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_7, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_7, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_7, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_7, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_7, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_7, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_7, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_7, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_Y_7, un1_a0_2_cry_15_Z, un1_a0_2_cry_15_Y_4, 
        un1_a0_2_cry_16_Y, un1_y0_s_0_707_FCO, un1_y0_s_0_707_S, 
        un1_y0_s_0_707_Y, un1_y0_cry_0_Z, un1_y0_cry_0_Y_12, 
        un1_y0_cry_1_Z, un1_y0_cry_1_Y_13, un1_y0_cry_2_Z, 
        un1_y0_cry_2_Y_13, un1_y0_cry_3_Z, un1_y0_cry_3_Y_13, 
        un1_y0_cry_4_Z, un1_y0_cry_4_Y_13, un1_y0_cry_5_Z, 
        un1_y0_cry_5_Y_13, un1_y0_cry_6_Z, un1_y0_cry_6_Y_13, 
        un1_y0_cry_7_Z, un1_y0_cry_7_Y_13, un1_y0_cry_8_Z, 
        un1_y0_cry_8_Y_13, un1_y0_cry_9_Z, un1_y0_cry_9_Y_13, 
        un1_y0_cry_10_Z, un1_y0_cry_10_Y_13, un1_y0_cry_11_Z, 
        un1_y0_cry_11_Y_13, un1_y0_cry_12_Z, un1_y0_cry_12_Y_13, 
        un1_y0_cry_13_Z, un1_y0_cry_13_Y_13, un1_y0_cry_14_Z, 
        un1_y0_cry_14_Y_13, un1_y0_cry_15_Z, un1_y0_cry_15_Y_13, 
        un1_y0_s_17_FCO_12, un1_y0_s_17_Y_12, un1_y0_cry_16_Z, 
        un1_y0_cry_16_Y_12;
    
    SLE \xn[16]  (.D(xn_58[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_9_[10]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(
        xn_58[10]), .Y(un1_x0_1_cry_10_Y), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_9_[4]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_58[4]), .Y(un1_a0_2_cry_4_Y_7), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_9_[10]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_58[10]), .Y(un1_y0_cry_10_Y_13), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_58[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_9_[11]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_58[11]), .Y(un1_y0_cry_11_Y_13), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_9_[14]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_58[14]), .Y(un1_a0_2_cry_14_Y_7), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_58[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[4]));
    SLE \an[10]  (.D(an_58[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_9_[0]), .B(
        ai_9_[17]), .C(yi_9_[9]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z), 
        .S(xn_58[0]), .Y(un1_x0_1_cry_0_Y), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_58[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[6]));
    SLE \xn[15]  (.D(xn_58[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[15]));
    SLE \xn[13]  (.D(xn_58[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[13]));
    SLE \an[11]  (.D(an_58[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[11]));
    SLE \xn[4]  (.D(xn_58[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_9_[17]), 
        .C(xi_9_[17]), .D(yi_9_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_58[17]), .Y(un1_x0_1_s_17_Y), .FCO(un1_x0_1_s_17_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_9_[7]), .B(
        ai_9_[17]), .C(yi_9_[16]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(
        xn_58[7]), .Y(un1_x0_1_cry_7_Y), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_58[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[2]));
    SLE \yn[1]  (.D(yn_58[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_9_[17]), 
        .C(xi_9_[17]), .D(yi_9_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_58[17]), .Y(un1_y0_s_17_Y_12), .FCO(un1_y0_s_17_FCO_12));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_9_[9]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(
        xn_58[9]), .Y(un1_x0_1_cry_9_Y), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_58[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_9_[0]), .B(
        ai_9_[17]), .C(xi_9_[9]), .D(GND), .FCI(un1_y0_s_0_707_FCO), 
        .S(yn_58[0]), .Y(un1_y0_cry_0_Y_12), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_9_[7]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_58[7]), .Y(un1_a0_2_cry_7_Y_7), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_9_[15]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_58[15]), .Y(un1_x0_1_cry_15_Y), .FCO(un1_x0_1_cry_15_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_3 (.A(ai_9_[3]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_58[3]), .Y(un1_a0_2_cry_3_Y_7), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_9_[12]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_58[12]), .Y(un1_a0_2_cry_12_Y_7), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_9_[11]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_58[11]), .Y(un1_x0_1_cry_11_Y), .FCO(un1_x0_1_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_9_[8]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_58[8]), .Y(un1_a0_2_cry_8_Y_7), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_9_[5]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_58[5]), .Y(un1_a0_2_cry_5_Y_7), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_9_[1]), .B(
        ai_9_[17]), .C(yi_9_[10]), .D(GND), .FCI(un1_x0_1_cry_0_Z), .S(
        xn_58[1]), .Y(un1_x0_1_cry_1_Y), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_58[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[17]));
    SLE \yn[5]  (.D(yn_58[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[5]));
    SLE \an[9]  (.D(an_58[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_9_[7]), .B(
        ai_9_[17]), .C(xi_9_[16]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_58[7]), .Y(un1_y0_cry_7_Y_13), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_58[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[7]));
    SLE \an[14]  (.D(an_58[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[14]));
    SLE \xn[9]  (.D(xn_58[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[9]));
    SLE \xn[7]  (.D(xn_58[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[7]));
    SLE \an[8]  (.D(an_58[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[8]));
    SLE \yn[0]  (.D(yn_58[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_9_[8]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_58[8]), .Y(un1_y0_cry_8_Y_13), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_9_[9]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_58[9]), .Y(un1_a0_2_cry_9_Y_7), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_9_[5]), .B(
        ai_9_[17]), .C(yi_9_[14]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(
        xn_58[5]), .Y(un1_x0_1_cry_5_Y), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_58[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[16]));
    SLE \xn[8]  (.D(xn_58[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_9_[9]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_58[9]), .Y(un1_y0_cry_9_Y_13), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_9_[13]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_58[13]), .Y(un1_y0_cry_13_Y_13), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_58[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_9_[11]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_58[11]), .Y(un1_a0_2_cry_11_Y_7), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_9_[6]), .B(
        ai_9_[17]), .C(yi_9_[15]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(
        xn_58[6]), .Y(un1_x0_1_cry_6_Y), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_9_[12]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_58[12]), .Y(un1_x0_1_cry_12_Y), .FCO(un1_x0_1_cry_12_Z));
    SLE \an[3]  (.D(an_58[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[3]));
    SLE \yn[15]  (.D(yn_58[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_9_[1]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_1_S_4)
        , .Y(un1_a0_2_cry_1_Y_7), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_58[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[10]));
    SLE \yn[11]  (.D(yn_58[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[11]));
    SLE \xn[14]  (.D(xn_58[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_9_[12]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_58[12]), .Y(un1_y0_cry_12_Y_13), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_58[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_9_[4]), .B(
        ai_9_[17]), .C(yi_9_[13]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(
        xn_58[4]), .Y(un1_x0_1_cry_4_Y), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_9_[6]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_58[6]), .Y(un1_a0_2_cry_6_Y_7), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_9_[10]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_58[10]), .Y(un1_a0_2_cry_10_Y_7), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S), .Y(un1_x0_1_cry_0_cy_Y), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_58[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_9_[3]), .B(
        ai_9_[17]), .C(yi_9_[12]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(
        xn_58[3]), .Y(un1_x0_1_cry_3_Y), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_9_[15]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_58[15]), .Y(un1_y0_cry_15_Y_13), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_58[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_9_[16]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        an_58[16]), .Y(un1_a0_2_cry_16_Y), .FCO(un1_a0_2_cry_16_Z));
    SLE \an[6]  (.D(an_58[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[6]));
    SLE \an[15]  (.D(an_58[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_9_[8]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(
        xn_58[8]), .Y(un1_x0_1_cry_8_Y), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_9_[5]), .B(
        ai_9_[17]), .C(xi_9_[14]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_58[5]), .Y(un1_y0_cry_5_Y_13), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_9_[4]), .B(
        ai_9_[17]), .C(xi_9_[13]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_58[4]), .Y(un1_y0_cry_4_Y_13), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_9_[2]), .B(
        ai_9_[17]), .C(xi_9_[11]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_58[2]), .Y(un1_y0_cry_2_Y_13), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_9_[2]), .B(
        ai_9_[17]), .C(yi_9_[11]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(
        xn_58[2]), .Y(un1_x0_1_cry_2_Y), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_58[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[2]));
    SLE \an[1]  (.D(un1_a0_2_cry_1_Y_7), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[1]));
    SLE \yn[9]  (.D(yn_58[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_9_[1]), .B(
        ai_9_[17]), .C(xi_9_[10]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_58[1]), .Y(un1_y0_cry_1_Y_13), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_9_[16]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_58[16]), .Y(un1_x0_1_cry_16_Y), .FCO(un1_x0_1_cry_16_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_9_[2]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_58[2]), .Y(un1_a0_2_cry_2_Y_7), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_58[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[7]));
    SLE \xn[6]  (.D(xn_58[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[6]));
    SLE \an[17]  (.D(an_58[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[17]));
    SLE \yn[13]  (.D(yn_58[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[13]));
    SLE \an[13]  (.D(an_58[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[13]));
    SLE \xn[2]  (.D(xn_58[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[2]));
    SLE \xn[1]  (.D(xn_58[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_9_[14]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_58[14]), .Y(un1_x0_1_cry_14_Y), .FCO(un1_x0_1_cry_14_Z));
    SLE \yn[8]  (.D(yn_58[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_9_[15]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_58[15]), .Y(un1_a0_2_cry_15_Y_4), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_58[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_9_[14]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_58[14]), .Y(un1_y0_cry_14_Y_13), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_58[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[12]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_707 (.A(VCC), .B(ai_9_[17]), 
        .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_707_S), .Y(
        un1_y0_s_0_707_Y), .FCO(un1_y0_s_0_707_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_9_[13]), .B(
        ai_9_[17]), .C(yi_9_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_58[13]), .Y(un1_x0_1_cry_13_Y), .FCO(un1_x0_1_cry_13_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_9_[16]), .B(
        ai_9_[17]), .C(xi_9_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(
        yn_58[16]), .Y(un1_y0_cry_16_Y_12), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_58[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_9_[6]), .B(
        ai_9_[17]), .C(xi_9_[15]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_58[6]), .Y(un1_y0_cry_6_Y_13), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_58[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[3]));
    SLE \yn[17]  (.D(yn_58[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[17]));
    SLE \yn[14]  (.D(yn_58[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[14]));
    SLE \xn[5]  (.D(xn_58[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_10_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_9_[3]), .B(
        ai_9_[17]), .C(xi_9_[12]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_58[3]), .Y(un1_y0_cry_3_Y_13), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_9_[13]), .B(
        ai_9_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_58[13]), .Y(un1_a0_2_cry_13_Y_7), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_58[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_10_[12]));
    SLE \an[16]  (.D(an_58[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_10_[16]));
    
endmodule


module cordic_par_calc_0_18_4_12s(
       yi_12_,
       ai_12_,
       xi_12_,
       ai_13_,
       xi_13_,
       yi_13_,
       clk
    );
input  [17:0] yi_12_;
input  [17:1] ai_12_;
input  [17:0] xi_12_;
output [17:1] ai_13_;
output [17:0] xi_13_;
output [17:0] yi_13_;
input  clk;

    wire [17:1] an_76;
    wire [17:0] yn_76;
    wire [17:0] xn_76;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_x0_1_cry_0_cy_Z, 
        un1_x0_1_cry_0_cy_S_4, un1_x0_1_cry_0_cy_Y_4, un1_x0_1_cry_0_Z, 
        un1_x0_1_cry_0_Y_4, un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_4, 
        un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y_4, un1_x0_1_cry_3_Z, 
        un1_x0_1_cry_3_Y_4, un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_4, 
        un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y_4, un1_x0_1_cry_6_Z, 
        un1_x0_1_cry_6_Y_4, un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_4, 
        un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y_4, un1_x0_1_cry_9_Z, 
        un1_x0_1_cry_9_Y_4, un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_4, 
        un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y_4, un1_x0_1_cry_12_Z, 
        un1_x0_1_cry_12_Y_4, un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_4, 
        un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y_4, un1_x0_1_cry_15_Z, 
        un1_x0_1_cry_15_Y_4, un1_x0_1_s_17_FCO_4, un1_x0_1_s_17_Y_4, 
        un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y_4, un1_a0_2_cry_1_Z, 
        un1_a0_2_cry_1_S_8, un1_a0_2_cry_1_Y_11, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_Y_11, un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_11, 
        un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_11, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_Y_11, un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_11, 
        un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_11, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_Y_11, un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_11, 
        un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_11, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_Y_11, un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_11, 
        un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_11, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_Y_11, un1_a0_2_cry_15_Z, un1_a0_2_cry_15_Y_8, 
        un1_a0_2_cry_16_Y_3, un1_y0_s_0_703_FCO, un1_y0_s_0_703_S, 
        un1_y0_s_0_703_Y, un1_y0_cry_0_Z, un1_y0_cry_0_Y_8, 
        un1_y0_cry_1_Z, un1_y0_cry_1_Y_9, un1_y0_cry_2_Z, 
        un1_y0_cry_2_Y_9, un1_y0_cry_3_Z, un1_y0_cry_3_Y_9, 
        un1_y0_cry_4_Z, un1_y0_cry_4_Y_9, un1_y0_cry_5_Z, 
        un1_y0_cry_5_Y_9, un1_y0_cry_6_Z, un1_y0_cry_6_Y_9, 
        un1_y0_cry_7_Z, un1_y0_cry_7_Y_9, un1_y0_cry_8_Z, 
        un1_y0_cry_8_Y_9, un1_y0_cry_9_Z, un1_y0_cry_9_Y_9, 
        un1_y0_cry_10_Z, un1_y0_cry_10_Y_9, un1_y0_cry_11_Z, 
        un1_y0_cry_11_Y_9, un1_y0_cry_12_Z, un1_y0_cry_12_Y_9, 
        un1_y0_cry_13_Z, un1_y0_cry_13_Y_9, un1_y0_cry_14_Z, 
        un1_y0_cry_14_Y_9, un1_y0_cry_15_Z, un1_y0_cry_15_Y_9, 
        un1_y0_s_17_FCO_8, un1_y0_s_17_Y_8, un1_y0_cry_16_Z, 
        un1_y0_cry_16_Y_8, N_1415;
    
    SLE \xn[16]  (.D(xn_76[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_12_[10]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), 
        .S(xn_76[10]), .Y(un1_x0_1_cry_10_Y_4), .FCO(un1_x0_1_cry_10_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_12_[4]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_76[4]), .Y(un1_a0_2_cry_4_Y_11), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_12_[10]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_76[10]), .Y(un1_y0_cry_10_Y_9), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_76[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_12_[11]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), 
        .S(yn_76[11]), .Y(un1_y0_cry_11_Y_9), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_12_[14]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_76[14]), .Y(un1_a0_2_cry_14_Y_11), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_76[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[4]));
    SLE \an[10]  (.D(an_76[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_12_[0]), .B(
        ai_12_[17]), .C(yi_12_[12]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z)
        , .S(xn_76[0]), .Y(un1_x0_1_cry_0_Y_4), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_76[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[6]));
    SLE \xn[15]  (.D(xn_76[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[15]));
    SLE \xn[13]  (.D(xn_76[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[13]));
    SLE \an[11]  (.D(an_76[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[11]));
    SLE \xn[4]  (.D(xn_76[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_12_[17]), 
        .C(xi_12_[17]), .D(yi_12_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_76[17]), .Y(un1_x0_1_s_17_Y_4), .FCO(un1_x0_1_s_17_FCO_4));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_12_[7]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), 
        .S(xn_76[7]), .Y(un1_x0_1_cry_7_Y_4), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_76[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[2]));
    SLE \yn[1]  (.D(yn_76[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_12_[17]), 
        .C(xi_12_[17]), .D(yi_12_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_76[17]), .Y(un1_y0_s_17_Y_8), .FCO(un1_y0_s_17_FCO_8));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_12_[9]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), 
        .S(xn_76[9]), .Y(un1_x0_1_cry_9_Y_4), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_76[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_12_[0]), .B(
        ai_12_[17]), .C(xi_12_[12]), .D(GND), .FCI(un1_y0_s_0_703_FCO), 
        .S(yn_76[0]), .Y(un1_y0_cry_0_Y_8), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_12_[7]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_76[7]), .Y(un1_a0_2_cry_7_Y_11), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_703 (.A(VCC), .B(ai_12_[17])
        , .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_703_S), .Y(
        un1_y0_s_0_703_Y), .FCO(un1_y0_s_0_703_FCO));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_12_[15]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_76[15]), .Y(un1_x0_1_cry_15_Y_4), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_12_[3]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_76[3]), .Y(un1_a0_2_cry_3_Y_11), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_12_[12]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_76[12]), .Y(un1_a0_2_cry_12_Y_11), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_12_[11]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_76[11]), .Y(un1_x0_1_cry_11_Y_4), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_12_[8]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_76[8]), .Y(un1_a0_2_cry_8_Y_11), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_12_[5]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_76[5]), .Y(un1_a0_2_cry_5_Y_11), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_12_[1]), .B(
        ai_12_[17]), .C(yi_12_[13]), .D(GND), .FCI(un1_x0_1_cry_0_Z), 
        .S(xn_76[1]), .Y(un1_x0_1_cry_1_Y_4), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_76[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[17]));
    SLE \yn[5]  (.D(yn_76[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[5]));
    SLE \an[9]  (.D(an_76[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_12_[7]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_76[7]), .Y(un1_y0_cry_7_Y_9), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_76[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[7]));
    SLE \an[14]  (.D(an_76[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[14]));
    SLE \xn[9]  (.D(xn_76[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[9]));
    SLE \xn[7]  (.D(xn_76[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[7]));
    SLE \an[8]  (.D(an_76[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[8]));
    SLE \yn[0]  (.D(yn_76[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_12_[8]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_76[8]), .Y(un1_y0_cry_8_Y_9), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_12_[9]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_76[9]), .Y(un1_a0_2_cry_9_Y_11), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_12_[5]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_4_Z), 
        .S(xn_76[5]), .Y(un1_x0_1_cry_5_Y_4), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_76[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[16]));
    SLE \xn[8]  (.D(xn_76[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_12_[9]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_76[9]), .Y(un1_y0_cry_9_Y_9), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_12_[13]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), 
        .S(yn_76[13]), .Y(un1_y0_cry_13_Y_9), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_76[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_12_[11]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_76[11]), .Y(un1_a0_2_cry_11_Y_11), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_12_[6]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_5_Z), 
        .S(xn_76[6]), .Y(un1_x0_1_cry_6_Y_4), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_12_[12]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_76[12]), .Y(un1_x0_1_cry_12_Y_4), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \an[3]  (.D(an_76[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[3]));
    SLE \yn[15]  (.D(yn_76[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_12_[1]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_a0_2_cry_1_S_8), .Y(un1_a0_2_cry_1_Y_11), .FCO(
        un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_76[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[10]));
    SLE \yn[11]  (.D(yn_76[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[11]));
    SLE \xn[14]  (.D(xn_76[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_12_[12]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), 
        .S(yn_76[12]), .Y(un1_y0_cry_12_Y_9), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_76[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_12_[4]), .B(
        ai_12_[17]), .C(yi_12_[16]), .D(GND), .FCI(un1_x0_1_cry_3_Z), 
        .S(xn_76[4]), .Y(un1_x0_1_cry_4_Y_4), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_12_[6]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_76[6]), .Y(un1_a0_2_cry_6_Y_11), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_12_[10]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_76[10]), .Y(un1_a0_2_cry_10_Y_11), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_4), .Y(un1_x0_1_cry_0_cy_Y_4), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_76[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_12_[3]), .B(
        ai_12_[17]), .C(yi_12_[15]), .D(GND), .FCI(un1_x0_1_cry_2_Z), 
        .S(xn_76[3]), .Y(un1_x0_1_cry_3_Y_4), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_12_[15]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), 
        .S(yn_76[15]), .Y(un1_y0_cry_15_Y_9), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_76[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_12_[16]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        an_76[16]), .Y(un1_a0_2_cry_16_Y_3), .FCO(un1_a0_2_cry_16_Z));
    SLE \an[6]  (.D(an_76[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[6]));
    SLE \an[15]  (.D(an_76[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_12_[8]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), 
        .S(xn_76[8]), .Y(un1_x0_1_cry_8_Y_4), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_12_[5]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_76[5]), .Y(un1_y0_cry_5_Y_9), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_12_[4]), .B(
        ai_12_[17]), .C(xi_12_[16]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_76[4]), .Y(un1_y0_cry_4_Y_9), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_12_[2]), .B(
        ai_12_[17]), .C(xi_12_[14]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_76[2]), .Y(un1_y0_cry_2_Y_9), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_12_[2]), .B(
        ai_12_[17]), .C(yi_12_[14]), .D(GND), .FCI(un1_x0_1_cry_1_Z), 
        .S(xn_76[2]), .Y(un1_x0_1_cry_2_Y_4), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_76[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[2]));
    SLE \an[1]  (.D(an_76[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[1]));
    SLE \yn[9]  (.D(yn_76[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_12_[1]), .B(
        ai_12_[17]), .C(xi_12_[13]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_76[1]), .Y(un1_y0_cry_1_Y_9), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_12_[16]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_76[16]), .Y(un1_x0_1_cry_16_Y_4), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_2 (.A(ai_12_[2]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_76[2]), .Y(un1_a0_2_cry_2_Y_11), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_76[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[7]));
    SLE \xn[6]  (.D(xn_76[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[6]));
    SLE \an[17]  (.D(an_76[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[17]));
    SLE \yn[13]  (.D(yn_76[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[13]));
    SLE \an[13]  (.D(an_76[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[13]));
    SLE \xn[2]  (.D(xn_76[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[2]));
    SLE \xn[1]  (.D(xn_76[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_12_[14]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_76[14]), .Y(un1_x0_1_cry_14_Y_4), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_76[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_12_[15]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_76[15]), .Y(un1_a0_2_cry_15_Y_8), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_76[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_12_[14]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), 
        .S(yn_76[14]), .Y(un1_y0_cry_14_Y_9), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_76[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_12_[13]), .B(
        ai_12_[17]), .C(yi_12_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_76[13]), .Y(un1_x0_1_cry_13_Y_4), .FCO(un1_x0_1_cry_13_Z)
        );
    CFG2 #( .INIT(4'h6) )  un1_a0_2_axb_1_i (.A(ai_12_[17]), .B(
        ai_12_[1]), .Y(an_76[1]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_12_[16]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), 
        .S(yn_76[16]), .Y(un1_y0_cry_16_Y_8), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_76[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_12_[6]), .B(
        ai_12_[17]), .C(xi_12_[17]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_76[6]), .Y(un1_y0_cry_6_Y_9), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_76[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[3]));
    SLE \yn[17]  (.D(yn_76[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[17]));
    SLE \yn[14]  (.D(yn_76[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[14]));
    SLE \xn[5]  (.D(xn_76[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_13_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_12_[3]), .B(
        ai_12_[17]), .C(xi_12_[15]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_76[3]), .Y(un1_y0_cry_3_Y_9), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_12_[13]), .B(
        ai_12_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_76[13]), .Y(un1_a0_2_cry_13_Y_11), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_76[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_13_[12]));
    SLE \an[16]  (.D(an_76[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_13_[16]));
    
endmodule


module cordic_par_calc_0_18_4_13s(
       yi_13_,
       ai_13_,
       xi_13_,
       ai_14_,
       xi_14_,
       yi_14_,
       clk
    );
input  [17:0] yi_13_;
input  [17:1] ai_13_;
input  [17:0] xi_13_;
output [17:1] ai_14_;
output [17:0] xi_14_;
output [17:0] yi_14_;
input  clk;

    wire [17:2] an_82;
    wire [17:0] yn_82;
    wire [17:0] xn_82;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_a0_2_cry_1_Y_9, 
        un1_x0_1_cry_0_cy_Z, un1_x0_1_cry_0_cy_S_11, 
        un1_x0_1_cry_0_cy_Y_11, un1_x0_1_cry_0_Z, un1_x0_1_cry_0_Y_11, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_11, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_11, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_11, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_11, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_11, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_11, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_11, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_11, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_11, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_11, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_11, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_11, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_11, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_11, un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_11, 
        un1_x0_1_s_17_FCO_11, un1_x0_1_s_17_Y_11, un1_x0_1_cry_16_Z, 
        un1_x0_1_cry_16_Y_11, un1_a0_2_cry_1_Z, un1_a0_2_cry_1_S_6, 
        un1_a0_2_cry_2_Z, un1_a0_2_cry_2_Y_9, un1_a0_2_cry_3_Z, 
        un1_a0_2_cry_3_Y_9, un1_a0_2_cry_4_Z, un1_a0_2_cry_4_Y_9, 
        un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_9, un1_a0_2_cry_6_Z, 
        un1_a0_2_cry_6_Y_9, un1_a0_2_cry_7_Z, un1_a0_2_cry_7_Y_9, 
        un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_9, un1_a0_2_cry_9_Z, 
        un1_a0_2_cry_9_Y_9, un1_a0_2_cry_10_Z, un1_a0_2_cry_10_Y_9, 
        un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_9, un1_a0_2_cry_12_Z, 
        un1_a0_2_cry_12_Y_9, un1_a0_2_cry_13_Z, un1_a0_2_cry_13_Y_9, 
        un1_a0_2_cry_14_Z, un1_a0_2_cry_14_Y_9, un1_a0_2_cry_15_Z, 
        un1_a0_2_cry_15_Y_6, un1_a0_2_cry_16_Y_1, un1_y0_s_0_697_FCO, 
        un1_y0_s_0_697_S, un1_y0_s_0_697_Y, un1_y0_cry_0_Z, 
        un1_y0_cry_0_Y_2, un1_y0_cry_1_Z, un1_y0_cry_1_Y_3, 
        un1_y0_cry_2_Z, un1_y0_cry_2_Y_3, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y_3, un1_y0_cry_4_Z, un1_y0_cry_4_Y_3, 
        un1_y0_cry_5_Z, un1_y0_cry_5_Y_3, un1_y0_cry_6_Z, 
        un1_y0_cry_6_Y_3, un1_y0_cry_7_Z, un1_y0_cry_7_Y_3, 
        un1_y0_cry_8_Z, un1_y0_cry_8_Y_3, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y_3, un1_y0_cry_10_Z, un1_y0_cry_10_Y_3, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y_3, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y_3, un1_y0_cry_13_Z, un1_y0_cry_13_Y_3, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y_3, un1_y0_cry_15_Z, 
        un1_y0_cry_15_Y_3, un1_y0_s_17_FCO_2, un1_y0_s_17_Y_2, 
        un1_y0_cry_16_Z, un1_y0_cry_16_Y_2, N_1418;
    
    SLE \xn[16]  (.D(xn_82[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_13_[10]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), 
        .S(xn_82[10]), .Y(un1_x0_1_cry_10_Y_11), .FCO(
        un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_13_[4]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_82[4]), .Y(un1_a0_2_cry_4_Y_9), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_13_[10]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_82[10]), .Y(un1_y0_cry_10_Y_3), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_82[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_13_[11]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), 
        .S(yn_82[11]), .Y(un1_y0_cry_11_Y_3), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_13_[14]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_82[14]), .Y(un1_a0_2_cry_14_Y_9), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_82[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[4]));
    SLE \an[10]  (.D(an_82[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[10]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_13_[0]), .B(
        ai_13_[17]), .C(yi_13_[13]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z)
        , .S(xn_82[0]), .Y(un1_x0_1_cry_0_Y_11), .FCO(un1_x0_1_cry_0_Z)
        );
    SLE \yn[6]  (.D(yn_82[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[6]));
    SLE \xn[15]  (.D(xn_82[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[15]));
    SLE \xn[13]  (.D(xn_82[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[13]));
    SLE \an[11]  (.D(an_82[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[11]));
    SLE \xn[4]  (.D(xn_82[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_13_[17]), 
        .C(xi_13_[17]), .D(yi_13_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_82[17]), .Y(un1_x0_1_s_17_Y_11), .FCO(un1_x0_1_s_17_FCO_11));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_13_[7]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), 
        .S(xn_82[7]), .Y(un1_x0_1_cry_7_Y_11), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_82[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[2]));
    SLE \yn[1]  (.D(yn_82[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[1]));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_697 (.A(VCC), .B(ai_13_[17])
        , .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_697_S), .Y(
        un1_y0_s_0_697_Y), .FCO(un1_y0_s_0_697_FCO));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_13_[17]), 
        .C(xi_13_[17]), .D(yi_13_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_82[17]), .Y(un1_y0_s_17_Y_2), .FCO(un1_y0_s_17_FCO_2));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_13_[9]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), 
        .S(xn_82[9]), .Y(un1_x0_1_cry_9_Y_11), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_82[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_13_[0]), .B(
        ai_13_[17]), .C(xi_13_[13]), .D(GND), .FCI(un1_y0_s_0_697_FCO), 
        .S(yn_82[0]), .Y(un1_y0_cry_0_Y_2), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_13_[7]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_82[7]), .Y(un1_a0_2_cry_7_Y_9), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_13_[15]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_82[15]), .Y(un1_x0_1_cry_15_Y_11), .FCO(
        un1_x0_1_cry_15_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_13_[3]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_82[3]), .Y(un1_a0_2_cry_3_Y_9), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_13_[12]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_82[12]), .Y(un1_a0_2_cry_12_Y_9), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_13_[11]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_82[11]), .Y(un1_x0_1_cry_11_Y_11), .FCO(
        un1_x0_1_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_13_[8]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_82[8]), .Y(un1_a0_2_cry_8_Y_9), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_13_[5]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_82[5]), .Y(un1_a0_2_cry_5_Y_9), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_13_[1]), .B(
        ai_13_[17]), .C(yi_13_[14]), .D(GND), .FCI(un1_x0_1_cry_0_Z), 
        .S(xn_82[1]), .Y(un1_x0_1_cry_1_Y_11), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_82[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[17]));
    SLE \yn[5]  (.D(yn_82[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[5]));
    SLE \an[9]  (.D(an_82[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_13_[7]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_82[7]), .Y(un1_y0_cry_7_Y_3), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_82[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[7]));
    SLE \an[14]  (.D(an_82[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[14]));
    SLE \xn[9]  (.D(xn_82[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[9]));
    SLE \xn[7]  (.D(xn_82[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[7]));
    SLE \an[8]  (.D(an_82[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[8]));
    SLE \yn[0]  (.D(yn_82[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_13_[8]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_82[8]), .Y(un1_y0_cry_8_Y_3), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_13_[9]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_82[9]), .Y(un1_a0_2_cry_9_Y_9), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_13_[5]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_4_Z), 
        .S(xn_82[5]), .Y(un1_x0_1_cry_5_Y_11), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_82[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[16]));
    SLE \xn[8]  (.D(xn_82[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_13_[9]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_82[9]), .Y(un1_y0_cry_9_Y_3), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_13_[13]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), 
        .S(yn_82[13]), .Y(un1_y0_cry_13_Y_3), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_82[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_13_[11]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_82[11]), .Y(un1_a0_2_cry_11_Y_9), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_13_[6]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_5_Z), 
        .S(xn_82[6]), .Y(un1_x0_1_cry_6_Y_11), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_13_[12]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_82[12]), .Y(un1_x0_1_cry_12_Y_11), .FCO(
        un1_x0_1_cry_12_Z));
    SLE \an[3]  (.D(an_82[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[3]));
    SLE \yn[15]  (.D(yn_82[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[15]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_1 (.A(ai_13_[1]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(GND), .S(
        un1_a0_2_cry_1_S_6), .Y(un1_a0_2_cry_1_Y_9), .FCO(
        un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_82[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[10]));
    SLE \yn[11]  (.D(yn_82[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[11]));
    SLE \xn[14]  (.D(xn_82[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_13_[12]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), 
        .S(yn_82[12]), .Y(un1_y0_cry_12_Y_3), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_82[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_13_[4]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_3_Z), 
        .S(xn_82[4]), .Y(un1_x0_1_cry_4_Y_11), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_13_[6]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_82[6]), .Y(un1_a0_2_cry_6_Y_9), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_13_[10]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_82[10]), .Y(un1_a0_2_cry_10_Y_9), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_11), .Y(un1_x0_1_cry_0_cy_Y_11), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_82[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_13_[3]), .B(
        ai_13_[17]), .C(yi_13_[16]), .D(GND), .FCI(un1_x0_1_cry_2_Z), 
        .S(xn_82[3]), .Y(un1_x0_1_cry_3_Y_11), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_13_[15]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), 
        .S(yn_82[15]), .Y(un1_y0_cry_15_Y_3), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_82[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_13_[16]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        an_82[16]), .Y(un1_a0_2_cry_16_Y_1), .FCO(un1_a0_2_cry_16_Z));
    SLE \an[6]  (.D(an_82[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[6]));
    SLE \an[15]  (.D(an_82[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_13_[8]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), 
        .S(xn_82[8]), .Y(un1_x0_1_cry_8_Y_11), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_13_[5]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_82[5]), .Y(un1_y0_cry_5_Y_3), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_13_[4]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_82[4]), .Y(un1_y0_cry_4_Y_3), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_13_[2]), .B(
        ai_13_[17]), .C(xi_13_[15]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_82[2]), .Y(un1_y0_cry_2_Y_3), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_13_[2]), .B(
        ai_13_[17]), .C(yi_13_[15]), .D(GND), .FCI(un1_x0_1_cry_1_Z), 
        .S(xn_82[2]), .Y(un1_x0_1_cry_2_Y_11), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(an_82[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[2]));
    SLE \an[1]  (.D(un1_a0_2_cry_1_Y_9), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[1]));
    SLE \yn[9]  (.D(yn_82[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_13_[1]), .B(
        ai_13_[17]), .C(xi_13_[14]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_82[1]), .Y(un1_y0_cry_1_Y_3), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_13_[16]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_82[16]), .Y(un1_x0_1_cry_16_Y_11), .FCO(
        un1_x0_1_cry_16_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_13_[2]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_82[2]), .Y(un1_a0_2_cry_2_Y_9), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_82[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[7]));
    SLE \xn[6]  (.D(xn_82[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[6]));
    SLE \an[17]  (.D(an_82[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[17]));
    SLE \yn[13]  (.D(yn_82[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[13]));
    SLE \an[13]  (.D(an_82[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[13]));
    SLE \xn[2]  (.D(xn_82[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[2]));
    SLE \xn[1]  (.D(xn_82[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_13_[14]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_82[14]), .Y(un1_x0_1_cry_14_Y_11), .FCO(
        un1_x0_1_cry_14_Z));
    SLE \yn[8]  (.D(yn_82[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_13_[15]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        an_82[15]), .Y(un1_a0_2_cry_15_Y_6), .FCO(un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_82[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_13_[14]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), 
        .S(yn_82[14]), .Y(un1_y0_cry_14_Y_3), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_82[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[12]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_13_[13]), .B(
        ai_13_[17]), .C(yi_13_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_82[13]), .Y(un1_x0_1_cry_13_Y_11), .FCO(
        un1_x0_1_cry_13_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_13_[16]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), 
        .S(yn_82[16]), .Y(un1_y0_cry_16_Y_2), .FCO(un1_y0_cry_16_Z));
    SLE \an[5]  (.D(an_82[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_13_[6]), .B(
        ai_13_[17]), .C(xi_13_[17]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_82[6]), .Y(un1_y0_cry_6_Y_3), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_82[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[3]));
    SLE \yn[17]  (.D(yn_82[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[17]));
    SLE \yn[14]  (.D(yn_82[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[14]));
    SLE \xn[5]  (.D(xn_82[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_14_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_13_[3]), .B(
        ai_13_[17]), .C(xi_13_[16]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_82[3]), .Y(un1_y0_cry_3_Y_3), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_13_[13]), .B(
        ai_13_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_82[13]), .Y(un1_a0_2_cry_13_Y_9), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_82[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_14_[12]));
    SLE \an[16]  (.D(an_82[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_14_[16]));
    
endmodule


module cordic_par_calc_0_18_4_1s(
       yi_1_,
       ai_1_,
       ai_2_,
       xi_2_,
       yi_2_,
       clk
    );
input  [3:2] yi_1_;
input  [17:2] ai_1_;
output [17:2] ai_2_;
output [16:1] xi_2_;
output [16:1] yi_2_;
input  clk;

    wire [17:4] an_10;
    wire [16:2] yn_10;
    wire [16:2] xn_10;
    wire un1_a0_2_cry_14_Z, VCC, GND, un1_y0_cry_1_Y, 
        un1_x0_1_cry_1_Y_13, un1_a0_2_cry_1_Y_3, un1_a0_2_cry_1_Z, 
        un1_a0_2_cry_1_S_1, un1_a0_2_cry_2_Z, un1_a0_2_cry_2_Y_3, 
        un1_a0_2_cry_3_Z, un1_a0_2_cry_3_Y_3, un1_a0_2_cry_4_Z, 
        un1_a0_2_cry_4_Y_3, un1_a0_2_cry_5_Z, un1_a0_2_cry_5_Y_3, 
        un1_a0_2_cry_6_Z, un1_a0_2_cry_6_Y_3, un1_a0_2_cry_7_Z, 
        un1_a0_2_cry_7_Y_3, un1_a0_2_cry_8_Z, un1_a0_2_cry_8_Y_3, 
        un1_a0_2_cry_9_Z, un1_a0_2_cry_9_Y_3, un1_a0_2_cry_10_Z, 
        un1_a0_2_cry_10_Y_3, un1_a0_2_cry_11_Z, un1_a0_2_cry_11_Y_3, 
        un1_a0_2_cry_12_Z, un1_a0_2_cry_12_Y_3, un1_a0_2_cry_13_Z, 
        un1_a0_2_cry_13_Y_3, un1_a0_2_cry_14_Y_3, un1_y0_cry_1_Z, 
        un1_y0_cry_1_S, un1_y0_cry_2_Z, un1_y0_cry_2_Y, un1_y0_cry_3_Z, 
        un1_y0_cry_3_Y, un1_y0_cry_4_Z, un1_y0_cry_4_Y, un1_y0_cry_5_Z, 
        un1_y0_cry_5_Y, un1_y0_cry_6_Z, un1_y0_cry_6_Y, un1_y0_cry_7_Z, 
        un1_y0_cry_7_Y, un1_y0_cry_8_Z, un1_y0_cry_8_Y, un1_y0_cry_9_Z, 
        un1_y0_cry_9_Y, un1_y0_cry_10_Z, un1_y0_cry_10_Y, 
        un1_y0_cry_11_Z, un1_y0_cry_11_Y, un1_y0_cry_12_Z, 
        un1_y0_cry_12_Y, un1_y0_cry_13_Z, un1_y0_cry_13_Y, 
        un1_y0_cry_14_Z, un1_y0_cry_14_Y, un1_y0_s_16_FCO, 
        un1_y0_s_16_Y, un1_y0_cry_15_Z, un1_y0_cry_15_Y, 
        un1_x0_1_cry_1_Z, un1_x0_1_cry_1_S, un1_x0_1_cry_2_Z, 
        un1_x0_1_cry_2_Y_13, un1_x0_1_cry_3_Z, un1_x0_1_cry_3_Y_13, 
        un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_13, un1_x0_1_cry_5_Z, 
        un1_x0_1_cry_5_Y_13, un1_x0_1_cry_6_Z, un1_x0_1_cry_6_Y_13, 
        un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_13, un1_x0_1_cry_8_Z, 
        un1_x0_1_cry_8_Y_13, un1_x0_1_cry_9_Z, un1_x0_1_cry_9_Y_13, 
        un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_13, un1_x0_1_cry_11_Z, 
        un1_x0_1_cry_11_Y_13, un1_x0_1_cry_12_Z, un1_x0_1_cry_12_Y_13, 
        un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_13, un1_x0_1_cry_14_Z, 
        un1_x0_1_cry_14_Y_13, un1_x0_1_s_16_FCO, un1_x0_1_s_16_Y, 
        un1_x0_1_cry_15_Z, un1_x0_1_cry_15_Y_13, N_1309, N_691;
    
    SLE \xn[16]  (.D(xn_10[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_9_Z), .S(xn_10[10]), 
        .Y(un1_x0_1_cry_10_Y_13), .FCO(un1_x0_1_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_4 (.A(ai_1_[6]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        an_10[6]), .Y(un1_a0_2_cry_4_Y_3), .FCO(un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_10 (.A(yi_1_[3]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_10[10]), .Y(un1_y0_cry_10_Y), .FCO(un1_y0_cry_10_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_11 (.A(ai_1_[17]), .B(
        yi_1_[3]), .C(GND), .D(GND), .FCI(un1_y0_cry_10_Z), .S(
        yn_10[11]), .Y(un1_y0_cry_11_Y), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_1_[16]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        an_10[16]), .Y(un1_a0_2_cry_14_Y_3), .FCO(un1_a0_2_cry_14_Z));
    SLE \an[4]  (.D(an_10[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[4]));
    SLE \an[10]  (.D(an_10[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[10]));
    SLE \yn[6]  (.D(yn_10[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[6]));
    SLE \xn[15]  (.D(xn_10[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[15]));
    SLE \xn[13]  (.D(xn_10[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[13]));
    SLE \an[11]  (.D(an_10[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[11]));
    SLE \xn[4]  (.D(xn_10[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[4]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_6_Z), .S(xn_10[7]), 
        .Y(un1_x0_1_cry_7_Y_13), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_10[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[2]));
    SLE \yn[1]  (.D(un1_y0_cry_1_Y), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[1]));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_9 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_8_Z), .S(xn_10[9]), 
        .Y(un1_x0_1_cry_9_Y_13), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_10[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[12]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_1_[9]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        an_10[9]), .Y(un1_a0_2_cry_7_Y_3), .FCO(un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_15 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_14_Z), .S(xn_10[15])
        , .Y(un1_x0_1_cry_15_Y_13), .FCO(un1_x0_1_cry_15_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_1_[5]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        an_10[5]), .Y(un1_a0_2_cry_3_Y_3), .FCO(un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_1_[14]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        an_10[14]), .Y(un1_a0_2_cry_12_Y_3), .FCO(un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_10_Z), .S(xn_10[11])
        , .Y(un1_x0_1_cry_11_Y_13), .FCO(un1_x0_1_cry_11_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_8 (.A(ai_1_[10]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        an_10[10]), .Y(un1_a0_2_cry_8_Y_3), .FCO(un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_5 (.A(ai_1_[7]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        an_10[7]), .Y(un1_a0_2_cry_5_Y_3), .FCO(un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h66600) )  un1_x0_1_cry_1 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[2]), .D(GND), .FCI(GND), .S(un1_x0_1_cry_1_S), .Y(
        un1_x0_1_cry_1_Y_13), .FCO(un1_x0_1_cry_1_Z));
    SLE \yn[5]  (.D(yn_10[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[5]));
    SLE \an[9]  (.D(an_10[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[9]));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_7 (.A(yi_1_[3]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_10[7]), .Y(un1_y0_cry_7_Y), .FCO(un1_y0_cry_7_Z));
    SLE \an[7]  (.D(an_10[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[7]));
    SLE \an[14]  (.D(an_10[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[14]));
    SLE \xn[9]  (.D(xn_10[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[9]));
    SLE \xn[7]  (.D(xn_10[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[7]));
    SLE \an[8]  (.D(an_10[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[8]));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_8 (.A(ai_1_[17]), .B(
        yi_1_[3]), .C(GND), .D(GND), .FCI(un1_y0_cry_7_Z), .S(yn_10[8])
        , .Y(un1_y0_cry_8_Y), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_1_[11]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        an_10[11]), .Y(un1_a0_2_cry_9_Y_3), .FCO(un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_4_Z), .S(xn_10[5]), 
        .Y(un1_x0_1_cry_5_Y_13), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_10[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[16]));
    SLE \xn[8]  (.D(xn_10[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_9 (.A(yi_1_[2]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_10[9]), .Y(un1_y0_cry_9_Y), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_13 (.A(yi_1_[2]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_12_Z), .S(
        yn_10[13]), .Y(un1_y0_cry_13_Y), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_10[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[4]));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_11 (.A(ai_1_[13]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        an_10[13]), .Y(un1_a0_2_cry_11_Y_3), .FCO(un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_6 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_5_Z), .S(xn_10[6]), 
        .Y(un1_x0_1_cry_6_Y_13), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_12 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_11_Z), .S(xn_10[12])
        , .Y(un1_x0_1_cry_12_Y_13), .FCO(un1_x0_1_cry_12_Z));
    SLE \an[3]  (.D(un1_a0_2_cry_1_Y_3), .CLK(clk), .EN(VCC), .ALn(VCC)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[3]));
    SLE \yn[15]  (.D(yn_10[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[15]));
    ARI1 #( .INIT(20'h65500) )  un1_a0_2_cry_1 (.A(VCC), .B(ai_1_[3]), 
        .C(GND), .D(GND), .FCI(GND), .S(un1_a0_2_cry_1_S_1), .Y(
        un1_a0_2_cry_1_Y_3), .FCO(un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_10[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[10]));
    SLE \yn[11]  (.D(yn_10[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[11]));
    SLE \xn[14]  (.D(xn_10[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[14]));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_12 (.A(ai_1_[17]), .B(
        yi_1_[2]), .C(GND), .D(GND), .FCI(un1_y0_cry_11_Z), .S(
        yn_10[12]), .Y(un1_y0_cry_12_Y), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_10[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_3_Z), .S(xn_10[4]), 
        .Y(un1_x0_1_cry_4_Y_13), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_a0_2_cry_6 (.A(ai_1_[8]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        an_10[8]), .Y(un1_a0_2_cry_6_Y_3), .FCO(un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_1_[12]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        an_10[12]), .Y(un1_a0_2_cry_10_Y_3), .FCO(un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_s_16 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_15_Z), .S(xn_10[16]), 
        .Y(un1_x0_1_s_16_Y), .FCO(un1_x0_1_s_16_FCO));
    SLE \xn[11]  (.D(xn_10[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_2_Z), .S(xn_10[3]), 
        .Y(un1_x0_1_cry_3_Y_13), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_15 (.A(ai_1_[17]), .B(
        yi_1_[2]), .C(GND), .D(GND), .FCI(un1_y0_cry_14_Z), .S(
        yn_10[15]), .Y(un1_y0_cry_15_Y), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_10[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[10]));
    SLE \an[6]  (.D(an_10[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[6]));
    SLE \an[15]  (.D(an_10[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[15]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_7_Z), .S(xn_10[8]), 
        .Y(un1_x0_1_cry_8_Y_13), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_5 (.A(ai_1_[17]), .B(
        yi_1_[3]), .C(GND), .D(GND), .FCI(un1_y0_cry_4_Z), .S(yn_10[5])
        , .Y(un1_y0_cry_5_Y), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_4 (.A(yi_1_[3]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_10[4]), .Y(un1_y0_cry_4_Y), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_2 (.A(yi_1_[2]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_10[2]), .Y(un1_y0_cry_2_Y), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_2 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_1_Z), .S(xn_10[2]), 
        .Y(un1_x0_1_cry_2_Y_13), .FCO(un1_x0_1_cry_2_Z));
    SLE \an[2]  (.D(ai_1_[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[2]));
    SLE \yn[9]  (.D(yn_10[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[9]));
    ARI1 #( .INIT(20'h65500) )  un1_y0_cry_1 (.A(VCC), .B(ai_1_[17]), 
        .C(GND), .D(GND), .FCI(GND), .S(un1_y0_cry_1_S), .Y(
        un1_y0_cry_1_Y), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_1_[4]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        an_10[4]), .Y(un1_a0_2_cry_2_Y_3), .FCO(un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_10[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[7]));
    SLE \xn[6]  (.D(xn_10[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[6]));
    SLE \an[17]  (.D(an_10[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[17]));
    SLE \yn[13]  (.D(yn_10[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[13]));
    SLE \an[13]  (.D(an_10[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[13]));
    SLE \xn[2]  (.D(xn_10[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[2]));
    SLE \xn[1]  (.D(un1_x0_1_cry_1_Y_13), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[2]), .D(GND), .FCI(un1_x0_1_cry_13_Z), .S(xn_10[14])
        , .Y(un1_x0_1_cry_14_Y_13), .FCO(un1_x0_1_cry_14_Z));
    SLE \yn[8]  (.D(yn_10[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[8]));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_14_Z), .Y(
        an_10[17]));
    ARI1 #( .INIT(20'h555AA) )  un1_y0_cry_14 (.A(ai_1_[17]), .B(
        yi_1_[3]), .C(GND), .D(GND), .FCI(un1_y0_cry_13_Z), .S(
        yn_10[14]), .Y(un1_y0_cry_14_Y), .FCO(un1_y0_cry_14_Z));
    SLE \an[12]  (.D(an_10[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[12]));
    ARI1 #( .INIT(20'h49900) )  un1_x0_1_cry_13 (.A(VCC), .B(ai_1_[17])
        , .C(yi_1_[3]), .D(GND), .FCI(un1_x0_1_cry_12_Z), .S(xn_10[13])
        , .Y(un1_x0_1_cry_13_Y_13), .FCO(un1_x0_1_cry_13_Z));
    ARI1 #( .INIT(20'h46600) )  un1_y0_s_16 (.A(VCC), .B(ai_1_[17]), 
        .C(yi_1_[2]), .D(GND), .FCI(un1_y0_cry_15_Z), .S(yn_10[16]), 
        .Y(un1_y0_s_16_Y), .FCO(un1_y0_s_16_FCO));
    SLE \an[5]  (.D(an_10[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[5]));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_6 (.A(yi_1_[2]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_10[6]), .Y(un1_y0_cry_6_Y), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_10[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[3]));
    SLE \yn[14]  (.D(yn_10[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[14]));
    SLE \xn[5]  (.D(xn_10[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_2_[5]));
    ARI1 #( .INIT(20'h5AA55) )  un1_y0_cry_3 (.A(yi_1_[3]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_10[3]), .Y(un1_y0_cry_3_Y), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_1_[15]), .B(
        ai_1_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        an_10[15]), .Y(un1_a0_2_cry_13_Y_3), .FCO(un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_10[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_2_[12]));
    SLE \an[16]  (.D(an_10[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_2_[16]));
    
endmodule


module cordic_par_calc_0_18_4_14s(
       yi_14_,
       ai_14_,
       xi_14_,
       xi_15_,
       yi_15_,
       ai_15__0,
       clk
    );
input  [17:0] yi_14_;
input  [17:1] ai_14_;
input  [17:0] xi_14_;
output [17:0] xi_15_;
output [17:0] yi_15_;
output ai_15__0;
input  clk;

    wire [17:17] an_88;
    wire [17:0] yn_88;
    wire [17:0] xn_88;
    wire un1_a0_2_cry_16_Z, VCC, GND, un1_x0_1_cry_0_cy_Z, 
        un1_x0_1_cry_0_cy_S_7, un1_x0_1_cry_0_cy_Y_7, un1_x0_1_cry_0_Z, 
        un1_x0_1_cry_0_Y_7, un1_x0_1_cry_1_Z, un1_x0_1_cry_1_Y_7, 
        un1_x0_1_cry_2_Z, un1_x0_1_cry_2_Y_7, un1_x0_1_cry_3_Z, 
        un1_x0_1_cry_3_Y_7, un1_x0_1_cry_4_Z, un1_x0_1_cry_4_Y_7, 
        un1_x0_1_cry_5_Z, un1_x0_1_cry_5_Y_7, un1_x0_1_cry_6_Z, 
        un1_x0_1_cry_6_Y_7, un1_x0_1_cry_7_Z, un1_x0_1_cry_7_Y_7, 
        un1_x0_1_cry_8_Z, un1_x0_1_cry_8_Y_7, un1_x0_1_cry_9_Z, 
        un1_x0_1_cry_9_Y_7, un1_x0_1_cry_10_Z, un1_x0_1_cry_10_Y_7, 
        un1_x0_1_cry_11_Z, un1_x0_1_cry_11_Y_7, un1_x0_1_cry_12_Z, 
        un1_x0_1_cry_12_Y_7, un1_x0_1_cry_13_Z, un1_x0_1_cry_13_Y_7, 
        un1_x0_1_cry_14_Z, un1_x0_1_cry_14_Y_7, un1_x0_1_cry_15_Z, 
        un1_x0_1_cry_15_Y_7, un1_x0_1_s_17_FCO_7, un1_x0_1_s_17_Y_7, 
        un1_x0_1_cry_16_Z, un1_x0_1_cry_16_Y_7, un1_a0_2_cry_1_Z, 
        un1_a0_2_cry_1_S_7, un1_a0_2_cry_1_Y_10, un1_a0_2_cry_2_Z, 
        un1_a0_2_cry_2_S, un1_a0_2_cry_2_Y_10, un1_a0_2_cry_3_Z, 
        un1_a0_2_cry_3_S, un1_a0_2_cry_3_Y_10, un1_a0_2_cry_4_Z, 
        un1_a0_2_cry_4_S, un1_a0_2_cry_4_Y_10, un1_a0_2_cry_5_Z, 
        un1_a0_2_cry_5_S, un1_a0_2_cry_5_Y_10, un1_a0_2_cry_6_Z, 
        un1_a0_2_cry_6_S, un1_a0_2_cry_6_Y_10, un1_a0_2_cry_7_Z, 
        un1_a0_2_cry_7_S, un1_a0_2_cry_7_Y_10, un1_a0_2_cry_8_Z, 
        un1_a0_2_cry_8_S, un1_a0_2_cry_8_Y_10, un1_a0_2_cry_9_Z, 
        un1_a0_2_cry_9_S, un1_a0_2_cry_9_Y_10, un1_a0_2_cry_10_Z, 
        un1_a0_2_cry_10_S, un1_a0_2_cry_10_Y_10, un1_a0_2_cry_11_Z, 
        un1_a0_2_cry_11_S, un1_a0_2_cry_11_Y_10, un1_a0_2_cry_12_Z, 
        un1_a0_2_cry_12_S, un1_a0_2_cry_12_Y_10, un1_a0_2_cry_13_Z, 
        un1_a0_2_cry_13_S, un1_a0_2_cry_13_Y_10, un1_a0_2_cry_14_Z, 
        un1_a0_2_cry_14_S, un1_a0_2_cry_14_Y_10, un1_a0_2_cry_15_Z, 
        un1_a0_2_cry_15_S, un1_a0_2_cry_15_Y_7, un1_a0_2_cry_16_S, 
        un1_a0_2_cry_16_Y_2, un1_y0_s_0_698_FCO, un1_y0_s_0_698_S, 
        un1_y0_s_0_698_Y, un1_y0_cry_0_Z, un1_y0_cry_0_Y_3, 
        un1_y0_cry_1_Z, un1_y0_cry_1_Y_4, un1_y0_cry_2_Z, 
        un1_y0_cry_2_Y_4, un1_y0_cry_3_Z, un1_y0_cry_3_Y_4, 
        un1_y0_cry_4_Z, un1_y0_cry_4_Y_4, un1_y0_cry_5_Z, 
        un1_y0_cry_5_Y_4, un1_y0_cry_6_Z, un1_y0_cry_6_Y_4, 
        un1_y0_cry_7_Z, un1_y0_cry_7_Y_4, un1_y0_cry_8_Z, 
        un1_y0_cry_8_Y_4, un1_y0_cry_9_Z, un1_y0_cry_9_Y_4, 
        un1_y0_cry_10_Z, un1_y0_cry_10_Y_4, un1_y0_cry_11_Z, 
        un1_y0_cry_11_Y_4, un1_y0_cry_12_Z, un1_y0_cry_12_Y_4, 
        un1_y0_cry_13_Z, un1_y0_cry_13_Y_4, un1_y0_cry_14_Z, 
        un1_y0_cry_14_Y_4, un1_y0_cry_15_Z, un1_y0_cry_15_Y_4, 
        un1_y0_s_17_FCO_3, un1_y0_s_17_Y_3, un1_y0_cry_16_Z, 
        un1_y0_cry_16_Y_3;
    
    SLE \xn[16]  (.D(xn_88[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[16]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_10 (.A(xi_14_[10]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_9_Z), 
        .S(xn_88[10]), .Y(un1_x0_1_cry_10_Y_7), .FCO(un1_x0_1_cry_10_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_4 (.A(ai_14_[4]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_3_Z), .S(
        un1_a0_2_cry_4_S), .Y(un1_a0_2_cry_4_Y_10), .FCO(
        un1_a0_2_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_10 (.A(yi_14_[10]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_9_Z), .S(
        yn_88[10]), .Y(un1_y0_cry_10_Y_4), .FCO(un1_y0_cry_10_Z));
    SLE \xn[0]  (.D(xn_88[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_11 (.A(yi_14_[11]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_10_Z), 
        .S(yn_88[11]), .Y(un1_y0_cry_11_Y_4), .FCO(un1_y0_cry_11_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_14 (.A(ai_14_[14]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_13_Z), .S(
        un1_a0_2_cry_14_S), .Y(un1_a0_2_cry_14_Y_10), .FCO(
        un1_a0_2_cry_14_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_0 (.A(xi_14_[0]), .B(
        ai_14_[17]), .C(yi_14_[14]), .D(GND), .FCI(un1_x0_1_cry_0_cy_Z)
        , .S(xn_88[0]), .Y(un1_x0_1_cry_0_Y_7), .FCO(un1_x0_1_cry_0_Z));
    SLE \yn[6]  (.D(yn_88[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[6]));
    SLE \xn[15]  (.D(xn_88[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[15]));
    SLE \xn[13]  (.D(xn_88[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[13]));
    SLE \xn[4]  (.D(xn_88[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[4]));
    ARI1 #( .INIT(20'h46900) )  un1_x0_1_s_17 (.A(VCC), .B(ai_14_[17]), 
        .C(xi_14_[17]), .D(yi_14_[17]), .FCI(un1_x0_1_cry_16_Z), .S(
        xn_88[17]), .Y(un1_x0_1_s_17_Y_7), .FCO(un1_x0_1_s_17_FCO_7));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_7 (.A(xi_14_[7]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_6_Z), 
        .S(xn_88[7]), .Y(un1_x0_1_cry_7_Y_7), .FCO(un1_x0_1_cry_7_Z));
    SLE \yn[2]  (.D(yn_88[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[2]));
    SLE \yn[1]  (.D(yn_88[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[1]));
    ARI1 #( .INIT(20'h49600) )  un1_y0_s_17 (.A(VCC), .B(ai_14_[17]), 
        .C(xi_14_[17]), .D(yi_14_[17]), .FCI(un1_y0_cry_16_Z), .S(
        yn_88[17]), .Y(un1_y0_s_17_Y_3), .FCO(un1_y0_s_17_FCO_3));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_9 (.A(xi_14_[9]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_8_Z), 
        .S(xn_88[9]), .Y(un1_x0_1_cry_9_Y_7), .FCO(un1_x0_1_cry_9_Z));
    SLE \xn[12]  (.D(xn_88[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[12]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_0 (.A(yi_14_[0]), .B(
        ai_14_[17]), .C(xi_14_[14]), .D(GND), .FCI(un1_y0_s_0_698_FCO), 
        .S(yn_88[0]), .Y(un1_y0_cry_0_Y_3), .FCO(un1_y0_cry_0_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_7 (.A(ai_14_[7]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_6_Z), .S(
        un1_a0_2_cry_7_S), .Y(un1_a0_2_cry_7_Y_10), .FCO(
        un1_a0_2_cry_7_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_15 (.A(xi_14_[15]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_14_Z), 
        .S(xn_88[15]), .Y(un1_x0_1_cry_15_Y_7), .FCO(un1_x0_1_cry_15_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_3 (.A(ai_14_[3]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_2_Z), .S(
        un1_a0_2_cry_3_S), .Y(un1_a0_2_cry_3_Y_10), .FCO(
        un1_a0_2_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_12 (.A(ai_14_[12]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_11_Z), .S(
        un1_a0_2_cry_12_S), .Y(un1_a0_2_cry_12_Y_10), .FCO(
        un1_a0_2_cry_12_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_11 (.A(xi_14_[11]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_10_Z), 
        .S(xn_88[11]), .Y(un1_x0_1_cry_11_Y_7), .FCO(un1_x0_1_cry_11_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_8 (.A(ai_14_[8]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_7_Z), .S(
        un1_a0_2_cry_8_S), .Y(un1_a0_2_cry_8_Y_10), .FCO(
        un1_a0_2_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_5 (.A(ai_14_[5]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_4_Z), .S(
        un1_a0_2_cry_5_S), .Y(un1_a0_2_cry_5_Y_10), .FCO(
        un1_a0_2_cry_5_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_1 (.A(xi_14_[1]), .B(
        ai_14_[17]), .C(yi_14_[15]), .D(GND), .FCI(un1_x0_1_cry_0_Z), 
        .S(xn_88[1]), .Y(un1_x0_1_cry_1_Y_7), .FCO(un1_x0_1_cry_1_Z));
    SLE \xn[17]  (.D(xn_88[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[17]));
    SLE \yn[5]  (.D(yn_88[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_7 (.A(yi_14_[7]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_6_Z), .S(
        yn_88[7]), .Y(un1_y0_cry_7_Y_4), .FCO(un1_y0_cry_7_Z));
    SLE \xn[9]  (.D(xn_88[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[9]));
    SLE \xn[7]  (.D(xn_88[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[7]));
    SLE \yn[0]  (.D(yn_88[0]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[0]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_8 (.A(yi_14_[8]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_7_Z), .S(
        yn_88[8]), .Y(un1_y0_cry_8_Y_4), .FCO(un1_y0_cry_8_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_9 (.A(ai_14_[9]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_8_Z), .S(
        un1_a0_2_cry_9_S), .Y(un1_a0_2_cry_9_Y_10), .FCO(
        un1_a0_2_cry_9_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_5 (.A(xi_14_[5]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_4_Z), 
        .S(xn_88[5]), .Y(un1_x0_1_cry_5_Y_7), .FCO(un1_x0_1_cry_5_Z));
    SLE \yn[16]  (.D(yn_88[16]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[16]));
    SLE \xn[8]  (.D(xn_88[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[8]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_9 (.A(yi_14_[9]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_8_Z), .S(
        yn_88[9]), .Y(un1_y0_cry_9_Y_4), .FCO(un1_y0_cry_9_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_13 (.A(yi_14_[13]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_12_Z), 
        .S(yn_88[13]), .Y(un1_y0_cry_13_Y_4), .FCO(un1_y0_cry_13_Z));
    SLE \yn[4]  (.D(yn_88[4]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[4]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_11 (.A(ai_14_[11]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_10_Z), .S(
        un1_a0_2_cry_11_S), .Y(un1_a0_2_cry_11_Y_10), .FCO(
        un1_a0_2_cry_11_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_6 (.A(xi_14_[6]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_5_Z), 
        .S(xn_88[6]), .Y(un1_x0_1_cry_6_Y_7), .FCO(un1_x0_1_cry_6_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_12 (.A(xi_14_[12]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_11_Z), 
        .S(xn_88[12]), .Y(un1_x0_1_cry_12_Y_7), .FCO(un1_x0_1_cry_12_Z)
        );
    SLE \yn[15]  (.D(yn_88[15]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[15]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_1 (.A(ai_14_[1]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_a0_2_cry_1_S_7), .Y(un1_a0_2_cry_1_Y_10), .FCO(
        un1_a0_2_cry_1_Z));
    SLE \xn[10]  (.D(xn_88[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[10]));
    SLE \yn[11]  (.D(yn_88[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[11]));
    SLE \xn[14]  (.D(xn_88[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[14]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_12 (.A(yi_14_[12]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_11_Z), 
        .S(yn_88[12]), .Y(un1_y0_cry_12_Y_4), .FCO(un1_y0_cry_12_Z));
    SLE \xn[3]  (.D(xn_88[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[3]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_4 (.A(xi_14_[4]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_3_Z), 
        .S(xn_88[4]), .Y(un1_x0_1_cry_4_Y_7), .FCO(un1_x0_1_cry_4_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_6 (.A(ai_14_[6]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_5_Z), .S(
        un1_a0_2_cry_6_S), .Y(un1_a0_2_cry_6_Y_10), .FCO(
        un1_a0_2_cry_6_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_10 (.A(ai_14_[10]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_9_Z), .S(
        un1_a0_2_cry_10_S), .Y(un1_a0_2_cry_10_Y_10), .FCO(
        un1_a0_2_cry_10_Z));
    ARI1 #( .INIT(20'h45500) )  un1_x0_1_cry_0_cy (.A(VCC), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(VCC), .S(
        un1_x0_1_cry_0_cy_S_7), .Y(un1_x0_1_cry_0_cy_Y_7), .FCO(
        un1_x0_1_cry_0_cy_Z));
    SLE \xn[11]  (.D(xn_88[11]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[11]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_3 (.A(xi_14_[3]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_2_Z), 
        .S(xn_88[3]), .Y(un1_x0_1_cry_3_Y_7), .FCO(un1_x0_1_cry_3_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_15 (.A(yi_14_[15]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_14_Z), 
        .S(yn_88[15]), .Y(un1_y0_cry_15_Y_4), .FCO(un1_y0_cry_15_Z));
    SLE \yn[10]  (.D(yn_88[10]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[10]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_16 (.A(ai_14_[16]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_15_Z), .S(
        un1_a0_2_cry_16_S), .Y(un1_a0_2_cry_16_Y_2), .FCO(
        un1_a0_2_cry_16_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_8 (.A(xi_14_[8]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_7_Z), 
        .S(xn_88[8]), .Y(un1_x0_1_cry_8_Y_7), .FCO(un1_x0_1_cry_8_Z));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_5 (.A(yi_14_[5]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_4_Z), .S(
        yn_88[5]), .Y(un1_y0_cry_5_Y_4), .FCO(un1_y0_cry_5_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_4 (.A(yi_14_[4]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_3_Z), .S(
        yn_88[4]), .Y(un1_y0_cry_4_Y_4), .FCO(un1_y0_cry_4_Z));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_2 (.A(yi_14_[2]), .B(
        ai_14_[17]), .C(xi_14_[16]), .D(GND), .FCI(un1_y0_cry_1_Z), .S(
        yn_88[2]), .Y(un1_y0_cry_2_Y_4), .FCO(un1_y0_cry_2_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_2 (.A(xi_14_[2]), .B(
        ai_14_[17]), .C(yi_14_[16]), .D(GND), .FCI(un1_x0_1_cry_1_Z), 
        .S(xn_88[2]), .Y(un1_x0_1_cry_2_Y_7), .FCO(un1_x0_1_cry_2_Z));
    SLE \yn[9]  (.D(yn_88[9]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[9]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_1 (.A(yi_14_[1]), .B(
        ai_14_[17]), .C(xi_14_[15]), .D(GND), .FCI(un1_y0_cry_0_Z), .S(
        yn_88[1]), .Y(un1_y0_cry_1_Y_4), .FCO(un1_y0_cry_1_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_16 (.A(xi_14_[16]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_15_Z), 
        .S(xn_88[16]), .Y(un1_x0_1_cry_16_Y_7), .FCO(un1_x0_1_cry_16_Z)
        );
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_2 (.A(ai_14_[2]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_1_Z), .S(
        un1_a0_2_cry_2_S), .Y(un1_a0_2_cry_2_Y_10), .FCO(
        un1_a0_2_cry_2_Z));
    SLE \yn[7]  (.D(yn_88[7]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[7]));
    SLE \xn[6]  (.D(xn_88[6]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[6]));
    SLE \an[17]  (.D(an_88[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ai_15__0));
    SLE \yn[13]  (.D(yn_88[13]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[13]));
    SLE \xn[2]  (.D(xn_88[2]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[2]));
    SLE \xn[1]  (.D(xn_88[1]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[1]));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_14 (.A(xi_14_[14]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_13_Z), 
        .S(xn_88[14]), .Y(un1_x0_1_cry_14_Y_7), .FCO(un1_x0_1_cry_14_Z)
        );
    SLE \yn[8]  (.D(yn_88[8]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[8]));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_15 (.A(ai_14_[15]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_14_Z), .S(
        un1_a0_2_cry_15_S), .Y(un1_a0_2_cry_15_Y_7), .FCO(
        un1_a0_2_cry_15_Z));
    CFG1 #( .INIT(2'h1) )  \an_RNO[17]  (.A(un1_a0_2_cry_16_Z), .Y(
        an_88[17]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_14 (.A(yi_14_[14]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_13_Z), 
        .S(yn_88[14]), .Y(un1_y0_cry_14_Y_4), .FCO(un1_y0_cry_14_Z));
    ARI1 #( .INIT(20'h56699) )  un1_x0_1_cry_13 (.A(xi_14_[13]), .B(
        ai_14_[17]), .C(yi_14_[17]), .D(GND), .FCI(un1_x0_1_cry_12_Z), 
        .S(xn_88[13]), .Y(un1_x0_1_cry_13_Y_7), .FCO(un1_x0_1_cry_13_Z)
        );
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_16 (.A(yi_14_[16]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_15_Z), 
        .S(yn_88[16]), .Y(un1_y0_cry_16_Y_3), .FCO(un1_y0_cry_16_Z));
    ARI1 #( .INIT(20'h4AA00) )  un1_y0_s_0_698 (.A(VCC), .B(ai_14_[17])
        , .C(GND), .D(GND), .FCI(VCC), .S(un1_y0_s_0_698_S), .Y(
        un1_y0_s_0_698_Y), .FCO(un1_y0_s_0_698_FCO));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_6 (.A(yi_14_[6]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_5_Z), .S(
        yn_88[6]), .Y(un1_y0_cry_6_Y_4), .FCO(un1_y0_cry_6_Z));
    SLE \yn[3]  (.D(yn_88[3]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[3]));
    SLE \yn[17]  (.D(yn_88[17]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[17]));
    SLE \yn[14]  (.D(yn_88[14]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[14]));
    SLE \xn[5]  (.D(xn_88[5]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(xi_15_[5]));
    ARI1 #( .INIT(20'h59966) )  un1_y0_cry_3 (.A(yi_14_[3]), .B(
        ai_14_[17]), .C(xi_14_[17]), .D(GND), .FCI(un1_y0_cry_2_Z), .S(
        yn_88[3]), .Y(un1_y0_cry_3_Y_4), .FCO(un1_y0_cry_3_Z));
    ARI1 #( .INIT(20'h5AA55) )  un1_a0_2_cry_13 (.A(ai_14_[13]), .B(
        ai_14_[17]), .C(GND), .D(GND), .FCI(un1_a0_2_cry_12_Z), .S(
        un1_a0_2_cry_13_S), .Y(un1_a0_2_cry_13_Y_10), .FCO(
        un1_a0_2_cry_13_Z));
    SLE \yn[12]  (.D(yn_88[12]), .CLK(clk), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(yi_15_[12]));
    
endmodule


module 
        CORECORDIC_C0_CORECORDIC_C0_0_cordic_par_uRotator_16s_18_16s_4_0_3s(
        
       a0_i_3,
       a0_i_0,
       a0,
       xn_u,
       yn_u,
       clk
    );
input  a0_i_3;
input  a0_i_0;
input  [17:2] a0;
output [17:0] xn_u;
output [17:0] yn_u;
input  clk;

    wire [17:0] yi_8_;
    wire [17:1] ai_8_;
    wire [17:0] xi_8_;
    wire [17:1] ai_9_;
    wire [17:0] xi_9_;
    wire [17:0] yi_9_;
    wire [17:0] yi_10_;
    wire [17:1] ai_10_;
    wire [17:0] xi_10_;
    wire [17:1] ai_11_;
    wire [17:0] xi_11_;
    wire [17:0] yi_11_;
    wire [17:0] yi_13_;
    wire [17:1] ai_13_;
    wire [17:0] xi_13_;
    wire [17:1] ai_14_;
    wire [17:0] xi_14_;
    wire [17:0] yi_14_;
    wire [17:0] yi_6_;
    wire [17:2] ai_6_;
    wire [17:0] xi_6_;
    wire [17:2] ai_7_;
    wire [17:0] xi_7_;
    wire [17:0] yi_7_;
    wire [17:0] xi_15_;
    wire [17:0] yi_15_;
    wire [17:17] ai_15_;
    wire [17:0] yi_5_;
    wire [17:2] ai_5_;
    wire [17:0] xi_5_;
    wire [17:0] yi_3_;
    wire [17:2] ai_3_;
    wire [17:0] xi_3_;
    wire [17:2] ai_4_;
    wire [17:0] xi_4_;
    wire [17:0] yi_4_;
    wire [3:2] yi_1_;
    wire [17:2] ai_1_;
    wire [17:2] ai_2_;
    wire [16:1] xi_2_;
    wire [16:1] yi_2_;
    wire [17:0] yi_12_;
    wire [17:1] ai_12_;
    wire [17:0] xi_12_;
    wire GND, VCC;
    
    GND GND_Z (.Y(GND));
    cordic_par_calc_0_18_4_4s \cLayer[4].par_calc_0  (.yi_4_({
        yi_4_[17], yi_4_[16], yi_4_[15], yi_4_[14], yi_4_[13], 
        yi_4_[12], yi_4_[11], yi_4_[10], yi_4_[9], yi_4_[8], yi_4_[7], 
        yi_4_[6], yi_4_[5], yi_4_[4], yi_4_[3], yi_4_[2], yi_4_[1], 
        yi_4_[0]}), .ai_4_({ai_4_[17], ai_4_[16], ai_4_[15], ai_4_[14], 
        ai_4_[13], ai_4_[12], ai_4_[11], ai_4_[10], ai_4_[9], ai_4_[8], 
        ai_4_[7], ai_4_[6], ai_4_[5], ai_4_[4], ai_4_[3], ai_4_[2]}), 
        .xi_4_({xi_4_[17], xi_4_[16], xi_4_[15], xi_4_[14], xi_4_[13], 
        xi_4_[12], xi_4_[11], xi_4_[10], xi_4_[9], xi_4_[8], xi_4_[7], 
        xi_4_[6], xi_4_[5], xi_4_[4], xi_4_[3], xi_4_[2], xi_4_[1], 
        xi_4_[0]}), .ai_5_({ai_5_[17], ai_5_[16], ai_5_[15], ai_5_[14], 
        ai_5_[13], ai_5_[12], ai_5_[11], ai_5_[10], ai_5_[9], ai_5_[8], 
        ai_5_[7], ai_5_[6], ai_5_[5], ai_5_[4], ai_5_[3], ai_5_[2]}), 
        .xi_5_({xi_5_[17], xi_5_[16], xi_5_[15], xi_5_[14], xi_5_[13], 
        xi_5_[12], xi_5_[11], xi_5_[10], xi_5_[9], xi_5_[8], xi_5_[7], 
        xi_5_[6], xi_5_[5], xi_5_[4], xi_5_[3], xi_5_[2], xi_5_[1], 
        xi_5_[0]}), .yi_5_({yi_5_[17], yi_5_[16], yi_5_[15], yi_5_[14], 
        yi_5_[13], yi_5_[12], yi_5_[11], yi_5_[10], yi_5_[9], yi_5_[8], 
        yi_5_[7], yi_5_[6], yi_5_[5], yi_5_[4], yi_5_[3], yi_5_[2], 
        yi_5_[1], yi_5_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_10s \cLayer[10].par_calc_0  (.yi_10_({
        yi_10_[17], yi_10_[16], yi_10_[15], yi_10_[14], yi_10_[13], 
        yi_10_[12], yi_10_[11], yi_10_[10], yi_10_[9], yi_10_[8], 
        yi_10_[7], yi_10_[6], yi_10_[5], yi_10_[4], yi_10_[3], 
        yi_10_[2], yi_10_[1], yi_10_[0]}), .ai_10_({ai_10_[17], 
        ai_10_[16], ai_10_[15], ai_10_[14], ai_10_[13], ai_10_[12], 
        ai_10_[11], ai_10_[10], ai_10_[9], ai_10_[8], ai_10_[7], 
        ai_10_[6], ai_10_[5], ai_10_[4], ai_10_[3], ai_10_[2], 
        ai_10_[1]}), .xi_10_({xi_10_[17], xi_10_[16], xi_10_[15], 
        xi_10_[14], xi_10_[13], xi_10_[12], xi_10_[11], xi_10_[10], 
        xi_10_[9], xi_10_[8], xi_10_[7], xi_10_[6], xi_10_[5], 
        xi_10_[4], xi_10_[3], xi_10_[2], xi_10_[1], xi_10_[0]}), 
        .ai_11_({ai_11_[17], ai_11_[16], ai_11_[15], ai_11_[14], 
        ai_11_[13], ai_11_[12], ai_11_[11], ai_11_[10], ai_11_[9], 
        ai_11_[8], ai_11_[7], ai_11_[6], ai_11_[5], ai_11_[4], 
        ai_11_[3], ai_11_[2], ai_11_[1]}), .xi_11_({xi_11_[17], 
        xi_11_[16], xi_11_[15], xi_11_[14], xi_11_[13], xi_11_[12], 
        xi_11_[11], xi_11_[10], xi_11_[9], xi_11_[8], xi_11_[7], 
        xi_11_[6], xi_11_[5], xi_11_[4], xi_11_[3], xi_11_[2], 
        xi_11_[1], xi_11_[0]}), .yi_11_({yi_11_[17], yi_11_[16], 
        yi_11_[15], yi_11_[14], yi_11_[13], yi_11_[12], yi_11_[11], 
        yi_11_[10], yi_11_[9], yi_11_[8], yi_11_[7], yi_11_[6], 
        yi_11_[5], yi_11_[4], yi_11_[3], yi_11_[2], yi_11_[1], 
        yi_11_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_11s \cLayer[11].par_calc_0  (.yi_11_({
        yi_11_[17], yi_11_[16], yi_11_[15], yi_11_[14], yi_11_[13], 
        yi_11_[12], yi_11_[11], yi_11_[10], yi_11_[9], yi_11_[8], 
        yi_11_[7], yi_11_[6], yi_11_[5], yi_11_[4], yi_11_[3], 
        yi_11_[2], yi_11_[1], yi_11_[0]}), .ai_11_({ai_11_[17], 
        ai_11_[16], ai_11_[15], ai_11_[14], ai_11_[13], ai_11_[12], 
        ai_11_[11], ai_11_[10], ai_11_[9], ai_11_[8], ai_11_[7], 
        ai_11_[6], ai_11_[5], ai_11_[4], ai_11_[3], ai_11_[2], 
        ai_11_[1]}), .xi_11_({xi_11_[17], xi_11_[16], xi_11_[15], 
        xi_11_[14], xi_11_[13], xi_11_[12], xi_11_[11], xi_11_[10], 
        xi_11_[9], xi_11_[8], xi_11_[7], xi_11_[6], xi_11_[5], 
        xi_11_[4], xi_11_[3], xi_11_[2], xi_11_[1], xi_11_[0]}), 
        .ai_12_({ai_12_[17], ai_12_[16], ai_12_[15], ai_12_[14], 
        ai_12_[13], ai_12_[12], ai_12_[11], ai_12_[10], ai_12_[9], 
        ai_12_[8], ai_12_[7], ai_12_[6], ai_12_[5], ai_12_[4], 
        ai_12_[3], ai_12_[2], ai_12_[1]}), .xi_12_({xi_12_[17], 
        xi_12_[16], xi_12_[15], xi_12_[14], xi_12_[13], xi_12_[12], 
        xi_12_[11], xi_12_[10], xi_12_[9], xi_12_[8], xi_12_[7], 
        xi_12_[6], xi_12_[5], xi_12_[4], xi_12_[3], xi_12_[2], 
        xi_12_[1], xi_12_[0]}), .yi_12_({yi_12_[17], yi_12_[16], 
        yi_12_[15], yi_12_[14], yi_12_[13], yi_12_[12], yi_12_[11], 
        yi_12_[10], yi_12_[9], yi_12_[8], yi_12_[7], yi_12_[6], 
        yi_12_[5], yi_12_[4], yi_12_[3], yi_12_[2], yi_12_[1], 
        yi_12_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_2s \cLayer[2].par_calc_0  (.yi_2_({
        yi_2_[16], yi_2_[15], yi_2_[14], yi_2_[13], yi_2_[12], 
        yi_2_[11], yi_2_[10], yi_2_[9], yi_2_[8], yi_2_[7], yi_2_[6], 
        yi_2_[5], yi_2_[4], yi_2_[3], yi_2_[2], yi_2_[1]}), .ai_2_({
        ai_2_[17], ai_2_[16], ai_2_[15], ai_2_[14], ai_2_[13], 
        ai_2_[12], ai_2_[11], ai_2_[10], ai_2_[9], ai_2_[8], ai_2_[7], 
        ai_2_[6], ai_2_[5], ai_2_[4], ai_2_[3], ai_2_[2]}), .xi_2_({
        xi_2_[16], xi_2_[15], xi_2_[14], xi_2_[13], xi_2_[12], 
        xi_2_[11], xi_2_[10], xi_2_[9], xi_2_[8], xi_2_[7], xi_2_[6], 
        xi_2_[5], xi_2_[4], xi_2_[3], xi_2_[2], xi_2_[1]}), .yi_3_({
        yi_3_[17], yi_3_[16], yi_3_[15], yi_3_[14], yi_3_[13], 
        yi_3_[12], yi_3_[11], yi_3_[10], yi_3_[9], yi_3_[8], yi_3_[7], 
        yi_3_[6], yi_3_[5], yi_3_[4], yi_3_[3], yi_3_[2], yi_3_[1], 
        yi_3_[0]}), .ai_3_({ai_3_[17], ai_3_[16], ai_3_[15], ai_3_[14], 
        ai_3_[13], ai_3_[12], ai_3_[11], ai_3_[10], ai_3_[9], ai_3_[8], 
        ai_3_[7], ai_3_[6], ai_3_[5], ai_3_[4], ai_3_[3], ai_3_[2]}), 
        .xi_3_({xi_3_[17], xi_3_[16], xi_3_[15], xi_3_[14], xi_3_[13], 
        xi_3_[12], xi_3_[11], xi_3_[10], xi_3_[9], xi_3_[8], xi_3_[7], 
        xi_3_[6], xi_3_[5], xi_3_[4], xi_3_[3], xi_3_[2], xi_3_[1], 
        xi_3_[0]}), .clk(clk));
    VCC VCC_Z (.Y(VCC));
    cordic_par_calc_0_18_4_15s \cLayer[15].par_calc_0  (.yi_15_({
        yi_15_[17], yi_15_[16], yi_15_[15], yi_15_[14], yi_15_[13], 
        yi_15_[12], yi_15_[11], yi_15_[10], yi_15_[9], yi_15_[8], 
        yi_15_[7], yi_15_[6], yi_15_[5], yi_15_[4], yi_15_[3], 
        yi_15_[2], yi_15_[1], yi_15_[0]}), .xi_15_({xi_15_[17], 
        xi_15_[16], xi_15_[15], xi_15_[14], xi_15_[13], xi_15_[12], 
        xi_15_[11], xi_15_[10], xi_15_[9], xi_15_[8], xi_15_[7], 
        xi_15_[6], xi_15_[5], xi_15_[4], xi_15_[3], xi_15_[2], 
        xi_15_[1], xi_15_[0]}), .ai_15__0(ai_15_[17]), .yn_u({yn_u[17], 
        yn_u[16], yn_u[15], yn_u[14], yn_u[13], yn_u[12], yn_u[11], 
        yn_u[10], yn_u[9], yn_u[8], yn_u[7], yn_u[6], yn_u[5], yn_u[4], 
        yn_u[3], yn_u[2], yn_u[1], yn_u[0]}), .xn_u({xn_u[17], 
        xn_u[16], xn_u[15], xn_u[14], xn_u[13], xn_u[12], xn_u[11], 
        xn_u[10], xn_u[9], xn_u[8], xn_u[7], xn_u[6], xn_u[5], xn_u[4], 
        xn_u[3], xn_u[2], xn_u[1], xn_u[0]}), .clk(clk));
    cordic_par_calc_0_18_4_7s \cLayer[7].par_calc_0  (.yi_7_({
        yi_7_[17], yi_7_[16], yi_7_[15], yi_7_[14], yi_7_[13], 
        yi_7_[12], yi_7_[11], yi_7_[10], yi_7_[9], yi_7_[8], yi_7_[7], 
        yi_7_[6], yi_7_[5], yi_7_[4], yi_7_[3], yi_7_[2], yi_7_[1], 
        yi_7_[0]}), .ai_7_({ai_7_[17], ai_7_[16], ai_7_[15], ai_7_[14], 
        ai_7_[13], ai_7_[12], ai_7_[11], ai_7_[10], ai_7_[9], ai_7_[8], 
        ai_7_[7], ai_7_[6], ai_7_[5], ai_7_[4], ai_7_[3], ai_7_[2]}), 
        .xi_7_({xi_7_[17], xi_7_[16], xi_7_[15], xi_7_[14], xi_7_[13], 
        xi_7_[12], xi_7_[11], xi_7_[10], xi_7_[9], xi_7_[8], xi_7_[7], 
        xi_7_[6], xi_7_[5], xi_7_[4], xi_7_[3], xi_7_[2], xi_7_[1], 
        xi_7_[0]}), .ai_8_({ai_8_[17], ai_8_[16], ai_8_[15], ai_8_[14], 
        ai_8_[13], ai_8_[12], ai_8_[11], ai_8_[10], ai_8_[9], ai_8_[8], 
        ai_8_[7], ai_8_[6], ai_8_[5], ai_8_[4], ai_8_[3], ai_8_[2], 
        ai_8_[1]}), .xi_8_({xi_8_[17], xi_8_[16], xi_8_[15], xi_8_[14], 
        xi_8_[13], xi_8_[12], xi_8_[11], xi_8_[10], xi_8_[9], xi_8_[8], 
        xi_8_[7], xi_8_[6], xi_8_[5], xi_8_[4], xi_8_[3], xi_8_[2], 
        xi_8_[1], xi_8_[0]}), .yi_8_({yi_8_[17], yi_8_[16], yi_8_[15], 
        yi_8_[14], yi_8_[13], yi_8_[12], yi_8_[11], yi_8_[10], 
        yi_8_[9], yi_8_[8], yi_8_[7], yi_8_[6], yi_8_[5], yi_8_[4], 
        yi_8_[3], yi_8_[2], yi_8_[1], yi_8_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_0s \cLayer[0].par_calc_0  (.a0({a0[17], 
        a0[16], a0[15], a0[14], a0[13], a0[12], a0[11], a0[10], a0[9], 
        a0[8], a0[7], a0[6], a0[5], a0[4], a0[3], a0[2]}), .ai_1_({
        ai_1_[17], ai_1_[16], ai_1_[15], ai_1_[14], ai_1_[13], 
        ai_1_[12], ai_1_[11], ai_1_[10], ai_1_[9], ai_1_[8], ai_1_[7], 
        ai_1_[6], ai_1_[5], ai_1_[4], ai_1_[3], ai_1_[2]}), .a0_i_3(
        a0_i_3), .a0_i_0(a0_i_0), .yi_1_({yi_1_[3], yi_1_[2]}), .clk(
        clk));
    cordic_par_calc_0_18_4_5s \cLayer[5].par_calc_0  (.yi_5_({
        yi_5_[17], yi_5_[16], yi_5_[15], yi_5_[14], yi_5_[13], 
        yi_5_[12], yi_5_[11], yi_5_[10], yi_5_[9], yi_5_[8], yi_5_[7], 
        yi_5_[6], yi_5_[5], yi_5_[4], yi_5_[3], yi_5_[2], yi_5_[1], 
        yi_5_[0]}), .ai_5_({ai_5_[17], ai_5_[16], ai_5_[15], ai_5_[14], 
        ai_5_[13], ai_5_[12], ai_5_[11], ai_5_[10], ai_5_[9], ai_5_[8], 
        ai_5_[7], ai_5_[6], ai_5_[5], ai_5_[4], ai_5_[3], ai_5_[2]}), 
        .xi_5_({xi_5_[17], xi_5_[16], xi_5_[15], xi_5_[14], xi_5_[13], 
        xi_5_[12], xi_5_[11], xi_5_[10], xi_5_[9], xi_5_[8], xi_5_[7], 
        xi_5_[6], xi_5_[5], xi_5_[4], xi_5_[3], xi_5_[2], xi_5_[1], 
        xi_5_[0]}), .ai_6_({ai_6_[17], ai_6_[16], ai_6_[15], ai_6_[14], 
        ai_6_[13], ai_6_[12], ai_6_[11], ai_6_[10], ai_6_[9], ai_6_[8], 
        ai_6_[7], ai_6_[6], ai_6_[5], ai_6_[4], ai_6_[3], ai_6_[2]}), 
        .xi_6_({xi_6_[17], xi_6_[16], xi_6_[15], xi_6_[14], xi_6_[13], 
        xi_6_[12], xi_6_[11], xi_6_[10], xi_6_[9], xi_6_[8], xi_6_[7], 
        xi_6_[6], xi_6_[5], xi_6_[4], xi_6_[3], xi_6_[2], xi_6_[1], 
        xi_6_[0]}), .yi_6_({yi_6_[17], yi_6_[16], yi_6_[15], yi_6_[14], 
        yi_6_[13], yi_6_[12], yi_6_[11], yi_6_[10], yi_6_[9], yi_6_[8], 
        yi_6_[7], yi_6_[6], yi_6_[5], yi_6_[4], yi_6_[3], yi_6_[2], 
        yi_6_[1], yi_6_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_8s \cLayer[8].par_calc_0  (.yi_8_({
        yi_8_[17], yi_8_[16], yi_8_[15], yi_8_[14], yi_8_[13], 
        yi_8_[12], yi_8_[11], yi_8_[10], yi_8_[9], yi_8_[8], yi_8_[7], 
        yi_8_[6], yi_8_[5], yi_8_[4], yi_8_[3], yi_8_[2], yi_8_[1], 
        yi_8_[0]}), .ai_8_({ai_8_[17], ai_8_[16], ai_8_[15], ai_8_[14], 
        ai_8_[13], ai_8_[12], ai_8_[11], ai_8_[10], ai_8_[9], ai_8_[8], 
        ai_8_[7], ai_8_[6], ai_8_[5], ai_8_[4], ai_8_[3], ai_8_[2], 
        ai_8_[1]}), .xi_8_({xi_8_[17], xi_8_[16], xi_8_[15], xi_8_[14], 
        xi_8_[13], xi_8_[12], xi_8_[11], xi_8_[10], xi_8_[9], xi_8_[8], 
        xi_8_[7], xi_8_[6], xi_8_[5], xi_8_[4], xi_8_[3], xi_8_[2], 
        xi_8_[1], xi_8_[0]}), .ai_9_({ai_9_[17], ai_9_[16], ai_9_[15], 
        ai_9_[14], ai_9_[13], ai_9_[12], ai_9_[11], ai_9_[10], 
        ai_9_[9], ai_9_[8], ai_9_[7], ai_9_[6], ai_9_[5], ai_9_[4], 
        ai_9_[3], ai_9_[2], ai_9_[1]}), .xi_9_({xi_9_[17], xi_9_[16], 
        xi_9_[15], xi_9_[14], xi_9_[13], xi_9_[12], xi_9_[11], 
        xi_9_[10], xi_9_[9], xi_9_[8], xi_9_[7], xi_9_[6], xi_9_[5], 
        xi_9_[4], xi_9_[3], xi_9_[2], xi_9_[1], xi_9_[0]}), .yi_9_({
        yi_9_[17], yi_9_[16], yi_9_[15], yi_9_[14], yi_9_[13], 
        yi_9_[12], yi_9_[11], yi_9_[10], yi_9_[9], yi_9_[8], yi_9_[7], 
        yi_9_[6], yi_9_[5], yi_9_[4], yi_9_[3], yi_9_[2], yi_9_[1], 
        yi_9_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_6s \cLayer[6].par_calc_0  (.yi_6_({
        yi_6_[17], yi_6_[16], yi_6_[15], yi_6_[14], yi_6_[13], 
        yi_6_[12], yi_6_[11], yi_6_[10], yi_6_[9], yi_6_[8], yi_6_[7], 
        yi_6_[6], yi_6_[5], yi_6_[4], yi_6_[3], yi_6_[2], yi_6_[1], 
        yi_6_[0]}), .ai_6_({ai_6_[17], ai_6_[16], ai_6_[15], ai_6_[14], 
        ai_6_[13], ai_6_[12], ai_6_[11], ai_6_[10], ai_6_[9], ai_6_[8], 
        ai_6_[7], ai_6_[6], ai_6_[5], ai_6_[4], ai_6_[3], ai_6_[2]}), 
        .xi_6_({xi_6_[17], xi_6_[16], xi_6_[15], xi_6_[14], xi_6_[13], 
        xi_6_[12], xi_6_[11], xi_6_[10], xi_6_[9], xi_6_[8], xi_6_[7], 
        xi_6_[6], xi_6_[5], xi_6_[4], xi_6_[3], xi_6_[2], xi_6_[1], 
        xi_6_[0]}), .ai_7_({ai_7_[17], ai_7_[16], ai_7_[15], ai_7_[14], 
        ai_7_[13], ai_7_[12], ai_7_[11], ai_7_[10], ai_7_[9], ai_7_[8], 
        ai_7_[7], ai_7_[6], ai_7_[5], ai_7_[4], ai_7_[3], ai_7_[2]}), 
        .xi_7_({xi_7_[17], xi_7_[16], xi_7_[15], xi_7_[14], xi_7_[13], 
        xi_7_[12], xi_7_[11], xi_7_[10], xi_7_[9], xi_7_[8], xi_7_[7], 
        xi_7_[6], xi_7_[5], xi_7_[4], xi_7_[3], xi_7_[2], xi_7_[1], 
        xi_7_[0]}), .yi_7_({yi_7_[17], yi_7_[16], yi_7_[15], yi_7_[14], 
        yi_7_[13], yi_7_[12], yi_7_[11], yi_7_[10], yi_7_[9], yi_7_[8], 
        yi_7_[7], yi_7_[6], yi_7_[5], yi_7_[4], yi_7_[3], yi_7_[2], 
        yi_7_[1], yi_7_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_3s \cLayer[3].par_calc_0  (.yi_3_({
        yi_3_[17], yi_3_[16], yi_3_[15], yi_3_[14], yi_3_[13], 
        yi_3_[12], yi_3_[11], yi_3_[10], yi_3_[9], yi_3_[8], yi_3_[7], 
        yi_3_[6], yi_3_[5], yi_3_[4], yi_3_[3], yi_3_[2], yi_3_[1], 
        yi_3_[0]}), .ai_3_({ai_3_[17], ai_3_[16], ai_3_[15], ai_3_[14], 
        ai_3_[13], ai_3_[12], ai_3_[11], ai_3_[10], ai_3_[9], ai_3_[8], 
        ai_3_[7], ai_3_[6], ai_3_[5], ai_3_[4], ai_3_[3], ai_3_[2]}), 
        .xi_3_({xi_3_[17], xi_3_[16], xi_3_[15], xi_3_[14], xi_3_[13], 
        xi_3_[12], xi_3_[11], xi_3_[10], xi_3_[9], xi_3_[8], xi_3_[7], 
        xi_3_[6], xi_3_[5], xi_3_[4], xi_3_[3], xi_3_[2], xi_3_[1], 
        xi_3_[0]}), .ai_4_({ai_4_[17], ai_4_[16], ai_4_[15], ai_4_[14], 
        ai_4_[13], ai_4_[12], ai_4_[11], ai_4_[10], ai_4_[9], ai_4_[8], 
        ai_4_[7], ai_4_[6], ai_4_[5], ai_4_[4], ai_4_[3], ai_4_[2]}), 
        .xi_4_({xi_4_[17], xi_4_[16], xi_4_[15], xi_4_[14], xi_4_[13], 
        xi_4_[12], xi_4_[11], xi_4_[10], xi_4_[9], xi_4_[8], xi_4_[7], 
        xi_4_[6], xi_4_[5], xi_4_[4], xi_4_[3], xi_4_[2], xi_4_[1], 
        xi_4_[0]}), .yi_4_({yi_4_[17], yi_4_[16], yi_4_[15], yi_4_[14], 
        yi_4_[13], yi_4_[12], yi_4_[11], yi_4_[10], yi_4_[9], yi_4_[8], 
        yi_4_[7], yi_4_[6], yi_4_[5], yi_4_[4], yi_4_[3], yi_4_[2], 
        yi_4_[1], yi_4_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_9s \cLayer[9].par_calc_0  (.yi_9_({
        yi_9_[17], yi_9_[16], yi_9_[15], yi_9_[14], yi_9_[13], 
        yi_9_[12], yi_9_[11], yi_9_[10], yi_9_[9], yi_9_[8], yi_9_[7], 
        yi_9_[6], yi_9_[5], yi_9_[4], yi_9_[3], yi_9_[2], yi_9_[1], 
        yi_9_[0]}), .ai_9_({ai_9_[17], ai_9_[16], ai_9_[15], ai_9_[14], 
        ai_9_[13], ai_9_[12], ai_9_[11], ai_9_[10], ai_9_[9], ai_9_[8], 
        ai_9_[7], ai_9_[6], ai_9_[5], ai_9_[4], ai_9_[3], ai_9_[2], 
        ai_9_[1]}), .xi_9_({xi_9_[17], xi_9_[16], xi_9_[15], xi_9_[14], 
        xi_9_[13], xi_9_[12], xi_9_[11], xi_9_[10], xi_9_[9], xi_9_[8], 
        xi_9_[7], xi_9_[6], xi_9_[5], xi_9_[4], xi_9_[3], xi_9_[2], 
        xi_9_[1], xi_9_[0]}), .ai_10_({ai_10_[17], ai_10_[16], 
        ai_10_[15], ai_10_[14], ai_10_[13], ai_10_[12], ai_10_[11], 
        ai_10_[10], ai_10_[9], ai_10_[8], ai_10_[7], ai_10_[6], 
        ai_10_[5], ai_10_[4], ai_10_[3], ai_10_[2], ai_10_[1]}), 
        .xi_10_({xi_10_[17], xi_10_[16], xi_10_[15], xi_10_[14], 
        xi_10_[13], xi_10_[12], xi_10_[11], xi_10_[10], xi_10_[9], 
        xi_10_[8], xi_10_[7], xi_10_[6], xi_10_[5], xi_10_[4], 
        xi_10_[3], xi_10_[2], xi_10_[1], xi_10_[0]}), .yi_10_({
        yi_10_[17], yi_10_[16], yi_10_[15], yi_10_[14], yi_10_[13], 
        yi_10_[12], yi_10_[11], yi_10_[10], yi_10_[9], yi_10_[8], 
        yi_10_[7], yi_10_[6], yi_10_[5], yi_10_[4], yi_10_[3], 
        yi_10_[2], yi_10_[1], yi_10_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_12s \cLayer[12].par_calc_0  (.yi_12_({
        yi_12_[17], yi_12_[16], yi_12_[15], yi_12_[14], yi_12_[13], 
        yi_12_[12], yi_12_[11], yi_12_[10], yi_12_[9], yi_12_[8], 
        yi_12_[7], yi_12_[6], yi_12_[5], yi_12_[4], yi_12_[3], 
        yi_12_[2], yi_12_[1], yi_12_[0]}), .ai_12_({ai_12_[17], 
        ai_12_[16], ai_12_[15], ai_12_[14], ai_12_[13], ai_12_[12], 
        ai_12_[11], ai_12_[10], ai_12_[9], ai_12_[8], ai_12_[7], 
        ai_12_[6], ai_12_[5], ai_12_[4], ai_12_[3], ai_12_[2], 
        ai_12_[1]}), .xi_12_({xi_12_[17], xi_12_[16], xi_12_[15], 
        xi_12_[14], xi_12_[13], xi_12_[12], xi_12_[11], xi_12_[10], 
        xi_12_[9], xi_12_[8], xi_12_[7], xi_12_[6], xi_12_[5], 
        xi_12_[4], xi_12_[3], xi_12_[2], xi_12_[1], xi_12_[0]}), 
        .ai_13_({ai_13_[17], ai_13_[16], ai_13_[15], ai_13_[14], 
        ai_13_[13], ai_13_[12], ai_13_[11], ai_13_[10], ai_13_[9], 
        ai_13_[8], ai_13_[7], ai_13_[6], ai_13_[5], ai_13_[4], 
        ai_13_[3], ai_13_[2], ai_13_[1]}), .xi_13_({xi_13_[17], 
        xi_13_[16], xi_13_[15], xi_13_[14], xi_13_[13], xi_13_[12], 
        xi_13_[11], xi_13_[10], xi_13_[9], xi_13_[8], xi_13_[7], 
        xi_13_[6], xi_13_[5], xi_13_[4], xi_13_[3], xi_13_[2], 
        xi_13_[1], xi_13_[0]}), .yi_13_({yi_13_[17], yi_13_[16], 
        yi_13_[15], yi_13_[14], yi_13_[13], yi_13_[12], yi_13_[11], 
        yi_13_[10], yi_13_[9], yi_13_[8], yi_13_[7], yi_13_[6], 
        yi_13_[5], yi_13_[4], yi_13_[3], yi_13_[2], yi_13_[1], 
        yi_13_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_13s \cLayer[13].par_calc_0  (.yi_13_({
        yi_13_[17], yi_13_[16], yi_13_[15], yi_13_[14], yi_13_[13], 
        yi_13_[12], yi_13_[11], yi_13_[10], yi_13_[9], yi_13_[8], 
        yi_13_[7], yi_13_[6], yi_13_[5], yi_13_[4], yi_13_[3], 
        yi_13_[2], yi_13_[1], yi_13_[0]}), .ai_13_({ai_13_[17], 
        ai_13_[16], ai_13_[15], ai_13_[14], ai_13_[13], ai_13_[12], 
        ai_13_[11], ai_13_[10], ai_13_[9], ai_13_[8], ai_13_[7], 
        ai_13_[6], ai_13_[5], ai_13_[4], ai_13_[3], ai_13_[2], 
        ai_13_[1]}), .xi_13_({xi_13_[17], xi_13_[16], xi_13_[15], 
        xi_13_[14], xi_13_[13], xi_13_[12], xi_13_[11], xi_13_[10], 
        xi_13_[9], xi_13_[8], xi_13_[7], xi_13_[6], xi_13_[5], 
        xi_13_[4], xi_13_[3], xi_13_[2], xi_13_[1], xi_13_[0]}), 
        .ai_14_({ai_14_[17], ai_14_[16], ai_14_[15], ai_14_[14], 
        ai_14_[13], ai_14_[12], ai_14_[11], ai_14_[10], ai_14_[9], 
        ai_14_[8], ai_14_[7], ai_14_[6], ai_14_[5], ai_14_[4], 
        ai_14_[3], ai_14_[2], ai_14_[1]}), .xi_14_({xi_14_[17], 
        xi_14_[16], xi_14_[15], xi_14_[14], xi_14_[13], xi_14_[12], 
        xi_14_[11], xi_14_[10], xi_14_[9], xi_14_[8], xi_14_[7], 
        xi_14_[6], xi_14_[5], xi_14_[4], xi_14_[3], xi_14_[2], 
        xi_14_[1], xi_14_[0]}), .yi_14_({yi_14_[17], yi_14_[16], 
        yi_14_[15], yi_14_[14], yi_14_[13], yi_14_[12], yi_14_[11], 
        yi_14_[10], yi_14_[9], yi_14_[8], yi_14_[7], yi_14_[6], 
        yi_14_[5], yi_14_[4], yi_14_[3], yi_14_[2], yi_14_[1], 
        yi_14_[0]}), .clk(clk));
    cordic_par_calc_0_18_4_1s \cLayer[1].par_calc_0  (.yi_1_({yi_1_[3], 
        yi_1_[2]}), .ai_1_({ai_1_[17], ai_1_[16], ai_1_[15], ai_1_[14], 
        ai_1_[13], ai_1_[12], ai_1_[11], ai_1_[10], ai_1_[9], ai_1_[8], 
        ai_1_[7], ai_1_[6], ai_1_[5], ai_1_[4], ai_1_[3], ai_1_[2]}), 
        .ai_2_({ai_2_[17], ai_2_[16], ai_2_[15], ai_2_[14], ai_2_[13], 
        ai_2_[12], ai_2_[11], ai_2_[10], ai_2_[9], ai_2_[8], ai_2_[7], 
        ai_2_[6], ai_2_[5], ai_2_[4], ai_2_[3], ai_2_[2]}), .xi_2_({
        xi_2_[16], xi_2_[15], xi_2_[14], xi_2_[13], xi_2_[12], 
        xi_2_[11], xi_2_[10], xi_2_[9], xi_2_[8], xi_2_[7], xi_2_[6], 
        xi_2_[5], xi_2_[4], xi_2_[3], xi_2_[2], xi_2_[1]}), .yi_2_({
        yi_2_[16], yi_2_[15], yi_2_[14], yi_2_[13], yi_2_[12], 
        yi_2_[11], yi_2_[10], yi_2_[9], yi_2_[8], yi_2_[7], yi_2_[6], 
        yi_2_[5], yi_2_[4], yi_2_[3], yi_2_[2], yi_2_[1]}), .clk(clk));
    cordic_par_calc_0_18_4_14s \cLayer[14].par_calc_0  (.yi_14_({
        yi_14_[17], yi_14_[16], yi_14_[15], yi_14_[14], yi_14_[13], 
        yi_14_[12], yi_14_[11], yi_14_[10], yi_14_[9], yi_14_[8], 
        yi_14_[7], yi_14_[6], yi_14_[5], yi_14_[4], yi_14_[3], 
        yi_14_[2], yi_14_[1], yi_14_[0]}), .ai_14_({ai_14_[17], 
        ai_14_[16], ai_14_[15], ai_14_[14], ai_14_[13], ai_14_[12], 
        ai_14_[11], ai_14_[10], ai_14_[9], ai_14_[8], ai_14_[7], 
        ai_14_[6], ai_14_[5], ai_14_[4], ai_14_[3], ai_14_[2], 
        ai_14_[1]}), .xi_14_({xi_14_[17], xi_14_[16], xi_14_[15], 
        xi_14_[14], xi_14_[13], xi_14_[12], xi_14_[11], xi_14_[10], 
        xi_14_[9], xi_14_[8], xi_14_[7], xi_14_[6], xi_14_[5], 
        xi_14_[4], xi_14_[3], xi_14_[2], xi_14_[1], xi_14_[0]}), 
        .xi_15_({xi_15_[17], xi_15_[16], xi_15_[15], xi_15_[14], 
        xi_15_[13], xi_15_[12], xi_15_[11], xi_15_[10], xi_15_[9], 
        xi_15_[8], xi_15_[7], xi_15_[6], xi_15_[5], xi_15_[4], 
        xi_15_[3], xi_15_[2], xi_15_[1], xi_15_[0]}), .yi_15_({
        yi_15_[17], yi_15_[16], yi_15_[15], yi_15_[14], yi_15_[13], 
        yi_15_[12], yi_15_[11], yi_15_[10], yi_15_[9], yi_15_[8], 
        yi_15_[7], yi_15_[6], yi_15_[5], yi_15_[4], yi_15_[3], 
        yi_15_[2], yi_15_[1], yi_15_[0]}), .ai_15__0(ai_15_[17]), .clk(
        clk));
    
endmodule


module CORECORDIC_C0_CORECORDIC_C0_0_cordic_par_Z2_layer0(
       CORECORDIC_C0_0_DOUT_X,
       CORECORDIC_C0_0_DOUT_Y,
       phase_angle_cry_0,
       phase_angle_qxu,
       clk
    );
output [15:0] CORECORDIC_C0_0_DOUT_X;
output [15:0] CORECORDIC_C0_0_DOUT_Y;
input  phase_angle_cry_0;
input  [15:1] phase_angle_qxu;
input  clk;

    wire [1:0] coarse_flag;
    wire [17:14] a0_i;
    wire [17:2] a0;
    wire [1:0] coarse_flag2post;
    wire [17:0] xn_u;
    wire [17:0] yn_u;
    wire [15:0] xn_rnd;
    wire [15:0] yn_rnd;
    wire GND, VCC;
    
    cordic_kitRoundTop_18_16_1s_0s_1 roundy_0 (.yn_u({yn_u[17], 
        yn_u[16], yn_u[15], yn_u[14], yn_u[13], yn_u[12], yn_u[11], 
        yn_u[10], yn_u[9], yn_u[8], yn_u[7], yn_u[6], yn_u[5], yn_u[4], 
        yn_u[3], yn_u[2], yn_u[1], yn_u[0]}), .yn_rnd({yn_rnd[15], 
        yn_rnd[14], yn_rnd[13], yn_rnd[12], yn_rnd[11], yn_rnd[10], 
        yn_rnd[9], yn_rnd[8], yn_rnd[7], yn_rnd[6], yn_rnd[5], 
        yn_rnd[4], yn_rnd[3], yn_rnd[2], yn_rnd[1], yn_rnd[0]}), .clk(
        clk));
    cordic_coarse_post_rotator_16_0_1s post_rotat_0 (
        .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .CORECORDIC_C0_0_DOUT_X({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .coarse_flag2post({coarse_flag2post[1], coarse_flag2post[0]}), 
        .xn_rnd({xn_rnd[15], xn_rnd[14], xn_rnd[13], xn_rnd[12], 
        xn_rnd[11], xn_rnd[10], xn_rnd[9], xn_rnd[8], xn_rnd[7], 
        xn_rnd[6], xn_rnd[5], xn_rnd[4], xn_rnd[3], xn_rnd[2], 
        xn_rnd[1], xn_rnd[0]}), .yn_rnd({yn_rnd[15], yn_rnd[14], 
        yn_rnd[13], yn_rnd[12], yn_rnd[11], yn_rnd[10], yn_rnd[9], 
        yn_rnd[8], yn_rnd[7], yn_rnd[6], yn_rnd[5], yn_rnd[4], 
        yn_rnd[3], yn_rnd[2], yn_rnd[1], yn_rnd[0]}), .clk(clk));
    cordic_coarse_pre_rotator_16s_0_1s pre_rotat_0 (.coarse_flag({
        coarse_flag[1], coarse_flag[0]}), .a0_i_3(a0_i[17]), .a0_i_0(
        a0_i[14]), .a0({a0[17], a0[16], a0[15], a0[14], a0[13], a0[12], 
        a0[11], a0[10], a0[9], a0[8], a0[7], a0[6], a0[5], a0[4], 
        a0[3], a0[2]}), .phase_angle_qxu({phase_angle_qxu[15], 
        phase_angle_qxu[14], phase_angle_qxu[13], phase_angle_qxu[12], 
        phase_angle_qxu[11], phase_angle_qxu[10], phase_angle_qxu[9], 
        phase_angle_qxu[8], phase_angle_qxu[7], phase_angle_qxu[6], 
        phase_angle_qxu[5], phase_angle_qxu[4], phase_angle_qxu[3], 
        phase_angle_qxu[2], phase_angle_qxu[1]}), .phase_angle_cry_0(
        phase_angle_cry_0), .clk(clk));
    cordic_kitDelay_reg_2s_18s hold_coarse_flag_0 (.coarse_flag2post({
        coarse_flag2post[1], coarse_flag2post[0]}), .coarse_flag({
        coarse_flag[1], coarse_flag[0]}), .clk(clk));
    VCC VCC_Z (.Y(VCC));
    cordic_kitRoundTop_18_16_1s_1s roundx_0 (.xn_u({xn_u[17], xn_u[16], 
        xn_u[15], xn_u[14], xn_u[13], xn_u[12], xn_u[11], xn_u[10], 
        xn_u[9], xn_u[8], xn_u[7], xn_u[6], xn_u[5], xn_u[4], xn_u[3], 
        xn_u[2], xn_u[1], xn_u[0]}), .xn_rnd({xn_rnd[15], xn_rnd[14], 
        xn_rnd[13], xn_rnd[12], xn_rnd[11], xn_rnd[10], xn_rnd[9], 
        xn_rnd[8], xn_rnd[7], xn_rnd[6], xn_rnd[5], xn_rnd[4], 
        xn_rnd[3], xn_rnd[2], xn_rnd[1], xn_rnd[0]}), .clk(clk));
    
        CORECORDIC_C0_CORECORDIC_C0_0_cordic_par_uRotator_16s_18_16s_4_0_3s 
        uRotator_par_0 (.a0_i_3(a0_i[17]), .a0_i_0(a0_i[14]), .a0({
        a0[17], a0[16], a0[15], a0[14], a0[13], a0[12], a0[11], a0[10], 
        a0[9], a0[8], a0[7], a0[6], a0[5], a0[4], a0[3], a0[2]}), 
        .xn_u({xn_u[17], xn_u[16], xn_u[15], xn_u[14], xn_u[13], 
        xn_u[12], xn_u[11], xn_u[10], xn_u[9], xn_u[8], xn_u[7], 
        xn_u[6], xn_u[5], xn_u[4], xn_u[3], xn_u[2], xn_u[1], xn_u[0]})
        , .yn_u({yn_u[17], yn_u[16], yn_u[15], yn_u[14], yn_u[13], 
        yn_u[12], yn_u[11], yn_u[10], yn_u[9], yn_u[8], yn_u[7], 
        yn_u[6], yn_u[5], yn_u[4], yn_u[3], yn_u[2], yn_u[1], yn_u[0]})
        , .clk(clk));
    GND GND_Z (.Y(GND));
    
endmodule


module CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC_Z1_layer0(
       phase_angle_qxu,
       phase_angle_cry_0,
       CORECORDIC_C0_0_DOUT_Y,
       CORECORDIC_C0_0_DOUT_X,
       clk
    );
input  [15:1] phase_angle_qxu;
input  phase_angle_cry_0;
output [15:0] CORECORDIC_C0_0_DOUT_Y;
output [15:0] CORECORDIC_C0_0_DOUT_X;
input  clk;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    CORECORDIC_C0_CORECORDIC_C0_0_cordic_par_Z2_layer0 
        \parallel.cordic_paral_0  (.CORECORDIC_C0_0_DOUT_X({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .phase_angle_cry_0(
        phase_angle_cry_0), .phase_angle_qxu({phase_angle_qxu[15], 
        phase_angle_qxu[14], phase_angle_qxu[13], phase_angle_qxu[12], 
        phase_angle_qxu[11], phase_angle_qxu[10], phase_angle_qxu[9], 
        phase_angle_qxu[8], phase_angle_qxu[7], phase_angle_qxu[6], 
        phase_angle_qxu[5], phase_angle_qxu[4], phase_angle_qxu[3], 
        phase_angle_qxu[2], phase_angle_qxu[1]}), .clk(clk));
    GND GND_Z (.Y(GND));
    
endmodule


module CORECORDIC_C0(
       CORECORDIC_C0_0_DOUT_X,
       CORECORDIC_C0_0_DOUT_Y,
       phase_angle_cry_0,
       phase_angle_qxu,
       clk
    );
output [15:0] CORECORDIC_C0_0_DOUT_X;
output [15:0] CORECORDIC_C0_0_DOUT_Y;
input  phase_angle_cry_0;
input  [15:1] phase_angle_qxu;
input  clk;

    wire GND, VCC;
    
    CORECORDIC_C0_CORECORDIC_C0_0_CORECORDIC_Z1_layer0 CORECORDIC_C0_0 
        (.phase_angle_qxu({phase_angle_qxu[15], phase_angle_qxu[14], 
        phase_angle_qxu[13], phase_angle_qxu[12], phase_angle_qxu[11], 
        phase_angle_qxu[10], phase_angle_qxu[9], phase_angle_qxu[8], 
        phase_angle_qxu[7], phase_angle_qxu[6], phase_angle_qxu[5], 
        phase_angle_qxu[4], phase_angle_qxu[3], phase_angle_qxu[2], 
        phase_angle_qxu[1]}), .phase_angle_cry_0(phase_angle_cry_0), 
        .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .CORECORDIC_C0_0_DOUT_X({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), .clk(
        clk));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module modulator(
       COREFIR_PF_C0_1_FIRO,
       modulated_i_2_0,
       CORECORDIC_C0_0_DOUT_X,
       COREFIR_PF_C0_0_FIRO,
       modulated_q_2_0,
       CORECORDIC_C0_0_DOUT_Y,
       reset_arst_i,
       clk
    );
input  [47:0] COREFIR_PF_C0_1_FIRO;
output [63:0] modulated_i_2_0;
input  [15:0] CORECORDIC_C0_0_DOUT_X;
input  [47:0] COREFIR_PF_C0_0_FIRO;
output [63:0] modulated_q_2_0;
input  [15:0] CORECORDIC_C0_0_DOUT_Y;
input  reset_arst_i;
input  clk;

    wire [47:0] CDOUT_0;
    wire [47:17] P_2;
    wire [47:0] WideMult_2_0_cas;
    wire [47:17] P_1;
    wire [47:30] P_3;
    wire [47:0] WideMult_1_0_cas;
    wire [47:30] P_4;
    wire [47:0] CDOUT;
    wire [47:17] P;
    wire [47:0] WideMult_2_0_cas_0;
    wire [47:17] P_0;
    wire [47:0] WideMult_1_0_cas_0;
    wire OVFL_CARRYOUT_2, VCC, GND, OVFL_CARRYOUT_3, OVFL_CARRYOUT_4, 
        OVFL_CARRYOUT, OVFL_CARRYOUT_0, OVFL_CARRYOUT_1;
    
    MACC_PA WideMult_2_0 (.A({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34]}), .AL_N(VCC), .ARSHFT17(VCC), 
        .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), 
        .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), 
        .A_EN(VCC), .A_SRST_N(reset_arst_i), .B({
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[14], 
        CORECORDIC_C0_0_DOUT_Y[13], CORECORDIC_C0_0_DOUT_Y[12], 
        CORECORDIC_C0_0_DOUT_Y[11], CORECORDIC_C0_0_DOUT_Y[10], 
        CORECORDIC_C0_0_DOUT_Y[9], CORECORDIC_C0_0_DOUT_Y[8], 
        CORECORDIC_C0_0_DOUT_Y[7], CORECORDIC_C0_0_DOUT_Y[6], 
        CORECORDIC_C0_0_DOUT_Y[5], CORECORDIC_C0_0_DOUT_Y[4], 
        CORECORDIC_C0_0_DOUT_Y[3], CORECORDIC_C0_0_DOUT_Y[2], 
        CORECORDIC_C0_0_DOUT_Y[1], CORECORDIC_C0_0_DOUT_Y[0]}), 
        .B_BYPASS(GND), .B_EN(VCC), .B_SRST_N(reset_arst_i), .C({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), 
        .CARRYIN(GND), .CDIN({WideMult_2_0_cas[47], 
        WideMult_2_0_cas[46], WideMult_2_0_cas[45], 
        WideMult_2_0_cas[44], WideMult_2_0_cas[43], 
        WideMult_2_0_cas[42], WideMult_2_0_cas[41], 
        WideMult_2_0_cas[40], WideMult_2_0_cas[39], 
        WideMult_2_0_cas[38], WideMult_2_0_cas[37], 
        WideMult_2_0_cas[36], WideMult_2_0_cas[35], 
        WideMult_2_0_cas[34], WideMult_2_0_cas[33], 
        WideMult_2_0_cas[32], WideMult_2_0_cas[31], 
        WideMult_2_0_cas[30], WideMult_2_0_cas[29], 
        WideMult_2_0_cas[28], WideMult_2_0_cas[27], 
        WideMult_2_0_cas[26], WideMult_2_0_cas[25], 
        WideMult_2_0_cas[24], WideMult_2_0_cas[23], 
        WideMult_2_0_cas[22], WideMult_2_0_cas[21], 
        WideMult_2_0_cas[20], WideMult_2_0_cas[19], 
        WideMult_2_0_cas[18], WideMult_2_0_cas[17], 
        WideMult_2_0_cas[16], WideMult_2_0_cas[15], 
        WideMult_2_0_cas[14], WideMult_2_0_cas[13], 
        WideMult_2_0_cas[12], WideMult_2_0_cas[11], 
        WideMult_2_0_cas[10], WideMult_2_0_cas[9], WideMult_2_0_cas[8], 
        WideMult_2_0_cas[7], WideMult_2_0_cas[6], WideMult_2_0_cas[5], 
        WideMult_2_0_cas[4], WideMult_2_0_cas[3], WideMult_2_0_cas[2], 
        WideMult_2_0_cas[1], WideMult_2_0_cas[0]}), .CDIN_FDBK_SEL({
        VCC, GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(VCC), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({GND, GND}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(VCC), .C_EN(VCC), 
        .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(GND), 
        .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), .D_SRST_N(VCC), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(VCC), .PASUB_EN(VCC), .PASUB_SD_N(GND), 
        .PASUB_SL_N(VCC), .P_BYPASS(VCC), .P_EN(VCC), .P_SRST_N(VCC), 
        .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .CDOUT({
        CDOUT_0[47], CDOUT_0[46], CDOUT_0[45], CDOUT_0[44], 
        CDOUT_0[43], CDOUT_0[42], CDOUT_0[41], CDOUT_0[40], 
        CDOUT_0[39], CDOUT_0[38], CDOUT_0[37], CDOUT_0[36], 
        CDOUT_0[35], CDOUT_0[34], CDOUT_0[33], CDOUT_0[32], 
        CDOUT_0[31], CDOUT_0[30], CDOUT_0[29], CDOUT_0[28], 
        CDOUT_0[27], CDOUT_0[26], CDOUT_0[25], CDOUT_0[24], 
        CDOUT_0[23], CDOUT_0[22], CDOUT_0[21], CDOUT_0[20], 
        CDOUT_0[19], CDOUT_0[18], CDOUT_0[17], CDOUT_0[16], 
        CDOUT_0[15], CDOUT_0[14], CDOUT_0[13], CDOUT_0[12], 
        CDOUT_0[11], CDOUT_0[10], CDOUT_0[9], CDOUT_0[8], CDOUT_0[7], 
        CDOUT_0[6], CDOUT_0[5], CDOUT_0[4], CDOUT_0[3], CDOUT_0[2], 
        CDOUT_0[1], CDOUT_0[0]}), .OVFL_CARRYOUT(OVFL_CARRYOUT_2), .P({
        P_2[47], P_2[46], P_2[45], P_2[44], P_2[43], P_2[42], P_2[41], 
        P_2[40], P_2[39], P_2[38], P_2[37], P_2[36], P_2[35], P_2[34], 
        P_2[33], P_2[32], P_2[31], P_2[30], modulated_q_2_0[63], 
        modulated_q_2_0[62], modulated_q_2_0[61], modulated_q_2_0[60], 
        modulated_q_2_0[59], modulated_q_2_0[58], modulated_q_2_0[57], 
        modulated_q_2_0[56], modulated_q_2_0[55], modulated_q_2_0[54], 
        modulated_q_2_0[53], modulated_q_2_0[52], modulated_q_2_0[51], 
        modulated_q_2_0[50], modulated_q_2_0[49], modulated_q_2_0[48], 
        modulated_q_2_0[47], modulated_q_2_0[46], modulated_q_2_0[45], 
        modulated_q_2_0[44], modulated_q_2_0[43], modulated_q_2_0[42], 
        modulated_q_2_0[41], modulated_q_2_0[40], modulated_q_2_0[39], 
        modulated_q_2_0[38], modulated_q_2_0[37], modulated_q_2_0[36], 
        modulated_q_2_0[35], modulated_q_2_0[34]}));
    MACC_PA WideMult_2 (.A({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34]}), .AL_N(VCC), .ARSHFT17(VCC), 
        .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), 
        .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), 
        .A_EN(VCC), .A_SRST_N(reset_arst_i), .B({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[15], 
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .B_BYPASS(GND), .B_EN(VCC), .B_SRST_N(reset_arst_i), .C({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), 
        .CARRYIN(GND), .CDIN({WideMult_2_0_cas_0[47], 
        WideMult_2_0_cas_0[46], WideMult_2_0_cas_0[45], 
        WideMult_2_0_cas_0[44], WideMult_2_0_cas_0[43], 
        WideMult_2_0_cas_0[42], WideMult_2_0_cas_0[41], 
        WideMult_2_0_cas_0[40], WideMult_2_0_cas_0[39], 
        WideMult_2_0_cas_0[38], WideMult_2_0_cas_0[37], 
        WideMult_2_0_cas_0[36], WideMult_2_0_cas_0[35], 
        WideMult_2_0_cas_0[34], WideMult_2_0_cas_0[33], 
        WideMult_2_0_cas_0[32], WideMult_2_0_cas_0[31], 
        WideMult_2_0_cas_0[30], WideMult_2_0_cas_0[29], 
        WideMult_2_0_cas_0[28], WideMult_2_0_cas_0[27], 
        WideMult_2_0_cas_0[26], WideMult_2_0_cas_0[25], 
        WideMult_2_0_cas_0[24], WideMult_2_0_cas_0[23], 
        WideMult_2_0_cas_0[22], WideMult_2_0_cas_0[21], 
        WideMult_2_0_cas_0[20], WideMult_2_0_cas_0[19], 
        WideMult_2_0_cas_0[18], WideMult_2_0_cas_0[17], 
        WideMult_2_0_cas_0[16], WideMult_2_0_cas_0[15], 
        WideMult_2_0_cas_0[14], WideMult_2_0_cas_0[13], 
        WideMult_2_0_cas_0[12], WideMult_2_0_cas_0[11], 
        WideMult_2_0_cas_0[10], WideMult_2_0_cas_0[9], 
        WideMult_2_0_cas_0[8], WideMult_2_0_cas_0[7], 
        WideMult_2_0_cas_0[6], WideMult_2_0_cas_0[5], 
        WideMult_2_0_cas_0[4], WideMult_2_0_cas_0[3], 
        WideMult_2_0_cas_0[2], WideMult_2_0_cas_0[1], 
        WideMult_2_0_cas_0[0]}), .CDIN_FDBK_SEL({VCC, GND}), 
        .CDIN_FDBK_SEL_AD_N({VCC, VCC}), .CDIN_FDBK_SEL_BYPASS(VCC), 
        .CDIN_FDBK_SEL_EN(VCC), .CDIN_FDBK_SEL_SD_N({GND, GND}), 
        .CDIN_FDBK_SEL_SL_N(VCC), .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(
        VCC), .C_EN(VCC), .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND}), .DOTP(GND), .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), 
        .D_SRST_N(VCC), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(VCC), .PASUB_EN(VCC), 
        .PASUB_SD_N(GND), .PASUB_SL_N(VCC), .P_BYPASS(VCC), .P_EN(VCC), 
        .P_SRST_N(VCC), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), 
        .SUB_BYPASS(VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), 
        .CDOUT({CDOUT[47], CDOUT[46], CDOUT[45], CDOUT[44], CDOUT[43], 
        CDOUT[42], CDOUT[41], CDOUT[40], CDOUT[39], CDOUT[38], 
        CDOUT[37], CDOUT[36], CDOUT[35], CDOUT[34], CDOUT[33], 
        CDOUT[32], CDOUT[31], CDOUT[30], CDOUT[29], CDOUT[28], 
        CDOUT[27], CDOUT[26], CDOUT[25], CDOUT[24], CDOUT[23], 
        CDOUT[22], CDOUT[21], CDOUT[20], CDOUT[19], CDOUT[18], 
        CDOUT[17], CDOUT[16], CDOUT[15], CDOUT[14], CDOUT[13], 
        CDOUT[12], CDOUT[11], CDOUT[10], CDOUT[9], CDOUT[8], CDOUT[7], 
        CDOUT[6], CDOUT[5], CDOUT[4], CDOUT[3], CDOUT[2], CDOUT[1], 
        CDOUT[0]}), .OVFL_CARRYOUT(OVFL_CARRYOUT), .P({P[47], P[46], 
        P[45], P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], 
        P[36], P[35], P[34], P[33], P[32], P[31], P[30], 
        modulated_i_2_0[63], modulated_i_2_0[62], modulated_i_2_0[61], 
        modulated_i_2_0[60], modulated_i_2_0[59], modulated_i_2_0[58], 
        modulated_i_2_0[57], modulated_i_2_0[56], modulated_i_2_0[55], 
        modulated_i_2_0[54], modulated_i_2_0[53], modulated_i_2_0[52], 
        modulated_i_2_0[51], modulated_i_2_0[50], modulated_i_2_0[49], 
        modulated_i_2_0[48], modulated_i_2_0[47], modulated_i_2_0[46], 
        modulated_i_2_0[45], modulated_i_2_0[44], modulated_i_2_0[43], 
        modulated_i_2_0[42], modulated_i_2_0[41], modulated_i_2_0[40], 
        modulated_i_2_0[39], modulated_i_2_0[38], modulated_i_2_0[37], 
        modulated_i_2_0[36], modulated_i_2_0[35], modulated_i_2_0[34]})
        );
    MACC_PA WideMult_0 (.A({GND, COREFIR_PF_C0_1_FIRO[16], 
        COREFIR_PF_C0_1_FIRO[15], COREFIR_PF_C0_1_FIRO[14], 
        COREFIR_PF_C0_1_FIRO[13], COREFIR_PF_C0_1_FIRO[12], 
        COREFIR_PF_C0_1_FIRO[11], COREFIR_PF_C0_1_FIRO[10], 
        COREFIR_PF_C0_1_FIRO[9], COREFIR_PF_C0_1_FIRO[8], 
        COREFIR_PF_C0_1_FIRO[7], COREFIR_PF_C0_1_FIRO[6], 
        COREFIR_PF_C0_1_FIRO[5], COREFIR_PF_C0_1_FIRO[4], 
        COREFIR_PF_C0_1_FIRO[3], COREFIR_PF_C0_1_FIRO[2], 
        COREFIR_PF_C0_1_FIRO[1], COREFIR_PF_C0_1_FIRO[0]}), .AL_N(VCC), 
        .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(VCC), 
        .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(VCC), 
        .A_BYPASS(VCC), .A_EN(VCC), .A_SRST_N(VCC), .B({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[15], 
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .B_BYPASS(VCC), .B_EN(VCC), .B_SRST_N(VCC), .C({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CARRYIN(GND), 
        .CDIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND}), .CDIN_FDBK_SEL({GND, GND}), .CDIN_FDBK_SEL_AD_N({VCC, 
        VCC}), .CDIN_FDBK_SEL_BYPASS(VCC), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({GND, GND}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(VCC), .C_EN(VCC), 
        .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(GND), 
        .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), .D_SRST_N(VCC), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(VCC), .PASUB_EN(VCC), .PASUB_SD_N(GND), 
        .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(VCC), .P_SRST_N(
        reset_arst_i), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), 
        .SUB_BYPASS(VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), 
        .CDOUT({WideMult_1_0_cas_0[47], WideMult_1_0_cas_0[46], 
        WideMult_1_0_cas_0[45], WideMult_1_0_cas_0[44], 
        WideMult_1_0_cas_0[43], WideMult_1_0_cas_0[42], 
        WideMult_1_0_cas_0[41], WideMult_1_0_cas_0[40], 
        WideMult_1_0_cas_0[39], WideMult_1_0_cas_0[38], 
        WideMult_1_0_cas_0[37], WideMult_1_0_cas_0[36], 
        WideMult_1_0_cas_0[35], WideMult_1_0_cas_0[34], 
        WideMult_1_0_cas_0[33], WideMult_1_0_cas_0[32], 
        WideMult_1_0_cas_0[31], WideMult_1_0_cas_0[30], 
        WideMult_1_0_cas_0[29], WideMult_1_0_cas_0[28], 
        WideMult_1_0_cas_0[27], WideMult_1_0_cas_0[26], 
        WideMult_1_0_cas_0[25], WideMult_1_0_cas_0[24], 
        WideMult_1_0_cas_0[23], WideMult_1_0_cas_0[22], 
        WideMult_1_0_cas_0[21], WideMult_1_0_cas_0[20], 
        WideMult_1_0_cas_0[19], WideMult_1_0_cas_0[18], 
        WideMult_1_0_cas_0[17], WideMult_1_0_cas_0[16], 
        WideMult_1_0_cas_0[15], WideMult_1_0_cas_0[14], 
        WideMult_1_0_cas_0[13], WideMult_1_0_cas_0[12], 
        WideMult_1_0_cas_0[11], WideMult_1_0_cas_0[10], 
        WideMult_1_0_cas_0[9], WideMult_1_0_cas_0[8], 
        WideMult_1_0_cas_0[7], WideMult_1_0_cas_0[6], 
        WideMult_1_0_cas_0[5], WideMult_1_0_cas_0[4], 
        WideMult_1_0_cas_0[3], WideMult_1_0_cas_0[2], 
        WideMult_1_0_cas_0[1], WideMult_1_0_cas_0[0]}), .OVFL_CARRYOUT(
        OVFL_CARRYOUT_1), .P({P_1[47], P_1[46], P_1[45], P_1[44], 
        P_1[43], P_1[42], P_1[41], P_1[40], P_1[39], P_1[38], P_1[37], 
        P_1[36], P_1[35], P_1[34], P_1[33], P_1[32], P_1[31], P_1[30], 
        P_0[29], P_0[28], P_0[27], P_0[26], P_0[25], P_0[24], P_0[23], 
        P_0[22], P_0[21], P_0[20], P_0[19], P_0[18], P_0[17], 
        modulated_i_2_0[16], modulated_i_2_0[15], modulated_i_2_0[14], 
        modulated_i_2_0[13], modulated_i_2_0[12], modulated_i_2_0[11], 
        modulated_i_2_0[10], modulated_i_2_0[9], modulated_i_2_0[8], 
        modulated_i_2_0[7], modulated_i_2_0[6], modulated_i_2_0[5], 
        modulated_i_2_0[4], modulated_i_2_0[3], modulated_i_2_0[2], 
        modulated_i_2_0[1], modulated_i_2_0[0]}));
    MACC_PA WideMult_0_0 (.A({GND, COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}), .AL_N(VCC), 
        .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(VCC), 
        .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(VCC), 
        .A_BYPASS(VCC), .A_EN(VCC), .A_SRST_N(VCC), .B({
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[14], 
        CORECORDIC_C0_0_DOUT_Y[13], CORECORDIC_C0_0_DOUT_Y[12], 
        CORECORDIC_C0_0_DOUT_Y[11], CORECORDIC_C0_0_DOUT_Y[10], 
        CORECORDIC_C0_0_DOUT_Y[9], CORECORDIC_C0_0_DOUT_Y[8], 
        CORECORDIC_C0_0_DOUT_Y[7], CORECORDIC_C0_0_DOUT_Y[6], 
        CORECORDIC_C0_0_DOUT_Y[5], CORECORDIC_C0_0_DOUT_Y[4], 
        CORECORDIC_C0_0_DOUT_Y[3], CORECORDIC_C0_0_DOUT_Y[2], 
        CORECORDIC_C0_0_DOUT_Y[1], CORECORDIC_C0_0_DOUT_Y[0]}), 
        .B_BYPASS(VCC), .B_EN(VCC), .B_SRST_N(VCC), .C({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CARRYIN(GND), 
        .CDIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND}), .CDIN_FDBK_SEL({GND, GND}), .CDIN_FDBK_SEL_AD_N({VCC, 
        VCC}), .CDIN_FDBK_SEL_BYPASS(VCC), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({GND, GND}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(VCC), .C_EN(VCC), 
        .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(GND), 
        .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), .D_SRST_N(VCC), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(VCC), .PASUB_EN(VCC), .PASUB_SD_N(GND), 
        .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(VCC), .P_SRST_N(
        reset_arst_i), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), 
        .SUB_BYPASS(VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), 
        .CDOUT({WideMult_1_0_cas[47], WideMult_1_0_cas[46], 
        WideMult_1_0_cas[45], WideMult_1_0_cas[44], 
        WideMult_1_0_cas[43], WideMult_1_0_cas[42], 
        WideMult_1_0_cas[41], WideMult_1_0_cas[40], 
        WideMult_1_0_cas[39], WideMult_1_0_cas[38], 
        WideMult_1_0_cas[37], WideMult_1_0_cas[36], 
        WideMult_1_0_cas[35], WideMult_1_0_cas[34], 
        WideMult_1_0_cas[33], WideMult_1_0_cas[32], 
        WideMult_1_0_cas[31], WideMult_1_0_cas[30], 
        WideMult_1_0_cas[29], WideMult_1_0_cas[28], 
        WideMult_1_0_cas[27], WideMult_1_0_cas[26], 
        WideMult_1_0_cas[25], WideMult_1_0_cas[24], 
        WideMult_1_0_cas[23], WideMult_1_0_cas[22], 
        WideMult_1_0_cas[21], WideMult_1_0_cas[20], 
        WideMult_1_0_cas[19], WideMult_1_0_cas[18], 
        WideMult_1_0_cas[17], WideMult_1_0_cas[16], 
        WideMult_1_0_cas[15], WideMult_1_0_cas[14], 
        WideMult_1_0_cas[13], WideMult_1_0_cas[12], 
        WideMult_1_0_cas[11], WideMult_1_0_cas[10], 
        WideMult_1_0_cas[9], WideMult_1_0_cas[8], WideMult_1_0_cas[7], 
        WideMult_1_0_cas[6], WideMult_1_0_cas[5], WideMult_1_0_cas[4], 
        WideMult_1_0_cas[3], WideMult_1_0_cas[2], WideMult_1_0_cas[1], 
        WideMult_1_0_cas[0]}), .OVFL_CARRYOUT(OVFL_CARRYOUT_4), .P({
        P_4[47], P_4[46], P_4[45], P_4[44], P_4[43], P_4[42], P_4[41], 
        P_4[40], P_4[39], P_4[38], P_4[37], P_4[36], P_4[35], P_4[34], 
        P_4[33], P_4[32], P_4[31], P_4[30], P_2[29], P_2[28], P_2[27], 
        P_2[26], P_2[25], P_2[24], P_2[23], P_2[22], P_2[21], P_2[20], 
        P_2[19], P_2[18], P_2[17], modulated_q_2_0[16], 
        modulated_q_2_0[15], modulated_q_2_0[14], modulated_q_2_0[13], 
        modulated_q_2_0[12], modulated_q_2_0[11], modulated_q_2_0[10], 
        modulated_q_2_0[9], modulated_q_2_0[8], modulated_q_2_0[7], 
        modulated_q_2_0[6], modulated_q_2_0[5], modulated_q_2_0[4], 
        modulated_q_2_0[3], modulated_q_2_0[2], modulated_q_2_0[1], 
        modulated_q_2_0[0]}));
    MACC_PA WideMult_1_0 (.A({GND, COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17]}), .AL_N(
        VCC), .ARSHFT17(VCC), .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(
        VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(
        VCC), .A_BYPASS(GND), .A_EN(VCC), .A_SRST_N(reset_arst_i), .B({
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[15], CORECORDIC_C0_0_DOUT_Y[14], 
        CORECORDIC_C0_0_DOUT_Y[13], CORECORDIC_C0_0_DOUT_Y[12], 
        CORECORDIC_C0_0_DOUT_Y[11], CORECORDIC_C0_0_DOUT_Y[10], 
        CORECORDIC_C0_0_DOUT_Y[9], CORECORDIC_C0_0_DOUT_Y[8], 
        CORECORDIC_C0_0_DOUT_Y[7], CORECORDIC_C0_0_DOUT_Y[6], 
        CORECORDIC_C0_0_DOUT_Y[5], CORECORDIC_C0_0_DOUT_Y[4], 
        CORECORDIC_C0_0_DOUT_Y[3], CORECORDIC_C0_0_DOUT_Y[2], 
        CORECORDIC_C0_0_DOUT_Y[1], CORECORDIC_C0_0_DOUT_Y[0]}), 
        .B_BYPASS(GND), .B_EN(VCC), .B_SRST_N(reset_arst_i), .C({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), 
        .CARRYIN(GND), .CDIN({WideMult_1_0_cas[47], 
        WideMult_1_0_cas[46], WideMult_1_0_cas[45], 
        WideMult_1_0_cas[44], WideMult_1_0_cas[43], 
        WideMult_1_0_cas[42], WideMult_1_0_cas[41], 
        WideMult_1_0_cas[40], WideMult_1_0_cas[39], 
        WideMult_1_0_cas[38], WideMult_1_0_cas[37], 
        WideMult_1_0_cas[36], WideMult_1_0_cas[35], 
        WideMult_1_0_cas[34], WideMult_1_0_cas[33], 
        WideMult_1_0_cas[32], WideMult_1_0_cas[31], 
        WideMult_1_0_cas[30], WideMult_1_0_cas[29], 
        WideMult_1_0_cas[28], WideMult_1_0_cas[27], 
        WideMult_1_0_cas[26], WideMult_1_0_cas[25], 
        WideMult_1_0_cas[24], WideMult_1_0_cas[23], 
        WideMult_1_0_cas[22], WideMult_1_0_cas[21], 
        WideMult_1_0_cas[20], WideMult_1_0_cas[19], 
        WideMult_1_0_cas[18], WideMult_1_0_cas[17], 
        WideMult_1_0_cas[16], WideMult_1_0_cas[15], 
        WideMult_1_0_cas[14], WideMult_1_0_cas[13], 
        WideMult_1_0_cas[12], WideMult_1_0_cas[11], 
        WideMult_1_0_cas[10], WideMult_1_0_cas[9], WideMult_1_0_cas[8], 
        WideMult_1_0_cas[7], WideMult_1_0_cas[6], WideMult_1_0_cas[5], 
        WideMult_1_0_cas[4], WideMult_1_0_cas[3], WideMult_1_0_cas[2], 
        WideMult_1_0_cas[1], WideMult_1_0_cas[0]}), .CDIN_FDBK_SEL({
        VCC, GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(VCC), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({GND, GND}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(VCC), .C_EN(VCC), 
        .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(GND), 
        .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), .D_SRST_N(VCC), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(VCC), .PASUB_EN(VCC), .PASUB_SD_N(GND), 
        .PASUB_SL_N(VCC), .P_BYPASS(VCC), .P_EN(VCC), .P_SRST_N(VCC), 
        .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .CDOUT({
        WideMult_2_0_cas[47], WideMult_2_0_cas[46], 
        WideMult_2_0_cas[45], WideMult_2_0_cas[44], 
        WideMult_2_0_cas[43], WideMult_2_0_cas[42], 
        WideMult_2_0_cas[41], WideMult_2_0_cas[40], 
        WideMult_2_0_cas[39], WideMult_2_0_cas[38], 
        WideMult_2_0_cas[37], WideMult_2_0_cas[36], 
        WideMult_2_0_cas[35], WideMult_2_0_cas[34], 
        WideMult_2_0_cas[33], WideMult_2_0_cas[32], 
        WideMult_2_0_cas[31], WideMult_2_0_cas[30], 
        WideMult_2_0_cas[29], WideMult_2_0_cas[28], 
        WideMult_2_0_cas[27], WideMult_2_0_cas[26], 
        WideMult_2_0_cas[25], WideMult_2_0_cas[24], 
        WideMult_2_0_cas[23], WideMult_2_0_cas[22], 
        WideMult_2_0_cas[21], WideMult_2_0_cas[20], 
        WideMult_2_0_cas[19], WideMult_2_0_cas[18], 
        WideMult_2_0_cas[17], WideMult_2_0_cas[16], 
        WideMult_2_0_cas[15], WideMult_2_0_cas[14], 
        WideMult_2_0_cas[13], WideMult_2_0_cas[12], 
        WideMult_2_0_cas[11], WideMult_2_0_cas[10], 
        WideMult_2_0_cas[9], WideMult_2_0_cas[8], WideMult_2_0_cas[7], 
        WideMult_2_0_cas[6], WideMult_2_0_cas[5], WideMult_2_0_cas[4], 
        WideMult_2_0_cas[3], WideMult_2_0_cas[2], WideMult_2_0_cas[1], 
        WideMult_2_0_cas[0]}), .OVFL_CARRYOUT(OVFL_CARRYOUT_3), .P({
        P_3[47], P_3[46], P_3[45], P_3[44], P_3[43], P_3[42], P_3[41], 
        P_3[40], P_3[39], P_3[38], P_3[37], P_3[36], P_3[35], P_3[34], 
        P_3[33], P_3[32], P_3[31], P_3[30], P_1[29], P_1[28], P_1[27], 
        P_1[26], P_1[25], P_1[24], P_1[23], P_1[22], P_1[21], P_1[20], 
        P_1[19], P_1[18], P_1[17], modulated_q_2_0[33], 
        modulated_q_2_0[32], modulated_q_2_0[31], modulated_q_2_0[30], 
        modulated_q_2_0[29], modulated_q_2_0[28], modulated_q_2_0[27], 
        modulated_q_2_0[26], modulated_q_2_0[25], modulated_q_2_0[24], 
        modulated_q_2_0[23], modulated_q_2_0[22], modulated_q_2_0[21], 
        modulated_q_2_0[20], modulated_q_2_0[19], modulated_q_2_0[18], 
        modulated_q_2_0[17]}));
    VCC VCC_Z (.Y(VCC));
    MACC_PA WideMult_1 (.A({GND, COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17]}), .AL_N(
        VCC), .ARSHFT17(VCC), .ARSHFT17_AD_N(VCC), .ARSHFT17_BYPASS(
        VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(GND), .ARSHFT17_SL_N(
        VCC), .A_BYPASS(GND), .A_EN(VCC), .A_SRST_N(reset_arst_i), .B({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[15], 
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .B_BYPASS(GND), .B_EN(VCC), .B_SRST_N(reset_arst_i), .C({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), 
        .CARRYIN(GND), .CDIN({WideMult_1_0_cas_0[47], 
        WideMult_1_0_cas_0[46], WideMult_1_0_cas_0[45], 
        WideMult_1_0_cas_0[44], WideMult_1_0_cas_0[43], 
        WideMult_1_0_cas_0[42], WideMult_1_0_cas_0[41], 
        WideMult_1_0_cas_0[40], WideMult_1_0_cas_0[39], 
        WideMult_1_0_cas_0[38], WideMult_1_0_cas_0[37], 
        WideMult_1_0_cas_0[36], WideMult_1_0_cas_0[35], 
        WideMult_1_0_cas_0[34], WideMult_1_0_cas_0[33], 
        WideMult_1_0_cas_0[32], WideMult_1_0_cas_0[31], 
        WideMult_1_0_cas_0[30], WideMult_1_0_cas_0[29], 
        WideMult_1_0_cas_0[28], WideMult_1_0_cas_0[27], 
        WideMult_1_0_cas_0[26], WideMult_1_0_cas_0[25], 
        WideMult_1_0_cas_0[24], WideMult_1_0_cas_0[23], 
        WideMult_1_0_cas_0[22], WideMult_1_0_cas_0[21], 
        WideMult_1_0_cas_0[20], WideMult_1_0_cas_0[19], 
        WideMult_1_0_cas_0[18], WideMult_1_0_cas_0[17], 
        WideMult_1_0_cas_0[16], WideMult_1_0_cas_0[15], 
        WideMult_1_0_cas_0[14], WideMult_1_0_cas_0[13], 
        WideMult_1_0_cas_0[12], WideMult_1_0_cas_0[11], 
        WideMult_1_0_cas_0[10], WideMult_1_0_cas_0[9], 
        WideMult_1_0_cas_0[8], WideMult_1_0_cas_0[7], 
        WideMult_1_0_cas_0[6], WideMult_1_0_cas_0[5], 
        WideMult_1_0_cas_0[4], WideMult_1_0_cas_0[3], 
        WideMult_1_0_cas_0[2], WideMult_1_0_cas_0[1], 
        WideMult_1_0_cas_0[0]}), .CDIN_FDBK_SEL({VCC, GND}), 
        .CDIN_FDBK_SEL_AD_N({VCC, VCC}), .CDIN_FDBK_SEL_BYPASS(VCC), 
        .CDIN_FDBK_SEL_EN(VCC), .CDIN_FDBK_SEL_SD_N({GND, GND}), 
        .CDIN_FDBK_SEL_SL_N(VCC), .CLK(clk), .C_ARST_N(VCC), .C_BYPASS(
        VCC), .C_EN(VCC), .C_SRST_N(VCC), .D({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND}), .DOTP(GND), .D_ARST_N(VCC), .D_BYPASS(VCC), .D_EN(VCC), 
        .D_SRST_N(VCC), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(VCC), .PASUB_EN(VCC), 
        .PASUB_SD_N(GND), .PASUB_SL_N(VCC), .P_BYPASS(VCC), .P_EN(VCC), 
        .P_SRST_N(VCC), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), 
        .SUB_BYPASS(VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), 
        .CDOUT({WideMult_2_0_cas_0[47], WideMult_2_0_cas_0[46], 
        WideMult_2_0_cas_0[45], WideMult_2_0_cas_0[44], 
        WideMult_2_0_cas_0[43], WideMult_2_0_cas_0[42], 
        WideMult_2_0_cas_0[41], WideMult_2_0_cas_0[40], 
        WideMult_2_0_cas_0[39], WideMult_2_0_cas_0[38], 
        WideMult_2_0_cas_0[37], WideMult_2_0_cas_0[36], 
        WideMult_2_0_cas_0[35], WideMult_2_0_cas_0[34], 
        WideMult_2_0_cas_0[33], WideMult_2_0_cas_0[32], 
        WideMult_2_0_cas_0[31], WideMult_2_0_cas_0[30], 
        WideMult_2_0_cas_0[29], WideMult_2_0_cas_0[28], 
        WideMult_2_0_cas_0[27], WideMult_2_0_cas_0[26], 
        WideMult_2_0_cas_0[25], WideMult_2_0_cas_0[24], 
        WideMult_2_0_cas_0[23], WideMult_2_0_cas_0[22], 
        WideMult_2_0_cas_0[21], WideMult_2_0_cas_0[20], 
        WideMult_2_0_cas_0[19], WideMult_2_0_cas_0[18], 
        WideMult_2_0_cas_0[17], WideMult_2_0_cas_0[16], 
        WideMult_2_0_cas_0[15], WideMult_2_0_cas_0[14], 
        WideMult_2_0_cas_0[13], WideMult_2_0_cas_0[12], 
        WideMult_2_0_cas_0[11], WideMult_2_0_cas_0[10], 
        WideMult_2_0_cas_0[9], WideMult_2_0_cas_0[8], 
        WideMult_2_0_cas_0[7], WideMult_2_0_cas_0[6], 
        WideMult_2_0_cas_0[5], WideMult_2_0_cas_0[4], 
        WideMult_2_0_cas_0[3], WideMult_2_0_cas_0[2], 
        WideMult_2_0_cas_0[1], WideMult_2_0_cas_0[0]}), .OVFL_CARRYOUT(
        OVFL_CARRYOUT_0), .P({P_0[47], P_0[46], P_0[45], P_0[44], 
        P_0[43], P_0[42], P_0[41], P_0[40], P_0[39], P_0[38], P_0[37], 
        P_0[36], P_0[35], P_0[34], P_0[33], P_0[32], P_0[31], P_0[30], 
        P[29], P[28], P[27], P[26], P[25], P[24], P[23], P[22], P[21], 
        P[20], P[19], P[18], P[17], modulated_i_2_0[33], 
        modulated_i_2_0[32], modulated_i_2_0[31], modulated_i_2_0[30], 
        modulated_i_2_0[29], modulated_i_2_0[28], modulated_i_2_0[27], 
        modulated_i_2_0[26], modulated_i_2_0[25], modulated_i_2_0[24], 
        modulated_i_2_0[23], modulated_i_2_0[22], modulated_i_2_0[21], 
        modulated_i_2_0[20], modulated_i_2_0[19], modulated_i_2_0[18], 
        modulated_i_2_0[17]}));
    GND GND_Z (.Y(GND));
    
endmodule


module phase_counter(
       phase_angle_qxu,
       phase_angle_cry_0,
       reset_arst_i,
       clk
    );
output [15:1] phase_angle_qxu;
output phase_angle_cry_0;
input  reset_arst_i;
input  clk;

    wire [14:0] phase_angle_s;
    wire [15:15] phase_angle_s_Z;
    wire [14:1] phase_angle_cry_Z;
    wire [14:1] phase_angle_cry_Y;
    wire [15:15] phase_angle_s_FCO;
    wire [15:15] phase_angle_s_Y;
    wire VCC, GND, phase_angle_s_693_FCO, phase_angle_s_693_S, 
        phase_angle_s_693_Y;
    
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[11]  (.A(VCC), .B(
        phase_angle_qxu[11]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[10]), .S(phase_angle_s[11]), .Y(
        phase_angle_cry_Y[11]), .FCO(phase_angle_cry_Z[11]));
    SLE \phase_angle[6]  (.D(phase_angle_s[6]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[6]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[5]  (.A(VCC), .B(
        phase_angle_qxu[5]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[4]), .S(phase_angle_s[5]), .Y(
        phase_angle_cry_Y[5]), .FCO(phase_angle_cry_Z[5]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[9]  (.A(VCC), .B(
        phase_angle_qxu[9]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[8]), .S(phase_angle_s[9]), .Y(
        phase_angle_cry_Y[9]), .FCO(phase_angle_cry_Z[9]));
    SLE \phase_angle[7]  (.D(phase_angle_s[7]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[7]));
    SLE \phase_angle[1]  (.D(phase_angle_s[1]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[1]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[13]  (.A(VCC), .B(
        phase_angle_qxu[13]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[12]), .S(phase_angle_s[13]), .Y(
        phase_angle_cry_Y[13]), .FCO(phase_angle_cry_Z[13]));
    SLE \phase_angle[8]  (.D(phase_angle_s[8]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[8]));
    CFG1 #( .INIT(2'h1) )  \phase_angle_RNO[0]  (.A(phase_angle_cry_0), 
        .Y(phase_angle_s[0]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[7]  (.A(VCC), .B(
        phase_angle_qxu[7]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[6]), .S(phase_angle_s[7]), .Y(
        phase_angle_cry_Y[7]), .FCO(phase_angle_cry_Z[7]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_s[15]  (.A(VCC), .B(
        phase_angle_qxu[15]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[14]), .S(phase_angle_s_Z[15]), .Y(
        phase_angle_s_Y[15]), .FCO(phase_angle_s_FCO[15]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[4]  (.A(VCC), .B(
        phase_angle_qxu[4]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[3]), .S(phase_angle_s[4]), .Y(
        phase_angle_cry_Y[4]), .FCO(phase_angle_cry_Z[4]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[12]  (.A(VCC), .B(
        phase_angle_qxu[12]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[11]), .S(phase_angle_s[12]), .Y(
        phase_angle_cry_Y[12]), .FCO(phase_angle_cry_Z[12]));
    SLE \phase_angle[11]  (.D(phase_angle_s[11]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[11]));
    ARI1 #( .INIT(20'h4AA00) )  phase_angle_s_693 (.A(VCC), .B(
        phase_angle_cry_0), .C(GND), .D(GND), .FCI(VCC), .S(
        phase_angle_s_693_S), .Y(phase_angle_s_693_Y), .FCO(
        phase_angle_s_693_FCO));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[3]  (.A(VCC), .B(
        phase_angle_qxu[3]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[2]), .S(phase_angle_s[3]), .Y(
        phase_angle_cry_Y[3]), .FCO(phase_angle_cry_Z[3]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[10]  (.A(VCC), .B(
        phase_angle_qxu[10]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[9]), .S(phase_angle_s[10]), .Y(
        phase_angle_cry_Y[10]), .FCO(phase_angle_cry_Z[10]));
    SLE \phase_angle[14]  (.D(phase_angle_s[14]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[14]));
    SLE \phase_angle[0]  (.D(phase_angle_s[0]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_cry_0));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[2]  (.A(VCC), .B(
        phase_angle_qxu[2]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[1]), .S(phase_angle_s[2]), .Y(
        phase_angle_cry_Y[2]), .FCO(phase_angle_cry_Z[2]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[14]  (.A(VCC), .B(
        phase_angle_qxu[14]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[13]), .S(phase_angle_s[14]), .Y(
        phase_angle_cry_Y[14]), .FCO(phase_angle_cry_Z[14]));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    SLE \phase_angle[3]  (.D(phase_angle_s[3]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[3]));
    SLE \phase_angle[10]  (.D(phase_angle_s[10]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[10]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[8]  (.A(VCC), .B(
        phase_angle_qxu[8]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[7]), .S(phase_angle_s[8]), .Y(
        phase_angle_cry_Y[8]), .FCO(phase_angle_cry_Z[8]));
    SLE \phase_angle[4]  (.D(phase_angle_s[4]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[4]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[6]  (.A(VCC), .B(
        phase_angle_qxu[6]), .C(GND), .D(GND), .FCI(
        phase_angle_cry_Z[5]), .S(phase_angle_s[6]), .Y(
        phase_angle_cry_Y[6]), .FCO(phase_angle_cry_Z[6]));
    SLE \phase_angle[13]  (.D(phase_angle_s[13]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[13]));
    SLE \phase_angle[9]  (.D(phase_angle_s[9]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[9]));
    SLE \phase_angle[15]  (.D(phase_angle_s_Z[15]), .CLK(clk), .EN(VCC)
        , .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND)
        , .Q(phase_angle_qxu[15]));
    ARI1 #( .INIT(20'h4AA00) )  \phase_angle_cry[1]  (.A(VCC), .B(
        phase_angle_qxu[1]), .C(GND), .D(GND), .FCI(
        phase_angle_s_693_FCO), .S(phase_angle_s[1]), .Y(
        phase_angle_cry_Y[1]), .FCO(phase_angle_cry_Z[1]));
    SLE \phase_angle[5]  (.D(phase_angle_s[5]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[5]));
    SLE \phase_angle[12]  (.D(phase_angle_s[12]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[12]));
    SLE \phase_angle[2]  (.D(phase_angle_s[2]), .CLK(clk), .EN(VCC), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), 
        .Q(phase_angle_qxu[2]));
    
endmodule


module upsampler(
       dsp_join_kb_0_d0,
       dsp_join_kb_2,
       dsp_join_kb_0_0,
       qup_mod,
       iup_mod,
       reset_c,
       reset_arst_i,
       clk
    );
input  dsp_join_kb_0_d0;
input  [1:0] dsp_join_kb_2;
input  dsp_join_kb_0_0;
output [2:1] qup_mod;
output [2:0] iup_mod;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire [3:0] dsp_join_kb_1;
    wire [3:1] count_Z;
    wire [2:1] qup_mod_0_Z;
    wire [2:1] iup_mod_0_Z;
    wire CO0, VCC, GND, iup_1_sqmuxa_i, iup6_Z;
    
    GND GND_Z (.Y(GND));
    CFG4 #( .INIT(16'h00DF) )  \count_3[0]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(dsp_join_kb_1[0]));
    CFG3 #( .INIT(8'hA8) )  \qup_mod_0[1]  (.A(dsp_join_kb_0_0), .B(
        iup6_Z), .C(reset_c), .Y(qup_mod_0_Z[1]));
    VCC VCC_Z (.Y(VCC));
    CFG3 #( .INIT(8'hA8) )  \iup_mod_0[1]  (.A(dsp_join_kb_0_d0), .B(
        iup6_Z), .C(reset_c), .Y(iup_mod_0_Z[1]));
    SLE \count[3]  (.D(dsp_join_kb_1[3]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[3]));
    SLE \iup_mod_Z[2]  (.D(iup_mod_0_Z[2]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(iup_mod[2])
        );
    SLE \count[0]  (.D(dsp_join_kb_1[0]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        CO0));
    CFG3 #( .INIT(8'h54) )  \iup_mod_0[2]  (.A(dsp_join_kb_2[1]), .B(
        iup6_Z), .C(reset_c), .Y(iup_mod_0_Z[2]));
    SLE \iup_mod_Z[1]  (.D(iup_mod_0_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(iup_mod[1])
        );
    SLE \iup_mod_Z[0]  (.D(iup_1_sqmuxa_i), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(iup_mod[0])
        );
    CFG2 #( .INIT(4'hE) )  \iup_mod_RNO[0]  (.A(iup6_Z), .B(reset_c), 
        .Y(iup_1_sqmuxa_i));
    SLE \qup_mod_Z[2]  (.D(qup_mod_0_Z[2]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(qup_mod[2])
        );
    CFG4 #( .INIT(16'h0FD0) )  \count_3[1]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(dsp_join_kb_1[1]));
    CFG3 #( .INIT(8'h6A) )  \count_RNO[2]  (.A(count_Z[2]), .B(
        count_Z[1]), .C(CO0), .Y(dsp_join_kb_1[2]));
    SLE \qup_mod_Z[1]  (.D(qup_mod_0_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(qup_mod[1])
        );
    CFG3 #( .INIT(8'h54) )  \qup_mod_0[2]  (.A(dsp_join_kb_2[0]), .B(
        iup6_Z), .C(reset_c), .Y(qup_mod_0_Z[2]));
    SLE \count[1]  (.D(dsp_join_kb_1[1]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[1]));
    CFG4 #( .INIT(16'h0001) )  iup6 (.A(count_Z[3]), .B(count_Z[2]), 
        .C(count_Z[1]), .D(CO0), .Y(iup6_Z));
    CFG4 #( .INIT(16'h6A8A) )  \count_3[3]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(dsp_join_kb_1[3]));
    SLE \count[2]  (.D(dsp_join_kb_1[2]), .CLK(clk), .EN(VCC), .ALn(
        VCC), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[2]));
    
endmodule


module four_pr(
       dsp_join_kb_2,
       dsp_join_kb_0_d0,
       dsp_join_kb_0_0,
       reset_c,
       reset_arst_i,
       clk
    );
output [1:0] dsp_join_kb_2;
output dsp_join_kb_0_d0;
output dsp_join_kb_0_0;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire [2:2] q_2_Z;
    wire [3:1] count_Z;
    wire [3:0] count_0_Z;
    wire VCC, q11_or, GND, CO0, q11_0_Z;
    
    GND GND_Z (.Y(GND));
    CFG4 #( .INIT(16'h4A8A) )  \count_0[3]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(count_0_Z[3]));
    VCC VCC_Z (.Y(VCC));
    SLE \count[3]  (.D(count_0_Z[3]), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[3]));
    SLE \q[2]  (.D(q_2_Z[2]), .CLK(clk), .EN(q11_or), .ALn(VCC), .ADn(
        VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        dsp_join_kb_0_d0));
    SLE \count[0]  (.D(count_0_Z[0]), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(CO0));
    CFG4 #( .INIT(16'h0FD0) )  \count_0[1]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(count_0_Z[1]));
    CFG4 #( .INIT(16'h1CCC) )  \count_0[2]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(count_0_Z[2]));
    CFG4 #( .INIT(16'h00DF) )  \count_0[0]  (.A(count_Z[3]), .B(
        count_Z[2]), .C(count_Z[1]), .D(CO0), .Y(count_0_Z[0]));
    CFG2 #( .INIT(4'h6) )  \q_2[2]  (.A(dsp_join_kb_0_0), .B(
        dsp_join_kb_2[1]), .Y(q_2_Z[2]));
    SLE \q[3]  (.D(dsp_join_kb_0_0), .CLK(clk), .EN(q11_or), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        dsp_join_kb_2[1]));
    SLE \count[1]  (.D(count_0_Z[1]), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[1]));
    SLE \q[1]  (.D(dsp_join_kb_0_d0), .CLK(clk), .EN(q11_or), .ALn(VCC)
        , .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        dsp_join_kb_2[0]));
    SLE \q[0]  (.D(dsp_join_kb_2[0]), .CLK(clk), .EN(q11_or), .ALn(VCC)
        , .ADn(VCC), .SLn(reset_arst_i), .SD(VCC), .LAT(GND), .Q(
        dsp_join_kb_0_0));
    CFG2 #( .INIT(4'h1) )  q11_0 (.A(count_Z[1]), .B(count_Z[3]), .Y(
        q11_0_Z));
    CFG4 #( .INIT(16'hCCDC) )  q11_0_RNISREJH (.A(count_Z[2]), .B(
        reset_c), .C(q11_0_Z), .D(CO0), .Y(q11_or));
    SLE \count[2]  (.D(count_0_Z[2]), .CLK(clk), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(GND), .Q(
        count_Z[2]));
    
endmodule


module enum_kitDelay_reg_4_7_1_0(
       iup_mod,
       data_pad_out,
       reset_c,
       clk,
       reset_arst_i
    );
input  [2:1] iup_mod;
output [2:1] data_pad_out;
input  reset_c;
input  clk;
input  reset_arst_i;

    wire [2:1] delayLine_5_5_0;
    wire [2:1] delayLine_5_5_RNO_0;
    wire [2:1] delayLine_4_4_0;
    wire [2:1] delayLine_4_4_RNO_0;
    wire [2:1] delayLine_3_3_0;
    wire [2:1] delayLine_3_3_RNO_0;
    wire [2:1] delayLine_2_2_0;
    wire [2:1] delayLine_2_2_RNO_0;
    wire [2:1] delayLine_1_1_0;
    wire [2:1] delayLine_1_1_RNO_0;
    wire [2:1] delayLine_0_0_0;
    wire [2:1] delayLine_0_0_RNO_0;
    wire [2:1] delayLine_6_6_RNO_0;
    wire VCC, GND;
    
    GND GND_Z (.Y(GND));
    SLE \delayLine_1_1[1]  (.D(delayLine_1_1_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_1_1_0[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_4_4_RNO[2]  (.A(
        delayLine_3_3_0[2]), .B(reset_c), .Y(delayLine_4_4_RNO_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_4_4_RNO[1]  (.A(
        delayLine_3_3_0[1]), .B(reset_c), .Y(delayLine_4_4_RNO_0[1]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine_4_4[1]  (.D(delayLine_4_4_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_4_4_0[1]));
    SLE \delayLine_0_0[1]  (.D(delayLine_0_0_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_0_0_0[1]));
    SLE \delayLine_3_3[2]  (.D(delayLine_3_3_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_3_3_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_0_0_RNO[2]  (.A(iup_mod[2]), .B(
        reset_c), .Y(delayLine_0_0_RNO_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_6_6_RNO[2]  (.A(
        delayLine_5_5_0[2]), .B(reset_c), .Y(delayLine_6_6_RNO_0[2]));
    SLE \delayLine_3_3[1]  (.D(delayLine_3_3_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_3_3_0[1]));
    SLE \delayLine_5_5[2]  (.D(delayLine_5_5_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_5_5_0[2]));
    SLE \delayLine_2_2[2]  (.D(delayLine_2_2_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_2_2_0[2]));
    SLE \delayLine_2_2[1]  (.D(delayLine_2_2_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_2_2_0[1]));
    SLE \delayLine_0_0[2]  (.D(delayLine_0_0_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_0_0_0[2]));
    SLE \delayLine_1_1[2]  (.D(delayLine_1_1_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_1_1_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_6_6_RNO[1]  (.A(
        delayLine_5_5_0[1]), .B(reset_c), .Y(delayLine_6_6_RNO_0[1]));
    SLE \delayLine_6_6[2]  (.D(delayLine_6_6_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(data_pad_out[2]));
    SLE \delayLine_4_4[2]  (.D(delayLine_4_4_RNO_0[2]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_4_4_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_5_RNO[2]  (.A(
        delayLine_4_4_0[2]), .B(reset_c), .Y(delayLine_5_5_RNO_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_3_3_RNO[1]  (.A(
        delayLine_2_2_0[1]), .B(reset_c), .Y(delayLine_3_3_RNO_0[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_0_0_RNO[1]  (.A(iup_mod[1]), .B(
        reset_c), .Y(delayLine_0_0_RNO_0[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_5_RNO[1]  (.A(
        delayLine_4_4_0[1]), .B(reset_c), .Y(delayLine_5_5_RNO_0[1]));
    SLE \delayLine_5_5[1]  (.D(delayLine_5_5_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(delayLine_5_5_0[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_2_2_RNO[2]  (.A(
        delayLine_1_1_0[2]), .B(reset_c), .Y(delayLine_2_2_RNO_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_1_1_RNO[1]  (.A(
        delayLine_0_0_0[1]), .B(reset_c), .Y(delayLine_1_1_RNO_0[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_3_3_RNO[2]  (.A(
        delayLine_2_2_0[2]), .B(reset_c), .Y(delayLine_3_3_RNO_0[2]));
    CFG2 #( .INIT(4'h2) )  \delayLine_2_2_RNO[1]  (.A(
        delayLine_1_1_0[1]), .B(reset_c), .Y(delayLine_2_2_RNO_0[1]));
    SLE \delayLine_6_6[1]  (.D(delayLine_6_6_RNO_0[1]), .CLK(clk), .EN(
        VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(
        GND), .Q(data_pad_out[1]));
    CFG2 #( .INIT(4'h2) )  \delayLine_1_1_RNO[2]  (.A(
        delayLine_0_0_0[2]), .B(reset_c), .Y(delayLine_1_1_RNO_0[2]));
    
endmodule


module enum_kitDelay_bit_reg_2_1(
       delayLine,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
input  [2:1] delayLine;
output coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_5_fast_0;
    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine_Z[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(coef_on_minus_row));
    VCC VCC_Z (.Y(VCC));
    CFG2 #( .INIT(4'h2) )  \delayLine_5_fast[0]  (.A(delayLine[1]), .B(
        delayLine[2]), .Y(delayLine_5_fast_0[0]));
    SLE \delayLine[0]  (.D(delayLine_5_fast_0[0]), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_pad_g5_3_2_2_0_12_0_4_1_0(
       delayLine,
       data_pad_out,
       iup_mod,
       coef_on_minus_row,
       reset_arst_i,
       clk,
       reset_c
    );
input  [2:1] delayLine;
output [2:1] data_pad_out;
input  [2:1] iup_mod;
output coef_on_minus_row;
input  reset_arst_i;
input  clk;
input  reset_c;

    wire GND, VCC;
    
    enum_kitDelay_reg_4_7_1_0 data_pipe_0 (.iup_mod({iup_mod[2], 
        iup_mod[1]}), .data_pad_out({data_pad_out[2], data_pad_out[1]})
        , .reset_c(reset_c), .clk(clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_kitDelay_bit_reg_2_1 dvalid_pipe_1 (.delayLine({delayLine[2], 
        delayLine[1]}), .coef_on_minus_row(coef_on_minus_row), .clk(
        clk), .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_2(
       coef_on_minus_nibble,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
output coef_on_minus_nibble;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on_minus_nibble));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_2(
       coef_on,
       coef_on_minus_nibble,
       clk,
       reset_arst_i
    );
output coef_on;
input  coef_on_minus_nibble;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_nibble), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_8layer1_0(
       data_w_3,
       cd_w_2,
       data_w_2,
       cd_w_3,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_3;
input  [47:0] cd_w_2;
input  [17:0] data_w_2;
output [47:0] cd_w_3;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_14, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .CDOUT({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_14), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_7layer1_0(
       cd_w_3,
       data_w_2,
       cd_w_2,
       data_w_3,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_3;
input  [17:0] data_w_2;
input  [47:0] cd_w_2;
output [17:0] data_w_3;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_8layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_10layer1_0(
       data_w_1,
       data_pad_out,
       cd_w_1,
       coef_on,
       clk,
       reset_arst_i,
       b_en4rst_1z,
       reset_c,
       systola
    );
output [17:0] data_w_1;
input  [2:0] data_pad_out;
output [47:0] cd_w_1;
input  coef_on;
input  clk;
input  reset_arst_i;
output b_en4rst_1z;
input  reset_c;
input  systola;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_10, GND, VCC;
    
    CFG2 #( .INIT(4'hE) )  b_en4rst (.A(systola), .B(reset_c), .Y(
        b_en4rst_1z));
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[2], 
        data_pad_out[2], data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .B2_BYPASS(GND), .B2_EN(b_en4rst_1z), 
        .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), .B_EN(b_en4rst_1z), 
        .B_SRST_N(reset_arst_i), .C({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND}), .CARRYIN(GND), .CDIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CDIN_FDBK_SEL({
        GND, GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst_1z), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst_1z), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst_1z), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, 
        GND, GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(
        VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(
        VCC), .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], 
        B2[11], B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], 
        B2[3], B2[2], B2[1], B2[0]}), .BCOUT({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .CDOUT({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT_10), .P({P[47], 
        P[46], P[45], P[44], P[43], P[42], P[41], P[40], P[39], P[38], 
        P[37], P[36], P[35], P[34], P[33], P[32], P[31], P[30], P[29], 
        P[28], P[27], P[26], P[25], P[24], P[23], P[22], P[21], P[20], 
        P[19], P[18], P[17], P[16], P[15], P[14], P[13], P[12], P[11], 
        P[10], P[9], P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], 
        P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_5layer1_0(
       cd_w_1,
       data_pad_out,
       data_w_1,
       systola,
       reset_c,
       b_en4rst,
       reset_arst_i,
       clk,
       coef_on
    );
output [47:0] cd_w_1;
input  [2:0] data_pad_out;
output [17:0] data_w_1;
input  systola;
input  reset_c;
output b_en4rst;
input  reset_arst_i;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_10layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], cd_w_1[45], 
        cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], 
        cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], 
        cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], 
        cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], 
        cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], 
        cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], 
        cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], 
        cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], 
        cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), 
        .coef_on(coef_on), .clk(clk), .reset_arst_i(reset_arst_i), 
        .b_en4rst_1z(b_en4rst), .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_7layer1_0(
       data_w_4,
       cd_w_3,
       data_w_3,
       cd_w_4,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_4;
input  [47:0] cd_w_3;
input  [17:0] data_w_3;
output [47:0] cd_w_4;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_13, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .CDOUT({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_13), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_8layer1_0(
       cd_w_4,
       data_w_3,
       cd_w_3,
       data_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_4;
input  [17:0] data_w_3;
input  [47:0] cd_w_3;
output [17:0] data_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_7layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_9layer1_0(
       data_w_2,
       cd_w_1,
       data_w_1,
       cd_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_2;
input  [47:0] cd_w_1;
input  [17:0] data_w_1;
output [47:0] cd_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_12, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_1[17], data_w_1[16], data_w_1[15], 
        data_w_1[14], data_w_1[13], data_w_1[12], data_w_1[11], 
        data_w_1[10], data_w_1[9], data_w_1[8], data_w_1[7], 
        data_w_1[6], data_w_1[5], data_w_1[4], data_w_1[3], 
        data_w_1[2], data_w_1[1], data_w_1[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], 
        cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], 
        cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], 
        cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], 
        cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], 
        cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], 
        cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], 
        cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], 
        cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], 
        cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .CDOUT({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_12), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_6layer1_0(
       cd_w_2,
       data_w_1,
       cd_w_1,
       data_w_2,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_2;
input  [17:0] data_w_1;
input  [47:0] cd_w_1;
output [17:0] data_w_2;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_9layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_5layer1_0(
       cd_w_5,
       data_w_5,
       p_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
input  [47:0] cd_w_5;
input  [17:0] data_w_5;
output [47:0] p_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] cdout;
    wire [17:0] B2;
    wire [17:0] bcout;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_15, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_5[17], data_w_5[16], data_w_5[15], 
        data_w_5[14], data_w_5[13], data_w_5[12], data_w_5[11], 
        data_w_5[10], data_w_5[9], data_w_5[8], data_w_5[7], 
        data_w_5[6], data_w_5[5], data_w_5[4], data_w_5[3], 
        data_w_5[2], data_w_5[1], data_w_5[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND}), .CARRYIN(GND), 
        .CDIN({cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], 
        cd_w_5[43], cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], 
        cd_w_5[38], cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], 
        cd_w_5[33], cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], 
        cd_w_5[28], cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], 
        cd_w_5[23], cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], 
        cd_w_5[18], cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], 
        cd_w_5[13], cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], 
        cd_w_5[8], cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], 
        cd_w_5[3], cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({bcout[17], bcout[16], bcout[15], 
        bcout[14], bcout[13], bcout[12], bcout[11], bcout[10], 
        bcout[9], bcout[8], bcout[7], bcout[6], bcout[5], bcout[4], 
        bcout[3], bcout[2], bcout[1], bcout[0]}), .CDOUT({cdout[47], 
        cdout[46], cdout[45], cdout[44], cdout[43], cdout[42], 
        cdout[41], cdout[40], cdout[39], cdout[38], cdout[37], 
        cdout[36], cdout[35], cdout[34], cdout[33], cdout[32], 
        cdout[31], cdout[30], cdout[29], cdout[28], cdout[27], 
        cdout[26], cdout[25], cdout[24], cdout[23], cdout[22], 
        cdout[21], cdout[20], cdout[19], cdout[18], cdout[17], 
        cdout[16], cdout[15], cdout[14], cdout[13], cdout[12], 
        cdout[11], cdout[10], cdout[9], cdout[8], cdout[7], cdout[6], 
        cdout[5], cdout[4], cdout[3], cdout[2], cdout[1], cdout[0]}), 
        .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT_15), .P({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_10layer1_0(
       p_w_2,
       data_w_5,
       cd_w_5,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] p_w_2;
input  [17:0] data_w_5;
input  [47:0] cd_w_5;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_5layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.cd_w_5({cd_w_5[47], cd_w_5[46], 
        cd_w_5[45], cd_w_5[44], cd_w_5[43], cd_w_5[42], cd_w_5[41], 
        cd_w_5[40], cd_w_5[39], cd_w_5[38], cd_w_5[37], cd_w_5[36], 
        cd_w_5[35], cd_w_5[34], cd_w_5[33], cd_w_5[32], cd_w_5[31], 
        cd_w_5[30], cd_w_5[29], cd_w_5[28], cd_w_5[27], cd_w_5[26], 
        cd_w_5[25], cd_w_5[24], cd_w_5[23], cd_w_5[22], cd_w_5[21], 
        cd_w_5[20], cd_w_5[19], cd_w_5[18], cd_w_5[17], cd_w_5[16], 
        cd_w_5[15], cd_w_5[14], cd_w_5[13], cd_w_5[12], cd_w_5[11], 
        cd_w_5[10], cd_w_5[9], cd_w_5[8], cd_w_5[7], cd_w_5[6], 
        cd_w_5[5], cd_w_5[4], cd_w_5[3], cd_w_5[2], cd_w_5[1], 
        cd_w_5[0]}), .data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_6layer1_0(
       data_w_5,
       cd_w_4,
       data_w_4,
       cd_w_5,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_5;
input  [47:0] cd_w_4;
input  [17:0] data_w_4;
output [47:0] cd_w_5;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_11, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], 
        cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], 
        cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], 
        cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], 
        cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], 
        cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], 
        cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], 
        cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], 
        cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], 
        cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .CDOUT({
        cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], cd_w_5[43], 
        cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], cd_w_5[38], 
        cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], cd_w_5[33], 
        cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], cd_w_5[28], 
        cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], cd_w_5[23], 
        cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], cd_w_5[18], 
        cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], cd_w_5[13], 
        cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], cd_w_5[8], 
        cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], cd_w_5[3], 
        cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_11), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_9layer1_0(
       cd_w_5,
       data_w_4,
       cd_w_4,
       data_w_5,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_5;
input  [17:0] data_w_4;
input  [47:0] cd_w_4;
output [17:0] data_w_5;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_6layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .cd_w_4({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .cd_w_5({cd_w_5[47], cd_w_5[46], cd_w_5[45], 
        cd_w_5[44], cd_w_5[43], cd_w_5[42], cd_w_5[41], cd_w_5[40], 
        cd_w_5[39], cd_w_5[38], cd_w_5[37], cd_w_5[36], cd_w_5[35], 
        cd_w_5[34], cd_w_5[33], cd_w_5[32], cd_w_5[31], cd_w_5[30], 
        cd_w_5[29], cd_w_5[28], cd_w_5[27], cd_w_5[26], cd_w_5[25], 
        cd_w_5[24], cd_w_5[23], cd_w_5[22], cd_w_5[21], cd_w_5[20], 
        cd_w_5[19], cd_w_5[18], cd_w_5[17], cd_w_5[16], cd_w_5[15], 
        cd_w_5[14], cd_w_5[13], cd_w_5[12], cd_w_5[11], cd_w_5[10], 
        cd_w_5[9], cd_w_5[8], cd_w_5[7], cd_w_5[6], cd_w_5[5], 
        cd_w_5[4], cd_w_5[3], cd_w_5[2], cd_w_5[1], cd_w_5[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_undernibble_3_work_corefir_pf_c0_rtl_1layer1_0(
       p_w_2,
       data_pad_out,
       coef_on,
       clk,
       reset_arst_i,
       reset_c,
       systola
    );
output [47:0] p_w_2;
input  [2:0] data_pad_out;
input  coef_on;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;

    wire [47:0] cd_w_1;
    wire [17:0] data_w_1;
    wire [47:0] cd_w_5;
    wire [17:0] data_w_4;
    wire [47:0] cd_w_4;
    wire [17:0] data_w_5;
    wire [47:0] cd_w_2;
    wire [17:0] data_w_2;
    wire [17:0] data_w_3;
    wire [47:0] cd_w_3;
    wire b_en4rst, GND, VCC;
    
    enum_tap_g5_work_corefir_pf_c0_rtl_7layer1_0 \taps.2.atap  (
        .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_2({
        data_w_2[17], data_w_2[16], data_w_2[15], data_w_2[14], 
        data_w_2[13], data_w_2[12], data_w_2[11], data_w_2[10], 
        data_w_2[9], data_w_2[8], data_w_2[7], data_w_2[6], 
        data_w_2[5], data_w_2[4], data_w_2[3], data_w_2[2], 
        data_w_2[1], data_w_2[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], 
        cd_w_2[45], cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], 
        cd_w_2[40], cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], 
        cd_w_2[35], cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], 
        cd_w_2[30], cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], 
        cd_w_2[25], cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], 
        cd_w_2[20], cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], 
        cd_w_2[15], cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], 
        cd_w_2[10], cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], 
        cd_w_2[5], cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], 
        cd_w_2[0]}), .data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_5layer1_0 left_tap_0 (.cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_pad_out({
        data_pad_out[2], data_pad_out[1], data_pad_out[0]}), .data_w_1({
        data_w_1[17], data_w_1[16], data_w_1[15], data_w_1[14], 
        data_w_1[13], data_w_1[12], data_w_1[11], data_w_1[10], 
        data_w_1[9], data_w_1[8], data_w_1[7], data_w_1[6], 
        data_w_1[5], data_w_1[4], data_w_1[3], data_w_1[2], 
        data_w_1[1], data_w_1[0]}), .systola(systola), .reset_c(
        reset_c), .b_en4rst(b_en4rst), .reset_arst_i(reset_arst_i), 
        .clk(clk), .coef_on(coef_on));
    VCC VCC_Z (.Y(VCC));
    enum_tap_g5_work_corefir_pf_c0_rtl_8layer1_0 \taps.3.atap  (
        .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], 
        cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], 
        cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], 
        cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], 
        cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], 
        cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], 
        cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], 
        cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], 
        cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], 
        cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_3({
        data_w_3[17], data_w_3[16], data_w_3[15], data_w_3[14], 
        data_w_3[13], data_w_3[12], data_w_3[11], data_w_3[10], 
        data_w_3[9], data_w_3[8], data_w_3[7], data_w_3[6], 
        data_w_3[5], data_w_3[4], data_w_3[3], data_w_3[2], 
        data_w_3[1], data_w_3[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], 
        cd_w_3[45], cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], 
        cd_w_3[40], cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], 
        cd_w_3[35], cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], 
        cd_w_3[30], cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], 
        cd_w_3[25], cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], 
        cd_w_3[20], cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], 
        cd_w_3[15], cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], 
        cd_w_3[10], cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], 
        cd_w_3[5], cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], 
        cd_w_3[0]}), .data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_6layer1_0 \taps.1.atap  (
        .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_1({
        data_w_1[17], data_w_1[16], data_w_1[15], data_w_1[14], 
        data_w_1[13], data_w_1[12], data_w_1[11], data_w_1[10], 
        data_w_1[9], data_w_1[8], data_w_1[7], data_w_1[6], 
        data_w_1[5], data_w_1[4], data_w_1[3], data_w_1[2], 
        data_w_1[1], data_w_1[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], 
        cd_w_1[45], cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], 
        cd_w_1[40], cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], 
        cd_w_1[35], cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], 
        cd_w_1[30], cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], 
        cd_w_1[25], cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], 
        cd_w_1[20], cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], 
        cd_w_1[15], cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], 
        cd_w_1[10], cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], 
        cd_w_1[5], cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], 
        cd_w_1[0]}), .data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_10layer1_0 right_tap_0 (.p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), .cd_w_5({
        cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], cd_w_5[43], 
        cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], cd_w_5[38], 
        cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], cd_w_5[33], 
        cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], cd_w_5[28], 
        cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], cd_w_5[23], 
        cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], cd_w_5[18], 
        cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], cd_w_5[13], 
        cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], cd_w_5[8], 
        cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], cd_w_5[3], 
        cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .reset_arst_i(reset_arst_i), 
        .b_en4rst(b_en4rst), .clk(clk), .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_9layer1_0 \taps.4.atap  (
        .cd_w_5({cd_w_5[47], cd_w_5[46], cd_w_5[45], cd_w_5[44], 
        cd_w_5[43], cd_w_5[42], cd_w_5[41], cd_w_5[40], cd_w_5[39], 
        cd_w_5[38], cd_w_5[37], cd_w_5[36], cd_w_5[35], cd_w_5[34], 
        cd_w_5[33], cd_w_5[32], cd_w_5[31], cd_w_5[30], cd_w_5[29], 
        cd_w_5[28], cd_w_5[27], cd_w_5[26], cd_w_5[25], cd_w_5[24], 
        cd_w_5[23], cd_w_5[22], cd_w_5[21], cd_w_5[20], cd_w_5[19], 
        cd_w_5[18], cd_w_5[17], cd_w_5[16], cd_w_5[15], cd_w_5[14], 
        cd_w_5[13], cd_w_5[12], cd_w_5[11], cd_w_5[10], cd_w_5[9], 
        cd_w_5[8], cd_w_5[7], cd_w_5[6], cd_w_5[5], cd_w_5[4], 
        cd_w_5[3], cd_w_5[2], cd_w_5[1], cd_w_5[0]}), .data_w_4({
        data_w_4[17], data_w_4[16], data_w_4[15], data_w_4[14], 
        data_w_4[13], data_w_4[12], data_w_4[11], data_w_4[10], 
        data_w_4[9], data_w_4[8], data_w_4[7], data_w_4[6], 
        data_w_4[5], data_w_4[4], data_w_4[3], data_w_4[2], 
        data_w_4[1], data_w_4[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], 
        cd_w_4[45], cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], 
        cd_w_4[40], cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], 
        cd_w_4[35], cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], 
        cd_w_4[30], cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], 
        cd_w_4[25], cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], 
        cd_w_4[20], cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], 
        cd_w_4[15], cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], 
        cd_w_4[10], cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], 
        cd_w_4[5], cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], 
        cd_w_4[0]}), .data_w_5({data_w_5[17], data_w_5[16], 
        data_w_5[15], data_w_5[14], data_w_5[13], data_w_5[12], 
        data_w_5[11], data_w_5[10], data_w_5[9], data_w_5[8], 
        data_w_5[7], data_w_5[6], data_w_5[5], data_w_5[4], 
        data_w_5[3], data_w_5[2], data_w_5[1], data_w_5[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0_2(
       systola,
       datai_validi,
       clk,
       reset_arst_i
    );
output systola;
input  datai_validi;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_nibble_work_corefir_pf_c0_rtl_1layer1_0(
       data_pad_out,
       p_w_2,
       datai_validi,
       coef_on_minus_nibble,
       reset_c,
       reset_arst_i,
       clk
    );
input  [2:0] data_pad_out;
output [47:0] p_w_2;
input  datai_validi;
input  coef_on_minus_nibble;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire coef_on, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_3_2 valid_pipe_0 (.coef_on(coef_on), 
        .coef_on_minus_nibble(coef_on_minus_nibble), .clk(clk), 
        .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_undernibble_3_work_corefir_pf_c0_rtl_1layer1_0 
        \many_tap_nibble.many_tap_nibble_0  (.p_w_2({p_w_2[47], 
        p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], 
        p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], 
        p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], 
        p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], 
        p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], 
        p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], 
        p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], 
        p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], 
        p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .coef_on(coef_on), .clk(clk), .reset_arst_i(
        reset_arst_i), .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_3_0_2 dvalid_pipe_0 (.systola(systola), 
        .datai_validi(datai_validi), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_0_1(
       datai_validi,
       datai_valid_minus_row,
       clk,
       reset_arst_i
    );
output datai_validi;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datai_validi));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_valid_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_row_g5_work_corefir_pf_c0_rtl_0layer1_0(
       p_w_2,
       data_pad_out,
       datai_valid_minus_row,
       coef_on_minus_row,
       clk,
       reset_arst_i,
       reset_c
    );
output [47:0] p_w_2;
input  [2:0] data_pad_out;
input  datai_valid_minus_row;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;

    wire datai_validi, coef_on_minus_nibble, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_2_2 valid_pipe_0 (.coef_on_minus_nibble(
        coef_on_minus_nibble), .coef_on_minus_row(coef_on_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_nibble_work_corefir_pf_c0_rtl_1layer1_0 left_nibble_0 (
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .p_w_2({p_w_2[47], p_w_2[46], p_w_2[45], 
        p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], p_w_2[40], 
        p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], p_w_2[35], 
        p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], p_w_2[30], 
        p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], p_w_2[25], 
        p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], p_w_2[20], 
        p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], p_w_2[15], 
        p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], p_w_2[10], 
        p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], p_w_2[4], 
        p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), .datai_validi(
        datai_validi), .coef_on_minus_nibble(coef_on_minus_nibble), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(clk));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_2_0_1 dvalid_pipe_0 (.datai_validi(
        datai_validi), .datai_valid_minus_row(datai_valid_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_3(
       coef_on_minus_nibble,
       coef_on_minus_row,
       clk,
       reset_arst_i
    );
output coef_on_minus_nibble;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on_minus_nibble));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_reg_48_2_0(
       p_w_2,
       cin_adv_style,
       systola,
       clk,
       reset_arst_i
    );
input  [47:0] p_w_2;
output [47:0] cin_adv_style;
input  systola;
input  clk;
input  reset_arst_i;

    wire [47:0] delayLine_0_Z;
    wire VCC, GND;
    
    SLE \delayLine_1[39]  (.D(delayLine_0_Z[39]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[39]));
    SLE \delayLine_0[39]  (.D(p_w_2[39]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[39]));
    SLE \delayLine_0[19]  (.D(p_w_2[19]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[19]));
    SLE \delayLine_1[4]  (.D(delayLine_0_Z[4]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[4]));
    SLE \delayLine_1[37]  (.D(delayLine_0_Z[37]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[37]));
    SLE \delayLine_1[19]  (.D(delayLine_0_Z[19]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[19]));
    SLE \delayLine_1[3]  (.D(delayLine_0_Z[3]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[3]));
    SLE \delayLine_0[37]  (.D(p_w_2[37]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[37]));
    SLE \delayLine_0[17]  (.D(p_w_2[17]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[17]));
    SLE \delayLine_0[28]  (.D(p_w_2[28]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[28]));
    SLE \delayLine_1[1]  (.D(delayLine_0_Z[1]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[1]));
    SLE \delayLine_1[17]  (.D(delayLine_0_Z[17]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[17]));
    SLE \delayLine_1[36]  (.D(delayLine_0_Z[36]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[36]));
    SLE \delayLine_0[36]  (.D(p_w_2[36]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[36]));
    SLE \delayLine_0[16]  (.D(p_w_2[16]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[16]));
    SLE \delayLine_1[33]  (.D(delayLine_0_Z[33]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[33]));
    SLE \delayLine_1[32]  (.D(delayLine_0_Z[32]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[32]));
    SLE \delayLine_1[29]  (.D(delayLine_0_Z[29]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[29]));
    SLE \delayLine_1[16]  (.D(delayLine_0_Z[16]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[16]));
    SLE \delayLine_0[33]  (.D(p_w_2[33]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[33]));
    SLE \delayLine_0[13]  (.D(p_w_2[13]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[13]));
    SLE \delayLine_0[32]  (.D(p_w_2[32]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[32]));
    SLE \delayLine_0[12]  (.D(p_w_2[12]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[12]));
    SLE \delayLine_1[44]  (.D(delayLine_0_Z[44]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[44]));
    SLE \delayLine_1[13]  (.D(delayLine_0_Z[13]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[13]));
    SLE \delayLine_1[27]  (.D(delayLine_0_Z[27]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[27]));
    SLE \delayLine_1[12]  (.D(delayLine_0_Z[12]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[12]));
    SLE \delayLine_0[24]  (.D(p_w_2[24]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[24]));
    SLE \delayLine_1[26]  (.D(delayLine_0_Z[26]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[26]));
    SLE \delayLine_0[9]  (.D(p_w_2[9]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[9]));
    SLE \delayLine_1[45]  (.D(delayLine_0_Z[45]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[45]));
    SLE \delayLine_1[23]  (.D(delayLine_0_Z[23]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[23]));
    SLE \delayLine_0[25]  (.D(p_w_2[25]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[25]));
    SLE \delayLine_1[40]  (.D(delayLine_0_Z[40]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[40]));
    SLE \delayLine_1[22]  (.D(delayLine_0_Z[22]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[22]));
    SLE \delayLine_0[44]  (.D(p_w_2[44]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[44]));
    SLE \delayLine_0[20]  (.D(p_w_2[20]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[20]));
    SLE \delayLine_1[38]  (.D(delayLine_0_Z[38]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[38]));
    SLE \delayLine_0[3]  (.D(p_w_2[3]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[3]));
    SLE \delayLine_0[45]  (.D(p_w_2[45]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[45]));
    SLE \delayLine_0[38]  (.D(p_w_2[38]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[38]));
    SLE \delayLine_0[18]  (.D(p_w_2[18]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[18]));
    SLE \delayLine_1[18]  (.D(delayLine_0_Z[18]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[18]));
    SLE \delayLine_0[40]  (.D(p_w_2[40]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[40]));
    SLE \delayLine_1[2]  (.D(delayLine_0_Z[2]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[2]));
    SLE \delayLine_1[34]  (.D(delayLine_0_Z[34]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[34]));
    SLE \delayLine_0[34]  (.D(p_w_2[34]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[34]));
    SLE \delayLine_0[14]  (.D(p_w_2[14]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[14]));
    SLE \delayLine_1[28]  (.D(delayLine_0_Z[28]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[28]));
    SLE \delayLine_1[14]  (.D(delayLine_0_Z[14]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[14]));
    SLE \delayLine_1[35]  (.D(delayLine_0_Z[35]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[35]));
    SLE \delayLine_0[1]  (.D(p_w_2[1]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[1]));
    SLE \delayLine_0[35]  (.D(p_w_2[35]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[35]));
    SLE \delayLine_0[15]  (.D(p_w_2[15]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[15]));
    SLE \delayLine_1[30]  (.D(delayLine_0_Z[30]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[30]));
    SLE \delayLine_1[15]  (.D(delayLine_0_Z[15]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[15]));
    SLE \delayLine_0[30]  (.D(p_w_2[30]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[30]));
    SLE \delayLine_0[10]  (.D(p_w_2[10]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[10]));
    SLE \delayLine_1[41]  (.D(delayLine_0_Z[41]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[41]));
    SLE \delayLine_1[24]  (.D(delayLine_0_Z[24]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[24]));
    SLE \delayLine_0[0]  (.D(p_w_2[0]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[0]));
    SLE \delayLine_1[10]  (.D(delayLine_0_Z[10]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[10]));
    SLE \delayLine_0[21]  (.D(p_w_2[21]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[21]));
    SLE \delayLine_1[8]  (.D(delayLine_0_Z[8]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[8]));
    SLE \delayLine_1[25]  (.D(delayLine_0_Z[25]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[25]));
    SLE \delayLine_1[20]  (.D(delayLine_0_Z[20]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[20]));
    SLE \delayLine_0[41]  (.D(p_w_2[41]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[41]));
    SLE \delayLine_1[6]  (.D(delayLine_0_Z[6]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[6]));
    SLE \delayLine_1[31]  (.D(delayLine_0_Z[31]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[31]));
    SLE \delayLine_0[8]  (.D(p_w_2[8]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[8]));
    GND GND_Z (.Y(GND));
    SLE \delayLine_0[31]  (.D(p_w_2[31]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[31]));
    SLE \delayLine_0[11]  (.D(p_w_2[11]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[11]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine_1[11]  (.D(delayLine_0_Z[11]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[11]));
    SLE \delayLine_1[9]  (.D(delayLine_0_Z[9]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[9]));
    SLE \delayLine_1[21]  (.D(delayLine_0_Z[21]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[21]));
    SLE \delayLine_0[2]  (.D(p_w_2[2]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[2]));
    SLE \delayLine_0[29]  (.D(p_w_2[29]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[29]));
    SLE \delayLine_1[47]  (.D(delayLine_0_Z[47]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[47]));
    SLE \delayLine_0[4]  (.D(p_w_2[4]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[4]));
    SLE \delayLine_1[0]  (.D(delayLine_0_Z[0]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[0]));
    SLE \delayLine_0[6]  (.D(p_w_2[6]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[6]));
    SLE \delayLine_0[27]  (.D(p_w_2[27]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[27]));
    SLE \delayLine_1[5]  (.D(delayLine_0_Z[5]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[5]));
    SLE \delayLine_1[46]  (.D(delayLine_0_Z[46]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[46]));
    SLE \delayLine_0[26]  (.D(p_w_2[26]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[26]));
    SLE \delayLine_1[43]  (.D(delayLine_0_Z[43]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[43]));
    SLE \delayLine_0[5]  (.D(p_w_2[5]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[5]));
    SLE \delayLine_1[42]  (.D(delayLine_0_Z[42]), .CLK(clk), .EN(
        systola), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(cin_adv_style[42]));
    SLE \delayLine_0[23]  (.D(p_w_2[23]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[23]));
    SLE \delayLine_0[22]  (.D(p_w_2[22]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[22]));
    SLE \delayLine_0[47]  (.D(p_w_2[47]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[47]));
    SLE \delayLine_1[7]  (.D(delayLine_0_Z[7]), .CLK(clk), .EN(systola)
        , .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND)
        , .Q(cin_adv_style[7]));
    SLE \delayLine_0[7]  (.D(p_w_2[7]), .CLK(clk), .EN(systola), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_0_Z[7]));
    SLE \delayLine_0[46]  (.D(p_w_2[46]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[46]));
    SLE \delayLine_0[43]  (.D(p_w_2[43]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[43]));
    SLE \delayLine_0[42]  (.D(p_w_2[42]), .CLK(clk), .EN(systola), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_0_Z[42]));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0_4(
       datai_validi,
       clk,
       reset_arst_i,
       systola
    );
input  datai_validi;
input  clk;
input  reset_arst_i;
output systola;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_3(
       coef_on,
       coef_on_minus_nibble,
       clk,
       reset_arst_i
    );
output coef_on;
input  coef_on_minus_nibble;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), .LAT(
        GND), .Q(coef_on));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(coef_on_minus_nibble), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(reset_arst_i), .SD(GND), 
        .LAT(GND), .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_2layer1_0(
       data_w_3,
       cd_w_2,
       data_w_2,
       cd_w_3,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_3;
input  [47:0] cd_w_2;
input  [17:0] data_w_2;
output [47:0] cd_w_3;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_17, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_2[17], data_w_2[16], data_w_2[15], 
        data_w_2[14], data_w_2[13], data_w_2[12], data_w_2[11], 
        data_w_2[10], data_w_2[9], data_w_2[8], data_w_2[7], 
        data_w_2[6], data_w_2[5], data_w_2[4], data_w_2[3], 
        data_w_2[2], data_w_2[1], data_w_2[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .CDOUT({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_17), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_2layer1_0(
       cd_w_3,
       data_w_2,
       cd_w_2,
       data_w_3,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_3;
input  [17:0] data_w_2;
input  [47:0] cd_w_2;
output [17:0] data_w_3;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_2layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), .cd_w_2({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_2({data_w_2[17], 
        data_w_2[16], data_w_2[15], data_w_2[14], data_w_2[13], 
        data_w_2[12], data_w_2[11], data_w_2[10], data_w_2[9], 
        data_w_2[8], data_w_2[7], data_w_2[6], data_w_2[5], 
        data_w_2[4], data_w_2[3], data_w_2[2], data_w_2[1], 
        data_w_2[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], 
        cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], 
        cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], 
        cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], 
        cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], 
        cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], 
        cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], 
        cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], 
        cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], 
        cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_4layer1_0(
       data_w_1,
       cin_adv_style,
       ddly_forw_2,
       cd_w_1,
       coef_on,
       clk,
       reset_arst_i,
       b_en4rst_1z,
       reset_c,
       systola
    );
output [17:0] data_w_1;
input  [47:0] cin_adv_style;
input  [3:0] ddly_forw_2;
output [47:0] cd_w_1;
input  coef_on;
input  clk;
input  reset_arst_i;
output b_en4rst_1z;
input  reset_c;
input  systola;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_16, GND, VCC;
    
    CFG2 #( .INIT(4'hE) )  b_en4rst (.A(systola), .B(reset_c), .Y(
        b_en4rst_1z));
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], ddly_forw_2[3], 
        ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]})
        , .B2_BYPASS(GND), .B2_EN(b_en4rst_1z), .B2_SRST_N(
        reset_arst_i), .B_BYPASS(GND), .B_EN(b_en4rst_1z), .B_SRST_N(
        reset_arst_i), .C({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .CARRYIN(GND), .CDIN({GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .CDIN_FDBK_SEL({GND, 
        GND}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), .CDIN_FDBK_SEL_BYPASS(
        GND), .CDIN_FDBK_SEL_EN(VCC), .CDIN_FDBK_SEL_SD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_SL_N(VCC), .CLK(clk), .C_ARST_N(GND), .C_BYPASS(
        GND), .C_EN(b_en4rst_1z), .C_SRST_N(reset_arst_i), .D({GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND}), .DOTP(GND), .D_ARST_N(GND), 
        .D_BYPASS(GND), .D_EN(b_en4rst_1z), .D_SRST_N(reset_arst_i), 
        .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), .PASUB_AD_N(VCC), 
        .PASUB_BYPASS(GND), .PASUB_EN(VCC), .PASUB_SD_N(VCC), 
        .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(b_en4rst_1z), 
        .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, GND}), 
        .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), .CDOUT({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_16), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_0layer1_0(
       cd_w_1,
       ddly_forw_2,
       cin_adv_style,
       data_w_1,
       systola,
       reset_c,
       b_en4rst,
       reset_arst_i,
       clk,
       coef_on
    );
output [47:0] cd_w_1;
input  [3:0] ddly_forw_2;
input  [47:0] cin_adv_style;
output [17:0] data_w_1;
input  systola;
input  reset_c;
output b_en4rst;
input  reset_arst_i;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_4layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), 
        .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .coef_on(coef_on), .clk(clk)
        , .reset_arst_i(reset_arst_i), .b_en4rst_1z(b_en4rst), 
        .reset_c(reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_1layer1_0(
       data_w_4,
       cd_w_3,
       data_w_3,
       cd_w_4,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_4;
input  [47:0] cd_w_3;
input  [17:0] data_w_3;
output [47:0] cd_w_4;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_19, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_3[17], data_w_3[16], data_w_3[15], 
        data_w_3[14], data_w_3[13], data_w_3[12], data_w_3[11], 
        data_w_3[10], data_w_3[9], data_w_3[8], data_w_3[7], 
        data_w_3[6], data_w_3[5], data_w_3[4], data_w_3[3], 
        data_w_3[2], data_w_3[1], data_w_3[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .CDOUT({
        cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], 
        cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], 
        cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], 
        cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], 
        cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], 
        cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], 
        cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], 
        cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], 
        cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], 
        cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_19), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_3layer1_0(
       cd_w_4,
       data_w_3,
       cd_w_3,
       data_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_4;
input  [17:0] data_w_3;
input  [47:0] cd_w_3;
output [17:0] data_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_1layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), .cd_w_3({
        cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], cd_w_3[43], 
        cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], cd_w_3[38], 
        cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], cd_w_3[33], 
        cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], cd_w_3[28], 
        cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], cd_w_3[23], 
        cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], cd_w_3[18], 
        cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], cd_w_3[13], 
        cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], cd_w_3[8], 
        cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], cd_w_3[3], 
        cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_3({data_w_3[17], 
        data_w_3[16], data_w_3[15], data_w_3[14], data_w_3[13], 
        data_w_3[12], data_w_3[11], data_w_3[10], data_w_3[9], 
        data_w_3[8], data_w_3[7], data_w_3[6], data_w_3[5], 
        data_w_3[4], data_w_3[3], data_w_3[2], data_w_3[1], 
        data_w_3[0]}), .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_3layer1_0(
       data_w_2,
       cd_w_1,
       data_w_1,
       cd_w_2,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
output [17:0] data_w_2;
input  [47:0] cd_w_1;
input  [17:0] data_w_1;
output [47:0] cd_w_2;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] P;
    wire [17:0] B2;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_18, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_1[17], data_w_1[16], data_w_1[15], 
        data_w_1[14], data_w_1[13], data_w_1[12], data_w_1[11], 
        data_w_1[10], data_w_1[9], data_w_1[8], data_w_1[7], 
        data_w_1[6], data_w_1[5], data_w_1[4], data_w_1[3], 
        data_w_1[2], data_w_1[1], data_w_1[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, 
        VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}), .CARRYIN(GND), 
        .CDIN({cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], 
        cd_w_1[43], cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], 
        cd_w_1[38], cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], 
        cd_w_1[33], cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], 
        cd_w_1[28], cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], 
        cd_w_1[23], cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], 
        cd_w_1[18], cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], 
        cd_w_1[13], cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], 
        cd_w_1[8], cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], 
        cd_w_1[3], cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .CDIN_FDBK_SEL({
        VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(GND), .C_BYPASS(GND), .C_EN(b_en4rst), 
        .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .DOTP(
        GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(b_en4rst), 
        .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), .PASUB(GND), 
        .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(VCC), 
        .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), .P_EN(
        b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, GND, 
        GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(VCC), 
        .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(VCC), 
        .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], B2[11], 
        B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], B2[3], B2[2], 
        B2[1], B2[0]}), .BCOUT({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .CDOUT({
        cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], cd_w_2[43], 
        cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], cd_w_2[38], 
        cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], cd_w_2[33], 
        cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], cd_w_2[28], 
        cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], cd_w_2[23], 
        cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], cd_w_2[18], 
        cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], cd_w_2[13], 
        cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], cd_w_2[8], 
        cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], cd_w_2[3], 
        cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .OVFL_CARRYOUT(
        MACC_PA_BC_ROM_0_OVFL_CARRYOUT_18), .P({P[47], P[46], P[45], 
        P[44], P[43], P[42], P[41], P[40], P[39], P[38], P[37], P[36], 
        P[35], P[34], P[33], P[32], P[31], P[30], P[29], P[28], P[27], 
        P[26], P[25], P[24], P[23], P[22], P[21], P[20], P[19], P[18], 
        P[17], P[16], P[15], P[14], P[13], P[12], P[11], P[10], P[9], 
        P[8], P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_1layer1_0(
       cd_w_2,
       data_w_1,
       cd_w_1,
       data_w_2,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] cd_w_2;
input  [17:0] data_w_1;
input  [47:0] cd_w_1;
output [17:0] data_w_2;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_3layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), .cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .data_w_1({data_w_1[17], 
        data_w_1[16], data_w_1[15], data_w_1[14], data_w_1[13], 
        data_w_1[12], data_w_1[11], data_w_1[10], data_w_1[9], 
        data_w_1[8], data_w_1[7], data_w_1[6], data_w_1[5], 
        data_w_1[4], data_w_1[3], data_w_1[2], data_w_1[1], 
        data_w_1[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], 
        cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], 
        cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], 
        cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], 
        cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], 
        cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], 
        cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], 
        cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], 
        cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], 
        cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), 
        .coef_on(coef_on), .clk(clk), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_0layer1_0(
       cd_w_4,
       cin_adv_style,
       data_w_4,
       COREFIR_PF_C0_1_FIRO,
       coef_on,
       clk,
       b_en4rst,
       reset_arst_i
    );
input  [47:0] cd_w_4;
input  [47:0] cin_adv_style;
input  [17:0] data_w_4;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  coef_on;
input  clk;
input  b_en4rst;
input  reset_arst_i;

    wire [47:0] cdout;
    wire [17:0] B2;
    wire [17:0] bcout;
    wire MACC_PA_BC_ROM_0_OVFL_CARRYOUT_20, GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM #( .INIT(288'h000000000000000000000000000000000000000000000000000000000000000000000000)
         )  MACC_PA_BC_ROM_0 (.A({GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}), .AL_N(
        reset_arst_i), .ARSHFT17(GND), .ARSHFT17_AD_N(VCC), 
        .ARSHFT17_BYPASS(VCC), .ARSHFT17_EN(VCC), .ARSHFT17_SD_N(VCC), 
        .ARSHFT17_SL_N(VCC), .A_BYPASS(GND), .A_EN(coef_on), .A_SRST_N(
        reset_arst_i), .B({data_w_4[17], data_w_4[16], data_w_4[15], 
        data_w_4[14], data_w_4[13], data_w_4[12], data_w_4[11], 
        data_w_4[10], data_w_4[9], data_w_4[8], data_w_4[7], 
        data_w_4[6], data_w_4[5], data_w_4[4], data_w_4[3], 
        data_w_4[2], data_w_4[1], data_w_4[0]}), .B2_BYPASS(GND), 
        .B2_EN(b_en4rst), .B2_SRST_N(reset_arst_i), .B_BYPASS(GND), 
        .B_EN(b_en4rst), .B_SRST_N(reset_arst_i), .C({
        cin_adv_style[47], cin_adv_style[46], cin_adv_style[45], 
        cin_adv_style[44], cin_adv_style[43], cin_adv_style[42], 
        cin_adv_style[41], cin_adv_style[40], cin_adv_style[39], 
        cin_adv_style[38], cin_adv_style[37], cin_adv_style[36], 
        cin_adv_style[35], cin_adv_style[34], cin_adv_style[33], 
        cin_adv_style[32], cin_adv_style[31], cin_adv_style[30], 
        cin_adv_style[29], cin_adv_style[28], cin_adv_style[27], 
        cin_adv_style[26], cin_adv_style[25], cin_adv_style[24], 
        cin_adv_style[23], cin_adv_style[22], cin_adv_style[21], 
        cin_adv_style[20], cin_adv_style[19], cin_adv_style[18], 
        cin_adv_style[17], cin_adv_style[16], cin_adv_style[15], 
        cin_adv_style[14], cin_adv_style[13], cin_adv_style[12], 
        cin_adv_style[11], cin_adv_style[10], cin_adv_style[9], 
        cin_adv_style[8], cin_adv_style[7], cin_adv_style[6], 
        cin_adv_style[5], cin_adv_style[4], cin_adv_style[3], 
        cin_adv_style[2], cin_adv_style[1], cin_adv_style[0]}), 
        .CARRYIN(GND), .CDIN({cd_w_4[47], cd_w_4[46], cd_w_4[45], 
        cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], 
        cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], 
        cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], 
        cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], 
        cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], 
        cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], 
        cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], 
        cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], 
        cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), 
        .CDIN_FDBK_SEL({VCC, VCC}), .CDIN_FDBK_SEL_AD_N({VCC, VCC}), 
        .CDIN_FDBK_SEL_BYPASS(GND), .CDIN_FDBK_SEL_EN(VCC), 
        .CDIN_FDBK_SEL_SD_N({VCC, VCC}), .CDIN_FDBK_SEL_SL_N(VCC), 
        .CLK(clk), .C_ARST_N(reset_arst_i), .C_BYPASS(GND), .C_EN(
        b_en4rst), .C_SRST_N(reset_arst_i), .D({GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND}), .DOTP(GND), .D_ARST_N(GND), .D_BYPASS(GND), .D_EN(
        b_en4rst), .D_SRST_N(reset_arst_i), .OVFL_CARRYOUT_SEL(GND), 
        .PASUB(GND), .PASUB_AD_N(VCC), .PASUB_BYPASS(GND), .PASUB_EN(
        VCC), .PASUB_SD_N(VCC), .PASUB_SL_N(VCC), .P_BYPASS(GND), 
        .P_EN(b_en4rst), .P_SRST_N(reset_arst_i), .ROM_ADDR({GND, GND, 
        GND, GND}), .SIMD(GND), .SUB(GND), .SUB_AD_N(VCC), .SUB_BYPASS(
        VCC), .SUB_EN(VCC), .SUB_SD_N(VCC), .SUB_SL_N(VCC), .USE_ROM(
        VCC), .B2({B2[17], B2[16], B2[15], B2[14], B2[13], B2[12], 
        B2[11], B2[10], B2[9], B2[8], B2[7], B2[6], B2[5], B2[4], 
        B2[3], B2[2], B2[1], B2[0]}), .BCOUT({bcout[17], bcout[16], 
        bcout[15], bcout[14], bcout[13], bcout[12], bcout[11], 
        bcout[10], bcout[9], bcout[8], bcout[7], bcout[6], bcout[5], 
        bcout[4], bcout[3], bcout[2], bcout[1], bcout[0]}), .CDOUT({
        cdout[47], cdout[46], cdout[45], cdout[44], cdout[43], 
        cdout[42], cdout[41], cdout[40], cdout[39], cdout[38], 
        cdout[37], cdout[36], cdout[35], cdout[34], cdout[33], 
        cdout[32], cdout[31], cdout[30], cdout[29], cdout[28], 
        cdout[27], cdout[26], cdout[25], cdout[24], cdout[23], 
        cdout[22], cdout[21], cdout[20], cdout[19], cdout[18], 
        cdout[17], cdout[16], cdout[15], cdout[14], cdout[13], 
        cdout[12], cdout[11], cdout[10], cdout[9], cdout[8], cdout[7], 
        cdout[6], cdout[5], cdout[4], cdout[3], cdout[2], cdout[1], 
        cdout[0]}), .OVFL_CARRYOUT(MACC_PA_BC_ROM_0_OVFL_CARRYOUT_20), 
        .P({COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[46], 
        COREFIR_PF_C0_1_FIRO[45], COREFIR_PF_C0_1_FIRO[44], 
        COREFIR_PF_C0_1_FIRO[43], COREFIR_PF_C0_1_FIRO[42], 
        COREFIR_PF_C0_1_FIRO[41], COREFIR_PF_C0_1_FIRO[40], 
        COREFIR_PF_C0_1_FIRO[39], COREFIR_PF_C0_1_FIRO[38], 
        COREFIR_PF_C0_1_FIRO[37], COREFIR_PF_C0_1_FIRO[36], 
        COREFIR_PF_C0_1_FIRO[35], COREFIR_PF_C0_1_FIRO[34], 
        COREFIR_PF_C0_1_FIRO[33], COREFIR_PF_C0_1_FIRO[32], 
        COREFIR_PF_C0_1_FIRO[31], COREFIR_PF_C0_1_FIRO[30], 
        COREFIR_PF_C0_1_FIRO[29], COREFIR_PF_C0_1_FIRO[28], 
        COREFIR_PF_C0_1_FIRO[27], COREFIR_PF_C0_1_FIRO[26], 
        COREFIR_PF_C0_1_FIRO[25], COREFIR_PF_C0_1_FIRO[24], 
        COREFIR_PF_C0_1_FIRO[23], COREFIR_PF_C0_1_FIRO[22], 
        COREFIR_PF_C0_1_FIRO[21], COREFIR_PF_C0_1_FIRO[20], 
        COREFIR_PF_C0_1_FIRO[19], COREFIR_PF_C0_1_FIRO[18], 
        COREFIR_PF_C0_1_FIRO[17], COREFIR_PF_C0_1_FIRO[16], 
        COREFIR_PF_C0_1_FIRO[15], COREFIR_PF_C0_1_FIRO[14], 
        COREFIR_PF_C0_1_FIRO[13], COREFIR_PF_C0_1_FIRO[12], 
        COREFIR_PF_C0_1_FIRO[11], COREFIR_PF_C0_1_FIRO[10], 
        COREFIR_PF_C0_1_FIRO[9], COREFIR_PF_C0_1_FIRO[8], 
        COREFIR_PF_C0_1_FIRO[7], COREFIR_PF_C0_1_FIRO[6], 
        COREFIR_PF_C0_1_FIRO[5], COREFIR_PF_C0_1_FIRO[4], 
        COREFIR_PF_C0_1_FIRO[3], COREFIR_PF_C0_1_FIRO[2], 
        COREFIR_PF_C0_1_FIRO[1], COREFIR_PF_C0_1_FIRO[0]}));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_g5_work_corefir_pf_c0_rtl_4layer1_0(
       COREFIR_PF_C0_1_FIRO,
       data_w_4,
       cin_adv_style,
       cd_w_4,
       reset_arst_i,
       b_en4rst,
       clk,
       coef_on
    );
output [47:0] COREFIR_PF_C0_1_FIRO;
input  [17:0] data_w_4;
input  [47:0] cin_adv_style;
input  [47:0] cd_w_4;
input  reset_arst_i;
input  b_en4rst;
input  clk;
input  coef_on;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    MACC_PA_BC_ROM_wrap_work_corefir_pf_c0_rtl_0layer1_0 
        MACC_PA_BC_ROM_wrap_0 (.cd_w_4({cd_w_4[47], cd_w_4[46], 
        cd_w_4[45], cd_w_4[44], cd_w_4[43], cd_w_4[42], cd_w_4[41], 
        cd_w_4[40], cd_w_4[39], cd_w_4[38], cd_w_4[37], cd_w_4[36], 
        cd_w_4[35], cd_w_4[34], cd_w_4[33], cd_w_4[32], cd_w_4[31], 
        cd_w_4[30], cd_w_4[29], cd_w_4[28], cd_w_4[27], cd_w_4[26], 
        cd_w_4[25], cd_w_4[24], cd_w_4[23], cd_w_4[22], cd_w_4[21], 
        cd_w_4[20], cd_w_4[19], cd_w_4[18], cd_w_4[17], cd_w_4[16], 
        cd_w_4[15], cd_w_4[14], cd_w_4[13], cd_w_4[12], cd_w_4[11], 
        cd_w_4[10], cd_w_4[9], cd_w_4[8], cd_w_4[7], cd_w_4[6], 
        cd_w_4[5], cd_w_4[4], cd_w_4[3], cd_w_4[2], cd_w_4[1], 
        cd_w_4[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .coef_on(coef_on), .clk(clk), 
        .b_en4rst(b_en4rst), .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_undernibble_3_work_corefir_pf_c0_rtl_0layer1_0(
       COREFIR_PF_C0_1_FIRO,
       cin_adv_style,
       ddly_forw_2,
       coef_on,
       clk,
       reset_arst_i,
       reset_c,
       systola
    );
output [47:0] COREFIR_PF_C0_1_FIRO;
input  [47:0] cin_adv_style;
input  [3:0] ddly_forw_2;
input  coef_on;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;

    wire [47:0] cd_w_1;
    wire [17:0] data_w_1;
    wire [47:0] cd_w_3;
    wire [17:0] data_w_2;
    wire [47:0] cd_w_2;
    wire [17:0] data_w_3;
    wire [47:0] cd_w_4;
    wire [17:0] data_w_4;
    wire b_en4rst, GND, VCC;
    
    enum_tap_g5_work_corefir_pf_c0_rtl_2layer1_0 \taps.2.atap  (
        .cd_w_3({cd_w_3[47], cd_w_3[46], cd_w_3[45], cd_w_3[44], 
        cd_w_3[43], cd_w_3[42], cd_w_3[41], cd_w_3[40], cd_w_3[39], 
        cd_w_3[38], cd_w_3[37], cd_w_3[36], cd_w_3[35], cd_w_3[34], 
        cd_w_3[33], cd_w_3[32], cd_w_3[31], cd_w_3[30], cd_w_3[29], 
        cd_w_3[28], cd_w_3[27], cd_w_3[26], cd_w_3[25], cd_w_3[24], 
        cd_w_3[23], cd_w_3[22], cd_w_3[21], cd_w_3[20], cd_w_3[19], 
        cd_w_3[18], cd_w_3[17], cd_w_3[16], cd_w_3[15], cd_w_3[14], 
        cd_w_3[13], cd_w_3[12], cd_w_3[11], cd_w_3[10], cd_w_3[9], 
        cd_w_3[8], cd_w_3[7], cd_w_3[6], cd_w_3[5], cd_w_3[4], 
        cd_w_3[3], cd_w_3[2], cd_w_3[1], cd_w_3[0]}), .data_w_2({
        data_w_2[17], data_w_2[16], data_w_2[15], data_w_2[14], 
        data_w_2[13], data_w_2[12], data_w_2[11], data_w_2[10], 
        data_w_2[9], data_w_2[8], data_w_2[7], data_w_2[6], 
        data_w_2[5], data_w_2[4], data_w_2[3], data_w_2[2], 
        data_w_2[1], data_w_2[0]}), .cd_w_2({cd_w_2[47], cd_w_2[46], 
        cd_w_2[45], cd_w_2[44], cd_w_2[43], cd_w_2[42], cd_w_2[41], 
        cd_w_2[40], cd_w_2[39], cd_w_2[38], cd_w_2[37], cd_w_2[36], 
        cd_w_2[35], cd_w_2[34], cd_w_2[33], cd_w_2[32], cd_w_2[31], 
        cd_w_2[30], cd_w_2[29], cd_w_2[28], cd_w_2[27], cd_w_2[26], 
        cd_w_2[25], cd_w_2[24], cd_w_2[23], cd_w_2[22], cd_w_2[21], 
        cd_w_2[20], cd_w_2[19], cd_w_2[18], cd_w_2[17], cd_w_2[16], 
        cd_w_2[15], cd_w_2[14], cd_w_2[13], cd_w_2[12], cd_w_2[11], 
        cd_w_2[10], cd_w_2[9], cd_w_2[8], cd_w_2[7], cd_w_2[6], 
        cd_w_2[5], cd_w_2[4], cd_w_2[3], cd_w_2[2], cd_w_2[1], 
        cd_w_2[0]}), .data_w_3({data_w_3[17], data_w_3[16], 
        data_w_3[15], data_w_3[14], data_w_3[13], data_w_3[12], 
        data_w_3[11], data_w_3[10], data_w_3[9], data_w_3[8], 
        data_w_3[7], data_w_3[6], data_w_3[5], data_w_3[4], 
        data_w_3[3], data_w_3[2], data_w_3[1], data_w_3[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_0layer1_0 left_tap_0 (.cd_w_1({
        cd_w_1[47], cd_w_1[46], cd_w_1[45], cd_w_1[44], cd_w_1[43], 
        cd_w_1[42], cd_w_1[41], cd_w_1[40], cd_w_1[39], cd_w_1[38], 
        cd_w_1[37], cd_w_1[36], cd_w_1[35], cd_w_1[34], cd_w_1[33], 
        cd_w_1[32], cd_w_1[31], cd_w_1[30], cd_w_1[29], cd_w_1[28], 
        cd_w_1[27], cd_w_1[26], cd_w_1[25], cd_w_1[24], cd_w_1[23], 
        cd_w_1[22], cd_w_1[21], cd_w_1[20], cd_w_1[19], cd_w_1[18], 
        cd_w_1[17], cd_w_1[16], cd_w_1[15], cd_w_1[14], cd_w_1[13], 
        cd_w_1[12], cd_w_1[11], cd_w_1[10], cd_w_1[9], cd_w_1[8], 
        cd_w_1[7], cd_w_1[6], cd_w_1[5], cd_w_1[4], cd_w_1[3], 
        cd_w_1[2], cd_w_1[1], cd_w_1[0]}), .ddly_forw_2({
        ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]})
        , .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .data_w_1({data_w_1[17], data_w_1[16], 
        data_w_1[15], data_w_1[14], data_w_1[13], data_w_1[12], 
        data_w_1[11], data_w_1[10], data_w_1[9], data_w_1[8], 
        data_w_1[7], data_w_1[6], data_w_1[5], data_w_1[4], 
        data_w_1[3], data_w_1[2], data_w_1[1], data_w_1[0]}), .systola(
        systola), .reset_c(reset_c), .b_en4rst(b_en4rst), 
        .reset_arst_i(reset_arst_i), .clk(clk), .coef_on(coef_on));
    VCC VCC_Z (.Y(VCC));
    enum_tap_g5_work_corefir_pf_c0_rtl_3layer1_0 \taps.3.atap  (
        .cd_w_4({cd_w_4[47], cd_w_4[46], cd_w_4[45], cd_w_4[44], 
        cd_w_4[43], cd_w_4[42], cd_w_4[41], cd_w_4[40], cd_w_4[39], 
        cd_w_4[38], cd_w_4[37], cd_w_4[36], cd_w_4[35], cd_w_4[34], 
        cd_w_4[33], cd_w_4[32], cd_w_4[31], cd_w_4[30], cd_w_4[29], 
        cd_w_4[28], cd_w_4[27], cd_w_4[26], cd_w_4[25], cd_w_4[24], 
        cd_w_4[23], cd_w_4[22], cd_w_4[21], cd_w_4[20], cd_w_4[19], 
        cd_w_4[18], cd_w_4[17], cd_w_4[16], cd_w_4[15], cd_w_4[14], 
        cd_w_4[13], cd_w_4[12], cd_w_4[11], cd_w_4[10], cd_w_4[9], 
        cd_w_4[8], cd_w_4[7], cd_w_4[6], cd_w_4[5], cd_w_4[4], 
        cd_w_4[3], cd_w_4[2], cd_w_4[1], cd_w_4[0]}), .data_w_3({
        data_w_3[17], data_w_3[16], data_w_3[15], data_w_3[14], 
        data_w_3[13], data_w_3[12], data_w_3[11], data_w_3[10], 
        data_w_3[9], data_w_3[8], data_w_3[7], data_w_3[6], 
        data_w_3[5], data_w_3[4], data_w_3[3], data_w_3[2], 
        data_w_3[1], data_w_3[0]}), .cd_w_3({cd_w_3[47], cd_w_3[46], 
        cd_w_3[45], cd_w_3[44], cd_w_3[43], cd_w_3[42], cd_w_3[41], 
        cd_w_3[40], cd_w_3[39], cd_w_3[38], cd_w_3[37], cd_w_3[36], 
        cd_w_3[35], cd_w_3[34], cd_w_3[33], cd_w_3[32], cd_w_3[31], 
        cd_w_3[30], cd_w_3[29], cd_w_3[28], cd_w_3[27], cd_w_3[26], 
        cd_w_3[25], cd_w_3[24], cd_w_3[23], cd_w_3[22], cd_w_3[21], 
        cd_w_3[20], cd_w_3[19], cd_w_3[18], cd_w_3[17], cd_w_3[16], 
        cd_w_3[15], cd_w_3[14], cd_w_3[13], cd_w_3[12], cd_w_3[11], 
        cd_w_3[10], cd_w_3[9], cd_w_3[8], cd_w_3[7], cd_w_3[6], 
        cd_w_3[5], cd_w_3[4], cd_w_3[3], cd_w_3[2], cd_w_3[1], 
        cd_w_3[0]}), .data_w_4({data_w_4[17], data_w_4[16], 
        data_w_4[15], data_w_4[14], data_w_4[13], data_w_4[12], 
        data_w_4[11], data_w_4[10], data_w_4[9], data_w_4[8], 
        data_w_4[7], data_w_4[6], data_w_4[5], data_w_4[4], 
        data_w_4[3], data_w_4[2], data_w_4[1], data_w_4[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_1layer1_0 \taps.1.atap  (
        .cd_w_2({cd_w_2[47], cd_w_2[46], cd_w_2[45], cd_w_2[44], 
        cd_w_2[43], cd_w_2[42], cd_w_2[41], cd_w_2[40], cd_w_2[39], 
        cd_w_2[38], cd_w_2[37], cd_w_2[36], cd_w_2[35], cd_w_2[34], 
        cd_w_2[33], cd_w_2[32], cd_w_2[31], cd_w_2[30], cd_w_2[29], 
        cd_w_2[28], cd_w_2[27], cd_w_2[26], cd_w_2[25], cd_w_2[24], 
        cd_w_2[23], cd_w_2[22], cd_w_2[21], cd_w_2[20], cd_w_2[19], 
        cd_w_2[18], cd_w_2[17], cd_w_2[16], cd_w_2[15], cd_w_2[14], 
        cd_w_2[13], cd_w_2[12], cd_w_2[11], cd_w_2[10], cd_w_2[9], 
        cd_w_2[8], cd_w_2[7], cd_w_2[6], cd_w_2[5], cd_w_2[4], 
        cd_w_2[3], cd_w_2[2], cd_w_2[1], cd_w_2[0]}), .data_w_1({
        data_w_1[17], data_w_1[16], data_w_1[15], data_w_1[14], 
        data_w_1[13], data_w_1[12], data_w_1[11], data_w_1[10], 
        data_w_1[9], data_w_1[8], data_w_1[7], data_w_1[6], 
        data_w_1[5], data_w_1[4], data_w_1[3], data_w_1[2], 
        data_w_1[1], data_w_1[0]}), .cd_w_1({cd_w_1[47], cd_w_1[46], 
        cd_w_1[45], cd_w_1[44], cd_w_1[43], cd_w_1[42], cd_w_1[41], 
        cd_w_1[40], cd_w_1[39], cd_w_1[38], cd_w_1[37], cd_w_1[36], 
        cd_w_1[35], cd_w_1[34], cd_w_1[33], cd_w_1[32], cd_w_1[31], 
        cd_w_1[30], cd_w_1[29], cd_w_1[28], cd_w_1[27], cd_w_1[26], 
        cd_w_1[25], cd_w_1[24], cd_w_1[23], cd_w_1[22], cd_w_1[21], 
        cd_w_1[20], cd_w_1[19], cd_w_1[18], cd_w_1[17], cd_w_1[16], 
        cd_w_1[15], cd_w_1[14], cd_w_1[13], cd_w_1[12], cd_w_1[11], 
        cd_w_1[10], cd_w_1[9], cd_w_1[8], cd_w_1[7], cd_w_1[6], 
        cd_w_1[5], cd_w_1[4], cd_w_1[3], cd_w_1[2], cd_w_1[1], 
        cd_w_1[0]}), .data_w_2({data_w_2[17], data_w_2[16], 
        data_w_2[15], data_w_2[14], data_w_2[13], data_w_2[12], 
        data_w_2[11], data_w_2[10], data_w_2[9], data_w_2[8], 
        data_w_2[7], data_w_2[6], data_w_2[5], data_w_2[4], 
        data_w_2[3], data_w_2[2], data_w_2[1], data_w_2[0]}), 
        .reset_arst_i(reset_arst_i), .b_en4rst(b_en4rst), .clk(clk), 
        .coef_on(coef_on));
    enum_tap_g5_work_corefir_pf_c0_rtl_4layer1_0 right_tap_0 (
        .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .data_w_4({data_w_4[17], 
        data_w_4[16], data_w_4[15], data_w_4[14], data_w_4[13], 
        data_w_4[12], data_w_4[11], data_w_4[10], data_w_4[9], 
        data_w_4[8], data_w_4[7], data_w_4[6], data_w_4[5], 
        data_w_4[4], data_w_4[3], data_w_4[2], data_w_4[1], 
        data_w_4[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .cd_w_4({cd_w_4[47], 
        cd_w_4[46], cd_w_4[45], cd_w_4[44], cd_w_4[43], cd_w_4[42], 
        cd_w_4[41], cd_w_4[40], cd_w_4[39], cd_w_4[38], cd_w_4[37], 
        cd_w_4[36], cd_w_4[35], cd_w_4[34], cd_w_4[33], cd_w_4[32], 
        cd_w_4[31], cd_w_4[30], cd_w_4[29], cd_w_4[28], cd_w_4[27], 
        cd_w_4[26], cd_w_4[25], cd_w_4[24], cd_w_4[23], cd_w_4[22], 
        cd_w_4[21], cd_w_4[20], cd_w_4[19], cd_w_4[18], cd_w_4[17], 
        cd_w_4[16], cd_w_4[15], cd_w_4[14], cd_w_4[13], cd_w_4[12], 
        cd_w_4[11], cd_w_4[10], cd_w_4[9], cd_w_4[8], cd_w_4[7], 
        cd_w_4[6], cd_w_4[5], cd_w_4[4], cd_w_4[3], cd_w_4[2], 
        cd_w_4[1], cd_w_4[0]}), .reset_arst_i(reset_arst_i), .b_en4rst(
        b_en4rst), .clk(clk), .coef_on(coef_on));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_kitDelay_bit_reg_attr_3_0_3(
       systola,
       datai_validi,
       clk,
       reset_arst_i
    );
output systola;
input  datai_validi;
input  clk;
input  reset_arst_i;

    wire [1:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        systola));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_validi), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_tap_nibble_work_corefir_pf_c0_rtl_0layer1_0(
       ddly_forw_2,
       cin_adv_style,
       COREFIR_PF_C0_1_FIRO,
       datai_validi,
       coef_on_minus_nibble,
       reset_c,
       reset_arst_i,
       clk
    );
input  [3:0] ddly_forw_2;
input  [47:0] cin_adv_style;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  datai_validi;
input  coef_on_minus_nibble;
input  reset_c;
input  reset_arst_i;
input  clk;

    wire coef_on, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_3_3 valid_pipe_0 (.coef_on(coef_on), 
        .coef_on_minus_nibble(coef_on_minus_nibble), .clk(clk), 
        .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_tap_undernibble_3_work_corefir_pf_c0_rtl_0layer1_0 
        \many_tap_nibble.many_tap_nibble_0  (.COREFIR_PF_C0_1_FIRO({
        COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[46], 
        COREFIR_PF_C0_1_FIRO[45], COREFIR_PF_C0_1_FIRO[44], 
        COREFIR_PF_C0_1_FIRO[43], COREFIR_PF_C0_1_FIRO[42], 
        COREFIR_PF_C0_1_FIRO[41], COREFIR_PF_C0_1_FIRO[40], 
        COREFIR_PF_C0_1_FIRO[39], COREFIR_PF_C0_1_FIRO[38], 
        COREFIR_PF_C0_1_FIRO[37], COREFIR_PF_C0_1_FIRO[36], 
        COREFIR_PF_C0_1_FIRO[35], COREFIR_PF_C0_1_FIRO[34], 
        COREFIR_PF_C0_1_FIRO[33], COREFIR_PF_C0_1_FIRO[32], 
        COREFIR_PF_C0_1_FIRO[31], COREFIR_PF_C0_1_FIRO[30], 
        COREFIR_PF_C0_1_FIRO[29], COREFIR_PF_C0_1_FIRO[28], 
        COREFIR_PF_C0_1_FIRO[27], COREFIR_PF_C0_1_FIRO[26], 
        COREFIR_PF_C0_1_FIRO[25], COREFIR_PF_C0_1_FIRO[24], 
        COREFIR_PF_C0_1_FIRO[23], COREFIR_PF_C0_1_FIRO[22], 
        COREFIR_PF_C0_1_FIRO[21], COREFIR_PF_C0_1_FIRO[20], 
        COREFIR_PF_C0_1_FIRO[19], COREFIR_PF_C0_1_FIRO[18], 
        COREFIR_PF_C0_1_FIRO[17], COREFIR_PF_C0_1_FIRO[16], 
        COREFIR_PF_C0_1_FIRO[15], COREFIR_PF_C0_1_FIRO[14], 
        COREFIR_PF_C0_1_FIRO[13], COREFIR_PF_C0_1_FIRO[12], 
        COREFIR_PF_C0_1_FIRO[11], COREFIR_PF_C0_1_FIRO[10], 
        COREFIR_PF_C0_1_FIRO[9], COREFIR_PF_C0_1_FIRO[8], 
        COREFIR_PF_C0_1_FIRO[7], COREFIR_PF_C0_1_FIRO[6], 
        COREFIR_PF_C0_1_FIRO[5], COREFIR_PF_C0_1_FIRO[4], 
        COREFIR_PF_C0_1_FIRO[3], COREFIR_PF_C0_1_FIRO[2], 
        COREFIR_PF_C0_1_FIRO[1], COREFIR_PF_C0_1_FIRO[0]}), 
        .cin_adv_style({cin_adv_style[47], cin_adv_style[46], 
        cin_adv_style[45], cin_adv_style[44], cin_adv_style[43], 
        cin_adv_style[42], cin_adv_style[41], cin_adv_style[40], 
        cin_adv_style[39], cin_adv_style[38], cin_adv_style[37], 
        cin_adv_style[36], cin_adv_style[35], cin_adv_style[34], 
        cin_adv_style[33], cin_adv_style[32], cin_adv_style[31], 
        cin_adv_style[30], cin_adv_style[29], cin_adv_style[28], 
        cin_adv_style[27], cin_adv_style[26], cin_adv_style[25], 
        cin_adv_style[24], cin_adv_style[23], cin_adv_style[22], 
        cin_adv_style[21], cin_adv_style[20], cin_adv_style[19], 
        cin_adv_style[18], cin_adv_style[17], cin_adv_style[16], 
        cin_adv_style[15], cin_adv_style[14], cin_adv_style[13], 
        cin_adv_style[12], cin_adv_style[11], cin_adv_style[10], 
        cin_adv_style[9], cin_adv_style[8], cin_adv_style[7], 
        cin_adv_style[6], cin_adv_style[5], cin_adv_style[4], 
        cin_adv_style[3], cin_adv_style[2], cin_adv_style[1], 
        cin_adv_style[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), .coef_on(
        coef_on), .clk(clk), .reset_arst_i(reset_arst_i), .reset_c(
        reset_c), .systola(systola));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_3_0_3 dvalid_pipe_0 (.systola(systola), 
        .datai_validi(datai_validi), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitDelay_bit_reg_attr_2_0_2(
       datai_validi,
       datai_valid_minus_row,
       clk,
       reset_arst_i
    );
output datai_validi;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;

    wire [0:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datai_validi));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(datai_valid_minus_row), .CLK(clk), .EN(VCC), 
        .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_row_g5_work_corefir_pf_c0_rtl_1layer1_0(
       p_w_2,
       COREFIR_PF_C0_1_FIRO,
       ddly_forw_2,
       datai_valid_minus_row,
       coef_on_minus_row,
       clk,
       reset_arst_i,
       reset_c
    );
input  [47:0] p_w_2;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  [3:0] ddly_forw_2;
input  datai_valid_minus_row;
input  coef_on_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;

    wire [47:0] cin_adv_style;
    wire datai_validi, coef_on_minus_nibble, systola, GND, VCC;
    
    enum_kitDelay_bit_reg_attr_2_3 valid_pipe_0 (.coef_on_minus_nibble(
        coef_on_minus_nibble), .coef_on_minus_row(coef_on_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    enum_kitDelay_reg_48_2_0 \inter_advanced.end_dly_0  (.p_w_2({
        p_w_2[47], p_w_2[46], p_w_2[45], p_w_2[44], p_w_2[43], 
        p_w_2[42], p_w_2[41], p_w_2[40], p_w_2[39], p_w_2[38], 
        p_w_2[37], p_w_2[36], p_w_2[35], p_w_2[34], p_w_2[33], 
        p_w_2[32], p_w_2[31], p_w_2[30], p_w_2[29], p_w_2[28], 
        p_w_2[27], p_w_2[26], p_w_2[25], p_w_2[24], p_w_2[23], 
        p_w_2[22], p_w_2[21], p_w_2[20], p_w_2[19], p_w_2[18], 
        p_w_2[17], p_w_2[16], p_w_2[15], p_w_2[14], p_w_2[13], 
        p_w_2[12], p_w_2[11], p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], 
        p_w_2[6], p_w_2[5], p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], 
        p_w_2[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .systola(systola), .clk(
        clk), .reset_arst_i(reset_arst_i));
    VCC VCC_Z (.Y(VCC));
    enum_kitDelay_bit_reg_attr_3_0_4 dvalid_pipe_1 (.datai_validi(
        datai_validi), .clk(clk), .reset_arst_i(reset_arst_i), 
        .systola(systola));
    enum_tap_nibble_work_corefir_pf_c0_rtl_0layer1_0 left_nibble_0 (
        .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], 
        ddly_forw_2[0]}), .cin_adv_style({cin_adv_style[47], 
        cin_adv_style[46], cin_adv_style[45], cin_adv_style[44], 
        cin_adv_style[43], cin_adv_style[42], cin_adv_style[41], 
        cin_adv_style[40], cin_adv_style[39], cin_adv_style[38], 
        cin_adv_style[37], cin_adv_style[36], cin_adv_style[35], 
        cin_adv_style[34], cin_adv_style[33], cin_adv_style[32], 
        cin_adv_style[31], cin_adv_style[30], cin_adv_style[29], 
        cin_adv_style[28], cin_adv_style[27], cin_adv_style[26], 
        cin_adv_style[25], cin_adv_style[24], cin_adv_style[23], 
        cin_adv_style[22], cin_adv_style[21], cin_adv_style[20], 
        cin_adv_style[19], cin_adv_style[18], cin_adv_style[17], 
        cin_adv_style[16], cin_adv_style[15], cin_adv_style[14], 
        cin_adv_style[13], cin_adv_style[12], cin_adv_style[11], 
        cin_adv_style[10], cin_adv_style[9], cin_adv_style[8], 
        cin_adv_style[7], cin_adv_style[6], cin_adv_style[5], 
        cin_adv_style[4], cin_adv_style[3], cin_adv_style[2], 
        cin_adv_style[1], cin_adv_style[0]}), .COREFIR_PF_C0_1_FIRO({
        COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[46], 
        COREFIR_PF_C0_1_FIRO[45], COREFIR_PF_C0_1_FIRO[44], 
        COREFIR_PF_C0_1_FIRO[43], COREFIR_PF_C0_1_FIRO[42], 
        COREFIR_PF_C0_1_FIRO[41], COREFIR_PF_C0_1_FIRO[40], 
        COREFIR_PF_C0_1_FIRO[39], COREFIR_PF_C0_1_FIRO[38], 
        COREFIR_PF_C0_1_FIRO[37], COREFIR_PF_C0_1_FIRO[36], 
        COREFIR_PF_C0_1_FIRO[35], COREFIR_PF_C0_1_FIRO[34], 
        COREFIR_PF_C0_1_FIRO[33], COREFIR_PF_C0_1_FIRO[32], 
        COREFIR_PF_C0_1_FIRO[31], COREFIR_PF_C0_1_FIRO[30], 
        COREFIR_PF_C0_1_FIRO[29], COREFIR_PF_C0_1_FIRO[28], 
        COREFIR_PF_C0_1_FIRO[27], COREFIR_PF_C0_1_FIRO[26], 
        COREFIR_PF_C0_1_FIRO[25], COREFIR_PF_C0_1_FIRO[24], 
        COREFIR_PF_C0_1_FIRO[23], COREFIR_PF_C0_1_FIRO[22], 
        COREFIR_PF_C0_1_FIRO[21], COREFIR_PF_C0_1_FIRO[20], 
        COREFIR_PF_C0_1_FIRO[19], COREFIR_PF_C0_1_FIRO[18], 
        COREFIR_PF_C0_1_FIRO[17], COREFIR_PF_C0_1_FIRO[16], 
        COREFIR_PF_C0_1_FIRO[15], COREFIR_PF_C0_1_FIRO[14], 
        COREFIR_PF_C0_1_FIRO[13], COREFIR_PF_C0_1_FIRO[12], 
        COREFIR_PF_C0_1_FIRO[11], COREFIR_PF_C0_1_FIRO[10], 
        COREFIR_PF_C0_1_FIRO[9], COREFIR_PF_C0_1_FIRO[8], 
        COREFIR_PF_C0_1_FIRO[7], COREFIR_PF_C0_1_FIRO[6], 
        COREFIR_PF_C0_1_FIRO[5], COREFIR_PF_C0_1_FIRO[4], 
        COREFIR_PF_C0_1_FIRO[3], COREFIR_PF_C0_1_FIRO[2], 
        COREFIR_PF_C0_1_FIRO[1], COREFIR_PF_C0_1_FIRO[0]}), 
        .datai_validi(datai_validi), .coef_on_minus_nibble(
        coef_on_minus_nibble), .reset_c(reset_c), .reset_arst_i(
        reset_arst_i), .clk(clk));
    GND GND_Z (.Y(GND));
    enum_kitDelay_bit_reg_attr_2_0_2 dvalid_pipe_0 (.datai_validi(
        datai_validi), .datai_valid_minus_row(datai_valid_minus_row), 
        .clk(clk), .reset_arst_i(reset_arst_i));
    
endmodule


module enum_kitDelay_reg_4_11_0(
       ddly_forw_2,
       data_pad_out,
       reset_c,
       N_179_i,
       systola,
       clk,
       reset_arst_i
    );
output [3:0] ddly_forw_2;
input  [2:0] data_pad_out;
input  reset_c;
input  N_179_i;
input  systola;
input  clk;
input  reset_arst_i;

    wire [3:0] tmp1;
    wire [1:0] tmp1_i;
    wire delayLine_seqshiftro_3, VCC, delayLine_seqshiftsri_3, GND, 
        delayLine_seqshiftro_2, delayLine_seqshiftsri_2, 
        delayLine_seqshiftro_1, delayLine_seqshiftsri_1, 
        delayLine_seqshiftro_0, delayLine_seqshiftsri_0, 
        delayLine_seqshiftro_10, delayLine_seqshiftsri_10, 
        delayLine_seqshiftro_9, delayLine_seqshiftsri_9, 
        delayLine_seqshiftro_8, delayLine_seqshiftsri_8, 
        delayLine_seqshiftro_7, delayLine_seqshiftsri_7, 
        delayLine_seqshiftro_6, delayLine_seqshiftsri_6, 
        delayLine_seqshiftro_5, delayLine_seqshiftsri_5, 
        delayLine_seqshiftro_4, delayLine_seqshiftsri_4, 
        delayLine_seqshiftro_15, delayLine_seqshiftsri_15, 
        delayLine_seqshiftro_14, delayLine_seqshiftsri_14, 
        delayLine_seqshiftro_13, delayLine_seqshiftsri_13, 
        delayLine_seqshiftro_12, delayLine_seqshiftsri_12, 
        delayLine_seqshiftro_11, delayLine_seqshiftsri_11, N_135_i, 
        N_126_i_i, N_35, N_134_i_i, N_125_i, 
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_Z, 
        delayLine_seqshiftror_0_0, delayLine_seqshiftror_10_1, 
        delayLine_seqshiftror_0, delayLine_seqshiftror_7, 
        delayLine_seqshiftror_10, N_191, delayLine_seqshiftror_4, 
        delayLine_seqshiftror_7_1, delayLine_seqshiftror_3, N_201, 
        N_200, N_182, N_183, N_184, N_189, N_192, N_193, N_194, N_121, 
        N_145, N_150, delayLine_seqshiftror_6, delayLine_seqshiftror_5, 
        NC0, NC1, NC2, NC3, NC4, NC5, NC6, NC7, NC8;
    
    RAM64x12 #( .MEMORYFILE(""), .RAMINDEX("delayLine[3:0]%16%4%SPEED%0%0%MICRO_RAM")
         )  delayLine_seqshift_delayLine_seqshift_0_0 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, N_125_i, N_134_i_i, 
        tmp1_i[1], tmp1[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(VCC), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(clk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(reset_arst_i), .R_DATA_BYPASS(GND), .R_DATA_EN(
        N_179_i), .R_DATA_SD(GND), .R_DATA_SL_N(
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_Z), .W_ADDR({
        GND, GND, tmp1[3], tmp1[2], tmp1[1], tmp1[0]}), .W_CLK(clk), 
        .W_DATA({GND, GND, GND, GND, GND, GND, GND, GND, 
        data_pad_out[2], data_pad_out[2], data_pad_out[1], 
        data_pad_out[0]}), .W_EN(systola), .ACCESS_BUSY(NC8), .R_DATA({
        NC7, NC6, NC5, NC4, NC3, NC2, NC1, NC0, ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_6_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_6), .C(N_193), .D(N_182), .Y(
        delayLine_seqshiftsri_6));
    CFG4 #( .INIT(16'hFFAE) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_9 (.A(
        delayLine_seqshiftror_4), .B(tmp1[3]), .C(
        delayLine_seqshiftror_7_1), .D(delayLine_seqshiftror_3), .Y(
        delayLine_seqshiftror_7));
    SLE delayLine_seqshiftrff_15 (.D(delayLine_seqshiftsri_15), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_15));
    CFG3 #( .INIT(8'h10) )  \delayLine_CF3_RNIFNM4K_1[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_201));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_8_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_8), .C(N_200), .D(N_183), .Y(
        delayLine_seqshiftsri_8));
    SLE delayLine_seqshiftrff_2 (.D(delayLine_seqshiftsri_2), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_2));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_10_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_10), .C(N_192), .D(N_183), 
        .Y(delayLine_seqshiftsri_10));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[3]  (.D(
        N_126_i_i), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(tmp1[3]));
    CFG3 #( .INIT(8'h20) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_5 (.A(tmp1[3]), 
        .B(N_121), .C(delayLine_seqshiftro_5), .Y(N_150));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_14_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_14), .C(N_193), .D(N_183), 
        .Y(delayLine_seqshiftsri_14));
    CFG1 #( .INIT(2'h1) )  \delayLine_CF3_RNO[0]  (.A(tmp1[0]), .Y(
        tmp1_i[0]));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_8 (.A(tmp1[3]), 
        .B(N_194), .C(delayLine_seqshiftro_11), .D(
        delayLine_seqshiftro_3), .Y(delayLine_seqshiftror_0));
    CFG3 #( .INIT(8'h08) )  \delayLine_CF3_RNIFNM4K_2[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_193));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[2]  (.D(N_35), 
        .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(tmp1[2]));
    CFG4 #( .INIT(16'hF8F0) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_2 (.A(tmp1[3]), 
        .B(delayLine_seqshiftro_1), .C(N_150), .D(N_184), .Y(
        delayLine_seqshiftror_6));
    CFG2 #( .INIT(4'h6) )  \delayLine_C3_1.SUM_0_0_x2[1]  (.A(tmp1[1]), 
        .B(tmp1[0]), .Y(N_135_i));
    CFG2 #( .INIT(4'h8) )  \delayLine_CF3_RNICH2G8[3]  (.A(tmp1[3]), 
        .B(systola), .Y(N_183));
    SLE delayLine_seqshiftrff_3 (.D(delayLine_seqshiftsri_3), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_3));
    CFG4 #( .INIT(16'hC480) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_6 (.A(tmp1[0]), 
        .B(N_189), .C(delayLine_seqshiftro_7), .D(
        delayLine_seqshiftro_6), .Y(delayLine_seqshiftror_0_0));
    SLE delayLine_seqshiftrff_4 (.D(delayLine_seqshiftsri_4), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_4));
    CFG4 #( .INIT(16'h3332) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1 (.A(
        delayLine_seqshiftror_6), .B(reset_c), .C(
        delayLine_seqshiftror_10), .D(delayLine_seqshiftror_5), .Y(
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_1_Z));
    SLE delayLine_seqshiftrff_5 (.D(delayLine_seqshiftsri_5), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_5));
    CFG3 #( .INIT(8'h10) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_10 (.A(tmp1[3]), 
        .B(N_121), .C(delayLine_seqshiftro_13), .Y(N_145));
    CFG3 #( .INIT(8'h56) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_0 (.A(tmp1[3]), 
        .B(tmp1[1]), .C(tmp1[2]), .Y(N_125_i));
    SLE delayLine_seqshiftrff_10 (.D(delayLine_seqshiftsri_10), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_10));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[1]  (.D(
        N_135_i), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), .SLn(
        VCC), .SD(GND), .LAT(GND), .Q(tmp1[1]));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_14 (.A(tmp1[3]), 
        .B(N_193), .C(delayLine_seqshiftro_12), .D(
        delayLine_seqshiftro_4), .Y(delayLine_seqshiftror_3));
    CFG4 #( .INIT(16'h37BF) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_7 (.A(tmp1[3]), 
        .B(N_191), .C(delayLine_seqshiftro_10), .D(
        delayLine_seqshiftro_2), .Y(delayLine_seqshiftror_10_1));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_3_RNO (.A(
        delayLine_seqshiftro_3), .B(reset_c), .C(N_184), .D(N_182), .Y(
        delayLine_seqshiftsri_3));
    CFG1 #( .INIT(2'h1) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO (.A(tmp1[1]), .Y(
        tmp1_i[1]));
    CFG3 #( .INIT(8'h02) )  \delayLine_CF3_RNIFNM4K_4[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_192));
    SLE delayLine_seqshiftrff_0 (.D(delayLine_seqshiftsri_0), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_0));
    CFG3 #( .INIT(8'h01) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_11 (.A(tmp1[3]), 
        .B(tmp1[1]), .C(tmp1[2]), .Y(N_189));
    CFG4 #( .INIT(16'hFFFB) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_3 (.A(
        delayLine_seqshiftror_0_0), .B(delayLine_seqshiftror_10_1), .C(
        delayLine_seqshiftror_0), .D(delayLine_seqshiftror_7), .Y(
        delayLine_seqshiftror_10));
    SLE delayLine_seqshiftrff_13 (.D(delayLine_seqshiftsri_13), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_13));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_2_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_2), .C(N_192), .D(N_182), .Y(
        delayLine_seqshiftsri_2));
    CFG4 #( .INIT(16'h4454) )  delayLine_seqshiftrff_15_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_15), .C(N_183), .D(N_121), 
        .Y(delayLine_seqshiftsri_15));
    CFG3 #( .INIT(8'h04) )  \delayLine_CF3_RNIFNM4K_3[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_191));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_1_RNO (.A(
        delayLine_seqshiftro_1), .B(reset_c), .C(N_201), .D(N_182), .Y(
        delayLine_seqshiftsri_1));
    CFG2 #( .INIT(4'h9) )  \delayLine_C3_1.N_126_i_i  (.A(N_121), .B(
        tmp1[3]), .Y(N_126_i_i));
    CFG3 #( .INIT(8'h40) )  \delayLine_CF3_RNIFNM4K_0[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_194));
    CFG4 #( .INIT(16'hC840) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_12 (.A(tmp1[3]), 
        .B(N_192), .C(delayLine_seqshiftro_8), .D(
        delayLine_seqshiftro_0), .Y(delayLine_seqshiftror_4));
    SLE delayLine_seqshiftrff_9 (.D(delayLine_seqshiftsri_9), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_9));
    SLE delayLine_seqshiftrff_14 (.D(delayLine_seqshiftsri_14), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_14));
    SLE delayLine_seqshiftrff_7 (.D(delayLine_seqshiftsri_7), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_7));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_0_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_0), .C(N_200), .D(N_182), .Y(
        delayLine_seqshiftsri_0));
    SLE_INIT #( .SLE_INITIAL_VALUE(2) )  \delayLine_CF3[0]  (.D(
        tmp1_i[0]), .CLK(clk), .EN(systola), .ALn(VCC), .ADn(VCC), 
        .SLn(VCC), .SD(GND), .LAT(GND), .Q(tmp1[0]));
    CFG3 #( .INIT(8'h20) )  \delayLine_C3_1.SUM_0_x2_i_a2_0[2]  (.A(
        tmp1[1]), .B(tmp1[2]), .C(tmp1[0]), .Y(N_184));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_5_RNO (.A(
        delayLine_seqshiftro_5), .B(reset_c), .C(N_194), .D(N_182), .Y(
        delayLine_seqshiftsri_5));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    SLE delayLine_seqshiftrff_8 (.D(delayLine_seqshiftsri_8), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_8));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_13_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_13), .C(N_194), .D(N_183), 
        .Y(delayLine_seqshiftsri_13));
    CFG3 #( .INIT(8'h6C) )  \delayLine_C3_1.SUM_0_x2_i[2]  (.A(tmp1[1])
        , .B(tmp1[2]), .C(tmp1[0]), .Y(N_35));
    SLE delayLine_seqshiftrff_11 (.D(delayLine_seqshiftsri_11), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_11));
    CFG2 #( .INIT(4'h4) )  \delayLine_CF3_RNICH2G8_0[3]  (.A(tmp1[3]), 
        .B(systola), .Y(N_182));
    CFG3 #( .INIT(8'h01) )  \delayLine_CF3_RNIFNM4K_5[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_200));
    CFG3 #( .INIT(8'h7F) )  \delayLine_CF3_RNIFNM4K[2]  (.A(tmp1[1]), 
        .B(tmp1[2]), .C(tmp1[0]), .Y(N_121));
    CFG2 #( .INIT(4'h9) )  \delayLine_CA3_1.N_134_i_i  (.A(tmp1[1]), 
        .B(tmp1[2]), .Y(N_134_i_i));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_4_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_4), .C(N_191), .D(N_182), .Y(
        delayLine_seqshiftsri_4));
    CFG4 #( .INIT(16'hF4F0) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_4 (.A(tmp1[3]), 
        .B(delayLine_seqshiftro_9), .C(N_145), .D(N_184), .Y(
        delayLine_seqshiftror_5));
    SLE delayLine_seqshiftrff_12 (.D(delayLine_seqshiftsri_12), .CLK(
        clk), .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(
        GND), .LAT(GND), .Q(delayLine_seqshiftro_12));
    CFG4 #( .INIT(16'h153F) )  
        delayLine_seqshift_delayLine_seqshift_0_0_RNO_13 (.A(
        delayLine_seqshiftro_14), .B(delayLine_seqshiftro_15), .C(
        N_201), .D(N_200), .Y(delayLine_seqshiftror_7_1));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_9_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_9), .C(N_201), .D(N_183), .Y(
        delayLine_seqshiftsri_9));
    SLE delayLine_seqshiftrff_6 (.D(delayLine_seqshiftsri_6), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_6));
    CFG4 #( .INIT(16'h5444) )  delayLine_seqshiftrff_12_RNO (.A(
        reset_c), .B(delayLine_seqshiftro_12), .C(N_191), .D(N_183), 
        .Y(delayLine_seqshiftsri_12));
    CFG4 #( .INIT(16'h4454) )  delayLine_seqshiftrff_7_RNO (.A(reset_c)
        , .B(delayLine_seqshiftro_7), .C(N_182), .D(N_121), .Y(
        delayLine_seqshiftsri_7));
    SLE delayLine_seqshiftrff_1 (.D(delayLine_seqshiftsri_1), .CLK(clk)
        , .EN(VCC), .ALn(reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(delayLine_seqshiftro_1));
    CFG4 #( .INIT(16'h3222) )  delayLine_seqshiftrff_11_RNO (.A(
        delayLine_seqshiftro_11), .B(reset_c), .C(N_184), .D(N_183), 
        .Y(delayLine_seqshiftsri_11));
    
endmodule


module enum_dly_line_18x192_4_11_1_1(
       data_pad_out,
       ddly_forw_2,
       reset_arst_i,
       clk,
       systola,
       N_179_i,
       reset_c
    );
input  [2:0] data_pad_out;
output [3:0] ddly_forw_2;
input  reset_arst_i;
input  clk;
input  systola;
input  N_179_i;
input  reset_c;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    enum_kitDelay_reg_4_11_0 \fabric_shift_reg.fabric_dly_0  (
        .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], ddly_forw_2[1], 
        ddly_forw_2[0]}), .data_pad_out({data_pad_out[2], 
        data_pad_out[1], data_pad_out[0]}), .reset_c(reset_c), 
        .N_179_i(N_179_i), .systola(systola), .clk(clk), .reset_arst_i(
        reset_arst_i));
    
endmodule


module enum_kitCountS_5_10_1_0(
       count,
       N_199,
       init_rst,
       clk_lat_end,
       N_124,
       systola,
       clk,
       reset_arst_i
    );
output [4:0] count;
input  N_199;
input  init_rst;
input  clk_lat_end;
input  N_124;
input  systola;
input  clk;
input  reset_arst_i;

    wire VCC, N_80_i, N_171_i_Z, GND, N_173, N_106_i, N_101_i, N_99_i, 
        N_118;
    
    SLE \count_Z[0]  (.D(N_173), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[0]));
    CFG3 #( .INIT(8'h82) )  \count_RNO[3]  (.A(N_199), .B(count[3]), 
        .C(N_118), .Y(N_101_i));
    CFG4 #( .INIT(16'h6A00) )  \count_RNO[2]  (.A(count[2]), .B(
        count[1]), .C(count[0]), .D(N_199), .Y(N_99_i));
    GND GND_Z (.Y(GND));
    SLE \count_Z[1]  (.D(N_80_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[1]));
    SLE \count_Z[3]  (.D(N_101_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[3]));
    SLE \count_Z[4]  (.D(N_106_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[4]));
    CFG3 #( .INIT(8'h60) )  \count_RNO[1]  (.A(count[1]), .B(count[0]), 
        .C(N_199), .Y(N_80_i));
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'hC060) )  \count_RNO[4]  (.A(count[3]), .B(
        count[4]), .C(N_199), .D(N_118), .Y(N_106_i));
    CFG3 #( .INIT(8'h7F) )  count_n3_i_o2 (.A(count[2]), .B(count[1]), 
        .C(count[0]), .Y(N_118));
    CFG2 #( .INIT(4'h2) )  count_n0_i_a2 (.A(N_199), .B(count[0]), .Y(
        N_173));
    SLE \count_Z[2]  (.D(N_99_i), .CLK(clk), .EN(N_171_i_Z), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count[2]));
    CFG4 #( .INIT(16'hFFBF) )  N_171_i (.A(systola), .B(N_124), .C(
        clk_lat_end), .D(init_rst), .Y(N_171_i_Z));
    
endmodule


module enum_kitDelay_bit_reg_7_1_0(
       clk_lat_end,
       N_4_i,
       clk,
       reset_arst_i
    );
output clk_lat_end;
input  N_4_i;
input  clk;
input  reset_arst_i;

    wire [5:0] delayLine_Z;
    wire VCC, GND;
    
    SLE \delayLine[3]  (.D(delayLine_Z[2]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[3]));
    SLE \delayLine[1]  (.D(delayLine_Z[0]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[1]));
    SLE \delayLine[5]  (.D(delayLine_Z[4]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[5]));
    SLE \delayLine[4]  (.D(delayLine_Z[3]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[4]));
    SLE \delayLine[2]  (.D(delayLine_Z[1]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[2]));
    VCC VCC_Z (.Y(VCC));
    SLE \delayLine[0]  (.D(N_4_i), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        delayLine_Z[0]));
    GND GND_Z (.Y(GND));
    SLE \delayLine[6]  (.D(delayLine_Z[5]), .CLK(clk), .EN(VCC), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(N_4_i), .SD(GND), .LAT(GND), .Q(
        clk_lat_end));
    
endmodule


module enum_g5_latency_adv_11_2_3_2_6_1_0(
       N_4_i,
       init_rst,
       FIRO_VALID_0_c,
       systola,
       N_124,
       clk,
       reset_arst_i
    );
input  N_4_i;
input  init_rst;
output FIRO_VALID_0_c;
input  systola;
input  N_124;
input  clk;
input  reset_arst_i;

    wire [4:0] count;
    wire datao_validi_Z, VCC, N_78, GND, un1_coef_on_outpi_1_i_0_1_Z, 
        clk_lat_end, N_199;
    
    enum_kitCountS_5_10_1_0 syst_counter_0 (.count({count[4], count[3], 
        count[2], count[1], count[0]}), .N_199(N_199), .init_rst(
        init_rst), .clk_lat_end(clk_lat_end), .N_124(N_124), .systola(
        systola), .clk(clk), .reset_arst_i(reset_arst_i));
    CFG3 #( .INIT(8'h20) )  rst_syst_lat_i_a2 (.A(clk_lat_end), .B(
        init_rst), .C(N_124), .Y(N_199));
    SLE datao_validi (.D(N_124), .CLK(clk), .EN(N_78), .ALn(
        reset_arst_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        datao_validi_Z));
    CFG4 #( .INIT(16'h0020) )  un1_coef_on_outpi_1_i_0_1 (.A(count[3]), 
        .B(count[2]), .C(count[1]), .D(count[0]), .Y(
        un1_coef_on_outpi_1_i_0_1_Z));
    VCC VCC_Z (.Y(VCC));
    CFG4 #( .INIT(16'h3B33) )  un1_coef_on_outpi_1_i_0 (.A(
        un1_coef_on_outpi_1_i_0_1_Z), .B(N_124), .C(count[4]), .D(
        systola), .Y(N_78));
    CFG2 #( .INIT(4'h8) )  datao_valid_pulse (.A(systola), .B(
        datao_validi_Z), .Y(FIRO_VALID_0_c));
    enum_kitDelay_bit_reg_7_1_0 shift_reg_1 (.clk_lat_end(clk_lat_end), 
        .N_4_i(N_4_i), .clk(clk), .reset_arst_i(reset_arst_i));
    GND GND_Z (.Y(GND));
    
endmodule


module enum_fir_adv_g5_work_corefir_pf_c0_rtl_0layer1_2_0(
       iup_mod,
       delayLine,
       COREFIR_PF_C0_1_FIRO,
       data_pad_out_0,
       N_124,
       FIRO_VALID_0_c,
       init_rst,
       N_4_i,
       N_179_i,
       systola,
       reset_c,
       reset_arst_i,
       clk,
       datai_valid_minus_row
    );
input  [2:1] iup_mod;
input  [2:1] delayLine;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  data_pad_out_0;
input  N_124;
output FIRO_VALID_0_c;
input  init_rst;
input  N_4_i;
input  N_179_i;
input  systola;
input  reset_c;
input  reset_arst_i;
input  clk;
input  datai_valid_minus_row;

    wire [47:0] p_w_2;
    wire [2:1] data_pad_out;
    wire [3:0] ddly_forw_2;
    wire coef_on_minus_row, GND, VCC;
    
    enum_pad_g5_3_2_2_0_12_0_4_1_0 enum_pad_g5_0 (.delayLine({
        delayLine[2], delayLine[1]}), .data_pad_out({data_pad_out[2], 
        data_pad_out[1]}), .iup_mod({iup_mod[2], iup_mod[1]}), 
        .coef_on_minus_row(coef_on_minus_row), .reset_arst_i(
        reset_arst_i), .clk(clk), .reset_c(reset_c));
    enum_row_g5_work_corefir_pf_c0_rtl_0layer1_0 
        \rows_higher.1.a_row_higher  (.p_w_2({p_w_2[47], p_w_2[46], 
        p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], 
        p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], 
        p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], 
        p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], 
        p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], 
        p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], 
        p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], 
        p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], 
        p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out_0}), .datai_valid_minus_row(datai_valid_minus_row)
        , .coef_on_minus_row(coef_on_minus_row), .clk(clk), 
        .reset_arst_i(reset_arst_i), .reset_c(reset_c));
    VCC VCC_Z (.Y(VCC));
    enum_row_g5_work_corefir_pf_c0_rtl_1layer1_0 
        \rows_higher.2.a_row_higher  (.p_w_2({p_w_2[47], p_w_2[46], 
        p_w_2[45], p_w_2[44], p_w_2[43], p_w_2[42], p_w_2[41], 
        p_w_2[40], p_w_2[39], p_w_2[38], p_w_2[37], p_w_2[36], 
        p_w_2[35], p_w_2[34], p_w_2[33], p_w_2[32], p_w_2[31], 
        p_w_2[30], p_w_2[29], p_w_2[28], p_w_2[27], p_w_2[26], 
        p_w_2[25], p_w_2[24], p_w_2[23], p_w_2[22], p_w_2[21], 
        p_w_2[20], p_w_2[19], p_w_2[18], p_w_2[17], p_w_2[16], 
        p_w_2[15], p_w_2[14], p_w_2[13], p_w_2[12], p_w_2[11], 
        p_w_2[10], p_w_2[9], p_w_2[8], p_w_2[7], p_w_2[6], p_w_2[5], 
        p_w_2[4], p_w_2[3], p_w_2[2], p_w_2[1], p_w_2[0]}), 
        .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .ddly_forw_2({ddly_forw_2[3], 
        ddly_forw_2[2], ddly_forw_2[1], ddly_forw_2[0]}), 
        .datai_valid_minus_row(datai_valid_minus_row), 
        .coef_on_minus_row(coef_on_minus_row), .clk(clk), 
        .reset_arst_i(reset_arst_i), .reset_c(reset_c));
    enum_dly_line_18x192_4_11_1_1 \non_symm_bus.1.dly_link_22  (
        .data_pad_out({data_pad_out[2], data_pad_out[1], 
        data_pad_out_0}), .ddly_forw_2({ddly_forw_2[3], ddly_forw_2[2], 
        ddly_forw_2[1], ddly_forw_2[0]}), .reset_arst_i(reset_arst_i), 
        .clk(clk), .systola(systola), .N_179_i(N_179_i), .reset_c(
        reset_c));
    enum_g5_latency_adv_11_2_3_2_6_1_0 latency_0 (.N_4_i(N_4_i), 
        .init_rst(init_rst), .FIRO_VALID_0_c(FIRO_VALID_0_c), .systola(
        systola), .N_124(N_124), .clk(clk), .reset_arst_i(reset_arst_i)
        );
    GND GND_Z (.Y(GND));
    
endmodule


module 
        COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5_1_11_1_0_0_12_0_4_0_0_3_2_2_1_1_1_4_2_0(
        
       data_pad_out_0,
       COREFIR_PF_C0_1_FIRO,
       delayLine,
       iup_mod,
       datai_valid_minus_row,
       clk,
       reset_arst_i,
       reset_c,
       systola,
       N_179_i,
       N_4_i,
       init_rst,
       FIRO_VALID_0_c,
       N_124
    );
input  data_pad_out_0;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  [2:1] delayLine;
input  [2:1] iup_mod;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;
input  N_179_i;
input  N_4_i;
input  init_rst;
output FIRO_VALID_0_c;
input  N_124;

    wire GND, VCC;
    
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    enum_fir_adv_g5_work_corefir_pf_c0_rtl_0layer1_2_0 
        \adv_enum.adv_enum_0  (.iup_mod({iup_mod[2], iup_mod[1]}), 
        .delayLine({delayLine[2], delayLine[1]}), 
        .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .data_pad_out_0(data_pad_out_0), 
        .N_124(N_124), .FIRO_VALID_0_c(FIRO_VALID_0_c), .init_rst(
        init_rst), .N_4_i(N_4_i), .N_179_i(N_179_i), .systola(systola), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(clk), 
        .datai_valid_minus_row(datai_valid_minus_row));
    
endmodule


module 
        COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF_work_corefir_pf_c0_rtl_0layer1_0(
        
       iup_mod,
       delayLine,
       COREFIR_PF_C0_1_FIRO,
       data_pad_out_0,
       N_124,
       FIRO_VALID_0_c,
       init_rst,
       N_4_i,
       N_179_i,
       systola,
       reset_c,
       reset_arst_i,
       clk,
       datai_valid_minus_row
    );
input  [2:1] iup_mod;
input  [2:1] delayLine;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  data_pad_out_0;
input  N_124;
output FIRO_VALID_0_c;
input  init_rst;
input  N_4_i;
input  N_179_i;
input  systola;
input  reset_c;
input  reset_arst_i;
input  clk;
input  datai_valid_minus_row;

    wire GND, VCC;
    
    
        COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5_1_11_1_0_0_12_0_4_0_0_3_2_2_1_1_1_4_2_0 
        \enum_g5.enum_fir_g5  (.data_pad_out_0(data_pad_out_0), 
        .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .delayLine({delayLine[2], 
        delayLine[1]}), .iup_mod({iup_mod[2], iup_mod[1]}), 
        .datai_valid_minus_row(datai_valid_minus_row), .clk(clk), 
        .reset_arst_i(reset_arst_i), .reset_c(reset_c), .systola(
        systola), .N_179_i(N_179_i), .N_4_i(N_4_i), .init_rst(init_rst)
        , .FIRO_VALID_0_c(FIRO_VALID_0_c), .N_124(N_124));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module COREFIR_PF_C0_0(
       data_pad_out_0,
       COREFIR_PF_C0_1_FIRO,
       delayLine,
       iup_mod,
       datai_valid_minus_row,
       clk,
       reset_arst_i,
       reset_c,
       systola,
       N_179_i,
       N_4_i,
       init_rst,
       FIRO_VALID_0_c,
       N_124
    );
input  data_pad_out_0;
output [47:0] COREFIR_PF_C0_1_FIRO;
input  [2:1] delayLine;
input  [2:1] iup_mod;
input  datai_valid_minus_row;
input  clk;
input  reset_arst_i;
input  reset_c;
input  systola;
input  N_179_i;
input  N_4_i;
input  init_rst;
output FIRO_VALID_0_c;
input  N_124;

    wire GND, VCC;
    
    
        COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF_work_corefir_pf_c0_rtl_0layer1_0 
        COREFIR_PF_C0_0 (.iup_mod({iup_mod[2], iup_mod[1]}), 
        .delayLine({delayLine[2], delayLine[1]}), 
        .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .data_pad_out_0(data_pad_out_0), 
        .N_124(N_124), .FIRO_VALID_0_c(FIRO_VALID_0_c), .init_rst(
        init_rst), .N_4_i(N_4_i), .N_179_i(N_179_i), .systola(systola), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(clk), 
        .datai_valid_minus_row(datai_valid_minus_row));
    VCC VCC_Z (.Y(VCC));
    GND GND_Z (.Y(GND));
    
endmodule


module my_design(
       clk,
       reset,
       DOUT_VALID,
       FIRO_VALID,
       FIRO_VALID_0,
       combined_output
    );
input  clk;
input  reset;
output DOUT_VALID;
output FIRO_VALID;
output FIRO_VALID_0;
output [64:0] combined_output;

    wire [15:0] CORECORDIC_C0_0_DOUT_X;
    wire [15:0] CORECORDIC_C0_0_DOUT_Y;
    wire [1:1] dsp_join_kb_0;
    wire [1:0] dsp_join_kb_2;
    wire [1:1] dsp_join_kb;
    wire [47:0] COREFIR_PF_C0_1_FIRO;
    wire [47:0] COREFIR_PF_C0_0_FIRO;
    wire [64:0] combined_output_0;
    wire [63:0] modulator_0_modulated_i_2_0;
    wire [63:0] modulator_0_modulated_q_2_0;
    wire [0:0] phase_counter_0_phase_angle_cry;
    wire [2:0] iup_mod;
    wire [2:1] qup_mod;
    wire [0:0] 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_data_pad_out;
    wire [2:1] 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_dvalid_pipe_3_delayLine;
    wire [15:1] phase_counter_0_phase_angle_qxu;
    wire NN_1, VCC, GND, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_systola, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_init_rst, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_datai_valid_minus_row, 
        clk_ibuf_Z, reset_c, FIRO_VALID_c, FIRO_VALID_0_c, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_124, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_179_i, 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_shift_reg_1_N_4_i, 
        reset_arst_i;
    
    OUTBUF \combined_output_obuf[48]  (.D(combined_output_0[48]), .PAD(
        combined_output[48]));
    combiner combiner_0 (.modulated_q_2_0({
        modulator_0_modulated_q_2_0[63], 
        modulator_0_modulated_q_2_0[62], 
        modulator_0_modulated_q_2_0[61], 
        modulator_0_modulated_q_2_0[60], 
        modulator_0_modulated_q_2_0[59], 
        modulator_0_modulated_q_2_0[58], 
        modulator_0_modulated_q_2_0[57], 
        modulator_0_modulated_q_2_0[56], 
        modulator_0_modulated_q_2_0[55], 
        modulator_0_modulated_q_2_0[54], 
        modulator_0_modulated_q_2_0[53], 
        modulator_0_modulated_q_2_0[52], 
        modulator_0_modulated_q_2_0[51], 
        modulator_0_modulated_q_2_0[50], 
        modulator_0_modulated_q_2_0[49], 
        modulator_0_modulated_q_2_0[48], 
        modulator_0_modulated_q_2_0[47], 
        modulator_0_modulated_q_2_0[46], 
        modulator_0_modulated_q_2_0[45], 
        modulator_0_modulated_q_2_0[44], 
        modulator_0_modulated_q_2_0[43], 
        modulator_0_modulated_q_2_0[42], 
        modulator_0_modulated_q_2_0[41], 
        modulator_0_modulated_q_2_0[40], 
        modulator_0_modulated_q_2_0[39], 
        modulator_0_modulated_q_2_0[38], 
        modulator_0_modulated_q_2_0[37], 
        modulator_0_modulated_q_2_0[36], 
        modulator_0_modulated_q_2_0[35], 
        modulator_0_modulated_q_2_0[34], 
        modulator_0_modulated_q_2_0[33], 
        modulator_0_modulated_q_2_0[32], 
        modulator_0_modulated_q_2_0[31], 
        modulator_0_modulated_q_2_0[30], 
        modulator_0_modulated_q_2_0[29], 
        modulator_0_modulated_q_2_0[28], 
        modulator_0_modulated_q_2_0[27], 
        modulator_0_modulated_q_2_0[26], 
        modulator_0_modulated_q_2_0[25], 
        modulator_0_modulated_q_2_0[24], 
        modulator_0_modulated_q_2_0[23], 
        modulator_0_modulated_q_2_0[22], 
        modulator_0_modulated_q_2_0[21], 
        modulator_0_modulated_q_2_0[20], 
        modulator_0_modulated_q_2_0[19], 
        modulator_0_modulated_q_2_0[18], 
        modulator_0_modulated_q_2_0[17], 
        modulator_0_modulated_q_2_0[16], 
        modulator_0_modulated_q_2_0[15], 
        modulator_0_modulated_q_2_0[14], 
        modulator_0_modulated_q_2_0[13], 
        modulator_0_modulated_q_2_0[12], 
        modulator_0_modulated_q_2_0[11], 
        modulator_0_modulated_q_2_0[10], 
        modulator_0_modulated_q_2_0[9], modulator_0_modulated_q_2_0[8], 
        modulator_0_modulated_q_2_0[7], modulator_0_modulated_q_2_0[6], 
        modulator_0_modulated_q_2_0[5], modulator_0_modulated_q_2_0[4], 
        modulator_0_modulated_q_2_0[3], modulator_0_modulated_q_2_0[2], 
        modulator_0_modulated_q_2_0[1], modulator_0_modulated_q_2_0[0]})
        , .modulated_i_2_0({modulator_0_modulated_i_2_0[63], 
        modulator_0_modulated_i_2_0[62], 
        modulator_0_modulated_i_2_0[61], 
        modulator_0_modulated_i_2_0[60], 
        modulator_0_modulated_i_2_0[59], 
        modulator_0_modulated_i_2_0[58], 
        modulator_0_modulated_i_2_0[57], 
        modulator_0_modulated_i_2_0[56], 
        modulator_0_modulated_i_2_0[55], 
        modulator_0_modulated_i_2_0[54], 
        modulator_0_modulated_i_2_0[53], 
        modulator_0_modulated_i_2_0[52], 
        modulator_0_modulated_i_2_0[51], 
        modulator_0_modulated_i_2_0[50], 
        modulator_0_modulated_i_2_0[49], 
        modulator_0_modulated_i_2_0[48], 
        modulator_0_modulated_i_2_0[47], 
        modulator_0_modulated_i_2_0[46], 
        modulator_0_modulated_i_2_0[45], 
        modulator_0_modulated_i_2_0[44], 
        modulator_0_modulated_i_2_0[43], 
        modulator_0_modulated_i_2_0[42], 
        modulator_0_modulated_i_2_0[41], 
        modulator_0_modulated_i_2_0[40], 
        modulator_0_modulated_i_2_0[39], 
        modulator_0_modulated_i_2_0[38], 
        modulator_0_modulated_i_2_0[37], 
        modulator_0_modulated_i_2_0[36], 
        modulator_0_modulated_i_2_0[35], 
        modulator_0_modulated_i_2_0[34], 
        modulator_0_modulated_i_2_0[33], 
        modulator_0_modulated_i_2_0[32], 
        modulator_0_modulated_i_2_0[31], 
        modulator_0_modulated_i_2_0[30], 
        modulator_0_modulated_i_2_0[29], 
        modulator_0_modulated_i_2_0[28], 
        modulator_0_modulated_i_2_0[27], 
        modulator_0_modulated_i_2_0[26], 
        modulator_0_modulated_i_2_0[25], 
        modulator_0_modulated_i_2_0[24], 
        modulator_0_modulated_i_2_0[23], 
        modulator_0_modulated_i_2_0[22], 
        modulator_0_modulated_i_2_0[21], 
        modulator_0_modulated_i_2_0[20], 
        modulator_0_modulated_i_2_0[19], 
        modulator_0_modulated_i_2_0[18], 
        modulator_0_modulated_i_2_0[17], 
        modulator_0_modulated_i_2_0[16], 
        modulator_0_modulated_i_2_0[15], 
        modulator_0_modulated_i_2_0[14], 
        modulator_0_modulated_i_2_0[13], 
        modulator_0_modulated_i_2_0[12], 
        modulator_0_modulated_i_2_0[11], 
        modulator_0_modulated_i_2_0[10], 
        modulator_0_modulated_i_2_0[9], modulator_0_modulated_i_2_0[8], 
        modulator_0_modulated_i_2_0[7], modulator_0_modulated_i_2_0[6], 
        modulator_0_modulated_i_2_0[5], modulator_0_modulated_i_2_0[4], 
        modulator_0_modulated_i_2_0[3], modulator_0_modulated_i_2_0[2], 
        modulator_0_modulated_i_2_0[1], modulator_0_modulated_i_2_0[0]})
        , .combined_output_0({combined_output_0[64], 
        combined_output_0[63], combined_output_0[62], 
        combined_output_0[61], combined_output_0[60], 
        combined_output_0[59], combined_output_0[58], 
        combined_output_0[57], combined_output_0[56], 
        combined_output_0[55], combined_output_0[54], 
        combined_output_0[53], combined_output_0[52], 
        combined_output_0[51], combined_output_0[50], 
        combined_output_0[49], combined_output_0[48], 
        combined_output_0[47], combined_output_0[46], 
        combined_output_0[45], combined_output_0[44], 
        combined_output_0[43], combined_output_0[42], 
        combined_output_0[41], combined_output_0[40], 
        combined_output_0[39], combined_output_0[38], 
        combined_output_0[37], combined_output_0[36], 
        combined_output_0[35], combined_output_0[34], 
        combined_output_0[33], combined_output_0[32], 
        combined_output_0[31], combined_output_0[30], 
        combined_output_0[29], combined_output_0[28], 
        combined_output_0[27], combined_output_0[26], 
        combined_output_0[25], combined_output_0[24], 
        combined_output_0[23], combined_output_0[22], 
        combined_output_0[21], combined_output_0[20], 
        combined_output_0[19], combined_output_0[18], 
        combined_output_0[17], combined_output_0[16], 
        combined_output_0[15], combined_output_0[14], 
        combined_output_0[13], combined_output_0[12], 
        combined_output_0[11], combined_output_0[10], 
        combined_output_0[9], combined_output_0[8], 
        combined_output_0[7], combined_output_0[6], 
        combined_output_0[5], combined_output_0[4], 
        combined_output_0[3], combined_output_0[2], 
        combined_output_0[1], combined_output_0[0]}), .reset_arst_i(
        reset_arst_i), .clk(NN_1));
    OUTBUF \combined_output_obuf[44]  (.D(combined_output_0[44]), .PAD(
        combined_output[44]));
    OUTBUF \combined_output_obuf[31]  (.D(combined_output_0[31]), .PAD(
        combined_output[31]));
    OUTBUF \combined_output_obuf[61]  (.D(combined_output_0[61]), .PAD(
        combined_output[61]));
    OUTBUF \combined_output_obuf[1]  (.D(combined_output_0[1]), .PAD(
        combined_output[1]));
    OUTBUF \combined_output_obuf[45]  (.D(combined_output_0[45]), .PAD(
        combined_output[45]));
    COREFIR_PF_C0 COREFIR_PF_C0_0 (.data_pad_out_0(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_data_pad_out[0])
        , .COREFIR_PF_C0_0_FIRO({COREFIR_PF_C0_0_FIRO[47], 
        COREFIR_PF_C0_0_FIRO[46], COREFIR_PF_C0_0_FIRO[45], 
        COREFIR_PF_C0_0_FIRO[44], COREFIR_PF_C0_0_FIRO[43], 
        COREFIR_PF_C0_0_FIRO[42], COREFIR_PF_C0_0_FIRO[41], 
        COREFIR_PF_C0_0_FIRO[40], COREFIR_PF_C0_0_FIRO[39], 
        COREFIR_PF_C0_0_FIRO[38], COREFIR_PF_C0_0_FIRO[37], 
        COREFIR_PF_C0_0_FIRO[36], COREFIR_PF_C0_0_FIRO[35], 
        COREFIR_PF_C0_0_FIRO[34], COREFIR_PF_C0_0_FIRO[33], 
        COREFIR_PF_C0_0_FIRO[32], COREFIR_PF_C0_0_FIRO[31], 
        COREFIR_PF_C0_0_FIRO[30], COREFIR_PF_C0_0_FIRO[29], 
        COREFIR_PF_C0_0_FIRO[28], COREFIR_PF_C0_0_FIRO[27], 
        COREFIR_PF_C0_0_FIRO[26], COREFIR_PF_C0_0_FIRO[25], 
        COREFIR_PF_C0_0_FIRO[24], COREFIR_PF_C0_0_FIRO[23], 
        COREFIR_PF_C0_0_FIRO[22], COREFIR_PF_C0_0_FIRO[21], 
        COREFIR_PF_C0_0_FIRO[20], COREFIR_PF_C0_0_FIRO[19], 
        COREFIR_PF_C0_0_FIRO[18], COREFIR_PF_C0_0_FIRO[17], 
        COREFIR_PF_C0_0_FIRO[16], COREFIR_PF_C0_0_FIRO[15], 
        COREFIR_PF_C0_0_FIRO[14], COREFIR_PF_C0_0_FIRO[13], 
        COREFIR_PF_C0_0_FIRO[12], COREFIR_PF_C0_0_FIRO[11], 
        COREFIR_PF_C0_0_FIRO[10], COREFIR_PF_C0_0_FIRO[9], 
        COREFIR_PF_C0_0_FIRO[8], COREFIR_PF_C0_0_FIRO[7], 
        COREFIR_PF_C0_0_FIRO[6], COREFIR_PF_C0_0_FIRO[5], 
        COREFIR_PF_C0_0_FIRO[4], COREFIR_PF_C0_0_FIRO[3], 
        COREFIR_PF_C0_0_FIRO[2], COREFIR_PF_C0_0_FIRO[1], 
        COREFIR_PF_C0_0_FIRO[0]}), .delayLine({
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_dvalid_pipe_3_delayLine[2], 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_dvalid_pipe_3_delayLine[1]})
        , .qup_mod({qup_mod[2], qup_mod[1]}), .iup_mod_0(iup_mod[0]), 
        .datai_valid_minus_row(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_datai_valid_minus_row)
        , .clk(NN_1), .reset_arst_i(reset_arst_i), .reset_c(reset_c), 
        .systola(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_systola)
        , .N_179_i(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_179_i)
        , .N_4_i(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_shift_reg_1_N_4_i)
        , .FIRO_VALID_c(FIRO_VALID_c), .N_124(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_124)
        , .init_rst(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_init_rst)
        );
    CORECORDIC_C0 CORECORDIC_C0_0 (.CORECORDIC_C0_0_DOUT_X({
        CORECORDIC_C0_0_DOUT_X[15], CORECORDIC_C0_0_DOUT_X[14], 
        CORECORDIC_C0_0_DOUT_X[13], CORECORDIC_C0_0_DOUT_X[12], 
        CORECORDIC_C0_0_DOUT_X[11], CORECORDIC_C0_0_DOUT_X[10], 
        CORECORDIC_C0_0_DOUT_X[9], CORECORDIC_C0_0_DOUT_X[8], 
        CORECORDIC_C0_0_DOUT_X[7], CORECORDIC_C0_0_DOUT_X[6], 
        CORECORDIC_C0_0_DOUT_X[5], CORECORDIC_C0_0_DOUT_X[4], 
        CORECORDIC_C0_0_DOUT_X[3], CORECORDIC_C0_0_DOUT_X[2], 
        CORECORDIC_C0_0_DOUT_X[1], CORECORDIC_C0_0_DOUT_X[0]}), 
        .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .phase_angle_cry_0(
        phase_counter_0_phase_angle_cry[0]), .phase_angle_qxu({
        phase_counter_0_phase_angle_qxu[15], 
        phase_counter_0_phase_angle_qxu[14], 
        phase_counter_0_phase_angle_qxu[13], 
        phase_counter_0_phase_angle_qxu[12], 
        phase_counter_0_phase_angle_qxu[11], 
        phase_counter_0_phase_angle_qxu[10], 
        phase_counter_0_phase_angle_qxu[9], 
        phase_counter_0_phase_angle_qxu[8], 
        phase_counter_0_phase_angle_qxu[7], 
        phase_counter_0_phase_angle_qxu[6], 
        phase_counter_0_phase_angle_qxu[5], 
        phase_counter_0_phase_angle_qxu[4], 
        phase_counter_0_phase_angle_qxu[3], 
        phase_counter_0_phase_angle_qxu[2], 
        phase_counter_0_phase_angle_qxu[1]}), .clk(NN_1));
    OUTBUF \combined_output_obuf[58]  (.D(combined_output_0[58]), .PAD(
        combined_output[58]));
    OUTBUF \combined_output_obuf[36]  (.D(combined_output_0[36]), .PAD(
        combined_output[36]));
    OUTBUF \combined_output_obuf[21]  (.D(combined_output_0[21]), .PAD(
        combined_output[21]));
    OUTBUF \combined_output_obuf[33]  (.D(combined_output_0[33]), .PAD(
        combined_output[33]));
    OUTBUF \combined_output_obuf[11]  (.D(combined_output_0[11]), .PAD(
        combined_output[11]));
    OUTBUF \combined_output_obuf[63]  (.D(combined_output_0[63]), .PAD(
        combined_output[63]));
    OUTBUF \combined_output_obuf[54]  (.D(combined_output_0[54]), .PAD(
        combined_output[54]));
    modulator modulator_0 (.COREFIR_PF_C0_1_FIRO({
        COREFIR_PF_C0_1_FIRO[47], COREFIR_PF_C0_1_FIRO[46], 
        COREFIR_PF_C0_1_FIRO[45], COREFIR_PF_C0_1_FIRO[44], 
        COREFIR_PF_C0_1_FIRO[43], COREFIR_PF_C0_1_FIRO[42], 
        COREFIR_PF_C0_1_FIRO[41], COREFIR_PF_C0_1_FIRO[40], 
        COREFIR_PF_C0_1_FIRO[39], COREFIR_PF_C0_1_FIRO[38], 
        COREFIR_PF_C0_1_FIRO[37], COREFIR_PF_C0_1_FIRO[36], 
        COREFIR_PF_C0_1_FIRO[35], COREFIR_PF_C0_1_FIRO[34], 
        COREFIR_PF_C0_1_FIRO[33], COREFIR_PF_C0_1_FIRO[32], 
        COREFIR_PF_C0_1_FIRO[31], COREFIR_PF_C0_1_FIRO[30], 
        COREFIR_PF_C0_1_FIRO[29], COREFIR_PF_C0_1_FIRO[28], 
        COREFIR_PF_C0_1_FIRO[27], COREFIR_PF_C0_1_FIRO[26], 
        COREFIR_PF_C0_1_FIRO[25], COREFIR_PF_C0_1_FIRO[24], 
        COREFIR_PF_C0_1_FIRO[23], COREFIR_PF_C0_1_FIRO[22], 
        COREFIR_PF_C0_1_FIRO[21], COREFIR_PF_C0_1_FIRO[20], 
        COREFIR_PF_C0_1_FIRO[19], COREFIR_PF_C0_1_FIRO[18], 
        COREFIR_PF_C0_1_FIRO[17], COREFIR_PF_C0_1_FIRO[16], 
        COREFIR_PF_C0_1_FIRO[15], COREFIR_PF_C0_1_FIRO[14], 
        COREFIR_PF_C0_1_FIRO[13], COREFIR_PF_C0_1_FIRO[12], 
        COREFIR_PF_C0_1_FIRO[11], COREFIR_PF_C0_1_FIRO[10], 
        COREFIR_PF_C0_1_FIRO[9], COREFIR_PF_C0_1_FIRO[8], 
        COREFIR_PF_C0_1_FIRO[7], COREFIR_PF_C0_1_FIRO[6], 
        COREFIR_PF_C0_1_FIRO[5], COREFIR_PF_C0_1_FIRO[4], 
        COREFIR_PF_C0_1_FIRO[3], COREFIR_PF_C0_1_FIRO[2], 
        COREFIR_PF_C0_1_FIRO[1], COREFIR_PF_C0_1_FIRO[0]}), 
        .modulated_i_2_0({modulator_0_modulated_i_2_0[63], 
        modulator_0_modulated_i_2_0[62], 
        modulator_0_modulated_i_2_0[61], 
        modulator_0_modulated_i_2_0[60], 
        modulator_0_modulated_i_2_0[59], 
        modulator_0_modulated_i_2_0[58], 
        modulator_0_modulated_i_2_0[57], 
        modulator_0_modulated_i_2_0[56], 
        modulator_0_modulated_i_2_0[55], 
        modulator_0_modulated_i_2_0[54], 
        modulator_0_modulated_i_2_0[53], 
        modulator_0_modulated_i_2_0[52], 
        modulator_0_modulated_i_2_0[51], 
        modulator_0_modulated_i_2_0[50], 
        modulator_0_modulated_i_2_0[49], 
        modulator_0_modulated_i_2_0[48], 
        modulator_0_modulated_i_2_0[47], 
        modulator_0_modulated_i_2_0[46], 
        modulator_0_modulated_i_2_0[45], 
        modulator_0_modulated_i_2_0[44], 
        modulator_0_modulated_i_2_0[43], 
        modulator_0_modulated_i_2_0[42], 
        modulator_0_modulated_i_2_0[41], 
        modulator_0_modulated_i_2_0[40], 
        modulator_0_modulated_i_2_0[39], 
        modulator_0_modulated_i_2_0[38], 
        modulator_0_modulated_i_2_0[37], 
        modulator_0_modulated_i_2_0[36], 
        modulator_0_modulated_i_2_0[35], 
        modulator_0_modulated_i_2_0[34], 
        modulator_0_modulated_i_2_0[33], 
        modulator_0_modulated_i_2_0[32], 
        modulator_0_modulated_i_2_0[31], 
        modulator_0_modulated_i_2_0[30], 
        modulator_0_modulated_i_2_0[29], 
        modulator_0_modulated_i_2_0[28], 
        modulator_0_modulated_i_2_0[27], 
        modulator_0_modulated_i_2_0[26], 
        modulator_0_modulated_i_2_0[25], 
        modulator_0_modulated_i_2_0[24], 
        modulator_0_modulated_i_2_0[23], 
        modulator_0_modulated_i_2_0[22], 
        modulator_0_modulated_i_2_0[21], 
        modulator_0_modulated_i_2_0[20], 
        modulator_0_modulated_i_2_0[19], 
        modulator_0_modulated_i_2_0[18], 
        modulator_0_modulated_i_2_0[17], 
        modulator_0_modulated_i_2_0[16], 
        modulator_0_modulated_i_2_0[15], 
        modulator_0_modulated_i_2_0[14], 
        modulator_0_modulated_i_2_0[13], 
        modulator_0_modulated_i_2_0[12], 
        modulator_0_modulated_i_2_0[11], 
        modulator_0_modulated_i_2_0[10], 
        modulator_0_modulated_i_2_0[9], modulator_0_modulated_i_2_0[8], 
        modulator_0_modulated_i_2_0[7], modulator_0_modulated_i_2_0[6], 
        modulator_0_modulated_i_2_0[5], modulator_0_modulated_i_2_0[4], 
        modulator_0_modulated_i_2_0[3], modulator_0_modulated_i_2_0[2], 
        modulator_0_modulated_i_2_0[1], modulator_0_modulated_i_2_0[0]})
        , .CORECORDIC_C0_0_DOUT_X({CORECORDIC_C0_0_DOUT_X[15], 
        CORECORDIC_C0_0_DOUT_X[14], CORECORDIC_C0_0_DOUT_X[13], 
        CORECORDIC_C0_0_DOUT_X[12], CORECORDIC_C0_0_DOUT_X[11], 
        CORECORDIC_C0_0_DOUT_X[10], CORECORDIC_C0_0_DOUT_X[9], 
        CORECORDIC_C0_0_DOUT_X[8], CORECORDIC_C0_0_DOUT_X[7], 
        CORECORDIC_C0_0_DOUT_X[6], CORECORDIC_C0_0_DOUT_X[5], 
        CORECORDIC_C0_0_DOUT_X[4], CORECORDIC_C0_0_DOUT_X[3], 
        CORECORDIC_C0_0_DOUT_X[2], CORECORDIC_C0_0_DOUT_X[1], 
        CORECORDIC_C0_0_DOUT_X[0]}), .COREFIR_PF_C0_0_FIRO({
        COREFIR_PF_C0_0_FIRO[47], COREFIR_PF_C0_0_FIRO[46], 
        COREFIR_PF_C0_0_FIRO[45], COREFIR_PF_C0_0_FIRO[44], 
        COREFIR_PF_C0_0_FIRO[43], COREFIR_PF_C0_0_FIRO[42], 
        COREFIR_PF_C0_0_FIRO[41], COREFIR_PF_C0_0_FIRO[40], 
        COREFIR_PF_C0_0_FIRO[39], COREFIR_PF_C0_0_FIRO[38], 
        COREFIR_PF_C0_0_FIRO[37], COREFIR_PF_C0_0_FIRO[36], 
        COREFIR_PF_C0_0_FIRO[35], COREFIR_PF_C0_0_FIRO[34], 
        COREFIR_PF_C0_0_FIRO[33], COREFIR_PF_C0_0_FIRO[32], 
        COREFIR_PF_C0_0_FIRO[31], COREFIR_PF_C0_0_FIRO[30], 
        COREFIR_PF_C0_0_FIRO[29], COREFIR_PF_C0_0_FIRO[28], 
        COREFIR_PF_C0_0_FIRO[27], COREFIR_PF_C0_0_FIRO[26], 
        COREFIR_PF_C0_0_FIRO[25], COREFIR_PF_C0_0_FIRO[24], 
        COREFIR_PF_C0_0_FIRO[23], COREFIR_PF_C0_0_FIRO[22], 
        COREFIR_PF_C0_0_FIRO[21], COREFIR_PF_C0_0_FIRO[20], 
        COREFIR_PF_C0_0_FIRO[19], COREFIR_PF_C0_0_FIRO[18], 
        COREFIR_PF_C0_0_FIRO[17], COREFIR_PF_C0_0_FIRO[16], 
        COREFIR_PF_C0_0_FIRO[15], COREFIR_PF_C0_0_FIRO[14], 
        COREFIR_PF_C0_0_FIRO[13], COREFIR_PF_C0_0_FIRO[12], 
        COREFIR_PF_C0_0_FIRO[11], COREFIR_PF_C0_0_FIRO[10], 
        COREFIR_PF_C0_0_FIRO[9], COREFIR_PF_C0_0_FIRO[8], 
        COREFIR_PF_C0_0_FIRO[7], COREFIR_PF_C0_0_FIRO[6], 
        COREFIR_PF_C0_0_FIRO[5], COREFIR_PF_C0_0_FIRO[4], 
        COREFIR_PF_C0_0_FIRO[3], COREFIR_PF_C0_0_FIRO[2], 
        COREFIR_PF_C0_0_FIRO[1], COREFIR_PF_C0_0_FIRO[0]}), 
        .modulated_q_2_0({modulator_0_modulated_q_2_0[63], 
        modulator_0_modulated_q_2_0[62], 
        modulator_0_modulated_q_2_0[61], 
        modulator_0_modulated_q_2_0[60], 
        modulator_0_modulated_q_2_0[59], 
        modulator_0_modulated_q_2_0[58], 
        modulator_0_modulated_q_2_0[57], 
        modulator_0_modulated_q_2_0[56], 
        modulator_0_modulated_q_2_0[55], 
        modulator_0_modulated_q_2_0[54], 
        modulator_0_modulated_q_2_0[53], 
        modulator_0_modulated_q_2_0[52], 
        modulator_0_modulated_q_2_0[51], 
        modulator_0_modulated_q_2_0[50], 
        modulator_0_modulated_q_2_0[49], 
        modulator_0_modulated_q_2_0[48], 
        modulator_0_modulated_q_2_0[47], 
        modulator_0_modulated_q_2_0[46], 
        modulator_0_modulated_q_2_0[45], 
        modulator_0_modulated_q_2_0[44], 
        modulator_0_modulated_q_2_0[43], 
        modulator_0_modulated_q_2_0[42], 
        modulator_0_modulated_q_2_0[41], 
        modulator_0_modulated_q_2_0[40], 
        modulator_0_modulated_q_2_0[39], 
        modulator_0_modulated_q_2_0[38], 
        modulator_0_modulated_q_2_0[37], 
        modulator_0_modulated_q_2_0[36], 
        modulator_0_modulated_q_2_0[35], 
        modulator_0_modulated_q_2_0[34], 
        modulator_0_modulated_q_2_0[33], 
        modulator_0_modulated_q_2_0[32], 
        modulator_0_modulated_q_2_0[31], 
        modulator_0_modulated_q_2_0[30], 
        modulator_0_modulated_q_2_0[29], 
        modulator_0_modulated_q_2_0[28], 
        modulator_0_modulated_q_2_0[27], 
        modulator_0_modulated_q_2_0[26], 
        modulator_0_modulated_q_2_0[25], 
        modulator_0_modulated_q_2_0[24], 
        modulator_0_modulated_q_2_0[23], 
        modulator_0_modulated_q_2_0[22], 
        modulator_0_modulated_q_2_0[21], 
        modulator_0_modulated_q_2_0[20], 
        modulator_0_modulated_q_2_0[19], 
        modulator_0_modulated_q_2_0[18], 
        modulator_0_modulated_q_2_0[17], 
        modulator_0_modulated_q_2_0[16], 
        modulator_0_modulated_q_2_0[15], 
        modulator_0_modulated_q_2_0[14], 
        modulator_0_modulated_q_2_0[13], 
        modulator_0_modulated_q_2_0[12], 
        modulator_0_modulated_q_2_0[11], 
        modulator_0_modulated_q_2_0[10], 
        modulator_0_modulated_q_2_0[9], modulator_0_modulated_q_2_0[8], 
        modulator_0_modulated_q_2_0[7], modulator_0_modulated_q_2_0[6], 
        modulator_0_modulated_q_2_0[5], modulator_0_modulated_q_2_0[4], 
        modulator_0_modulated_q_2_0[3], modulator_0_modulated_q_2_0[2], 
        modulator_0_modulated_q_2_0[1], modulator_0_modulated_q_2_0[0]})
        , .CORECORDIC_C0_0_DOUT_Y({CORECORDIC_C0_0_DOUT_Y[15], 
        CORECORDIC_C0_0_DOUT_Y[14], CORECORDIC_C0_0_DOUT_Y[13], 
        CORECORDIC_C0_0_DOUT_Y[12], CORECORDIC_C0_0_DOUT_Y[11], 
        CORECORDIC_C0_0_DOUT_Y[10], CORECORDIC_C0_0_DOUT_Y[9], 
        CORECORDIC_C0_0_DOUT_Y[8], CORECORDIC_C0_0_DOUT_Y[7], 
        CORECORDIC_C0_0_DOUT_Y[6], CORECORDIC_C0_0_DOUT_Y[5], 
        CORECORDIC_C0_0_DOUT_Y[4], CORECORDIC_C0_0_DOUT_Y[3], 
        CORECORDIC_C0_0_DOUT_Y[2], CORECORDIC_C0_0_DOUT_Y[1], 
        CORECORDIC_C0_0_DOUT_Y[0]}), .reset_arst_i(reset_arst_i), .clk(
        NN_1));
    OUTBUF DOUT_VALID_obuf (.D(VCC), .PAD(DOUT_VALID));
    CFG1 #( .INIT(2'h1) )  reset_ibuf_RNI82552 (.A(reset_c), .Y(
        reset_arst_i));
    phase_counter phase_counter_0 (.phase_angle_qxu({
        phase_counter_0_phase_angle_qxu[15], 
        phase_counter_0_phase_angle_qxu[14], 
        phase_counter_0_phase_angle_qxu[13], 
        phase_counter_0_phase_angle_qxu[12], 
        phase_counter_0_phase_angle_qxu[11], 
        phase_counter_0_phase_angle_qxu[10], 
        phase_counter_0_phase_angle_qxu[9], 
        phase_counter_0_phase_angle_qxu[8], 
        phase_counter_0_phase_angle_qxu[7], 
        phase_counter_0_phase_angle_qxu[6], 
        phase_counter_0_phase_angle_qxu[5], 
        phase_counter_0_phase_angle_qxu[4], 
        phase_counter_0_phase_angle_qxu[3], 
        phase_counter_0_phase_angle_qxu[2], 
        phase_counter_0_phase_angle_qxu[1]}), .phase_angle_cry_0(
        phase_counter_0_phase_angle_cry[0]), .reset_arst_i(
        reset_arst_i), .clk(NN_1));
    OUTBUF \combined_output_obuf[26]  (.D(combined_output_0[26]), .PAD(
        combined_output[26]));
    OUTBUF \combined_output_obuf[55]  (.D(combined_output_0[55]), .PAD(
        combined_output[55]));
    OUTBUF \combined_output_obuf[23]  (.D(combined_output_0[23]), .PAD(
        combined_output[23]));
    OUTBUF \combined_output_obuf[16]  (.D(combined_output_0[16]), .PAD(
        combined_output[16]));
    OUTBUF \combined_output_obuf[6]  (.D(combined_output_0[6]), .PAD(
        combined_output[6]));
    OUTBUF \combined_output_obuf[13]  (.D(combined_output_0[13]), .PAD(
        combined_output[13]));
    OUTBUF \combined_output_obuf[0]  (.D(combined_output_0[0]), .PAD(
        combined_output[0]));
    upsampler upsampler_0 (.dsp_join_kb_0_d0(dsp_join_kb[1]), 
        .dsp_join_kb_2({dsp_join_kb_2[1], dsp_join_kb_2[0]}), 
        .dsp_join_kb_0_0(dsp_join_kb_0[1]), .qup_mod({qup_mod[2], 
        qup_mod[1]}), .iup_mod({iup_mod[2], iup_mod[1], iup_mod[0]}), 
        .reset_c(reset_c), .reset_arst_i(reset_arst_i), .clk(NN_1));
    four_pr four_pr_0 (.dsp_join_kb_2({dsp_join_kb_2[1], 
        dsp_join_kb_2[0]}), .dsp_join_kb_0_d0(dsp_join_kb[1]), 
        .dsp_join_kb_0_0(dsp_join_kb_0[1]), .reset_c(reset_c), 
        .reset_arst_i(reset_arst_i), .clk(NN_1));
    OUTBUF \combined_output_obuf[4]  (.D(combined_output_0[4]), .PAD(
        combined_output[4]));
    OUTBUF \combined_output_obuf[41]  (.D(combined_output_0[41]), .PAD(
        combined_output[41]));
    OUTBUF \combined_output_obuf[7]  (.D(combined_output_0[7]), .PAD(
        combined_output[7]));
    OUTBUF \combined_output_obuf[46]  (.D(combined_output_0[46]), .PAD(
        combined_output[46]));
    OUTBUF \combined_output_obuf[39]  (.D(combined_output_0[39]), .PAD(
        combined_output[39]));
    OUTBUF \combined_output_obuf[43]  (.D(combined_output_0[43]), .PAD(
        combined_output[43]));
    OUTBUF \combined_output_obuf[51]  (.D(combined_output_0[51]), .PAD(
        combined_output[51]));
    OUTBUF \combined_output_obuf[9]  (.D(combined_output_0[9]), .PAD(
        combined_output[9]));
    OUTBUF \combined_output_obuf[29]  (.D(combined_output_0[29]), .PAD(
        combined_output[29]));
    OUTBUF \combined_output_obuf[19]  (.D(combined_output_0[19]), .PAD(
        combined_output[19]));
    OUTBUF \combined_output_obuf[56]  (.D(combined_output_0[56]), .PAD(
        combined_output[56]));
    OUTBUF \combined_output_obuf[53]  (.D(combined_output_0[53]), .PAD(
        combined_output[53]));
    OUTBUF \combined_output_obuf[30]  (.D(combined_output_0[30]), .PAD(
        combined_output[30]));
    OUTBUF FIRO_VALID_obuf (.D(FIRO_VALID_c), .PAD(FIRO_VALID));
    OUTBUF \combined_output_obuf[60]  (.D(combined_output_0[60]), .PAD(
        combined_output[60]));
    OUTBUF \combined_output_obuf[37]  (.D(combined_output_0[37]), .PAD(
        combined_output[37]));
    OUTBUF \combined_output_obuf[5]  (.D(combined_output_0[5]), .PAD(
        combined_output[5]));
    CLKINT I_1 (.A(clk_ibuf_Z), .Y(NN_1));
    OUTBUF \combined_output_obuf[49]  (.D(combined_output_0[49]), .PAD(
        combined_output[49]));
    OUTBUF \combined_output_obuf[20]  (.D(combined_output_0[20]), .PAD(
        combined_output[20]));
    OUTBUF \combined_output_obuf[27]  (.D(combined_output_0[27]), .PAD(
        combined_output[27]));
    OUTBUF \combined_output_obuf[10]  (.D(combined_output_0[10]), .PAD(
        combined_output[10]));
    OUTBUF \combined_output_obuf[17]  (.D(combined_output_0[17]), .PAD(
        combined_output[17]));
    OUTBUF \combined_output_obuf[2]  (.D(combined_output_0[2]), .PAD(
        combined_output[2]));
    COREFIR_PF_C0_0 COREFIR_PF_C0_1 (.data_pad_out_0(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_data_pad_out[0])
        , .COREFIR_PF_C0_1_FIRO({COREFIR_PF_C0_1_FIRO[47], 
        COREFIR_PF_C0_1_FIRO[46], COREFIR_PF_C0_1_FIRO[45], 
        COREFIR_PF_C0_1_FIRO[44], COREFIR_PF_C0_1_FIRO[43], 
        COREFIR_PF_C0_1_FIRO[42], COREFIR_PF_C0_1_FIRO[41], 
        COREFIR_PF_C0_1_FIRO[40], COREFIR_PF_C0_1_FIRO[39], 
        COREFIR_PF_C0_1_FIRO[38], COREFIR_PF_C0_1_FIRO[37], 
        COREFIR_PF_C0_1_FIRO[36], COREFIR_PF_C0_1_FIRO[35], 
        COREFIR_PF_C0_1_FIRO[34], COREFIR_PF_C0_1_FIRO[33], 
        COREFIR_PF_C0_1_FIRO[32], COREFIR_PF_C0_1_FIRO[31], 
        COREFIR_PF_C0_1_FIRO[30], COREFIR_PF_C0_1_FIRO[29], 
        COREFIR_PF_C0_1_FIRO[28], COREFIR_PF_C0_1_FIRO[27], 
        COREFIR_PF_C0_1_FIRO[26], COREFIR_PF_C0_1_FIRO[25], 
        COREFIR_PF_C0_1_FIRO[24], COREFIR_PF_C0_1_FIRO[23], 
        COREFIR_PF_C0_1_FIRO[22], COREFIR_PF_C0_1_FIRO[21], 
        COREFIR_PF_C0_1_FIRO[20], COREFIR_PF_C0_1_FIRO[19], 
        COREFIR_PF_C0_1_FIRO[18], COREFIR_PF_C0_1_FIRO[17], 
        COREFIR_PF_C0_1_FIRO[16], COREFIR_PF_C0_1_FIRO[15], 
        COREFIR_PF_C0_1_FIRO[14], COREFIR_PF_C0_1_FIRO[13], 
        COREFIR_PF_C0_1_FIRO[12], COREFIR_PF_C0_1_FIRO[11], 
        COREFIR_PF_C0_1_FIRO[10], COREFIR_PF_C0_1_FIRO[9], 
        COREFIR_PF_C0_1_FIRO[8], COREFIR_PF_C0_1_FIRO[7], 
        COREFIR_PF_C0_1_FIRO[6], COREFIR_PF_C0_1_FIRO[5], 
        COREFIR_PF_C0_1_FIRO[4], COREFIR_PF_C0_1_FIRO[3], 
        COREFIR_PF_C0_1_FIRO[2], COREFIR_PF_C0_1_FIRO[1], 
        COREFIR_PF_C0_1_FIRO[0]}), .delayLine({
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_dvalid_pipe_3_delayLine[2], 
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_dvalid_pipe_3_delayLine[1]})
        , .iup_mod({iup_mod[2], iup_mod[1]}), .datai_valid_minus_row(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_datai_valid_minus_row)
        , .clk(NN_1), .reset_arst_i(reset_arst_i), .reset_c(reset_c), 
        .systola(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_systola)
        , .N_179_i(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_179_i)
        , .N_4_i(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_shift_reg_1_N_4_i)
        , .init_rst(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_latency_0_init_rst)
        , .FIRO_VALID_0_c(FIRO_VALID_0_c), .N_124(
        COREFIR_PF_C0_0_COREFIR_PF_C0_0_enum_g5_enum_fir_g5_adv_enum_adv_enum_0_N_124)
        );
    OUTBUF \combined_output_obuf[59]  (.D(combined_output_0[59]), .PAD(
        combined_output[59]));
    OUTBUF \combined_output_obuf[40]  (.D(combined_output_0[40]), .PAD(
        combined_output[40]));
    OUTBUF \combined_output_obuf[47]  (.D(combined_output_0[47]), .PAD(
        combined_output[47]));
    OUTBUF \combined_output_obuf[8]  (.D(combined_output_0[8]), .PAD(
        combined_output[8]));
    OUTBUF FIRO_VALID_0_obuf (.D(FIRO_VALID_0_c), .PAD(FIRO_VALID_0));
    OUTBUF \combined_output_obuf[50]  (.D(combined_output_0[50]), .PAD(
        combined_output[50]));
    OUTBUF \combined_output_obuf[57]  (.D(combined_output_0[57]), .PAD(
        combined_output[57]));
    OUTBUF \combined_output_obuf[32]  (.D(combined_output_0[32]), .PAD(
        combined_output[32]));
    OUTBUF \combined_output_obuf[62]  (.D(combined_output_0[62]), .PAD(
        combined_output[62]));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    OUTBUF \combined_output_obuf[22]  (.D(combined_output_0[22]), .PAD(
        combined_output[22]));
    OUTBUF \combined_output_obuf[12]  (.D(combined_output_0[12]), .PAD(
        combined_output[12]));
    INBUF reset_ibuf (.PAD(reset), .Y(reset_c));
    OUTBUF \combined_output_obuf[3]  (.D(combined_output_0[3]), .PAD(
        combined_output[3]));
    OUTBUF \combined_output_obuf[42]  (.D(combined_output_0[42]), .PAD(
        combined_output[42]));
    OUTBUF \combined_output_obuf[38]  (.D(combined_output_0[38]), .PAD(
        combined_output[38]));
    OUTBUF \combined_output_obuf[34]  (.D(combined_output_0[34]), .PAD(
        combined_output[34]));
    OUTBUF \combined_output_obuf[64]  (.D(combined_output_0[64]), .PAD(
        combined_output[64]));
    OUTBUF \combined_output_obuf[28]  (.D(combined_output_0[28]), .PAD(
        combined_output[28]));
    OUTBUF \combined_output_obuf[35]  (.D(combined_output_0[35]), .PAD(
        combined_output[35]));
    OUTBUF \combined_output_obuf[18]  (.D(combined_output_0[18]), .PAD(
        combined_output[18]));
    INBUF clk_ibuf (.PAD(clk), .Y(clk_ibuf_Z));
    OUTBUF \combined_output_obuf[52]  (.D(combined_output_0[52]), .PAD(
        combined_output[52]));
    OUTBUF \combined_output_obuf[24]  (.D(combined_output_0[24]), .PAD(
        combined_output[24]));
    OUTBUF \combined_output_obuf[14]  (.D(combined_output_0[14]), .PAD(
        combined_output[14]));
    OUTBUF \combined_output_obuf[25]  (.D(combined_output_0[25]), .PAD(
        combined_output[25]));
    OUTBUF \combined_output_obuf[15]  (.D(combined_output_0[15]), .PAD(
        combined_output[15]));
    
endmodule

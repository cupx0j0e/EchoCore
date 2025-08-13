quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "/home/jessica/Desktop/lultrasound_ibero/envelope_detection"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap polarfire "/usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/precompiled/vlog/polarfire"
if {[file exists CORECORDIC_LIB/_info]} {
   echo "INFO: Simulation library CORECORDIC_LIB already exists"
} else {
   file delete -force CORECORDIC_LIB 
   vlib CORECORDIC_LIB
}
vmap CORECORDIC_LIB "CORECORDIC_LIB"
if {[file exists COREFIR_PF_LIB/_info]} {
   echo "INFO: Simulation library COREFIR_PF_LIB already exists"
} else {
   file delete -force COREFIR_PF_LIB 
   vlib COREFIR_PF_LIB
}
vmap COREFIR_PF_LIB "COREFIR_PF_LIB"

vlog -sv -work CORECORDIC_LIB "${PROJECT_DIR}/component/work/CORECORDIC_C0/CORECORDIC_C0_0/CORECORDIC_C0_CORECORDIC_C0_0_CordicLUT_par.v"
vlog -sv -work CORECORDIC_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORECORDIC/4.1.100/rtl/vlog/core/cordic_kit.v"
vlog -sv -work CORECORDIC_LIB "${PROJECT_DIR}/component/work/CORECORDIC_C0/CORECORDIC_C0_0/rtl/vlog/core/cordic_par.v"
vlog -sv -work CORECORDIC_LIB "${PROJECT_DIR}/component/work/CORECORDIC_C0/CORECORDIC_C0_0/rtl/vlog/core/CORECORDIC.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/CORECORDIC_C0/CORECORDIC_C0.v"
vlog -sv -work presynth "${PROJECT_DIR}/hdl/delay.v"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/corefir_rtl_pack.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/corefir_top_kit.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_rtl_pack.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_kit.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/adv_dly_line.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/fir_hilbert_fir_hilbert_0_enumFIR_coefs.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/enum_fir_adv_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_pad_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_macc_lib_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_tap_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_undernibble_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_nibble_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_row_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/fir_hilbert_fir_hilbert_0_enum_params.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/enum_fir_g5.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/COREFIR.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert.vhd"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/envelope/envelope.v"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/test/user/coreparameters_tgi.vhd"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/testbench.v"

vsim -L polarfire -L presynth -L CORECORDIC_LIB -L COREFIR_PF_LIB  -t 1ps -pli /usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/pli/pf_crypto_lin_me_pli.so presynth.tb_envelope
add wave /tb_envelope/*
run 1000ns

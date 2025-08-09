quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "/home/jessica/Desktop/final_final_working/qam_16"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
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

vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/corefir_rtl_pack.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_rtl_pack.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/COREFIR_PF_C0/COREFIR_PF_C0_0/rtl/vhdl/core/enum_PF/COREFIR_PF_C0_COREFIR_PF_C0_0_enumFIR_coefs.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/COREFIR_PF_C0/COREFIR_PF_C0_0/rtl/vhdl/core/enum_PF/COREFIR_PF_C0_COREFIR_PF_C0_0_enum_params.vhd"
vcom -2008 -explicit  -work COREFIR_PF_LIB "${PROJECT_DIR}/component/work/COREFIR_PF_C0/COREFIR_PF_C0_0/rtl/vhdl/test/user/coreparameters_tgi.vhd"
vlog -sv -work postsynth "${PROJECT_DIR}/synthesis/my_design.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work postsynth "${PROJECT_DIR}/stimulus/newtestbench.v"

vsim -L polarfire -L postsynth -L CORECORDIC_LIB -L COREFIR_PF_LIB  -t 1ps -pli /usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/pli/pf_crypto_lin_me_pli.so postsynth.tb_my_design
add wave /tb_my_design/*
run 1000ns

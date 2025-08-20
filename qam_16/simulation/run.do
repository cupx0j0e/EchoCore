quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "/home/jessica/Desktop/final_final_working/qam_16"

if {[file exists ../designer/my_design/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/my_design/simulation/postlayout already exists"
} else {
   file delete -force ../designer/my_design/simulation/postlayout 
   vlib ../designer/my_design/simulation/postlayout
}
vmap postlayout ../designer/my_design/simulation/postlayout
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

vlog -sv -work postlayout "${PROJECT_DIR}/designer/my_design/my_design_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work postlayout "${PROJECT_DIR}/stimulus/newtestbench.v"

vsim -L polarfire -L postlayout -L CORECORDIC_LIB -L COREFIR_PF_LIB  -t 1ps -pli /usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/pli/pf_crypto_lin_me_pli.so -sdfmax /my_design_0=${PROJECT_DIR}/designer/my_design/my_design_slow_lv_ht_ba.sdf +transport_path_delays postlayout.tb_my_design
add wave /tb_my_design/*
run 1000ns

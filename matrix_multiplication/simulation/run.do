quietly set ACTELLIBNAME PolarFireSoC
quietly set PROJECT_DIR "/home/jessica/Desktop/new_libero/mat"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap polarfire "/usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/precompiled/vlog/polarfire"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/matmul.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/mat/mat.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work presynth "${PROJECT_DIR}/stimulus/matmul_tb.v"

vsim -L polarfire -L presynth  -t 1ps -pli /usr/local/microchip/Libero_SoC_v2024.2/Libero/lib/modelsimpro/pli/pf_crypto_lin_me_pli.so presynth.mul_tb
add wave /mul_tb/*
run 1000ns

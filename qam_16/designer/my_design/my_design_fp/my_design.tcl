open_project -project {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design_fp/my_design.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design.map} \
    -header {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design.hdr} \
    -snvm {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design_snvm.efc} \
    -spm {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design.spm} \
    -dca {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design.dca}
export_single_stapl \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/export/my_design.stp} \
    -secured

export_single_ppd \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/export/my_design.ppd}

export_single_dat \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/export/my_design.dat} \
    -secured

export_spi_master \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/export/my_design.spi} \
    -secured

save_project
close_project

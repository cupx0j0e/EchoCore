open_project -project {/home/jessica/Desktop/new_libero/mat/designer/mat/mat_fp/mat.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/jessica/Desktop/new_libero/mat/designer/mat/mat.map} \
    -header {/home/jessica/Desktop/new_libero/mat/designer/mat/mat.hdr} \
    -snvm {/home/jessica/Desktop/new_libero/mat/designer/mat/mat_snvm.efc} \
    -spm {/home/jessica/Desktop/new_libero/mat/designer/mat/mat.spm} \
    -dca {/home/jessica/Desktop/new_libero/mat/designer/mat/mat.dca}
export_single_ppd \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/new_libero/mat/designer/mat/mat.ppd}

save_project
close_project

new_project \
         -name {my_design} \
         -location {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS025T} \
         -name {MPFS025T}
enable_device \
         -name {MPFS025T} \
         -enable {TRUE}
save_project
close_project

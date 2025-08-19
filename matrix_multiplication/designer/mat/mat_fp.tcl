new_project \
         -name {mat} \
         -location {/home/jessica/Desktop/new_libero/mat/designer/mat/mat_fp} \
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

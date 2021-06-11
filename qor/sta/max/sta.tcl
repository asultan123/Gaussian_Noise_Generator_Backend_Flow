set link_path  "* /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db"

read_verilog "../../../pnr/output_verilog_withphysical"

current_design gng
link

source ../../../syn/cons/cons.tcl
read_parasitics ../../rcxt/cmax/FreePDK45_10m_Cmax.tlup_-40.gng.spef
#read_parasitics ../../../pnr/output/mips_16.spef.max

update_timing

save_session mips_16_max.session

report_constraint -all_violators -significant_digits 4
report_timing -delay_type max -nworst 40 -significant_digits 4

write_sdf ./mips_16.max.sdf


exit


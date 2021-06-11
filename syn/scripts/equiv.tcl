
set_svf -append { ./default.svf } 

read_verilog -container r -libname WORK -01 { ../rtl/gng.v } 
set_top r:/WORK/gng 

read_db -container i { /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db  } 
read_verilog -container i -libname WORK -01 { output_verilog.v } 
set_top i:/WORK/gng

set_constant -type port r:/WORK/gng/rstn 0 
set_constant -type port i:/WORK/gng/rstn 0 

match 

verify 

exit

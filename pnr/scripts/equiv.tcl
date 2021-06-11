
read_db -container r { ../ref/db_nldm/saed32rvt_tt1p05v25c.db  } 
read_verilog -container r -libname WORK -01 { ../source/johnson_dft_compiled.v } 
set_top r:/WORK/johnson 

read_db -container i { ../ref/db_nldm/saed32rvt_tt1p05v25c.db  } 
read_verilog -container i -libname WORK -01 { ../source/johnson_icc_nopg.v } 
set_top i:/WORK/johnson

set_constant -type port r:/WORK/johnson/SE 0
set_constant -type port r:/WORK/johnson/r 0 
set_constant -type port i:/WORK/johnson/SE 0
set_constant -type port i:/WORK/johnson/r 0 

match 

#set_dont_verify_point -type port

set_dont_verify_point -type port  r:/WORK/johnson/SE

set_dont_verify_point -type port  r:/WORK/johnson/SCANOUTPORT

set_dont_verify_point -type port  r:/WORK/johnson/SCANINPORT

set_dont_verify_point -type port  i:/WORK/johnson/SE

set_dont_verify_point -type port  i:/WORK/johnson/SCANOUTPORT

set_dont_verify_point -type port  i:/WORK/johnson/SCANINPORT

verify 

save_session -replace ../results/design_post

exit

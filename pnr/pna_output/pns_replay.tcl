# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer metal10 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing 1.500000 
set_fp_rail_constraints -add_layer  -layer metal9 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing 1.500000 
set_fp_rail_constraints -add_layer  -layer metal8 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing 1.500000 
set_fp_rail_constraints -add_layer  -layer metal7 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing 1.500000 
set_fp_rail_constraints -add_layer  -layer metal6 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing 1.500000 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { metal7,metal9 } -vertical_ring_layer { metal8,metal10 } -ring_width 5.000000 -ring_spacing 1.500000 -ring_offset 0.800000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VSS -point { 0.759400 227.942001 }
create_fp_virtual_pad -net VDD -point { 67.214996 230.600006 }
create_fp_virtual_pad -net VDD -point { 142.404999 230.979507 }
create_fp_virtual_pad -net VDD -point { 213.796997 231.738998 }
create_fp_virtual_pad -net VDD -point { 231.265503 191.865997 }
create_fp_virtual_pad -net VDD -point { 230.505997 139.080994 }
create_fp_virtual_pad -net VDD -point { 230.505997 77.941902 }
create_fp_virtual_pad -net VDD -point { 230.886002 28.195000 }
create_fp_virtual_pad -net VDD -point { 187.974503 1.613000 }
create_fp_virtual_pad -net VDD -point { 131.772003 -0.285400 }
create_fp_virtual_pad -net VDD -point { 68.734001 -2.184500 }
create_fp_virtual_pad -net VDD -point { 12.911500 0.853500 }
create_fp_virtual_pad -net VDD -point { -0.759400 44.523998 }
create_fp_virtual_pad -net VDD -point { -0.379500 103.004997 }
create_fp_virtual_pad -net VDD -point { -0.759400 164.524002 }
create_fp_virtual_pad -net VDD -point { -0.759400 205.536499 }
create_fp_virtual_pad -net VSS -point { 21.265900 231.359497 }
create_fp_virtual_pad -net VSS -point { 89.620003 230.600006 }
create_fp_virtual_pad -net VSS -point { 178.860504 231.359497 }
create_fp_virtual_pad -net VSS -point { 230.886002 219.587494 }
create_fp_virtual_pad -net VSS -point { 229.367004 165.663498 }
create_fp_virtual_pad -net VSS -point { 229.367004 108.321503 }
create_fp_virtual_pad -net VSS -point { 230.505997 57.815498 }
create_fp_virtual_pad -net VSS -point { 227.848007 1.613000 }
create_fp_virtual_pad -net VSS -point { 157.974503 0.853500 }
create_fp_virtual_pad -net VSS -point { 98.734001 -0.285400 }
create_fp_virtual_pad -net VSS -point { 36.455502 -1.045000 }
create_fp_virtual_pad -net VSS -point { 0.379500 23.638000 }
create_fp_virtual_pad -net VSS -point { 0.379500 81.359497 }
create_fp_virtual_pad -net VSS -point { 0.379500 136.802505 }
create_fp_virtual_pad -net VSS -point { -1.139000 190.347000 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.100000 -power_budget 500.000000  -target_voltage_drop 22.000000  

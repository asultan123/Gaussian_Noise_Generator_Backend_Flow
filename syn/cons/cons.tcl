create_clock -name clk -period 3.5 -waveform {0 1.75} [get_ports clk]
set_input_delay -max 2 -clock [get_clocks clk] [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -max 2 -clock [get_clocks clk] [all_outputs]
set_clock_uncertainty 0.35 [get_clocks]
set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clk]]
set_false_path -hold -to [all_outputs]


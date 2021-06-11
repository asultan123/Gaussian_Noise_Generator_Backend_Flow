###################################################################

# Created by write_sdc on Sat Apr 21 10:40:21 2018

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 4  -waveform {0 2}
set_clock_uncertainty 0.35  [get_clocks clk]
set_false_path -hold   -from [list [get_ports rstn] [get_ports ce]]
set_false_path -hold   -to [list [get_ports valid_out] [get_ports {data_out[15]}] [get_ports         \
{data_out[14]}] [get_ports {data_out[13]}] [get_ports {data_out[12]}]          \
[get_ports {data_out[11]}] [get_ports {data_out[10]}] [get_ports               \
{data_out[9]}] [get_ports {data_out[8]}] [get_ports {data_out[7]}] [get_ports  \
{data_out[6]}] [get_ports {data_out[5]}] [get_ports {data_out[4]}] [get_ports  \
{data_out[3]}] [get_ports {data_out[2]}] [get_ports {data_out[1]}] [get_ports  \
{data_out[0]}]]
set_input_delay -clock clk  -max 2  [get_ports rstn]
set_input_delay -clock clk  -max 2  [get_ports ce]
set_output_delay -clock clk  -max 2  [get_ports valid_out]
set_output_delay -clock clk  -max 2  [get_ports {data_out[15]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[14]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[13]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[12]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[11]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[10]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[9]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[8]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[7]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[6]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[5]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[4]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[3]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[2]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[1]}]
set_output_delay -clock clk  -max 2  [get_ports {data_out[0]}]

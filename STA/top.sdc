
create_clock -name clk -period 10  
set_input_delay 3 -clock clk -max [get_ports {a b cin}]
set_input_delay 2 -clock clk -min [get_ports {a b cin}]
set_output_delay 2 -clock clk -max [get_ports {s cout}]
set_output_delay 1 -clock clk -min [get_ports {s cout}]
set_load 0.05 [get_ports {s cout}] 


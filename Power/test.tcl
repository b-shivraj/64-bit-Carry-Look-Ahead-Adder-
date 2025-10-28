read_liberty NangateOCL.lib
read_verilog netlist_CLA.v
link_design adder32
read_sdc top.sdc

report_power

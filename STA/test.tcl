read_liberty NangateOCL.lib
read_verilog netlist_CLA.v
link_design adder64
read_sdc top.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full

# read modules from Verilog file
read_verilog  adder4.v  adder8.v adder32.v adder64.v

#hierarchy top 
hierarchy -top adder64

# translate processes to netlists
proc
# remove unused cells and wires
clean
# show the generic netlist
show

#perform optimization
opt
#resource sharing optimization
share -aggressive


# show the generic netlist
show

# mapping to internal cell library
techmap
# mapping flip-flops to toy.lib 
dfflibmap -liberty NangateOCL.lib
# mapping logic to toy.lib 
abc -liberty NangateOCL.lib
# remove unused cells and wires
clean
#report design statistics
stat -liberty NangateOCL.lib

# Write the current design to a Verilog file
write_verilog -noattr -noexpr -nohex -nodec netlist_CLA.v 

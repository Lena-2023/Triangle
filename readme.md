iverilog -o qqq modtriangle.v testbench.v
vvp qqq
gtkwave bench.vcd
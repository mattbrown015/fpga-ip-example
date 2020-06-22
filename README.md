# fpga-ip-example
Example of how to use Vivado IP in an FPGA design.

Following on from [simple-fpga-cvs](https://github.com/mattbrown015/simple-fpga-cvs) attempt a more complex design using the IP provided by Vivado.

As with [simple-fpga-cvs](https://github.com/mattbrown015/simple-fpga-cvs) this project provides a record of what I've been doing as I attempt to learn a bit more about FPGA design.

## Steps Completed

This is a summary of the history of this repo.

1. Create Vivado project
1. Find IP in IP Catalog
1. Customize IP, including change location so that not generated in project directories
1. Join up different IP cores in design
    * Clock Wizard
    * AXI Traffic Generator
    * AXI GPIO
1. Run and debug IP instances in simulation
1. Started gaining rudimentary understanding of AXI i.e. single master to slave connection

`timescale 1ns / 1ps

module fpga_ip_example_tb();
    localparam osc_300_period = 3.333;

    logic osc_300_p;
    logic osc_300_n;
    logic [7:0]gpio_io_o;

    always begin
        osc_300_p = 1'b0;
        osc_300_n = 1'b1;
        #(osc_300_period / 2) osc_300_p = 1'b1;
        osc_300_n = 1'b0;
        #(osc_300_period / 2);
    end

    fpga_ip_example fpga_ip_example
    (
        osc_300_p,
        osc_300_n,
        gpio_io_o
    );
endmodule

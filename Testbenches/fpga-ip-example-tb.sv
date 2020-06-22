`timescale 1ns / 1ps

module fpga_ip_example_tb();
    localparam osc_300_period = 3.333;

    logic osc_300_p;
    logic osc_300_n;

    always begin
        osc_300_p = 1'b0;
        osc_300_n = 1'b1;
        #(osc_300_period / 2) osc_300_p = 1'b1;
        osc_300_n = 1'b0;
        #(osc_300_period / 2);
    end
endmodule
